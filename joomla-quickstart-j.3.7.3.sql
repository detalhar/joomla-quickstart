-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06-Jul-2017 às 14:50
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detalhar-quickstart`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_assets`
--

CREATE TABLE `b10gt_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_assets`
--

INSERT INTO `b10gt_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 159, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.options":{"10":0},"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 42, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 43, 44, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 45, 46, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 47, 48, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 49, 50, 1, 'com_login', 'com_login', '{}'),
(13, 1, 51, 52, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 53, 54, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 55, 56, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 57, 58, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 59, 60, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 61, 112, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 113, 116, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 117, 118, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 119, 120, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 121, 122, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1,"10":0},"core.edit.state":[]}'),
(23, 1, 123, 124, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 125, 128, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 129, 130, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 23, 2, 'com_content.category.2', 'Páginas do site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 114, 115, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 126, 127, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 131, 132, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1,"10":0},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 1, 133, 134, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 135, 136, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 137, 138, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 139, 140, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 141, 142, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 62, 63, 2, 'com_modules.module.1', 'Menu principal', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 64, 65, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 66, 67, 2, 'com_modules.module.3', 'Artigos populares', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(42, 18, 68, 69, 2, 'com_modules.module.4', 'Artigos Recentes', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(43, 18, 70, 71, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 72, 73, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 74, 75, 2, 'com_modules.module.10', 'Usuários logados', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(46, 18, 76, 77, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(47, 18, 78, 79, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 80, 81, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 82, 83, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 84, 85, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 86, 87, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 88, 89, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 90, 91, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(57, 1, 145, 146, 1, 'com_osmap', 'com_osmap', '{}'),
(58, 1, 147, 148, 1, 'com_phocagallery', 'com_phocagallery', '{"core.admin":{"10":1},"core.manage":{"10":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 18, 92, 93, 2, 'com_modules.module.88', 'Phoca Gallery Image Module', '{}'),
(60, 18, 94, 95, 2, 'com_modules.module.89', 'BT Content Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(61, 18, 96, 97, 2, 'com_modules.module.90', 'DT Facebook Page', '{}'),
(62, 18, 98, 99, 2, 'com_modules.module.91', 'DT Simple Map', '{}'),
(63, 18, 100, 101, 2, 'com_modules.module.92', 'DT Simple Youtube Embed', '{}'),
(64, 18, 102, 103, 2, 'com_modules.module.93', 'Slideshow CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(65, 8, 24, 41, 2, 'com_content.category.8', 'Blog', '{}'),
(66, 27, 19, 20, 3, 'com_content.article.1', 'A empresa', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(67, 27, 21, 22, 3, 'com_content.article.2', 'Serviços', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(68, 65, 25, 26, 3, 'com_content.article.3', 'Primeiro artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(69, 65, 27, 28, 3, 'com_content.article.4', 'Segundo artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(70, 65, 29, 30, 3, 'com_content.article.5', 'Terceiro artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(71, 65, 31, 32, 3, 'com_content.article.6', 'Quarto artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(72, 65, 33, 34, 3, 'com_content.article.7', 'Quinto artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(73, 65, 35, 36, 3, 'com_content.article.8', 'Sexto artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(74, 65, 37, 38, 3, 'com_content.article.9', 'Sétimo artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(75, 65, 39, 40, 3, 'com_content.article.10', 'Último artigo de exemplo para o blog', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(76, 1, 149, 150, 1, 'com_blankcomponent', 'Blank Component', '{}'),
(77, 1, 151, 152, 1, 'com_jce', 'JCE', '{}'),
(78, 18, 104, 105, 2, 'com_modules.module.94', 'Módulo HTML 01', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(79, 18, 106, 107, 2, 'com_modules.module.95', 'Módulo HTML 02', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(81, 18, 108, 109, 2, 'com_modules.module.96', 'RokSprocket Module', '{}'),
(82, 1, 153, 154, 1, 'com_chronoforms5', 'com_chronoforms5', '{}'),
(83, 18, 110, 111, 2, 'com_modules.module.97', 'ChronoForms5', '{}'),
(84, 1, 155, 156, 1, 'com_fields', 'com_fields', '{}'),
(85, 1, 157, 158, 1, 'com_associations', 'com_associations', '{}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_associations`
--

CREATE TABLE `b10gt_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_banners`
--

CREATE TABLE `b10gt_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_banner_clients`
--

CREATE TABLE `b10gt_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_banner_tracks`
--

CREATE TABLE `b10gt_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_categories`
--

CREATE TABLE `b10gt_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_categories`
--

INSERT INTO `b10gt_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 3, 4, 1, 'paginas-do-site', 'com_content', 'Páginas do site', 'paginas-do-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 277, '2015-11-04 21:34:25', 0, '*', 1),
(3, 28, 1, 5, 6, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 7, 8, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 9, 10, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 65, 1, 1, 2, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 277, '2015-11-04 21:34:43', 0, '2015-11-04 21:34:43', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_chronoengine_chronoforms`
--

CREATE TABLE `b10gt_chronoengine_chronoforms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `extras` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `app` varchar(255) NOT NULL DEFAULT '',
  `form_type` int(1) NOT NULL DEFAULT '1',
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_chronoengine_chronoforms`
--

INSERT INTO `b10gt_chronoengine_chronoforms` (`id`, `title`, `params`, `extras`, `published`, `app`, `form_type`, `content`) VALUES
(1, 'faleConosco', '{"description":"","setup":"0","theme":"bootstrap3","tight_layout":"0","rtl_support":"0","labels_right_aligned":"0","labels_auto_width":"0","js_validation_language":""}', 'YTozOntzOjY6ImZpZWxkcyI7YTo3OntpOjE7YTo3OntzOjU6ImxhYmVsIjtzOjA6IiI7czo5OiJwdXJlX2NvZGUiO3M6MToiMSI7czo0OiJjb2RlIjtzOjYyOiI8ZGl2IGNsYXNzPSImcXVvdDtwYWdlLWhlYWRlciI+DQo8aDE+RmFsZSBDb25vc2NvPC9oMT4NCjwvZGl2PiI7czo0OiJuYW1lIjtzOjY6ImN1c3RvbSI7czoxMToicmVuZGVyX3R5cGUiO3M6NjoiY3VzdG9tIjtzOjQ6InR5cGUiO3M6NjoiY3VzdG9tIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7fWk6MjthOjE4OntzOjQ6Im5hbWUiO3M6NDoibm9tZSI7czoyOiJpZCI7czo0OiJub21lIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6OToiU2V1IG5vbWU6IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTM6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo3OiJub3NwYWNlIjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTozO2E6MTg6e3M6NDoibmFtZSI7czo1OiJlbWFpbCI7czoyOiJpZCI7czo1OiJlbWFpbCI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjc6IkUtbWFpbDoiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMzp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjc6Im5vc3BhY2UiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo0O2E6MTg6e3M6NDoibmFtZSI7czo1OiJ0ZXh0NCI7czoyOiJpZCI7czo4OiJ0ZWxlZm9uZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjEyOiJEREQrVGVsZWZvbmUiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjI6IjExIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEzOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6Nzoibm9zcGFjZSI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MToiMSI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjU7YToxODp7czo0OiJuYW1lIjtzOjc6ImFzc3VudG8iO3M6MjoiaWQiO3M6NzoiYXNzdW50byI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjg6IkFzc3VudG86IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTM6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo3OiJub3NwYWNlIjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo2O2E6MTg6e3M6NDoibmFtZSI7czo4OiJtZW5zYWdlbSI7czoyOiJpZCI7czo4OiJtZW5zYWdlbSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjk6Ik1lbnNhZ2VtOiI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo0OiJyb3dzIjtzOjE6IjMiO3M6NDoiY29scyI7czoyOiI0MCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxMzoiOmRhdGEtd3lzaXd5ZyI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6InRleHRhcmVhIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTo4OntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6NzthOjEwOntzOjExOiJyZW5kZXJfdHlwZSI7czo2OiJzdWJtaXQiO3M6NDoibmFtZSI7czo2OiJlbnZpYXIiO3M6MjoiaWQiO3M6NjoiZW52aWFyIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjY6IkVudmlhciI7czo1OiJjbGFzcyI7czoxNToiYnRuIGJ0bi1kZWZhdWx0IjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjE6e3M6NjoiaHRtbF8wIjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjM6e3M6NzoiZW1haWxfMSI7czowOiIiO3M6MTY6InRoYW5rc19tZXNzYWdlXzIiO3M6MDoiIjtzOjE0OiJzaG93X3N0b3BwZXJfMyI7czowOiIiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6NDp7aTowO2E6MTE6e3M6NDoicGFnZSI7czoxOiIxIjtzOjEyOiJzdWJtaXRfZXZlbnQiO3M6Njoic3VibWl0IjtzOjExOiJmb3JtX21ldGhvZCI7czo0OiJmaWxlIjtzOjEwOiJhY3Rpb25fdXJsIjtzOjA6IiI7czoxMDoiZm9ybV9jbGFzcyI7czoxMDoiY2hyb25vZm9ybSI7czoxNToiZm9ybV90YWdfYXR0YWNoIjtzOjA6IiI7czoyNDoicmVxdWlyZWRfbGFiZWxzX2lkZW50aWZ5IjtzOjE6IjEiO3M6MTI6InJlbGF0aXZlX3VybCI7czoxOiIxIjtzOjExOiJhamF4X3N1Ym1pdCI7czoxOiIwIjtzOjEzOiJhZGRfZm9ybV90YWdzIjtzOjE6IjEiO3M6OToieGh0bWxfdXJsIjtzOjE6IjAiO31pOjE7YToyOTp7czoxMjoiYWN0aW9uX2xhYmVsIjtzOjA6IiI7czo3OiJlbmFibGVkIjtzOjE6IjEiO3M6MjoidG8iO3M6MjY6ImNlbnRyYWxAZGV0YWxoYXJ3ZWIuY29tLmJyIjtzOjc6InN1YmplY3QiO3M6NDI6IlNvbGljaXRhw6fDo28gZGUgaW5mb3JtYcOnw7VlcyBkZSBzZXUgc2l0ZSI7czo5OiJmcm9tX25hbWUiO3M6MDoiIjtzOjEwOiJmcm9tX2VtYWlsIjtzOjA6IiI7czoxMDoiZW1haWxfdHlwZSI7czo0OiJodG1sIjtzOjE5OiJ0ZW1wbGF0ZV9nZW5lcmF0aW9uIjtzOjE6IjEiO3M6ODoidGVtcGxhdGUiO3M6Mjc2OiI8dGFibGU+Cjx0cj48dGQ+PC90ZD48dGQ+e2N1c3RvbX08L3RkPjwvdHI+Cjx0cj48dGQ+U2V1IG5vbWU6PC90ZD48dGQ+e25vbWV9PC90ZD48L3RyPgo8dHI+PHRkPkUtbWFpbDo8L3RkPjx0ZD57ZW1haWx9PC90ZD48L3RyPgo8dHI+PHRkPkRERCtUZWxlZm9uZTwvdGQ+PHRkPnt0ZXh0NH08L3RkPjwvdHI+Cjx0cj48dGQ+QXNzdW50bzo8L3RkPjx0ZD57YXNzdW50b308L3RkPjwvdHI+Cjx0cj48dGQ+TWVuc2FnZW06PC90ZD48dGQ+e21lbnNhZ2VtfTwvdGQ+PC90cj4KPC90YWJsZT4iO3M6NjoiYXR0YWNoIjtzOjA6IiI7czozOiJkdG8iO3M6MDoiIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6NDoibm9tZSI7czoxMjoiZHJlcGx5X2VtYWlsIjtzOjU6ImVtYWlsIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjQ6Im5vbWUiO3M6MTE6ImRmcm9tX2VtYWlsIjtzOjU6ImVtYWlsIjtzOjI6ImNjIjtzOjA6IiI7czozOiJiY2MiO3M6MDoiIjtzOjM6ImRjYyI7czowOiIiO3M6NDoiZGJjYyI7czowOiIiO3M6MTc6ImFwcGVuZF9pcF9hZGRyZXNzIjtzOjE6IjAiO3M6MTY6Il9fYWN0aW9uX3RpdGxlX18iO3M6NToiZW1haWwiO3M6MTU6ImVuY3J5cHRfZW5hYmxlZCI7czoxOiIwIjtzOjExOiJncGdfc2VjX2tleSI7czowOiIiO3M6MTU6InRlbXBsYXRlX2hlYWRlciI7czowOiIiO3M6MTM6InRlbXBsYXRlX2JvZHkiO3M6MDoiIjtzOjE1OiJ0ZW1wbGF0ZV9mb290ZXIiO3M6MDoiIjt9aToyO2E6Mjp7czoxMjoiYWN0aW9uX2xhYmVsIjtzOjA6IiI7czo3OiJtZXNzYWdlIjtzOjE0MjoiPGRpdiBjbGFzcz0iYWxlcnQgYWxlcnQtc3VjY2VzcyI+U3VhIG1lbnNhZ2VtIGZvaSBlbnZpYWRhIGNvbSBzdWNlc3NvLiBUcmFiYWxoYXJlbW9zIHBhcmEgbGhlIGRhciB1bWEgcmVzcG9zdGEgbyBtYWlzIHLDoXBpZG8gcG9zc8OtdmVsLjwvZGl2PiI7fWk6MzthOjE6e3M6NToiZHVtbXkiO3M6MDoiIjt9fX0=', 1, '', 1, '<div class="&quot;page-header">\r\n<h1>Fale Conosco</h1>\r\n</div><div class="form-group gcore-form-row" id="form-row-nome"><label for="nome" class="control-label gcore-label-left">Seu nome:</label>\n<div class="gcore-input gcore-display-table" id="fin-nome"><input name="nome" id="nome" value="" placeholder="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-email"><label for="email" class="control-label gcore-label-left">E-mail:</label>\n<div class="gcore-input gcore-display-table" id="fin-email"><input name="email" id="email" value="" placeholder="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-telefone"><label for="telefone" class="control-label gcore-label-left">DDD+Telefone</label>\n<div class="gcore-input gcore-display-table" id="fin-telefone"><input name="text4" id="telefone" value="" placeholder="" maxlength="11" class="validate[&#039;required&#039;,&#039;phone&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-assunto"><label for="assunto" class="control-label gcore-label-left">Assunto:</label>\n<div class="gcore-input gcore-display-table" id="fin-assunto"><input name="assunto" id="assunto" value="" placeholder="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-mensagem"><label for="mensagem" class="control-label gcore-label-left">Mensagem:</label>\n<div class="gcore-input gcore-display-table" id="fin-mensagem"><textarea name="mensagem" id="mensagem" placeholder="" rows="3" cols="40" class="validate[&#039;required&#039;] form-control A" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-enviar"><div class="gcore-input gcore-display-table" id="fin-enviar"><input name="enviar" id="enviar" type="submit" value="Enviar" class="btn btn-default form-control A" style="" data-load-state="" /></div></div>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_chronoengine_extensions`
--

CREATE TABLE `b10gt_chronoengine_extensions` (
  `id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_contact_details`
--

CREATE TABLE `b10gt_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_content`
--

CREATE TABLE `b10gt_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_content`
--

INSERT INTO `b10gt_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 66, 'A empresa', 'a-empresa', '<p style="text-align: justify;"><img style="margin-right: 15px; margin-bottom: 15px; float: left;" class="img-polaroid" alt="overnature-com-2.jpg" src="images/overnature-com-2.jpg" height="259" width="390" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 2, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:39:51', 0, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 67, 'Serviços', 'servicos', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 2, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:40:57', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 1, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 68, 'Primeiro artigo de exemplo para o blog', 'primeiro-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:41:51', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 7, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 69, 'Segundo artigo de exemplo para o blog', 'segundo-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:42:22', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 70, 'Terceiro artigo de exemplo para o blog', 'terceiro-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:42:58', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 71, 'Quarto artigo de exemplo para o blog', 'quarto-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:43:32', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 72, 'Quinto artigo de exemplo para o blog', 'quinto-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:44:00', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 73, 'Sexto artigo de exemplo para o blog', 'sexto-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:44:27', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 74, 'Sétimo artigo de exemplo para o blog', 'setimo-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:45:03', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 75, 'Último artigo de exemplo para o blog', 'ultimo-artigo-de-exemplo-para-o-blog', '<p style="text-align: justify;"><img src="images/overnature-com-2.jpg" alt="overnature-com-2.jpg" width="390" height="259" class="img-polaroid" style="margin-bottom: 15px; margin-left: 15px; float: right;" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.</p>\r\n<p style="text-align: justify;">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.</p>\r\n<p style="text-align: justify;">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.</p>\r\n<p style="text-align: justify;">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.</p>\r\n<p style="text-align: justify;">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.</p>', '', 1, 8, '2015-11-04 21:39:51', 277, '', '2015-11-04 21:45:32', 277, 0, '0000-00-00 00:00:00', '2015-11-04 21:39:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_contentitem_tag_map`
--

CREATE TABLE `b10gt_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_content_frontpage`
--

CREATE TABLE `b10gt_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_content_rating`
--

CREATE TABLE `b10gt_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_content_types`
--

CREATE TABLE `b10gt_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_content_types`
--

INSERT INTO `b10gt_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_core_log_searches`
--

CREATE TABLE `b10gt_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_extensions`
--

CREATE TABLE `b10gt_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_extensions`
--

INSERT INTO `b10gt_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"pt-BR","site":"pt-BR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"51fdcb910e527238583be4d28f3d2f19"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.25.2","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `b10gt_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.3.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"Junho de 2017","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.3.1","description":"pt-BR site language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"language","creationDate":"Junho de 2017","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"Copyright (C) 2005-2016 Open Source Matters. Todos os direitos reservados.","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.7.3.1","description":"Brazilian Portuguese Administrator language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Português do Brasil (pt-BR)', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{"name":"Portugu\\u00eas do Brasil (pt-BR)","type":"package","creationDate":"Junho de 2017","author":"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.7.3.1","description":"<div style=\\"text-align:left;\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.7.3 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.7.3.1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.7.3 <\\/h2>\\n  <h3>Version 3.7.3.1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>","group":"","filename":"pkg_pt-BR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'COM_OSMAP', 'component', 'com_osmap', '', 1, 1, 0, 0, '{"name":"COM_OSMAP","type":"component","creationDate":"May 09 2017","author":"Joomlashack","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"help@joomlashack.com","authorUrl":"https:\\/\\/www.joomlashack.com","version":"4.2.12","description":"COM_OSMAP_DESCRIPTION","group":"","filename":"osmap"}', '{}', '{"author":"Joomlashack"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'plg_system_ossystem', 'plugin', 'ossystem', 'system', 0, 1, 1, 0, '{"name":"plg_system_ossystem","type":"plugin","creationDate":"January 06 2017","author":"Joomlashack","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved.","authorEmail":"help@joomlashack.com","authorUrl":"http:\\/\\/www.joomlashack.com","version":"1.2.6","description":"PLG_SYSTEM_OSSYSTEM_DESCRIPTION","group":"","filename":"ossystem"}', '[]', '{"author":"Joomlashack"}', '', 0, '0000-00-00 00:00:00', 1, 0),
(10014, 0, 'OSMAP_PLUGIN_K2', 'plugin', 'com_k2', 'osmap', 0, 1, 1, 0, '{"name":"OSMAP_PLUGIN_K2","type":"plugin","creationDate":"March 10 2016","author":"Mohammad Hasani Eghtedar","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr \\/ Copyright (C) Mohammad Hasani Eghtedar - m.h.eghtedar@gmail.com","authorEmail":"support@alledia.com","authorUrl":"https:\\/\\/www.alledia.com","version":"3.3.0","description":"OSMAP_PLUGIN_K2_DESC","group":"","filename":"com_k2"}', '{"subcategories":"no","showk2items":"always","suppressdups":"no","priority":"0.5","changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'OSMap - Kunena Plugin', 'plugin', 'com_kunena', 'osmap', 0, 1, 1, 0, '{"name":"OSMap - Kunena Plugin","type":"plugin","creationDate":"March 10 2016","author":"Alledia","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"support@alledia.com","authorUrl":"http:\\/\\/www.alledia.com","version":"3.3.0","description":"OSMap Plugin for Kunena component","group":"","filename":"com_kunena"}', '{"include_topics":"1","max_topics":"","max_age":"","cat_priority":"-1","cat_changefreq":"-1","topic_priority":"-1","topic_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'OSMap - Mosets Tree Plugin', 'plugin', 'com_mtree', 'osmap', 0, 1, 1, 0, '{"name":"OSMap - Mosets Tree Plugin","type":"plugin","creationDate":"March 10 2016","author":"Alledia","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"3.3.0","description":"OSMAP_MTREE_PLUGIN_DESCRIPTION","group":"","filename":"com_mtree"}', '{"cats_order":"cat_name","cats_orderdir":"ASC","include_links":"1","links_order":"ordering","entries_orderdir":"ASC","max_links":"","max_age":"","cat_priority":"0.5","cat_changefreq":"weekly","link_priority":"0.5","link_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'OSMap - SobiPro Plugin', 'plugin', 'com_sobipro', 'osmap', 0, 1, 1, 0, '{"name":"OSMap - SobiPro Plugin","type":"plugin","creationDate":"March 10 2016","author":"Alledia","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"3.3.0","description":"OSMap Plugin for SobiPro component","group":"","filename":"com_sobipro"}', '{"include_entries":"1","max_entries":"","max_age":"","entries_order":"a.ordering","entries_orderdir":"DESC","cat_priority":"-1","cat_changefreq":"weekly","entry_priority":"-1","entry_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'OSMap - Virtuemart Plugin', 'plugin', 'com_virtuemart', 'osmap', 0, 1, 1, 0, '{"name":"OSMap - Virtuemart Plugin","type":"plugin","creationDate":"March 10 2016","author":"Alledia \\/ Guillermo Vargas","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"support@alledia.com","authorUrl":"http:\\/\\/www.alledia.com","version":"3.3.0","description":"OSMAP_VM_PLUGIN_DESCRIPTION","group":"","filename":"com_virtuemart"}', '{"include_products":"1","cat_priority":"-1","cat_changefreq":"-1","prod_priority":"-1","prod_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'OSMap - WebLinks Plugin', 'plugin', 'com_weblinks', 'osmap', 0, 1, 1, 0, '{"name":"OSMap - WebLinks Plugin","type":"plugin","creationDate":"March 10 2016","author":"Alledia","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"support@alledia.com","authorUrl":"http:\\/\\/www.alledia.com","version":"3.3.0","description":"OSMAP_WL_PLUGIN_DESCRIPTION","group":"","filename":"com_weblinks"}', '{"include_links":"1","max_links":"","cat_priority":"-1","cat_changefreq":"-1","link_priority":"-1","link_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"name":"com_phocagallery","type":"component","creationDate":"26\\/07\\/2016","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.3.1","description":"Phoca Gallery","group":"","filename":"phocagallery"}', '{"category_ordering":"1","categories_description":"","image_categories_size":"1","categories_image_ordering":"10","categories_display_avatar":"0","display_subcategories":"1","display_empty_categories":"0","display_access_category":"0","hide_categories":"","show_categories":"","default_pagination_categories":"0","pagination_categories":"5,10,15,20,50","categories_box_space":"0","display_cat_desc_box":"0","char_cat_length_name":"9","categories_mosaic_images":"0","display_image_categories":"1","equal_percentage_width":"1","categories_box_width":"33%","categories_columns":"1","image_ordering":"1","display_new":"0","display_hot":"0","display_name":"0","display_icon_detail":"0","display_icon_download":"0","char_length_name":"15","category_box_space":"0","display_categories_sub":"0","display_subcat_page":"0","display_category_icon_image":"0","category_image_ordering":"10","display_back_button":"0","display_categories_back_button":"0","default_pagination_category":"20","pagination_category":"20,40,60","display_img_desc_box":"0","diff_thumb_height":"0","display_categories_cv":"0","display_subcat_page_cv":"0","display_back_button_cv":"1","display_categories_back_button_cv":"1","switch_image":"0","switch_width":"640","switch_height":"480","switch_fixed_size":"0","enable_overlib":"0","overlib_image_rate":"","overlib_attributes":"BELOW, RIGHT, CSSCLASS, TEXTFONTCLASS, ''fontPhocaClass'', FGCLASS, ''fgPhocaClass'', BGCLASS, ''bgPhocaClass'', CAPTIONFONTCLASS,''capfontPhocaClass'', CLOSEFONTCLASS, ''capfontclosePhocaClass''","display_category_statistics":"0","display_main_cat_stat":"1","display_lastadded_cat_stat":"1","count_lastadded_cat_stat":"3","display_mostviewed_cat_stat":"1","count_mostviewed_cat_stat":"3","display_camera_info":"0","exif_information":"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED_Height,COMPUTED_Width,COMPUTED_IsColor,COMPUTED_ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp","detail_window":"8","modal_box_overlay_opacity":"0.3","sb_slideshow_delay":"5","sb_settings":"overlayColor: ''#000'',overlayOpacity:0.5,resizeDuration:0.35,displayCounter:true,displayNav:true","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","boxplus_theme":"lightsquare","boxplus_bautocenter":"1","boxplus_autofit":"1","boxplus_slideshow":"0","boxplus_loop":"0","boxplus_captions":"bottom","boxplus_thumbs":"inside","boxplus_duration":"250","boxplus_transition":"linear","boxplus_contextmenu":"1","enable_multibox":"0","display_multibox":["1"],"multibox_width":"980","multibox_height":"560","multibox_map_width":"280","multibox_map_height":"300","multibox_thubms_box_width":"300","multibox_thubms_count":"4","multibox_comments_width":"300","multibox_comments_height":"600","multibox_fixed_cols":"1","ytb_display":"0","display_description_detail":"0","display_title_description":"0","slideshow_delay":"3000","slideshow_pause":"2000","slideshow_random":"0","slideshow_description":"peekaboo","detail_buttons":"1","youtube_api_key":"","youtube_api_ssl":"0","phocagallery_width":"","phocagallery_center":"0","gallery_metadesc":"","gallery_metakey":"","alt_value":"1","display_tags_links":"0","tags_links":"0","display_feed":"0","feed_cat_ids":"","feed_img_ordering":"6","feed_img_count":"5","feed_title":"","enable_picasa_loading":"1","picasa_load_pagination":"20","enable_facebook_loading":"1","fb_load_pagination":"25","enable_cache":"0","display_categories_geotagging":"0","categories_lng":"","categories_lat":"","categories_zoom":"2","categories_map_width":"","categories_map_height":"500","display_icon_geotagging":"0","display_category_geotagging":"0","category_map_width":"","category_map_height":"400","display_icon_vm":"0","enable_user_cp":"0","enable_upload_avatar":"1","enable_avatar_approve":"0","enable_usercat_approve":"0","enable_usersubcat_approve":"0","enable_direct_subcat":"0","user_subcat_count":"5","max_create_cat_char":"1000","user_ucp_lang":"1","enable_userimage_approve":"0","max_upload_char":"1000","upload_maxsize":"3145728","upload_maxres_width":"3072","upload_maxres_height":"2304","user_images_max_size":"20971520","enable_multiple":"0","multiple_upload_method":"1","multiple_upload_chunk":"0","multiple_resize_width":"-1","multiple_resize_height":"-1","enable_java":"-1","java_box_width":"480","java_box_height":"480","youtube_upload":"0","display_rating":"0","display_rating_img":"0","display_comment":"0","display_comment_img":"0","comment_width":"500","max_comment_char":"1000","display_comment_nopup":"0","external_comment_system":"0","fb_comment_user_id":"","pagination_thumbnail_creation":"0","clean_thumbnails":"0","enable_thumb_creation":"1","crop_thumbnail":"5","additional_thumbnails":"0","jpeg_quality":"85","large_image_width":"640","large_image_height":"480","medium_image_width":"200","medium_image_height":"200","small_image_width":"100","small_image_height":"100","front_modal_box_width":"680","front_modal_box_height":"560","create_watermark":"0","watermark_position_x":"center","watermark_position_y":"middle","folder_permissions":"0755","jfile_thumbs":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'mod_phocagallery_image', 'module', 'mod_phocagallery_image', '', 0, 1, 0, 0, '{"name":"mod_phocagallery_image","type":"module","creationDate":"21\\/07\\/2013","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.0.0","description":"MOD_PHOCAGALLERY_IMAGE_DESCRIPTION","group":"","filename":"mod_phocagallery_image"}', '{"phocahead1":"MOD_PHOCAGALLERY_IMAGE_CONFIG_GENERAL_SETTINGS_LABEL","category_id":"0","image_ordering":"1","limit_start":"0","limit_count":"1","module_link":"0","phocahead2":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DESIGN_SETTINGS_LABEL","module_type":"shadow1","image_size":"auto","font_color":"#b36b00","background_color":"#fcfcfc","background_color_hover":"#f5f5f5","image_background_color":"#f5f5f5","image_background_shadow":"shadow1","border_color":"#e8e8e8","border_color_hover":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","phocahead3":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DEFAULT_DESCRIPTION_SETTINGS_LABEL","spacer4":"MOD_PHOCAGALLERY_IMAGE_DETAIL_WINDOW_WARNING","detail_window":"0","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","spacer10":"MOD_PHOCAGALLERY_IMAGE_JAK_LIGHTBOX_ORIENTATION_WARNING","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `b10gt_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10022, 0, 'Idioma Português do Brasil para o Componente Phoca Gallery,seus módulos e plugins', 'file', 'IdiomaPortugusdoBrasilparaoComponentePhocaGalleryseusmduloseplugins', '', 0, 1, 0, 0, '{"name":"Idioma Portugu\\u00eas do Brasil para o Componente Phoca Gallery,seus m\\u00f3dulos e plugins","type":"file","creationDate":"11 de Junho de 2012","author":"Uriel dos Santos Souza, Claudeir Ribeiro e Usiel Almeida Oliveira","copyright":"Copyright \\u00a9 2012 - All rights reserved.","authorEmail":"contato@pontomega.com.br","authorUrl":"http:\\/\\/pontomega.com.br","version":"4","description":"\\n    Tradu\\u00e7\\u00e3o para o componente Phoca Gallery,seus m\\u00f3dulos e plugins para o idioma portugu\\u00eas brasileiro.\\n  ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'BT Content Slider', 'module', 'mod_bt_contentslider', '', 0, 1, 0, 0, '{"name":"BT Content Slider","type":"module","creationDate":"Sep 2011","author":"www.bowthemes.com","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.3.8","description":"\\n\\t\\n<div class=\\"bt_description\\">\\n\\t<h3>BT content slider Module Version 2.3.8<\\/h3>\\n\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img\\n\\t\\tsrc=\\"..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/bt-slider.png\\">\\n\\t<\\/a>\\n\\t<p>Helps to slide your articles from Joomla! categories with cool\\n\\t\\teffects, rich backend configs covering layout, animation control, auto\\n\\t\\tthumbnail creating, images resizing, numbering articles, sorting\\n\\t\\tect...<\\/p>\\n\\t<br clear=\\"both\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\"list-style\\">\\n\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Content control display from any section, category or article ID''s<\\/li>\\n\\t\\t<li>Support for<a href=\\"http:\\/\\/getk2.org\\/\\"> K2 component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"joomla-extensions\\/bt-porfolio-component.html\\" target=\\"_blank\\" title=\\"Portfolio Joomla component\\">BT Portfolio component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"http:\\/\\/bit.ly\\/1baVxzb\\">EasyBlog Component<\\/a><\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical news presentation (columns and rows\\n\\t\\t\\tconfiguration).<\\/li>\\n\\t\\t<li>Support for responsive template<\\/li>\\n\\t\\t<li>Show text, image, author, date, section\\/category name and\\n\\t\\t\\tbutton \\"read more\\" option, with order customization.<\\/li>\\n\\t\\t<li>Image Cropping<\\/li>\\n\\t\\t<li>On\\/Off front page articles display in modules<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Included French language.<\\/li>\\n\\t\\t<li>Used Javascript Framework: Jquery latest version<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape,\\n\\t\\t\\tGoogle Chrome, Camino, Flock 0.7+.<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 2.3.8. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-content-slider.html\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bowthemes.com\\/bt-content-slider.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/14-bt-content-slider\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/14-bt-content-slider\\/\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2012 BowThemes\\n<\\/div>\\n<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n","group":"","filename":"mod_bt_contentslider"}', '{"moduleclass_sfx":"","content_title":"","content_link":"","butlet":"1","navigation_top":"0","navigation_right":"0","next_back":"0","module_width":"auto","module_height":"auto","auto_height":"1","items_per_cols":"1","items_per_rows":"3","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":"","btportfolio_category":"","easyblog_article_ids":"","joomla_tags":"","k2_tags":"","auto_category":"0","sub_categories":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","equalHeight":"1","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","image_quality":"80","default_thumb":"1","touch_screen":"0","hovereffect":"1","modalbox":"0","next_back_effect":"slide","bullet_effect":"slide","pause_hover":"1","interval":"5000","duration":"500","effect":"easeInQuad","auto_start":"1","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'DT Facebook Page', 'module', 'mod_dt_facebook_page', '', 0, 1, 0, 0, '{"name":"DT Facebook Page","type":"module","creationDate":"2015\\/7\\/7","author":"detalhar","copyright":"Copyright (C) detalhar. All rights reserved","authorEmail":"developer@detalharweb.com.br","authorUrl":"","version":"1.0.0","description":"Joomla module to embed easily their facebook page.","group":"","filename":"mod_dt_facebook_page"}', '{"FBPageUrl":"https:\\/\\/www.facebook.com\\/detalharweb","width":"340","showFriendsFace":"true","smallHeader":"false","hideCoverPhoto":"false","showPagePosts":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'DT Simple Map', 'module', 'mod_dt_simple_map', '', 0, 1, 0, 0, '{"name":"DT Simple Map","type":"module","creationDate":"24\\/06\\/2015","author":"Detalhar","copyright":"Copyright (C) 2015 - Detalhar, All rights reserved","authorEmail":"developer@detalharweb.com.br","authorUrl":"","version":"1.0.0","description":"MOD_DT_SIMPLE_MAP_DESC","group":"","filename":"mod_dt_simple_map"}', '{"lat":"","lng":"","zoomlevel":"8","maptypeId":"ROADMAP","panControl":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'DT Simple Youtube Embed', 'module', 'mod_dt_youtube_embed', '', 0, 1, 0, 0, '{"name":"DT Simple Youtube Embed","type":"module","creationDate":"2015\\/7\\/1","author":"Detalhar","copyright":"Copyright (C) Detalhar. All rights reserved","authorEmail":"developer@detalharweb.com.br","authorUrl":"","version":"1.0.0","description":"MOD_DT_YOUTUBE_DESC","group":"","filename":"mod_dt_youtube_embed"}', '{"width":"300","height":"200","autoplay":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'Slideshow CK', 'module', 'mod_slideshowck', '', 0, 1, 0, 0, '{"name":"Slideshow CK","type":"module","creationDate":"Avril 2012","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.4.44","description":"MOD_SLIDESHOWCK_XML_DESCRIPTION","group":"","filename":"mod_slideshowck"}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","skin":"camera_amber_skin","alignment":"center","loader":"pie","width":"auto","height":"62%","navigation":"2","thumbnails":"1","thumbnailwidth":"100","thumbnailheight":"75","pagination":"1","effect":"random","time":"7000","transperiod":"1500","captioneffect":"random","portrait":"0","autoAdvance":"1","hover":"1","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","usecaptionresponsive":"1","captionresponsiveresolution":"480","captionresponsivefontsize":"0.6em","captionresponsivehidecaption":"0","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'Content - Read Less - Text', 'plugin', 'readlesstext', 'content', 0, 1, 1, 0, '{"name":"Content - Read Less - Text","type":"plugin","creationDate":"November 2014","author":"parvus","copyright":"Copyright (C) 2010-2014. All rights reserved.","authorEmail":"1500@engineer.com","authorUrl":"http:\\/\\/joomlacode.org\\/gf\\/project\\/cutoff\\/","version":"v5.2 (r274)","description":"","group":"","filename":"readlesstext"}', '{"minimumTextLength":70,"cutOffTextLength":800,"lengthUnit":"char","retainWholeWords":0,"respectExistingReadmoreLink":"1","articleNumberSkipCount":0,"articleNumberShortenCount":0,"alwaysActiveForGuests":0,"componentScope":"accordingToContexts","moduleScope":"accordingToContexts","when":0,"allowed":"","disallowed":"","notes0":"","discover":0,"createThumbnail":"when_shortened","linkThumbnail":1,"thumbnailTitle":"articleTitle","thumbPosition":"left","defaultThumbnailTemplate":"","minimumImageWidth":32,"minimumImageHeight":32,"minimumImageRatio":0,"thumbWidth":220,"thumbHeight":220,"cropHorizontalPosition":"left","cropVerticalPosition":"top","thumbMargin":"3 15 3 0","thumbPadding":4,"thumbBorderWidth":1,"thumbBorderColor":"#cccccc","thumbBorderStyle":"solid","thumbClass":" img-polaroid","thumbCacheTime":2419200,"maxImageLoadTime":0,"addPrefix":"when_active","userPrefix":"","userPrefixLinksToFullArticle":0,"guestPrefix":"","guestPrefixLinksToFullArticle":0,"prefixDateFormat":"[M, jS]","addInlineSuffix":"when_shortened","userInlineSuffix":"&hellip;","userInlineSuffixLinksToFullArticle":0,"guestInlineSuffix":"&hellip;","guestInlineSuffixLinksToFullArticle":0,"addSuffix":"when_active_use_article_manager_option","userSuffix":"<p class=''readmore''><a class=\\"btn btn-large btn-success\\" href=''{url}''>Continuar lendo este artigo<\\/a><\\/p>","userSuffixLinksToFullArticle":0,"guestSuffix":"<p class=''readmore''><a class=\\"btn btn-large btn-success\\" href=''{url}''>Continuar lendo este artigo<\\/a><\\/p>","guestSuffixLinksToFullArticle":0,"suffixDateFormat":"[M, jS]","wrapperTag":"","wrapperClass":"","translateAdditions":0,"extraSelfClosingTags":"br, hr, img","applyFormatting":"when_active","tagsToRemove":"img","tagsToRemoveWithContents":"style, nav, menu, footer, script, head, form, noscript","squareTokensToRemove":"","squareTokensToRemoveWithContents":"","curlyTokensToRemove":"","curlyTokensToRemoveWithContents":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 0, 'detalhar clean', 'template', 'dt-clean', '', 0, 1, 1, 0, '{"name":"detalhar clean","type":"template","creationDate":"xx-xx-xxxx","author":"Your name","copyright":"Copyright.","authorEmail":"your.email@example.com","authorUrl":"","version":"1.0","description":"Simple starter template for Joomla 3.0","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 0, 'Blank Component', 'component', 'com_blankcomponent', '', 1, 1, 0, 0, '{"name":"Blank Component","type":"component","creationDate":"03\\/11\\/2012","author":"Omar Muhammad","copyright":"Copyright \\u00a9 2012, Omar''s Site, All Rights Reserved.","authorEmail":"admin@omar84.com","authorUrl":"http:\\/\\/omar84.com","version":"3.0.0","description":"Blank Component was made to make it possible to create a menu item page that contains only modules and no component.","group":"","filename":"blankcomponent"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 10070, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"COM_JCE","type":"component","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.6.16","description":"COM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 10070, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.16","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{"verify_html":"1","schema":"mixed","entity_encoding":"raw","keep_nbsp":"1","pad_empty_tags":"1","cleanup_pluginmode":"0","forced_root_block":"p","content_style_reset":"0","content_css":"0","content_css_custom":"templates\\/$template\\/css\\/style.css","body_class":"","compress_javascript":"1","compress_css":"1","compress_gzip":"0","use_cookies":"1","custom_config":"","callback_file":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 10070, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{"name":"plg_system_jce","type":"plugin","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.16","description":"PLG_SYSTEM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 0, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 0, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"interval":"12","mode":"1","lastrun":"","debug":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 0, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"email":"","language_override":"","lastrun":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10043, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10056, 10057, 'com_chronoforms5', 'component', 'com_chronoforms5', '', 1, 1, 0, 0, '{"name":"com_chronoforms5","type":"component","creationDate":"December 2016","author":"ChronoEngine.com","copyright":"ChronoEngine.com 2016","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"5.0.14","description":"The ChronoForms V5 component is the ultimate tool for Joomla forms creation, power and simplicity.","group":"","filename":"chronoforms5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 0, 'ChronoForms5 Package', 'package', 'pkg_chronoforms5', '', 0, 1, 1, 0, '{"name":"ChronoForms5 Package","type":"package","creationDate":"2016","author":"ChronoEngine.com Team","copyright":"","authorEmail":"","authorUrl":"","version":"V5.0","description":"ChronoForms5 extension package (Component + CEGCore library)","group":"","filename":"pkg_chronoforms5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 0, 'ChronoForms5', 'module', 'mod_chronoforms5', '', 0, 1, 0, 0, '{"name":"ChronoForms5","type":"module","creationDate":"December 2013","author":"ChronoEngine.com","copyright":"Copyright (C) 2006 - 2013 ChronoEngine.com. All rights reserved.","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"V5 RC1.2","description":"Show a Chronoform V5","group":"","filename":"mod_chronoforms5"}', '{"cache":"0","chronoform":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 0, 'Chronoforms5', 'plugin', 'chronoforms5', 'content', 0, 0, 1, 0, '{"name":"Chronoforms5","type":"plugin","creationDate":"08.Dec.2013","author":"ChronoEngine.com","copyright":"(C) ChronoEngine.com","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"V5.0","description":"\\n\\tThis plugin requires the ChronoForms V5 component.\\n\\tYou just need to put the name of the form you want to show between : {chronoforms5}&{\\/chronoforms5}, Example: {chronoforms5}my_form_name{\\/chronoforms5}\\n\\t","group":"","filename":"chronoforms5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 0, 'PLG_OSMAP_JOOMLA', 'plugin', 'joomla', 'osmap', 0, 1, 1, 0, '{"name":"PLG_OSMAP_JOOMLA","type":"plugin","creationDate":"May 09 2017","author":"Joomlashack","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved. \\/ Forked from XMap - Guillermo Vargas - guille@vargas.co.cr","authorEmail":"help@joomlashack.com","authorUrl":"https:\\/\\/www.joomlashack.com","version":"4.2.12","description":"PLG_OSMAP_JOOMLA_PLUGIN_DESCRIPTION","group":"","filename":"joomla"}', '{"expand_categories":"1","expand_featured":"1","max_category_level":"all","include_archived":"2","show_unauth":"0","add_pagebreaks":"1","max_art":"0","max_art_age":"0","article_order":"0","article_orderdir":"0","add_images":"1","cat_priority":"-1","cat_changefreq":"-1","art_priority":"-1","art_changefreq":"-1","keywords":"metakey"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 10070, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{"name":"plg_content_jce","type":"plugin","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.16","description":"PLG_CONTENT_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 10070, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_jce","type":"plugin","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.16","description":"PLG_INSTALLER_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 10070, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{"name":"plg_extension_jce","type":"plugin","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.16","description":"PLG_EXTENSION_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 10070, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jce","type":"plugin","creationDate":"31-08-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomalcontenteditor.net","version":"2.6.0-pro-beta3","description":"PLG_QUICKICON_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 0, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{"name":"PKG_JCE","type":"package","creationDate":"27-06-2017","author":"Ryan Demmer","copyright":"","authorEmail":"","authorUrl":"","version":"2.6.16","description":"PKG_JCE_XML_DESCRIPTION","group":"","filename":"pkg_jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 0, 'Alledia Framework (Don''t uninstall this if you''re using an Alledia/Joomlashack extension)', 'library', 'allediaframework', '', 0, 1, 1, 0, '{"name":"Alledia Framework (Don''t uninstall this if you''re using an Alledia\\/Joomlashack extension)","type":"library","creationDate":"May 17 2017","author":"Alledia","copyright":"Copyright (C) 2016 Open Source Training, LLC. All rights reserved.","authorEmail":"support@alledia.com","authorUrl":"https:\\/\\/www.alledia.com","version":"1.5.10","description":"Shared library for Alledia extensions","group":"","filename":"allediaframework"}', '{}', '{"author":"Joomlashack"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10073, 10057, 'CEGCore', 'library', 'cegcore', '', 0, 1, 1, 0, '{"name":"CEGCore","type":"library","creationDate":"01.2014","author":"ChronoEngine.com","copyright":"Copyright (C) 2016","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"1.0","description":"The GCore framework classes!","group":"","filename":"cegcore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_fields`
--

CREATE TABLE `b10gt_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_fields_categories`
--

CREATE TABLE `b10gt_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_fields_groups`
--

CREATE TABLE `b10gt_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_fields_values`
--

CREATE TABLE `b10gt_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_filters`
--

CREATE TABLE `b10gt_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links`
--

CREATE TABLE `b10gt_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms0`
--

CREATE TABLE `b10gt_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms1`
--

CREATE TABLE `b10gt_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms2`
--

CREATE TABLE `b10gt_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms3`
--

CREATE TABLE `b10gt_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms4`
--

CREATE TABLE `b10gt_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms5`
--

CREATE TABLE `b10gt_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms6`
--

CREATE TABLE `b10gt_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms7`
--

CREATE TABLE `b10gt_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms8`
--

CREATE TABLE `b10gt_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_terms9`
--

CREATE TABLE `b10gt_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termsa`
--

CREATE TABLE `b10gt_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termsb`
--

CREATE TABLE `b10gt_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termsc`
--

CREATE TABLE `b10gt_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termsd`
--

CREATE TABLE `b10gt_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termse`
--

CREATE TABLE `b10gt_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_links_termsf`
--

CREATE TABLE `b10gt_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_taxonomy`
--

CREATE TABLE `b10gt_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `b10gt_finder_taxonomy`
--

INSERT INTO `b10gt_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_taxonomy_map`
--

CREATE TABLE `b10gt_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_terms`
--

CREATE TABLE `b10gt_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_terms_common`
--

CREATE TABLE `b10gt_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `b10gt_finder_terms_common`
--

INSERT INTO `b10gt_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_tokens`
--

CREATE TABLE `b10gt_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_tokens_aggregate`
--

CREATE TABLE `b10gt_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_finder_types`
--

CREATE TABLE `b10gt_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_languages`
--

CREATE TABLE `b10gt_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_languages`
--

INSERT INTO `b10gt_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_menu`
--

CREATE TABLE `b10gt_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_menu`
--

INSERT INTO `b10gt_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 101, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'main', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'main', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_blankcomponent&view=default', 'component', 1, 1, 1, 10030, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(109, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu.png', 0, '{}', 53, 80, 0, '', 1),
(110, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png', 0, '{}', 54, 55, 0, '', 1),
(111, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png', 0, '{}', 56, 57, 0, '', 1),
(112, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png', 0, '{}', 58, 59, 0, '', 1),
(113, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png', 0, '{}', 60, 61, 0, '', 1),
(114, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png', 0, '{}', 62, 63, 0, '', 1),
(115, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png', 0, '{}', 64, 65, 0, '', 1),
(116, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png', 0, '{}', 66, 67, 0, '', 1),
(117, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png', 0, '{}', 68, 69, 0, '', 1),
(118, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png', 0, '{}', 70, 71, 0, '', 1),
(119, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png', 0, '{}', 72, 73, 0, '', 1),
(120, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png', 0, '{}', 74, 75, 0, '', 1),
(121, 'main', 'COM_PHOCAGALLERY_STYLES', 'com-phocagallery-styles', '', 'com-phocagallery/com-phocagallery-styles', 'index.php?option=com_phocagallery&view=phocagalleryefs', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png', 0, '{}', 76, 77, 0, '', 1),
(122, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 1, 109, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png', 0, '{}', 78, 79, 0, '', 1),
(123, 'main', 'Blank Component', 'blank-component', '', 'blank-component', 'index.php?option=com_blankcomponent', 'component', 1, 1, 1, 10030, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 81, 82, 0, '', 1),
(124, 'mainmenu', 'A empresa', 'a-empresa', '', 'a-empresa', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":" pg-empresa","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(125, 'mainmenu', 'Serviços', 'servicos', '', 'servicos', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":" pg-servicos","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(126, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"5","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"use_article","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":" pg-blog","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(127, 'mainmenu', 'Fale conosco', 'fale-conosco', '', 'fale-conosco', 'index.php?option=com_chronoforms5&view=form', 'component', 1, 1, 1, 10056, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"chronoform":"faleConosco","event":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"Fale conosco","pageclass_sfx":" pg-contato","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(128, 'mainmenu', 'Galeria de fotos', 'galeria-de-fotos', '', 'galeria-de-fotos', 'index.php?option=com_phocagallery&view=category&id=2', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_pagination_categories":"0","show_pagination_category":"1","show_pagination_limit_categories":"0","show_pagination_limit_category":"0","show_ordering_categories":"0","show_ordering_images":"0","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(183, 'main', 'com_associations', 'multilingual-associations', '', 'multilingual-associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 1, 'class:associations', 0, '{}', 83, 84, 0, '*', 1),
(184, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 1, 1, 1, 10056, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms5/CF.png', 0, '{}', 85, 90, 0, '', 1),
(185, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5/com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 1, 184, 2, 10056, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1),
(186, 'main', 'COM_CHRONOFORMS5_VALIDATE', 'com-chronoforms5-validate', '', 'com-chronoforms5/com-chronoforms5-validate', 'index.php?option=com_chronoforms5&act=validateinstall', 'component', 1, 184, 2, 10056, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1),
(187, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 1, 1, 1, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 91, 98, 0, '', 1),
(188, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 1, 187, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 92, 93, 0, '', 1),
(189, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 1, 187, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 94, 95, 0, '', 1),
(190, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 1, 187, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 96, 97, 0, '', 1),
(191, 'main', 'COM_OSMAP_TITLE', 'com-osmap-title', '', 'com-osmap-title', 'index.php?option=com_osmap', 'component', 1, 1, 1, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 99, 100, 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_menu_types`
--

CREATE TABLE `b10gt_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_menu_types`
--

INSERT INTO `b10gt_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_messages`
--

CREATE TABLE `b10gt_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_messages_cfg`
--

CREATE TABLE `b10gt_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_modules`
--

CREATE TABLE `b10gt_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_modules`
--

INSERT INTO `b10gt_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Menu principal', '', '', 1, 'dt-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Artigos populares', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 42, 'Artigos Recentes', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Usuários logados', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 6, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","shownew":"1","showhelp":"0","forum_url":false,"cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 6, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(88, 59, 'Phoca Gallery Image Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_phocagallery_image', 1, 1, '', 0, '*'),
(89, 60, 'BT Content Slider', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentslider', 1, 1, '{"moduleclass_sfx":"","layout":"_:default","content_title":"","content_link":"","butlet":"1","navigation_top":"0","navigation_right":"0","next_back":"0","module_width":"auto","module_height":"auto","auto_height":"1","items_per_cols":"1","items_per_rows":"3","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","equalHeight":"1","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","image_quality":"80","default_thumb":"1","touch_screen":"0","hovereffect":"1","modalbox":"0","next_back_effect":"slide","bullet_effect":"slide","pause_hover":"1","interval":"5000","duration":"500","effect":"easeInQuad","auto_start":"1","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 61, 'DT Facebook Page', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dt_facebook_page', 1, 1, '', 0, '*'),
(91, 62, 'DT Simple Map', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dt_simple_map', 1, 1, '', 0, '*'),
(92, 63, 'DT Simple Youtube Embed', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dt_youtube_embed', 1, 1, '', 0, '*'),
(93, 64, 'Slideshow CK', '', '', 1, 'dt-slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshowck', 1, 0, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/detalhar-quickstart\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/detalhar-quickstart\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|,|qq|state|qq|:|qq|1|qq|}]","theme":"default","skin":"camera_black_skin","alignment":"center","loader":"bar","width":"auto","height":"35%","navigation":"2","thumbnails":"0","thumbnailwidth":"100","thumbnailheight":"75","pagination":"0","effect":["simpleFade"],"time":"4500","transperiod":"1500","captioneffect":"moveFromLeft","portrait":"0","autoAdvance":"1","hover":"0","displayorder":"normal","limitslides":"","fullpage":"0","imagetarget":"_parent","container":"","usemobileimage":"0","mobileimageresolution":"640","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","autocreatethumbs":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","articletitle":"h3","showarticletitle":"1","usecaptionresponsive":"1","captionresponsiveresolution":"480","captionresponsivefontsize":"0.6em","captionresponsivehidecaption":"0","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgopacity":"0.6","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 78, 'Módulo HTML 01', '', '<p>Teste</p>', 1, 'dt-body-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 79, 'Módulo HTML 02', '', '<p>Teste</p>', 1, 'dt-body-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 83, 'ChronoForms5', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_chronoforms5', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_modules_menu`
--

CREATE TABLE `b10gt_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_modules_menu`
--

INSERT INTO `b10gt_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(93, 101),
(94, 0),
(95, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_newsfeeds`
--

CREATE TABLE `b10gt_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_osmap_items_settings`
--

CREATE TABLE `b10gt_osmap_items_settings` (
  `sitemap_id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(100) NOT NULL DEFAULT '',
  `settings_hash` char(32) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'weekly',
  `priority` float NOT NULL DEFAULT '0.5',
  `format` tinyint(1) UNSIGNED DEFAULT NULL COMMENT 'Format of the setting: 1) Legacy Mode - UID Only; 2) Based on menu ID and UID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_osmap_sitemaps`
--

CREATE TABLE `b10gt_osmap_sitemaps` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `params` text,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  `links_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_osmap_sitemaps`
--

INSERT INTO `b10gt_osmap_sitemaps` (`id`, `name`, `params`, `is_default`, `published`, `created_on`, `links_count`) VALUES
(1, 'Sitemap', NULL, 1, 1, '2015-11-04 22:14:25', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_osmap_sitemap_menus`
--

CREATE TABLE `b10gt_osmap_sitemap_menus` (
  `sitemap_id` int(11) UNSIGNED NOT NULL,
  `menutype_id` int(11) NOT NULL,
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'weekly',
  `priority` float NOT NULL DEFAULT '0.5',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_osmap_sitemap_menus`
--

INSERT INTO `b10gt_osmap_sitemap_menus` (`sitemap_id`, `menutype_id`, `changefreq`, `priority`, `ordering`) VALUES
(1, 1, 'weekly', 0.5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_overrider`
--

CREATE TABLE `b10gt_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery`
--

CREATE TABLE `b10gt_phocagallery` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_phocagallery`
--

INSERT INTO `b10gt_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(1, 2, 0, '03_-_campos_naturais_-_bonfim_-_rr', '03-campos-naturais-bonfim-rr', 'galeria-exemplo/03_-_campos_naturais_-_bonfim_-_rr.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 644661, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(2, 2, 0, '95383_Papel-de-Parede-Cachoeiras-Naturais_1600x1200', '95383-papel-de-parede-cachoeiras-naturais-1600x1200', 'galeria-exemplo/95383_Papel-de-Parede-Cachoeiras-Naturais_1600x1200.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 691341, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(3, 2, 0, 'clic-car-do-lvaro-paisagens-naturais-334081', 'clic-car-do-lvaro-paisagens-naturais-334081', 'galeria-exemplo/clic-car-do-lvaro-paisagens-naturais-334081.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 334081, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(4, 2, 0, 'dibujo-de-un-paisaje-natural', 'dibujo-de-un-paisaje-natural', 'galeria-exemplo/dibujo-de-un-paisaje-natural.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 190013, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(5, 2, 0, 'dsc00075akw12', 'dsc00075akw12', 'galeria-exemplo/dsc00075akw12.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 133435, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(6, 2, 0, 'lakes-district', 'lakes-district', 'galeria-exemplo/lakes-district.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 305746, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(7, 2, 0, 'Lindas-Imagens-de-Paisagens-Naturais', 'lindas-imagens-de-paisagens-naturais', 'galeria-exemplo/Lindas-Imagens-de-Paisagens-Naturais.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 180940, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(8, 2, 0, 'lugares', 'lugares', 'galeria-exemplo/lugares.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 227491, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(9, 2, 0, 'overnature-com-2', 'overnature-com-2', 'galeria-exemplo/overnature-com-2.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 529130, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(10, 2, 0, 'Paisajes-Bonitos', 'paisajes-bonitos', 'galeria-exemplo/Paisajes-Bonitos.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 397935, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(11, 2, 0, 'Tochigi_Prefecture_Nikko_Japan', 'tochigi-prefecture-nikko-japan', 'galeria-exemplo/Tochigi_Prefecture_Nikko_Japan.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 326125, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(12, 2, 0, 'wallpaper-scenery-natural-beautiful-house', 'wallpaper-scenery-natural-beautiful-house', 'galeria-exemplo/wallpaper-scenery-natural-beautiful-house.jpg', 1, NULL, '2015-11-04 22:09:12', 0, '', '', 0, '', 0, NULL, 0, 713442, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_categories`
--

CREATE TABLE `b10gt_phocagallery_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  `image_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_phocagallery_categories`
--

INSERT INTO `b10gt_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`, `image_id`) VALUES
(1, 0, 0, 'Galerias de fotos', '', 'galerias-de-fotos', '', '', '', '', '2015-11-04 22:07:17', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*', 0),
(2, 1, 0, 'Fotos de exemplo', '', 'fotos-de-exemplo', '', '', '', '', '2015-11-04 22:07:31', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 14, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_comments`
--

CREATE TABLE `b10gt_phocagallery_comments` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_fb_users`
--

CREATE TABLE `b10gt_phocagallery_fb_users` (
  `id` int(11) NOT NULL,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_img_comments`
--

CREATE TABLE `b10gt_phocagallery_img_comments` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_img_votes`
--

CREATE TABLE `b10gt_phocagallery_img_votes` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_img_votes_statistics`
--

CREATE TABLE `b10gt_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_styles`
--

CREATE TABLE `b10gt_phocagallery_styles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_phocagallery_styles`
--

INSERT INTO `b10gt_phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocagallery', 'phocagallery', 'phocagallery.css', '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', '', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Default', '', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 3, NULL, '*'),
(4, 'Bootstrap', '', 'bootstrap.min.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_tags`
--

CREATE TABLE `b10gt_phocagallery_tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_tags_ref`
--

CREATE TABLE `b10gt_phocagallery_tags_ref` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_user`
--

CREATE TABLE `b10gt_phocagallery_user` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_votes`
--

CREATE TABLE `b10gt_phocagallery_votes` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_phocagallery_votes_statistics`
--

CREATE TABLE `b10gt_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_postinstall_messages`
--

CREATE TABLE `b10gt_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_postinstall_messages`
--

INSERT INTO `b10gt_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(4, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(5, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_readlesstext`
--

CREATE TABLE `b10gt_readlesstext` (
  `id` int(10) NOT NULL,
  `rtable` varchar(255) NOT NULL DEFAULT '' COMMENT 'The component name where the item resides in. Also called option',
  `rid` int(10) NOT NULL COMMENT 'The unique id of the item in that component. e.g. the article id for com_content',
  `hash` varchar(255) DEFAULT '' COMMENT 'The fingerprint of the full item text.',
  `char` int(10) UNSIGNED DEFAULT '0' COMMENT 'Count in the full item text.',
  `word` int(10) UNSIGNED DEFAULT '0' COMMENT 'Count in the full item text.',
  `sentence` int(10) UNSIGNED DEFAULT '0' COMMENT 'Count in the full item text.',
  `paragraph` int(10) UNSIGNED DEFAULT '0' COMMENT 'Count in the full item text.',
  `image_tag_start_pos` int(10) UNSIGNED DEFAULT '0' COMMENT 'Start position of the image tag where the thumbnail was created from.',
  `image_tag_length` int(10) UNSIGNED DEFAULT '0' COMMENT 'Length of the image tag in nr of UTF8 chars.',
  `image_url` varchar(1023) NOT NULL DEFAULT '' COMMENT 'Url to the image where the thumbnail was created from.',
  `thumbnail_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url to the thumbnail.',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Debug information.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_readlesstext`
--

INSERT INTO `b10gt_readlesstext` (`id`, `rtable`, `rid`, `hash`, `char`, `word`, `sentence`, `paragraph`, `image_tag_start_pos`, `image_tag_length`, `image_url`, `thumbnail_url`, `last_update`) VALUES
(1, 'com_content', 3, 'v5.2 (r274)86d24386246640a65629c53f4979e2c8', 3126, 479, 0, 0, 32, 176, 'images/overnature-com-2.jpg', 'http://localhost/detalhar-quickstart/cache/plg_readlesstext/d9f887f647a3b631504a2d2990c79f39.jpg', '2015-11-04 23:04:00'),
(2, 'com_content', 4, 'v5.2 (r274)86d24386246640a65629c53f4979e2c8', 3126, 479, 0, 0, 32, 176, 'images/overnature-com-2.jpg', 'http://localhost/detalhar-quickstart/cache/plg_readlesstext/d9f887f647a3b631504a2d2990c79f39.jpg', '2015-11-04 23:04:00'),
(3, 'com_content', 5, 'v5.2 (r274)86d24386246640a65629c53f4979e2c8', 3126, 479, 0, 0, 32, 176, 'images/overnature-com-2.jpg', 'http://localhost/detalhar-quickstart/cache/plg_readlesstext/d9f887f647a3b631504a2d2990c79f39.jpg', '2015-11-04 23:04:00'),
(4, 'com_content', 6, 'v5.2 (r274)86d24386246640a65629c53f4979e2c8', 3126, 479, 0, 0, 32, 176, 'images/overnature-com-2.jpg', 'http://localhost/detalhar-quickstart/cache/plg_readlesstext/d9f887f647a3b631504a2d2990c79f39.jpg', '2015-11-04 23:04:00'),
(5, 'com_content', 7, 'v5.2 (r274)86d24386246640a65629c53f4979e2c8', 3126, 479, 0, 0, 32, 176, 'images/overnature-com-2.jpg', 'http://localhost/detalhar-quickstart/cache/plg_readlesstext/d9f887f647a3b631504a2d2990c79f39.jpg', '2015-11-04 23:04:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_redirect_links`
--

CREATE TABLE `b10gt_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_schemas`
--

CREATE TABLE `b10gt_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_schemas`
--

INSERT INTO `b10gt_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.7.3-2017-06-03'),
(10010, '4.2.0'),
(10020, '4.3.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_session`
--

CREATE TABLE `b10gt_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_session`
--

INSERT INTO `b10gt_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('47mnggn8vvpccuv3q195r4g7b0', 1, 1, '1499345224', 'joomla|s:712:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ5OTM0NTIyNDtzOjQ6Imxhc3QiO2k6MTQ5OTM0NTIyNDtzOjM6Im5vdyI7aToxNDk5MzQ1MjI0O31zOjU6InRva2VuIjtzOjMyOiJGQ0pRbEF2bVV5U1FuZnVrVVkxZk93ZHZrM3NXTHBBUiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_tags`
--

CREATE TABLE `b10gt_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_tags`
--

INSERT INTO `b10gt_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_template_styles`
--

CREATE TABLE `b10gt_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_template_styles`
--

INSERT INTO `b10gt_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#10223e","headerColor":"#1a3867","sidebarColor":"#0088cc","linkColor":"#0088cc","loginBackgroundColor":"#17568c","logoFile":"images\\/logo-detal-admin.png","loginLogoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}'),
(9, 'dt-clean', 0, '1', 'detalhar clean - Default', '{"colorPrimary":"#098ae0","colorSecundary":"#07751f","colorTerciary":"#b3a700","logo":"images\\/logo-deta-cor01.png","bgTop":"","bgBodyColor":"","bgBodyImg":"","bgFooter":"","linearRadial":"linear","gradientColor1":"#cccccc","gradientColor2":"#333333","iconH3":"","fbPublisher":"http:\\/\\/facebook.com.br\\/detalharweb","fbAuthor":"http:\\/\\/facebook.com.br\\/detalharweb"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_ucm_base`
--

CREATE TABLE `b10gt_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_ucm_content`
--

CREATE TABLE `b10gt_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_ucm_history`
--

CREATE TABLE `b10gt_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_ucm_history`
--

INSERT INTO `b10gt_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 5, '', '2015-11-04 21:34:25', 277, 604, '88f727940d803faaa0d16e7dd9be258609eaa30b', '{"id":2,"asset_id":"27","parent_id":"1","lft":"1","rgt":"2","level":"1","path":"uncategorised","extension":"com_content","title":"P\\u00e1ginas do site","alias":"paginas-do-site","note":"","description":"","published":"1","checked_out":"277","checked_out_time":"2015-11-04 21:34:11","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"42","created_time":"2011-01-01 00:00:01","modified_user_id":"277","modified_time":"2015-11-04 21:34:25","hits":"0","language":"*","version":"1"}', 0),
(2, 8, 5, '', '2015-11-04 21:34:43', 277, 545, '5b650902084c1ad8c2dd2c2c83ccd929f31742d8', '{"id":8,"asset_id":65,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Blog","alias":"blog","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"277","created_time":"2015-11-04 21:34:43","modified_user_id":null,"modified_time":"2015-11-04 21:34:43","hits":"0","language":"*","version":null}', 0),
(3, 1, 1, '', '2015-11-04 21:39:51', 277, 5048, '324e72aabbedaf5e2f444b33742b29f4b662d1a6', '{"id":1,"asset_id":66,"title":"A empresa","alias":"a-empresa","introtext":"<p style=\\"text-align: justify;\\"><img style=\\"margin-right: 15px; margin-bottom: 15px; float: left;\\" class=\\"img-polaroid\\" alt=\\"overnature-com-2.jpg\\" src=\\"images\\/overnature-com-2.jpg\\" height=\\"259\\" width=\\"390\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:39:51","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 2, 1, '', '2015-11-04 21:40:29', 277, 5035, '2f19c5de71b46873319eb1f1c7497fa94a0932d6', '{"id":2,"asset_id":67,"title":"A empresa (2)","alias":"a-empresa-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-right: 15px; margin-bottom: 15px; float: left;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"2","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:40:29","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 2, 1, '', '2015-11-04 21:40:57', 277, 5070, 'ebd1a5ee0bd944855b03ed8efa52d9b3fa2e43d6', '{"id":2,"asset_id":"67","title":"Servi\\u00e7os","alias":"servicos","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:40:57","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:40:29","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 3, 1, '', '2015-11-04 21:41:13', 277, 5038, '9e77de6ea277663ebc4dd79c58e48d911ac1e49b', '{"id":3,"asset_id":68,"title":"Servi\\u00e7os (2)","alias":"servicos-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"2","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:41:13","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 3, 1, '', '2015-11-04 21:41:51', 277, 5125, '7471a607b07752b5dd417ff15fe4928f745e2044', '{"id":3,"asset_id":"68","title":"Primeiro artigo de exemplo para o blog","alias":"primeiro-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:41:51","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:41:13","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 4, 1, '', '2015-11-04 21:42:06', 277, 5093, '5958e4a2f95dd5f7f5689e547a7979b4047fd1d2', '{"id":4,"asset_id":69,"title":"Primeiro artigo de exemplo para o blog (2)","alias":"primeiro-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:42:06","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2015-11-04 21:42:22', 277, 5123, '96809aa171c9695a30758bce1a5ac08202c70188', '{"id":4,"asset_id":"69","title":"Segundo artigo de exemplo para o blog","alias":"segundo-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:42:22","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:42:06","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 5, 1, '', '2015-11-04 21:42:40', 277, 5091, '1aeae0cd5f7e8f11db236c092edab2cb6d870553', '{"id":5,"asset_id":70,"title":"Segundo artigo de exemplo para o blog (2)","alias":"segundo-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:42:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `b10gt_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(11, 5, 1, '', '2015-11-04 21:42:58', 277, 5125, '723cd6770b87767b443aa6e7f4461dc067bc38c6', '{"id":5,"asset_id":"70","title":"Terceiro artigo de exemplo para o blog","alias":"terceiro-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:42:58","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:42:40","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 6, 1, '', '2015-11-04 21:43:13', 277, 5093, 'e4352a1e0071190e1260b56ab8e94c8302766728', '{"id":6,"asset_id":71,"title":"Terceiro artigo de exemplo para o blog (2)","alias":"terceiro-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:43:13","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 6, 1, '', '2015-11-04 21:43:32', 277, 5121, '85deb44cef4524a5588abaeca81e6f2074d05d24', '{"id":6,"asset_id":"71","title":"Quarto artigo de exemplo para o blog","alias":"quarto-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:43:32","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:43:13","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 7, 1, '', '2015-11-04 21:43:41', 277, 5089, '9a37749a374c28ec9b9e85467af798e0fb9cc702', '{"id":7,"asset_id":72,"title":"Quarto artigo de exemplo para o blog (2)","alias":"quarto-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:43:41","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 7, 1, '', '2015-11-04 21:44:00', 277, 5121, '6d171090d1f2ceb09cd3ed8b4e39f4782f97e597', '{"id":7,"asset_id":"72","title":"Quinto artigo de exemplo para o blog","alias":"quinto-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:44:00","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:43:41","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 8, 1, '', '2015-11-04 21:44:10', 277, 5089, 'cc802a58b46b36e4c78a0b4508ca635d6fb7868d', '{"id":8,"asset_id":73,"title":"Quinto artigo de exemplo para o blog (2)","alias":"quinto-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:44:10","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 8, 1, '', '2015-11-04 21:44:27', 277, 5119, '8c4409b764d22c2439dffb5b0e7d393ce56aeb49', '{"id":8,"asset_id":"73","title":"Sexto artigo de exemplo para o blog","alias":"sexto-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:44:27","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:44:10","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 9, 1, '', '2015-11-04 21:44:43', 277, 5087, '6bcbc66a1b1271e3e90cb8997b3378c90b9bfd53', '{"id":9,"asset_id":74,"title":"Sexto artigo de exemplo para o blog (2)","alias":"sexto-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:44:43","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 9, 1, '', '2015-11-04 21:45:03', 277, 5126, '5e2517a4797e12e20e7b8fe53c394ee587fe80ed', '{"id":9,"asset_id":"74","title":"S\\u00e9timo artigo de exemplo para o blog","alias":"setimo-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:45:03","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:44:43","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `b10gt_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(20, 10, 1, '', '2015-11-04 21:45:14', 277, 5095, 'dd0798bf7da8ffb8b6d2fba4b7bc61b82c91c4fb', '{"id":10,"asset_id":75,"title":"S\\u00e9timo artigo de exemplo para o blog (2)","alias":"setimo-artigo-de-exemplo-para-o-blog-2","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":0,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:45:14","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-11-04 21:39:51","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 10, 1, '', '2015-11-04 21:45:32', 277, 5127, '9ea350327caaf0c7b9383a82e8ebd3b4f1210b24', '{"id":10,"asset_id":"75","title":"\\u00daltimo artigo de exemplo para o blog","alias":"ultimo-artigo-de-exemplo-para-o-blog","introtext":"<p style=\\"text-align: justify;\\"><img src=\\"images\\/overnature-com-2.jpg\\" alt=\\"overnature-com-2.jpg\\" width=\\"390\\" height=\\"259\\" class=\\"img-polaroid\\" style=\\"margin-bottom: 15px; margin-left: 15px; float: right;\\" \\/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus felis id congue ornare. Sed vitae odio ac ex volutpat tincidunt. Fusce pharetra ante auctor aliquet volutpat. Pellentesque tristique, nisi sit amet tristique pharetra, tortor dolor lobortis lectus, a ullamcorper orci est fermentum nisi. Fusce sit amet velit auctor, tristique quam a, mollis orci. Curabitur a tellus velit. Sed quis vehicula ipsum, et cursus diam. Duis non vehicula neque, a porta ligula. Donec non ex eu dolor molestie condimentum. In nec blandit justo. Nulla eget dolor facilisis, aliquam nisl eget, sodales odio. Etiam dapibus nec quam dapibus venenatis.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Sed ac odio mattis, venenatis enim et, dapibus sem. Donec quis magna sed erat sagittis vehicula. Vivamus id gravida ex, quis pharetra risus. Phasellus a lacus hendrerit turpis blandit tempor. Proin tincidunt luctus dui sit amet volutpat. Proin ut orci est. Proin dolor augue, scelerisque sed ante vitae, gravida auctor neque. Fusce quis purus molestie, vulputate dui eget, malesuada dui. Sed luctus lorem in orci consectetur luctus. Donec aliquam massa vitae massa aliquet varius. Integer magna odio, vehicula malesuada dictum id, tincidunt vel tortor. Ut eleifend ac elit a ullamcorper. Nunc suscipit congue lorem, ornare semper quam pellentesque id. Mauris metus tortor, gravida a pharetra et, hendrerit id sem. Praesent vitae sodales est.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Maecenas sit amet tortor vestibulum, rhoncus lorem quis, pretium nisi. Etiam commodo magna eget nulla hendrerit luctus. Cras vestibulum, diam aliquet laoreet dictum, orci nunc fringilla mauris, sed vehicula ex nisl mollis sem. Donec a dapibus ex. Nunc faucibus aliquet pharetra. Donec et varius leo. Nunc tincidunt urna at vulputate maximus. Duis consequat pulvinar porttitor. Nullam porta viverra orci ac aliquam. Nulla consequat lectus orci, vitae elementum quam porta id. Proin mattis massa ac auctor iaculis. Nulla pretium, tortor ac sollicitudin fermentum, neque nunc aliquet sapien, nec pretium odio nisl id lacus.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Duis sed augue eget lorem dictum pharetra quis id ipsum. Nulla commodo eget arcu id porttitor. In egestas, arcu aliquam iaculis gravida, nibh massa ornare nunc, ac sodales metus dui non neque. Curabitur viverra porta elit, eu venenatis urna auctor eu. Aenean vitae sagittis nisi. Sed nec lorem sit amet purus dapibus tincidunt. Ut odio elit, rutrum sed vulputate eget, euismod at nibh. Nam quis metus sit amet odio aliquam pretium. Etiam tincidunt vel sapien et viverra. Nulla augue dolor, malesuada sed malesuada eu, maximus eget eros. Phasellus vel purus rhoncus, fringilla quam vitae, accumsan nulla. Vivamus sed urna ipsum. Cras lacinia maximus ex vel mattis. Mauris non viverra dui, et varius nulla.<\\/p>\\r\\n<p style=\\"text-align: justify;\\">Etiam at vehicula turpis. Vivamus nec nibh pellentesque, ornare tellus a, molestie sapien. Phasellus vitae leo purus. Nunc eu purus in tellus consectetur egestas eget in diam. Mauris dictum tellus nec tempor fermentum. Donec in feugiat justo. Sed in mollis velit. Sed tincidunt porta semper. Integer non erat maximus, interdum ligula ut, lobortis lacus. Maecenas id nibh nulla. Integer sit amet porttitor odio.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-11-04 21:39:51","created_by":"277","created_by_alias":"","modified":"2015-11-04 21:45:32","modified_by":"277","checked_out":"277","checked_out_time":"2015-11-04 21:45:14","publish_up":"2015-11-04 21:39:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_updates`
--

CREATE TABLE `b10gt_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Extraindo dados da tabela `b10gt_updates`
--

INSERT INTO `b10gt_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.7.0.2', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.7.2.3', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(46, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(47, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(48, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(49, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(50, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(51, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(52, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(53, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(54, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(55, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(56, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(57, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(58, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(59, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(60, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(61, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(62, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(63, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(64, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(65, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(66, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(67, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(68, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(69, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(70, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(71, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(72, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_update_sites`
--

CREATE TABLE `b10gt_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Extraindo dados da tabela `b10gt_update_sites`
--

INSERT INTO `b10gt_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1499345184, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1499345187, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1499345188, ''),
(10, 'DT Facebook Page Update', 'extension', 'https://github.com/detalhar/updating-extensions/blob/master/mod_dt_facebook_page_update.xml', 1, 1499345189, ''),
(11, 'DT Simple Map Update', 'extension', 'https://github.com/detalhar/updating-extensions/blob/master/mod_dt_simple_map_update.xml', 1, 1499345191, ''),
(12, 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', 1, 1499345191, ''),
(35, 'Chronoforms v5 update server', 'extension', 'http://www.chronoengine.com/chrono_joomla_updates/chronoforms5.xml', 1, 1499345192, ''),
(37, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1499345193, ''),
(49, 'Alledia Framework', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/lib_allediaframework', 1, 1499345194, ''),
(50, 'CEGCore v1 update server', 'library', 'http://www.chronoengine.com/chrono_joomla_updates/cegcore1.xml', 1, 1499345194, ''),
(51, 'JCE Editor Package', 'collection', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&file=pkg_jce.xml', 1, 1499345196, ''),
(52, 'OSSystem', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/plg_system_ossystem', 1, 1499345197, ''),
(53, 'OSMap', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/com_osmap', 1, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_update_sites_extensions`
--

CREATE TABLE `b10gt_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Extraindo dados da tabela `b10gt_update_sites_extensions`
--

INSERT INTO `b10gt_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(3, 802),
(3, 10002),
(4, 28),
(10, 10024),
(11, 10025),
(12, 10027),
(35, 10056),
(37, 10002),
(49, 10072),
(50, 10073),
(51, 10070),
(52, 10012),
(53, 10010);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_usergroups`
--

CREATE TABLE `b10gt_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_usergroups`
--

INSERT INTO `b10gt_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 10, 17, 'Registered'),
(3, 2, 11, 16, 'Author'),
(4, 3, 12, 15, 'Editor'),
(5, 4, 13, 14, 'Publisher'),
(6, 1, 4, 9, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 6, 7, 8, 'Proprietário do site');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_users`
--

CREATE TABLE `b10gt_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_users`
--

INSERT INTO `b10gt_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(276, 'Super User', 'admin', 'central@detalharweb.com.br', '$2y$10$7IPnwrPFr5xIb1oijkGdXupag0/XFuLLRpe4KJd48GoLddG.PiU6y', 0, 1, '2015-11-04 21:12:06', '2017-07-06 12:47:03', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(277, 'Gerenciador do site', 'cliente', 'teste@detalharweb.com.br', '$2y$10$fHBdiy8CGRAnZbPaUJ.dUe9EDfXmwWLYGDSjesRFqd87GOKETYJYS', 0, 0, '2015-11-04 21:30:01', '2015-11-04 21:30:40', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_user_keys`
--

CREATE TABLE `b10gt_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_user_notes`
--

CREATE TABLE `b10gt_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_user_profiles`
--

CREATE TABLE `b10gt_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_user_usergroup_map`
--

CREATE TABLE `b10gt_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_user_usergroup_map`
--

INSERT INTO `b10gt_user_usergroup_map` (`user_id`, `group_id`) VALUES
(276, 8),
(277, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_utf8_conversion`
--

CREATE TABLE `b10gt_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_utf8_conversion`
--

INSERT INTO `b10gt_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_viewlevels`
--

CREATE TABLE `b10gt_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `b10gt_viewlevels`
--

INSERT INTO `b10gt_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `b10gt_wf_profiles`
--

CREATE TABLE `b10gt_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `b10gt_wf_profiles`
--

INSERT INTO `b10gt_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '0', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor,hr', 1, 1, 127, '2016-04-01 12:51:05', '{"editor":{"allow_javascript":"1","allow_css":"1","allow_php":"1"},"media":{"iframes":"1"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b10gt_assets`
--
ALTER TABLE `b10gt_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `b10gt_associations`
--
ALTER TABLE `b10gt_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `b10gt_banners`
--
ALTER TABLE `b10gt_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `b10gt_banner_clients`
--
ALTER TABLE `b10gt_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `b10gt_banner_tracks`
--
ALTER TABLE `b10gt_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `b10gt_categories`
--
ALTER TABLE `b10gt_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Indexes for table `b10gt_chronoengine_chronoforms`
--
ALTER TABLE `b10gt_chronoengine_chronoforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_chronoengine_extensions`
--
ALTER TABLE `b10gt_chronoengine_extensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `b10gt_contact_details`
--
ALTER TABLE `b10gt_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `b10gt_content`
--
ALTER TABLE `b10gt_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `b10gt_contentitem_tag_map`
--
ALTER TABLE `b10gt_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `b10gt_content_frontpage`
--
ALTER TABLE `b10gt_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `b10gt_content_rating`
--
ALTER TABLE `b10gt_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `b10gt_content_types`
--
ALTER TABLE `b10gt_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `b10gt_extensions`
--
ALTER TABLE `b10gt_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `b10gt_fields`
--
ALTER TABLE `b10gt_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `b10gt_fields_categories`
--
ALTER TABLE `b10gt_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `b10gt_fields_groups`
--
ALTER TABLE `b10gt_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `b10gt_fields_values`
--
ALTER TABLE `b10gt_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `b10gt_finder_filters`
--
ALTER TABLE `b10gt_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `b10gt_finder_links`
--
ALTER TABLE `b10gt_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  ADD KEY `idx_title` (`title`(100));

--
-- Indexes for table `b10gt_finder_links_terms0`
--
ALTER TABLE `b10gt_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms1`
--
ALTER TABLE `b10gt_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms2`
--
ALTER TABLE `b10gt_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms3`
--
ALTER TABLE `b10gt_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms4`
--
ALTER TABLE `b10gt_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms5`
--
ALTER TABLE `b10gt_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms6`
--
ALTER TABLE `b10gt_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms7`
--
ALTER TABLE `b10gt_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms8`
--
ALTER TABLE `b10gt_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_terms9`
--
ALTER TABLE `b10gt_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termsa`
--
ALTER TABLE `b10gt_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termsb`
--
ALTER TABLE `b10gt_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termsc`
--
ALTER TABLE `b10gt_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termsd`
--
ALTER TABLE `b10gt_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termse`
--
ALTER TABLE `b10gt_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_links_termsf`
--
ALTER TABLE `b10gt_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `b10gt_finder_taxonomy`
--
ALTER TABLE `b10gt_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `b10gt_finder_taxonomy_map`
--
ALTER TABLE `b10gt_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `b10gt_finder_terms`
--
ALTER TABLE `b10gt_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `b10gt_finder_terms_common`
--
ALTER TABLE `b10gt_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `b10gt_finder_tokens`
--
ALTER TABLE `b10gt_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `b10gt_finder_tokens_aggregate`
--
ALTER TABLE `b10gt_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `b10gt_finder_types`
--
ALTER TABLE `b10gt_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `b10gt_languages`
--
ALTER TABLE `b10gt_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `b10gt_menu`
--
ALTER TABLE `b10gt_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

--
-- Indexes for table `b10gt_menu_types`
--
ALTER TABLE `b10gt_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `b10gt_messages`
--
ALTER TABLE `b10gt_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `b10gt_messages_cfg`
--
ALTER TABLE `b10gt_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `b10gt_modules`
--
ALTER TABLE `b10gt_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `b10gt_modules_menu`
--
ALTER TABLE `b10gt_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `b10gt_newsfeeds`
--
ALTER TABLE `b10gt_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `b10gt_osmap_items_settings`
--
ALTER TABLE `b10gt_osmap_items_settings`
  ADD PRIMARY KEY (`sitemap_id`,`uid`,`settings_hash`);

--
-- Indexes for table `b10gt_osmap_sitemaps`
--
ALTER TABLE `b10gt_osmap_sitemaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `default_idx` (`is_default`);

--
-- Indexes for table `b10gt_osmap_sitemap_menus`
--
ALTER TABLE `b10gt_osmap_sitemap_menus`
  ADD PRIMARY KEY (`sitemap_id`,`menutype_id`),
  ADD KEY `idx_ordering` (`sitemap_id`,`ordering`),
  ADD KEY `idx_sitemap_menus` (`sitemap_id`);

--
-- Indexes for table `b10gt_overrider`
--
ALTER TABLE `b10gt_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery`
--
ALTER TABLE `b10gt_phocagallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Indexes for table `b10gt_phocagallery_categories`
--
ALTER TABLE `b10gt_phocagallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `b10gt_phocagallery_comments`
--
ALTER TABLE `b10gt_phocagallery_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_fb_users`
--
ALTER TABLE `b10gt_phocagallery_fb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_img_comments`
--
ALTER TABLE `b10gt_phocagallery_img_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_img_votes`
--
ALTER TABLE `b10gt_phocagallery_img_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_img_votes_statistics`
--
ALTER TABLE `b10gt_phocagallery_img_votes_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_styles`
--
ALTER TABLE `b10gt_phocagallery_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_tags`
--
ALTER TABLE `b10gt_phocagallery_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_tags_ref`
--
ALTER TABLE `b10gt_phocagallery_tags_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `i_imgid` (`imgid`,`tagid`);

--
-- Indexes for table `b10gt_phocagallery_user`
--
ALTER TABLE `b10gt_phocagallery_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `b10gt_phocagallery_votes`
--
ALTER TABLE `b10gt_phocagallery_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_phocagallery_votes_statistics`
--
ALTER TABLE `b10gt_phocagallery_votes_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b10gt_postinstall_messages`
--
ALTER TABLE `b10gt_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `b10gt_readlesstext`
--
ALTER TABLE `b10gt_readlesstext`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rtable` (`rtable`,`rid`);

--
-- Indexes for table `b10gt_redirect_links`
--
ALTER TABLE `b10gt_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_link_modifed` (`modified_date`),
  ADD KEY `idx_old_url` (`old_url`(100));

--
-- Indexes for table `b10gt_schemas`
--
ALTER TABLE `b10gt_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `b10gt_session`
--
ALTER TABLE `b10gt_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `b10gt_tags`
--
ALTER TABLE `b10gt_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Indexes for table `b10gt_template_styles`
--
ALTER TABLE `b10gt_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `b10gt_ucm_base`
--
ALTER TABLE `b10gt_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `b10gt_ucm_content`
--
ALTER TABLE `b10gt_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_content_type` (`core_type_alias`(100));

--
-- Indexes for table `b10gt_ucm_history`
--
ALTER TABLE `b10gt_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `b10gt_updates`
--
ALTER TABLE `b10gt_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `b10gt_update_sites`
--
ALTER TABLE `b10gt_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `b10gt_update_sites_extensions`
--
ALTER TABLE `b10gt_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `b10gt_usergroups`
--
ALTER TABLE `b10gt_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `b10gt_users`
--
ALTER TABLE `b10gt_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `idx_name` (`name`(100));

--
-- Indexes for table `b10gt_user_keys`
--
ALTER TABLE `b10gt_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `b10gt_user_notes`
--
ALTER TABLE `b10gt_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `b10gt_user_profiles`
--
ALTER TABLE `b10gt_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `b10gt_user_usergroup_map`
--
ALTER TABLE `b10gt_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `b10gt_viewlevels`
--
ALTER TABLE `b10gt_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `b10gt_wf_profiles`
--
ALTER TABLE `b10gt_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b10gt_assets`
--
ALTER TABLE `b10gt_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `b10gt_banners`
--
ALTER TABLE `b10gt_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_banner_clients`
--
ALTER TABLE `b10gt_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_categories`
--
ALTER TABLE `b10gt_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `b10gt_chronoengine_chronoforms`
--
ALTER TABLE `b10gt_chronoengine_chronoforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_chronoengine_extensions`
--
ALTER TABLE `b10gt_chronoengine_extensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_contact_details`
--
ALTER TABLE `b10gt_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_content`
--
ALTER TABLE `b10gt_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `b10gt_content_types`
--
ALTER TABLE `b10gt_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `b10gt_extensions`
--
ALTER TABLE `b10gt_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10074;
--
-- AUTO_INCREMENT for table `b10gt_fields`
--
ALTER TABLE `b10gt_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_fields_groups`
--
ALTER TABLE `b10gt_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_finder_filters`
--
ALTER TABLE `b10gt_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_finder_links`
--
ALTER TABLE `b10gt_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_finder_taxonomy`
--
ALTER TABLE `b10gt_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_finder_terms`
--
ALTER TABLE `b10gt_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_finder_types`
--
ALTER TABLE `b10gt_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_languages`
--
ALTER TABLE `b10gt_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_menu`
--
ALTER TABLE `b10gt_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `b10gt_menu_types`
--
ALTER TABLE `b10gt_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_messages`
--
ALTER TABLE `b10gt_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_modules`
--
ALTER TABLE `b10gt_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `b10gt_newsfeeds`
--
ALTER TABLE `b10gt_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_osmap_sitemaps`
--
ALTER TABLE `b10gt_osmap_sitemaps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_overrider`
--
ALTER TABLE `b10gt_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `b10gt_phocagallery`
--
ALTER TABLE `b10gt_phocagallery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_categories`
--
ALTER TABLE `b10gt_phocagallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_comments`
--
ALTER TABLE `b10gt_phocagallery_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_fb_users`
--
ALTER TABLE `b10gt_phocagallery_fb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_img_comments`
--
ALTER TABLE `b10gt_phocagallery_img_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_img_votes`
--
ALTER TABLE `b10gt_phocagallery_img_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_img_votes_statistics`
--
ALTER TABLE `b10gt_phocagallery_img_votes_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_styles`
--
ALTER TABLE `b10gt_phocagallery_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_tags`
--
ALTER TABLE `b10gt_phocagallery_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_tags_ref`
--
ALTER TABLE `b10gt_phocagallery_tags_ref`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_user`
--
ALTER TABLE `b10gt_phocagallery_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_votes`
--
ALTER TABLE `b10gt_phocagallery_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_phocagallery_votes_statistics`
--
ALTER TABLE `b10gt_phocagallery_votes_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_postinstall_messages`
--
ALTER TABLE `b10gt_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b10gt_readlesstext`
--
ALTER TABLE `b10gt_readlesstext`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b10gt_redirect_links`
--
ALTER TABLE `b10gt_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_tags`
--
ALTER TABLE `b10gt_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b10gt_template_styles`
--
ALTER TABLE `b10gt_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `b10gt_ucm_content`
--
ALTER TABLE `b10gt_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_ucm_history`
--
ALTER TABLE `b10gt_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `b10gt_updates`
--
ALTER TABLE `b10gt_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `b10gt_update_sites`
--
ALTER TABLE `b10gt_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `b10gt_usergroups`
--
ALTER TABLE `b10gt_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `b10gt_users`
--
ALTER TABLE `b10gt_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT for table `b10gt_user_keys`
--
ALTER TABLE `b10gt_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_user_notes`
--
ALTER TABLE `b10gt_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b10gt_viewlevels`
--
ALTER TABLE `b10gt_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `b10gt_wf_profiles`
--
ALTER TABLE `b10gt_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `b10gt_osmap_sitemap_menus`
--
ALTER TABLE `b10gt_osmap_sitemap_menus`
  ADD CONSTRAINT `fk_sitemaps_menus` FOREIGN KEY (`sitemap_id`) REFERENCES `b10gt_osmap_sitemaps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
