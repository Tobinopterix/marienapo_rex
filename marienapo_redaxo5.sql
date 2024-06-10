-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2024 at 07:02 PM
-- Server version: 5.7.34
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marienapo_redaxo5`
--

-- --------------------------------------------------------

--
-- Table structure for table `rex_action`
--

CREATE TABLE `rex_action` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci,
  `presave` text COLLATE utf8mb4_unicode_ci,
  `postsave` text COLLATE utf8mb4_unicode_ci,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_article`
--

CREATE TABLE `rex_article` (
  `pid` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catpriority` int(10) UNSIGNED NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `template_id` int(10) UNSIGNED NOT NULL,
  `clang_id` int(10) UNSIGNED NOT NULL,
  `createdate` datetime NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_file` varchar(255) DEFAULT '',
  `art_darken` varchar(255) DEFAULT '',
  `art_gallery` text,
  `cat_pic` varchar(255) DEFAULT '',
  `cat_description` text,
  `cat_teaser_legend` text,
  `art_description` text,
  `art_keywords` text,
  `art_title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_article`
--

INSERT INTO `rex_article` (`pid`, `id`, `parent_id`, `name`, `catname`, `catpriority`, `startarticle`, `priority`, `path`, `status`, `template_id`, `clang_id`, `createdate`, `revision`, `createuser`, `updatedate`, `updateuser`, `art_online_from`, `art_online_to`, `art_file`, `art_darken`, `art_gallery`, `cat_pic`, `cat_description`, `cat_teaser_legend`, `art_description`, `art_keywords`, `art_title`) VALUES
(1, 1, 0, 'Die Marienapotheke', 'Die Marienapotheke', 1, 1, 1, '|', 1, 11, 1, '2015-11-30 17:35:05', 0, 'admin', '2024-06-02 19:42:25', 'pax', '', '', '', '', 'forest.jpg,fog_mountain.jpg,beach_photograph.jpg', '', '', '', 'Diese Website ist eine Demo-Website für REDAXO 5.', 'REDAXO Open-Source-CMS', 'Demo für das REDAXO Open-Source-CMS'),
(13, 13, 0, 'Fehlerseite', '', 0, 0, 1, '|', 1, 1, 1, '2016-01-13 14:29:41', 0, 'admin', '2024-06-02 20:45:57', 'pax', '', '', 'manviewingmountains.jpg', '', '', '', '', '', '', '', ''),
(15, 1, 0, 'Home', 'Home', 1, 1, 1, '|', 1, 1, 2, '2016-05-30 11:49:28', 0, 'admin', '2016-06-02 17:11:19', 'admin', '', '', '', '', 'forest.jpg,fog_mountain.jpg,beach_photograph.jpg', '', '', '', 'This site is a REDAXO 5 CMS demo.', 'REDAXO open source CMS', 'REDAXO open source CMS demo'),
(27, 13, 0, 'Error page', '', 0, 0, 1, '|', 1, 1, 2, '2016-01-13 14:29:41', 0, 'admin', '2024-06-02 20:45:57', 'pax', '', '', 'manviewingmountains.jpg', '', '', '', '', '', '', '', ''),
(35, 16, 0, 'Herstellung', 'Herstellung', 4, 1, 1, '|', 1, 11, 1, '2024-06-02 19:43:06', 0, 'pax', '2024-06-02 19:58:53', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(36, 16, 0, 'Herstellung', 'Herstellung', 4, 1, 1, '|', 1, 1, 2, '2024-06-02 19:43:06', 0, 'pax', '2024-06-02 20:34:16', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(37, 17, 0, 'Tee', 'Tee', 5, 1, 1, '|', 1, 11, 1, '2024-06-02 19:59:35', 0, 'pax', '2024-06-02 20:01:43', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(38, 17, 0, 'Tee', 'Tee', 5, 1, 1, '|', 1, 1, 2, '2024-06-02 19:59:35', 0, 'pax', '2024-06-02 20:33:18', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(41, 19, 0, 'DERMATIKA', 'DERMATIKA', 2, 1, 1, '|', 1, 11, 1, '2024-06-02 20:45:31', 0, 'pax', '2024-06-02 20:46:14', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(42, 19, 0, 'DERMATIKA', 'DERMATIKA', 2, 1, 1, '|', 0, 11, 2, '2024-06-02 20:45:31', 0, 'pax', '2024-06-02 20:46:14', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(43, 20, 0, 'SPAGYRIK', 'SPAGYRIK', 3, 1, 1, '|', 1, 11, 1, '2024-06-02 20:45:41', 0, 'pax', '2024-06-02 20:46:22', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL),
(44, 20, 0, 'SPAGYRIK', 'SPAGYRIK', 3, 1, 1, '|', 0, 11, 2, '2024-06-02 20:45:41', 0, 'pax', '2024-06-02 20:46:22', 'pax', NULL, NULL, '', '', NULL, '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rex_article_slice`
--

CREATE TABLE `rex_article_slice` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `clang_id` int(10) UNSIGNED NOT NULL,
  `ctype_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `revision` int(11) NOT NULL,
  `priority` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `value1` mediumtext,
  `value2` mediumtext,
  `value3` mediumtext,
  `value4` mediumtext,
  `value5` mediumtext,
  `value6` mediumtext,
  `value7` mediumtext,
  `value8` mediumtext,
  `value9` mediumtext,
  `value10` mediumtext,
  `value11` mediumtext,
  `value12` mediumtext,
  `value13` mediumtext,
  `value14` mediumtext,
  `value15` mediumtext,
  `value16` mediumtext,
  `value17` mediumtext,
  `value18` mediumtext,
  `value19` mediumtext,
  `value20` mediumtext,
  `media1` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL,
  `media3` varchar(255) DEFAULT NULL,
  `media4` varchar(255) DEFAULT NULL,
  `media5` varchar(255) DEFAULT NULL,
  `media6` varchar(255) DEFAULT NULL,
  `media7` varchar(255) DEFAULT NULL,
  `media8` varchar(255) DEFAULT NULL,
  `media9` varchar(255) DEFAULT NULL,
  `media10` varchar(255) DEFAULT NULL,
  `medialist1` text,
  `medialist2` text,
  `medialist3` text,
  `medialist4` text,
  `medialist5` text,
  `medialist6` text,
  `medialist7` text,
  `medialist8` text,
  `medialist9` text,
  `medialist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `group_template` int(11) NOT NULL,
  `group_closed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_article_slice`
--

INSERT INTO `rex_article_slice` (`id`, `article_id`, `clang_id`, `ctype_id`, `module_id`, `revision`, `priority`, `status`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`, `value8`, `value9`, `value10`, `value11`, `value12`, `value13`, `value14`, `value15`, `value16`, `value17`, `value18`, `value19`, `value20`, `media1`, `media2`, `media3`, `media4`, `media5`, `media6`, `media7`, `media8`, `media9`, `media10`, `medialist1`, `medialist2`, `medialist3`, `medialist4`, `medialist5`, `medialist6`, `medialist7`, `medialist8`, `medialist9`, `medialist10`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `link7`, `link8`, `link9`, `link10`, `linklist1`, `linklist2`, `linklist3`, `linklist4`, `linklist5`, `linklist6`, `linklist7`, `linklist8`, `linklist9`, `linklist10`, `createdate`, `createuser`, `updatedate`, `updateuser`, `group_template`, `group_closed`) VALUES
(26, 1, 1, 1, 4, 0, 1, 1, 'fa-sitemap', 'Struktur', 'REDAXO-Artikel sind die einzelnen Seiten eines Webauftritts; die Kategorien ergeben die Navigationsstruktur.', 'Infos zur Demo und zur Artikel-Struktur', 'fa-list', 'Module', 'Durch Module gelangen Inhalte auf die Artikelseiten. Module enthalten z.B. Texte, Bilder, Videos, Bildergalerien, etc.', 'Mehr zu den Modulen der Demo', 'fa-cubes', 'AddOns', 'AddOns wie ein Texteditor, ein Formulargenerator oder Datenverwaltungen erweitern den Funktionsumfang von REDAXO zum Teil erheblich.', 'Einige der verwendeten AddOns', NULL, NULL, 'size2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-21 21:53:41', 'admin', '2022-01-05 13:55:51', 'admin', 0, 0),
(56, 13, 1, 1, 1, 0, 1, 1, '404', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-01-13 14:35:27', 'admin', '2016-01-13 14:35:27', 'admin', 0, 0),
(58, 13, 1, 1, 16, 0, 2, 1, '', 'h2', '<p style=\"text-align: center;\">Die von Dir aufgerufene Seite existiert nicht.<br>Hast Du Dich vielleicht vertippt?</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'vd', '', 'mb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-01-13 14:36:29', 'admin', '2017-09-21 06:32:56', 'admin', 0, 0),
(59, 13, 1, 1, 16, 0, 3, 1, 'Hinweis', 'h2', '<p>Im Header des Templates gibt es eine Abfrage, die prüft, ob der Artikel offline ist. Wenn dies der Fall ist und der User nicht in Redaxo eingeloggt ist, wird auf diese Fehlerseite weitergeleitet.</p><p>Ist der User eingeloggt, kann er die Seite jedoch betrachten, denn er muss neue Seiten, die noch offline sind, ja editieren können.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'vd', '', 'mt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-01-13 14:40:43', 'admin', '2016-01-13 15:22:57', 'admin', 0, 0),
(63, 1, 2, 1, 4, 0, 1, 1, 'sitemap', 'Structure', 'REDAXO articles represent the sub pages of a website, while the navigation is built from the categories.', 'About this demo and its structure', 'list', 'Modules', 'Modules distribute content to the articles. They usually consist of texts, images, videos, galleries et al.', 'Read more on the modules', 'cubes', 'Addons', 'Addons like text editors, form generators or data managers greatly extend REDAXO’s base features.', 'Some addons used for this demo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '4', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-05-30 10:50:53', 'admin', '2016-06-02 17:11:19', 'admin', 0, 0),
(67, 13, 2, 1, 1, 0, 1, 1, '404', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-05-30 12:16:27', 'admin', '2016-05-30 12:16:27', 'admin', 0, 0),
(68, 13, 2, 1, 16, 0, 2, 1, '', 'h2', '<p style=\"text-align: center;\">The page you requested does not exist.<br>Maybe you misspelled it?</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'vd', 'true', 'mb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-05-30 12:16:27', 'admin', '2016-05-30 12:17:29', 'admin', 0, 0),
(69, 13, 2, 1, 16, 0, 3, 1, 'Hint', 'h2', '<p>The template header contains a snippet checking the article’s online status. If an article is offline and the user is not logged in to REDAXO they will be redirected to this error page.</p><p>In case the user is logged in they can access offline pages as they want to see a preview when editing articles.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 'vd', '', 'mt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2016-05-30 12:16:27', 'admin', '2016-05-30 12:31:06', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rex_clang`
--

CREATE TABLE `rex_clang` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL,
  `clang_setlocale` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_clang`
--

INSERT INTO `rex_clang` (`id`, `code`, `name`, `priority`, `status`, `revision`, `clang_setlocale`) VALUES
(1, 'de', 'deutsch', 1, 1, 0, 'de_DE'),
(2, 'en', 'english', 2, 1, 0, 'en_En');

-- --------------------------------------------------------

--
-- Table structure for table `rex_config`
--

CREATE TABLE `rex_config` (
  `namespace` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rex_config`
--

INSERT INTO `rex_config` (`namespace`, `key`, `value`) VALUES
('core', 'package-config', '{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":false,\"status\":false},\"redaxo\":{\"install\":true,\"status\":true}}},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"debug\":{\"install\":false,\"status\":false},\"demo_base\":{\"install\":true,\"status\":true},\"developer\":{\"install\":true,\"status\":true},\"install\":{\"install\":true,\"status\":true},\"markitup\":{\"install\":true,\"status\":true,\"plugins\":{\"documentation\":{\"install\":false,\"status\":false}}},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"redactor\":{\"install\":true,\"status\":true},\"redaxo_url_rewrite\":{\"install\":true,\"status\":false},\"sprog\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"users\":{\"install\":true,\"status\":true},\"yform\":{\"install\":true,\"status\":true,\"plugins\":{\"email\":{\"install\":true,\"status\":true},\"manager\":{\"install\":true,\"status\":true},\"rest\":{\"install\":false,\"status\":false},\"tools\":{\"install\":false,\"status\":false}}}}'),
('core', 'package-order', '[\"be_style\",\"be_style\\/redaxo\",\"users\",\"backup\",\"developer\",\"install\",\"markitup\",\"media_manager\",\"mediapool\",\"phpmailer\",\"redactor\",\"sprog\",\"structure\",\"metainfo\",\"structure\\/content\",\"yform\",\"demo_base\",\"yform\\/email\",\"yform\\/manager\",\"project\"]'),
('core', 'utf8mb4', 'true'),
('core', 'version', '\"5.15.1\"'),
('developer', 'actions', 'true'),
('developer', 'delete', 'true'),
('developer', 'dir_suffix', 'true'),
('developer', 'items', '{\"templates\":{\"1\":1541242317,\"2\":1541242350,\"3\":1580942789,\"5\":1503002414,\"6\":1580942751,\"7\":1464863102,\"8\":1452689907,\"9\":1464863127,\"10\":1464816447,\"11\":1717419721,\"12\":1717349601,\"13\":1717419827,\"14\":1717350725,\"15\":1717349732},\"modules\":{\"1\":1464863214,\"2\":1476801640,\"3\":1614440915,\"4\":1541245661,\"5\":1476798615,\"6\":1641291555,\"7\":1464863453,\"8\":1476798615,\"9\":1505902066,\"10\":1458387637,\"11\":1476798615,\"12\":1505897944,\"13\":1476798615,\"14\":1502983202,\"15\":1503048349,\"16\":1641295572,\"17\":1454062155,\"18\":1476798615}}'),
('developer', 'modules', 'true'),
('developer', 'prefix', 'false'),
('developer', 'rename', 'true'),
('developer', 'sync_backend', 'true'),
('developer', 'sync_frontend', 'true'),
('developer', 'templates', 'true'),
('developer', 'umlauts', 'false'),
('developer', 'yform_email', 'true'),
('media_manager', 'avif_quality', '60'),
('media_manager', 'avif_speed', '6'),
('media_manager', 'interlace', '[\"jpg\"]'),
('media_manager', 'jpg_quality', '80'),
('media_manager', 'png_compression', '5'),
('media_manager', 'webp_quality', '85'),
('phpmailer', 'archive', 'false'),
('phpmailer', 'bcc', '\"\"'),
('phpmailer', 'charset', '\"utf-8\"'),
('phpmailer', 'confirmto', '\"\"'),
('phpmailer', 'detour_mode', 'false'),
('phpmailer', 'encoding', '\"8bit\"'),
('phpmailer', 'errormail', '0'),
('phpmailer', 'from', '\"\"'),
('phpmailer', 'fromname', '\"Mailer\"'),
('phpmailer', 'host', '\"localhost\"'),
('phpmailer', 'logging', '0'),
('phpmailer', 'mailer', '\"smtp\"'),
('phpmailer', 'password', '\"\"'),
('phpmailer', 'port', '587'),
('phpmailer', 'priority', '0'),
('phpmailer', 'security_mode', 'false'),
('phpmailer', 'smtp_debug', '\"0\"'),
('phpmailer', 'smtpauth', 'true'),
('phpmailer', 'smtpsecure', '\"tls\"'),
('phpmailer', 'test_address', '\"\"'),
('phpmailer', 'username', '\"\"'),
('phpmailer', 'wordwrap', '120'),
('redaxo_url_rewrite', 'redaxo_root', '\"\\/\"'),
('sprog', 'chunkSizeArticles', '4'),
('structure', 'notfound_article_id', '1'),
('structure', 'start_article_id', '1'),
('structure/content', 'default_template_id', '11');

-- --------------------------------------------------------

--
-- Table structure for table `rex_markitup_profiles`
--

CREATE TABLE `rex_markitup_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `urltype` varchar(50) NOT NULL,
  `minheight` smallint(5) UNSIGNED NOT NULL,
  `maxheight` smallint(5) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `markitup_buttons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_markitup_profiles`
--

INSERT INTO `rex_markitup_profiles` (`id`, `name`, `description`, `urltype`, `minheight`, `maxheight`, `type`, `markitup_buttons`) VALUES
(1, 'textile_full', 'Textile default configuration', 'relative', 300, 800, 'textile', 'bold,code,clips[Snippetname1=Snippettext1|Snippetname2=Snippettext2],deleted,emaillink,externallink,groupheading[1|2|3|4|5|6],grouplink[file|internal|external|mailto],heading1,heading2,heading3,heading4,heading5,heading6,internallink,italic,media,medialink,orderedlist,paragraph,quote,sub,sup,table,underline,unorderedlist'),
(2, 'full', 'Markdown default configuration', 'relative', 300, 800, 'markdown', 'bold,code,clips[Snippetname1=Snippettext1|Snippetname2=Snippettext2],deleted,emaillink,externallink,groupheading[1|2|3|4|5|6],grouplink[file|internal|external|mailto],heading1,heading2,heading3,heading4,heading5,heading6,internallink,italic,media,medialink,orderedlist,paragraph,quote,sub,sup,table,underline,unorderedlist');

-- --------------------------------------------------------

--
-- Table structure for table `rex_markitup_snippets`
--

CREATE TABLE `rex_markitup_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_media`
--

CREATE TABLE `rex_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `med_description` text,
  `med_darken` varchar(255) DEFAULT '',
  `med_gallery_legend` text,
  `med_gallery_title` text,
  `med_gallery_text` text,
  `med_gallery_link_text` text,
  `med_gallery_link` text,
  `med_description_en` text,
  `med_title_en` text,
  `med_gallery_title_en` text,
  `med_gallery_text_en` text,
  `med_gallery_link_text_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_media`
--

INSERT INTO `rex_media` (`id`, `category_id`, `attributes`, `filetype`, `filename`, `originalname`, `filesize`, `width`, `height`, `title`, `createdate`, `revision`, `createuser`, `updatedate`, `updateuser`, `med_description`, `med_darken`, `med_gallery_legend`, `med_gallery_title`, `med_gallery_text`, `med_gallery_link_text`, `med_gallery_link`, `med_description_en`, `med_title_en`, `med_gallery_title_en`, `med_gallery_text_en`, `med_gallery_link_text_en`) VALUES
(1, 1, '', 'image/jpeg', 'more_forest.jpg', 'more_forest.jpg', '120883', 2000, 1334, 'Wald', '2015-12-11 22:57:52', 0, 'admin', '2017-09-20 10:26:50', 'admin', 'Nebel zieht auf', '', '', '', '', '', '', 'Fog is coming up', '', '', '', ''),
(2, 2, '', 'image/jpeg', 'hazy-field.jpg', 'hazy-field.jpg', '19881', 2000, 831, 'Hazy Field', '2015-12-20 16:42:11', 0, 'admin', '2017-09-20 09:09:04', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 1, '', 'image/jpeg', 'mountain_sea.jpg', 'mountain_sea.jpg', '114418', 2000, 1333, 'Mountain Lake', '2015-12-20 16:42:11', 0, 'admin', '2017-09-20 10:24:14', 'admin', 'Fernweh', '', '', '', '', '', '', 'Wanderlust', '', '', '', ''),
(4, 2, '', 'image/jpeg', 'rainy_sea.jpg', 'rainy_sea.jpg', '34029', 2000, 867, 'Rainy Sea', '2015-12-20 16:42:11', 0, 'admin', '2017-09-20 09:09:18', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 2, '', 'image/jpeg', 'sky.jpg', 'sky.jpg', '26980', 2000, 1113, 'Sky', '2015-12-20 16:42:11', 0, 'admin', '2017-09-20 09:08:49', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 2, '', 'image/jpeg', 'tic-tac-toe.jpg', 'tic-tac-toe.jpg', '37478', 2000, 681, 'Tac Tac Toe', '2015-12-20 16:42:11', 0, 'admin', '2017-09-20 09:09:26', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 3, '', 'image/jpeg', 'beach_photograph.jpg', 'beach_photograph.jpg', '117903', 1800, 1200, 'Beach photograph', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:11:30', 'admin', '', '0.4', '', 'Einfach', 'Ein Redakteur will ein CMS, das einfach zu bedienen ist. REDAXO bietet die Mittel, um Module und Addons für das jeweilige Projekt in minimaler Zeit maßschneidern zu können. Noch Fragen?', 'Zum Slack-Channel', 'https://redaxo.org/slack/', '', '', 'Simple', 'Authors like easy to use CMS. REDAXO brings up tools to quickly develop custom content modules and addons for any kind of project. Any questions?', 'Join our Slack channel'),
(8, 3, '', 'image/jpeg', 'fire.jpg', 'fire.jpg', '126786', 1800, 1200, 'Fire', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:09:00', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 3, '', 'image/jpeg', 'fog_mountain.jpg', 'fog_mountain.jpg', '41239', 1800, 1200, 'Fog Mountain', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:11:11', 'admin', '', '0.4', '', 'Sinnvoll', 'Das Ziel von REDAXO war es stets, dass man auch die unterschiedlichsten Websites sinnvoll realisieren konnte.', 'Einige REDAXO-\"Lieblinge\"', 'https://www.redaxo.org/cms/lieblinge/', '', '', 'Meaningful', 'The purpose of REDAXO has always been to support developing a whole range of various websites.', 'Some REDAXO favourites'),
(10, 3, '', 'image/jpeg', 'forest.jpg', 'forest.jpg', '59590', 2000, 1335, 'Forest', '2015-12-20 16:42:57', 0, 'admin', '2022-01-05 13:56:11', 'admin', '', '', '', 'Flexibel', 'Mit einem Content Management System sollte man nicht nur immer einem bestimmten Weg folgen müssen.', 'Zur Dokumentation', 'http://www.redaxo.org/de/doku/', '', '', 'Flexible', 'When using a content management system, you should not be forced to always follow the same direction.', 'Read the docs'),
(11, 3, '', 'image/jpeg', 'road_mountains.jpg', 'road_mountains.jpg', '44555', 1000, 664, 'Road Mountain', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:09:17', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 3, '', 'image/jpeg', 'sad-trees.jpg', 'sad-trees.jpg', '50455', 1000, 669, 'Sad Trees', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:09:36', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 3, '', 'image/jpeg', 'walking_forest.jpg', 'walking_forest.jpg', '84690', 1000, 667, 'Walking in Forest', '2015-12-20 16:42:57', 0, 'admin', '2017-09-20 10:10:53', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 1, '', 'image/jpeg', 'bigforest.jpg', 'bigforest.jpg', '52085', 1920, 1280, 'Big Forest', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:26:05', 'admin', 'Endlose Wälder', '', '', '', '', '', '', 'Endless woods', '', '', '', ''),
(15, 1, '', 'image/jpeg', 'eagle.jpg', 'eagle.jpg', '151088', 2000, 1325, 'Eagle', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:25:05', 'admin', 'Auf der Jagd', '', '', '', '', '', '', 'Hunting', '', '', '', ''),
(16, 1, '', 'image/jpeg', 'evening_mood.jpg', 'evening_mood.jpg', '23045', 2000, 1333, 'Evening Mood', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:25:19', 'admin', 'Abendidylle', '', '', '', '', '', '', 'Idyllic evening scene', '', '', '', ''),
(17, 1, '', 'image/jpeg', 'manviewingmountains.jpg', 'manviewingmountains.jpg', '39027', 1280, 853, 'Man viewing  mountains', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:26:37', 'admin', 'Abendidylle', '', '', '', '', '', '', 'Idyllic evening scene', '', '', '', ''),
(18, 1, '', 'image/jpeg', 'mountain_mood.jpg', 'mountain_mood.jpg', '30630', 2000, 1333, 'Mountain Mood', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:40:35', 'admin', 'Über den Bergen', '', '', '', '', '', '', 'Above the mountains', '', '', '', ''),
(19, 1, '', 'image/jpeg', 'northern_lights.jpg', 'northern_lights.jpg', '110843', 2000, 1333, 'Northern Lights', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:26:21', 'admin', 'Nordlicht', '', '', '', '', '', '', 'Northern lights', '', '', '', ''),
(20, 1, '', 'image/jpeg', 'standing.jpg', 'standing.jpg', '59669', 2000, 1333, 'Standing', '2015-12-20 16:43:51', 0, 'admin', '2017-09-20 10:25:33', 'admin', 'Einfach Stille', '', '', '', '', '', '', 'Just silence', '', '', '', ''),
(21, 1, '', 'image/jpeg', 'hut_in_the_wood.jpg', 'hut_in_the_wood.jpg', '217815', 2000, 1146, 'Hütte im Wald', '2015-12-23 16:51:34', 0, 'admin', '2017-09-20 10:23:43', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 1, '', 'image/jpeg', 'snowy_road.jpg', 'snowy_road.jpg', '231349', 2000, 1396, 'Snowy Road', '2015-12-23 16:52:24', 0, 'admin', '2017-09-20 10:23:58', 'admin', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 4, '', 'application/msword', 'word-testdatei.doc', 'word-testdatei.doc', '22016', 0, 0, 'Word-Testdatei', '2015-12-31 13:10:20', 0, 'admin', '2016-05-31 18:26:29', 'admin', 'Eine Word-Testdatei', '', '', '', '', '', '', 'A Word dummy file', '', '', '', ''),
(24, 4, '', 'application/pdf', 'pdf-testdatei.pdf', 'pdf-testdatei.pdf', '14419', 0, 0, 'PDF-Testdatei', '2015-12-31 13:10:48', 0, 'admin', '2016-05-31 18:26:20', 'admin', 'Eine PDF-Testdatei', '', '', '', '', '', '', 'A PDF dummy file', '', '', '', ''),
(25, 1, '', 'image/jpeg', 'sprachen.jpg', 'sprachen.jpg', '17615', 550, 370, 'Sprachen', '2016-06-01 21:08:32', 0, 'admin', '2016-06-01 21:12:40', 'admin', '', '', '', '', '', '', '', '', 'Languages', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rex_media_category`
--

CREATE TABLE `rex_media_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `attributes` text,
  `revision` int(10) UNSIGNED NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_media_category`
--

INSERT INTO `rex_media_category` (`id`, `name`, `parent_id`, `path`, `createdate`, `attributes`, `revision`, `createuser`, `updatedate`, `updateuser`) VALUES
(1, '03 . Fotos', 0, '|', '2015-12-20 16:40:49', '', 0, 'admin', '2015-12-20 16:40:49', 'admin'),
(2, '01 . Hintergründe', 0, '|', '2015-12-20 16:41:04', '', 0, 'admin', '2015-12-20 16:41:04', 'admin'),
(3, '02 . Headergalerie', 0, '|', '2015-12-20 16:41:16', '', 0, 'admin', '2015-12-20 16:41:16', 'admin'),
(4, '04 . Downloads', 0, '|', '2015-12-31 13:09:51', '', 0, 'admin', '2015-12-31 13:09:51', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rex_media_manager_type`
--

CREATE TABLE `rex_media_manager_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_media_manager_type`
--

INSERT INTO `rex_media_manager_type` (`id`, `status`, `name`, `description`, `createdate`, `createuser`, `updatedate`, `updateuser`) VALUES
(1, 1, 'rex_media_small', '200 × 200 px', '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(2, 1, 'rex_media_medium', '600 × 600 px', '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(3, 1, 'rex_media_large', '1200 × 1200 px', '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(4, 0, 'full', '900px breit', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(5, 0, 'content', '720px * 480px', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(6, 0, 'photos', '640px * 450px', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(7, 0, 'fullscreen', 'max. 1800px * 1200px', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `rex_media_manager_type_effect`
--

CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `priority` int(10) UNSIGNED NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_media_manager_type_effect`
--

INSERT INTO `rex_media_manager_type_effect` (`id`, `type_id`, `effect`, `parameters`, `priority`, `createdate`, `createuser`, `updatedate`, `updateuser`) VALUES
(1, 1, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(2, 2, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(3, 3, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"1200\",\"rex_effect_resize_height\":\"1200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2022-01-04 11:04:57', 'admin', '2022-01-04 11:04:57', 'admin'),
(6, 4, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"900\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2015-12-19 18:40:25', 'admin', '2015-12-19 18:40:25', 'admin'),
(8, 5, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"720\",\"rex_effect_resize_height\":\"480\",\"rex_effect_resize_style\":\"minimum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2015-12-20 17:00:55', 'admin', '2015-12-20 17:00:55', 'admin'),
(9, 5, 'crop', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"720\",\"rex_effect_crop_height\":\"480\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 2, '2015-12-20 17:01:08', 'admin', '2015-12-20 17:01:08', 'admin'),
(10, 6, 'resize', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"640\",\"rex_effect_resize_height\":\"450\",\"rex_effect_resize_style\":\"minimum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2015-12-20 18:39:04', 'admin', '2015-12-20 20:50:18', 'admin'),
(11, 6, 'crop', '{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"640\",\"rex_effect_crop_height\":\"450\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 2, '2015-12-20 18:39:17', 'admin', '2015-12-20 20:50:29', 'admin'),
(12, 7, 'resize', '{\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"100\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"left\",\"rex_effect_crop_vpos\":\"top\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"\",\"rex_effect_filter_blur_type\":\"\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"\",\"rex_effect_filter_sharpen_radius\":\"\",\"rex_effect_filter_sharpen_threshold\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"\",\"rex_effect_insert_image_padding_y\":\"\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"1800\",\"rex_effect_resize_height\":\"1200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 1, '2017-09-20 10:42:44', 'admin', '2017-09-20 10:42:44', 'admin'),
(13, 7, 'filter_sharpen', '{\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"100\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"left\",\"rex_effect_crop_vpos\":\"top\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"\",\"rex_effect_filter_blur_type\":\"\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"60\",\"rex_effect_filter_sharpen_radius\":\"\",\"rex_effect_filter_sharpen_threshold\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"\",\"rex_effect_insert_image_padding_y\":\"\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}', 2, '2017-09-20 10:42:54', 'admin', '2017-09-20 10:42:54', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rex_metainfo_field`
--

CREATE TABLE `rex_metainfo_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(10) UNSIGNED NOT NULL,
  `attributes` text NOT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `callback` text,
  `restrictions` text,
  `templates` text,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_metainfo_field`
--

INSERT INTO `rex_metainfo_field` (`id`, `title`, `name`, `priority`, `attributes`, `type_id`, `default`, `params`, `validate`, `callback`, `restrictions`, `templates`, `createdate`, `createuser`, `updatedate`, `updateuser`) VALUES
(1, 'Beschreibung: de', 'med_description', 2, '', 2, '', '', '', '', '', NULL, '0000-00-00 00:00:00', '', '2016-05-30 12:16:23', 'admin'),
(2, 'Abdunkelung', 'med_darken', 5, '', 3, '', ':35% (default)|0:0%|0.1:10%|0.2:20%|0.3:30%|0.4:40%|0.5:50%|0.6:60%|0.7:70%|0.8:80%|0.9:90%', '', '', '|3|', NULL, '0000-00-00 00:00:00', '', '2015-12-20 21:40:46', 'admin'),
(3, 'translate:online_from', 'art_online_from', 4, '', 10, '', '', '', '', '', NULL, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(4, 'translate:online_to', 'art_online_to', 5, '', 10, '', '', '', '', '', NULL, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(7, 'Headerfoto', 'art_file', 6, '', 6, '', 'preview=1', '', '', '', NULL, '0000-00-00 00:00:00', '', '2015-12-22 01:14:55', 'admin'),
(10, 'Abdunkelung', 'art_darken', 7, '', 3, '', ':35% (default)|0:0%|0.1:10%|0.2:20%|0.3:30%|0.4:40%|0.5:50%|0.6:60%|0.7:70%|0.8:80%|0.9:90%', '', '', '', NULL, '2015-12-12 00:05:47', 'admin', '2015-12-12 00:05:47', 'admin'),
(11, 'Galerie', 'med_gallery_legend', 4, '', 12, '', '', '', '', '|3|', NULL, '2015-12-20 21:39:52', 'admin', '2015-12-20 21:39:52', 'admin'),
(12, 'Titel für Galerie: de', 'med_gallery_title', 6, '', 1, '', '', '', '', '|3|', NULL, '2015-12-20 21:41:25', 'admin', '2016-05-30 12:14:03', 'admin'),
(13, 'Text für Galerie: de', 'med_gallery_text', 8, '', 2, '', '', '', '', '|3|', NULL, '2015-12-20 21:42:02', 'admin', '2016-05-30 12:23:45', 'admin'),
(14, 'Linktext: de', 'med_gallery_link_text', 10, '', 1, '', '', '', '', '|3|', NULL, '2015-12-20 21:42:37', 'admin', '2016-05-30 12:21:14', 'admin'),
(15, 'Externer Link (mit http://)', 'med_gallery_link', 12, '', 1, '', '', '', '', '|3|1|', NULL, '2015-12-20 21:43:08', 'admin', '2016-01-15 10:55:50', 'admin'),
(16, 'Galerie', 'art_gallery', 8, '', 7, '', 'category=3 preview=1', '', '', '', NULL, '2015-12-22 01:14:45', 'admin', '2015-12-22 01:14:45', 'admin'),
(17, 'Teaserbild', 'cat_pic', 2, '', 6, '', 'preview=1', '', '', '', NULL, '2015-12-31 00:02:46', 'admin', '2015-12-31 00:02:46', 'admin'),
(18, 'Teasertext: de', 'cat_description', 3, '', 2, '', '', '', '', '', NULL, '2015-12-31 00:03:11', 'admin', '2016-05-30 19:35:07', 'admin'),
(19, 'Teaser', 'cat_teaser_legend', 1, '', 12, '', '', '', '', '', NULL, '2015-12-31 00:03:37', 'admin', '2015-12-31 00:03:37', 'admin'),
(20, 'Meta-Tag Beschreibung', 'art_description', 3, '', 2, '', '', '', '', '', NULL, '2016-01-06 13:37:32', 'admin', '2016-01-06 13:37:32', 'admin'),
(21, 'Meta-Tag Keywords', 'art_keywords', 2, '', 1, '', '', '', '', '', NULL, '2016-01-06 13:37:53', 'admin', '2016-01-06 13:37:53', 'admin'),
(22, 'Individueller Title-Tag', 'art_title', 1, '', 1, '', '', '', '', '', NULL, '2016-01-15 11:27:28', 'admin', '2016-01-15 11:27:28', 'admin'),
(23, 'Beschreibung en', 'med_description_en', 3, '', 2, '', '', '', '', '', NULL, '2016-05-30 12:13:16', 'admin', '2016-05-30 12:13:16', 'admin'),
(24, 'Titel en', 'med_title_en', 1, '', 1, '', '', '', '', '', NULL, '2016-05-30 12:13:41', 'admin', '2016-05-30 12:13:41', 'admin'),
(25, 'Titel für Galerie: en', 'med_gallery_title_en', 7, '', 1, '', '', '', '', '|3|', NULL, '2016-05-30 12:15:04', 'admin', '2016-05-30 12:17:20', 'admin'),
(26, 'Text für Galerie: en', 'med_gallery_text_en', 9, '', 2, '', '', '', '', '|3|', NULL, '2016-05-30 12:17:09', 'admin', '2016-05-30 12:17:09', 'admin'),
(27, 'Linktext: en', 'med_gallery_link_text_en', 11, '', 1, '', '', '', '', '|3|', NULL, '2016-05-30 12:22:04', 'admin', '2016-05-30 12:23:39', 'admin'),
(29, 'setlocale', 'clang_setlocale', 1, '', 1, '', '', '', '', '', NULL, '2016-05-30 21:45:17', 'admin', '2016-05-30 21:45:17', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rex_metainfo_type`
--

CREATE TABLE `rex_metainfo_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_metainfo_type`
--

INSERT INTO `rex_metainfo_type` (`id`, `label`, `dbtype`, `dblength`) VALUES
(1, 'text', 'text', 0),
(2, 'textarea', 'text', 0),
(3, 'select', 'varchar', 255),
(4, 'radio', 'varchar', 255),
(5, 'checkbox', 'varchar', 255),
(6, 'REX_MEDIA_WIDGET', 'varchar', 255),
(7, 'REX_MEDIALIST_WIDGET', 'text', 0),
(8, 'REX_LINK_WIDGET', 'varchar', 255),
(9, 'REX_LINKLIST_WIDGET', 'text', 0),
(10, 'date', 'text', 0),
(11, 'datetime', 'text', 0),
(12, 'legend', 'text', 0),
(13, 'time', 'text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rex_module`
--

CREATE TABLE `rex_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `output` mediumtext NOT NULL,
  `input` mediumtext NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_module`
--

INSERT INTO `rex_module` (`id`, `key`, `name`, `output`, `input`, `createdate`, `createuser`, `updatedate`, `updateuser`, `attributes`, `revision`) VALUES
(1, NULL, '01 . Titel / Intro', '<?php\r\n// Is there a Headline?\r\nif (\"REX_VALUE[1]\" != \'\') {\r\n\r\n	// If template with one column, use Bootstrap-CSS-class .container to enable indent\r\n	?>\r\n	<div class=\"<?php if ($this->getTemplateId() == 1) echo \'container clearfix \'; ?>mtb\">\r\n		<div class=\"row\">\r\n			<div class=\"<?php if ($this->getTemplateId() == 1) echo \'col-lg-8 col-lg-offset-2 \'; ?>centered\">\r\n				<h2>REX_VALUE[1]</h2>\r\n				<br>\r\n				<div class=\"hline\"></div>\r\n			</div>\r\n		</div>\r\n	</div><! --/container -->\r\n<?php } ?>\r\n', '<!-- *******************************************************\r\nTitel / Intro\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Titel / Intro</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <div class=\"col-sm-12\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-11-30 17:31:33', 'admin', '2016-06-02 12:26:54', 'admin', '', 0),
(2, NULL, '02a . Text (Textile und Markitup)', '<?php\r\n$template = ($this->getTemplateId() == 1) ? \' container\' : \'\';\r\n$distance = (\"REX_VALUE[19]\" != \'\') ? \' REX_VALUE[19]\' : \'\';\r\n$background = (\"REX_VALUE[16]\" == \'true\') ? \' grey\' : \'\';\r\n\r\necho \'\r\n<section class=\"module-wrapper clearfix\'.$background.\'\">\r\n<div class=\"full\'.$template.$distance.\'\">\';\r\n\r\n	// Left and right indent?\r\n	if (\"REX_VALUE[17]\" == \'vd\') {\r\n		echo \'\r\n		<div class=\"row\">\r\n		<div class=\"col-md-8 col-md-offset-2\">\';\r\n	}\r\n\r\n	if (\"REX_VALUE[1]\" != \'\') {\r\n		echo \'\r\n		<REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>\';\r\n	}\r\n\r\n	if (\'REX_VALUE[id=3 isset=1]\') {\r\n		// Parse text with Textile\r\n	    $textile = markitup::parseOutput(\'textile\', \'REX_VALUE[id=3 output=\"html\"]\');\r\n		// Use Bold-Tags to enable Bootstrap-Labels\r\n	    echo str_replace(array(\'<b>\', \'</b>\'), array(\'<span class=\"label label-primary\">\', \'</span>\'), $textile);\r\n	}\r\n\r\n	// Trennlinie?\r\n	if (\"REX_VALUE[18]\"== \'true\'){\r\n		echo \'\r\n		<div class=\"hline\"></div>\';\r\n	}\r\n\r\n	if (\"REX_VALUE[17]\" == \'vd\') {\r\n		echo \'\r\n		</div>\r\n		</div>\';\r\n	}\r\n	?>\r\n</div>\r\n</section>\r\n', '<!-- *******************************************************\r\nTEXT\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[2]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[2]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"padding\">Einrückung</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keine\',\r\n				\'vd\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[17]\" id=\"padding\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[17]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n\r\n			<br><section class=\"rex-page-section\">\r\n			    <div class=\"panel panel-default\">\r\n\r\n			        <header class=\"panel-heading collapsed\" data-toggle=\"collapse\" data-target=\"#collapse-REX_SLICE_ID\" aria-expanded=\"false\">\r\n						<div class=\"panel-title\"><i class=\"rex-icon rex-icon-info\"></i> Hinweis</div>\r\n					</header>\r\n\r\n			        <div id=\"collapse-REX_SLICE_ID\" class=\"panel-collapse collapse\" aria-expanded=\"false\" style=\"height: 0px;\">\r\n\r\n			            <div class=\"panel-body\" style=\"background: #f3f6fb;\">\r\n			                <ul>\r\n								<li>Hier kann man eine linke und rechte Einrückung von je zwei Spalten des 12er-Bootstrap-Rasters aktivieren.</li>\r\n								<li>Der vertikale Abstand erzeugt einen oberen und unteren Zwischenraum von jeweils 60px.</li>\r\n							</ul>\r\n						</div>\r\n			        </div>\r\n			    </div>\r\n			</section>\r\n\r\n		</div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">vertikaler Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Trennlinie</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'nein\',\r\n				\'true\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[18]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[18]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Hintergrund</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'weiß\',\r\n				\'true\'=>\'grau\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[16]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[16]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-11-30 17:32:04', 'admin', '2016-10-18 16:40:40', 'decaf', '', 0),
(3, NULL, '03 . Text mit Bild (1 - 3 Spalten)', '<?php\r\n$grid_content1 = \'\';\r\n$grid_content2 = \'\';\r\n$grid_content3 = \'\';\r\n\r\n// col1\r\nif (\"REX_MEDIA[1]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[1]\");\r\n	if ($media instanceof rex_media) {\r\n        $mediatitle = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n        $grid_content1 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[1]\" alt=\"\'.$mediatitle.\'\">\';\r\n    }\r\n}\r\nif (\'REX_VALUE[id=1 isset=1]\') {\r\n    $grid_content1 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=1 output=\"html\"]\');\r\n}\r\n\r\n// col2\r\nif (\"REX_MEDIA[2]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[2]\");\r\n    if ($media instanceof rex_media) {\r\n        $mediatitle = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n        $grid_content2 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[2]\" alt=\"\'.$mediatitle.\'\">\';\r\n    }\r\n}\r\nif (\'REX_VALUE[id=2 isset=1]\') {\r\n    $grid_content2 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=2 output=\"html\"]\');\r\n}\r\n\r\n// col3\r\nif (\"REX_MEDIA[3]\" != \'\') {\r\n	$media = rex_media::get(\"REX_MEDIA[3]\");\r\n    if ($media instanceof rex_media) {\r\n        $mediatitle = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\'));\r\n        $grid_content3 .= \'<img class=\"content\" src=\"index.php?rex_media_type=content&rex_media_file=REX_MEDIA[3]\" alt=\"\'.$mediatitle.\'\">\';\r\n    }\r\n}\r\nif (\'REX_VALUE[id=3 isset=1]\') {\r\n    $grid_content3 .= markitup::parseOutput(\'textile\', \'REX_VALUE[id=3 output=\"html\"]\');\r\n}\r\n?>\r\n<!-- SECTION -->\r\n<div class=\"<?php if ($this->getTemplateId() == 1) echo \'container clearfix \'; ?>pictext<?php if (\"REX_VALUE[19]\" != \'\') echo \" REX_VALUE[19]\"; ?>\">\r\n\r\n	<?php\r\n	if (\"REX_VALUE[10]\" != \'\') {\r\n		echo \'\r\n		<REX_VALUE[11]>REX_VALUE[10]</REX_VALUE[11]>\';\r\n	}\r\n	?>\r\n		<div class=\"row\">\r\n\r\n		<?php\r\n		// 2cols\r\n		if (\"REX_VALUE[9]\" == \'2\')  {\r\n			echo \'\r\n			<div class=\"col-md-6\">\r\n				\'.$grid_content1.\'\r\n			</div>\r\n			<div class=\"col-md-6\">\r\n				\'.$grid_content2.\'\r\n			</div>\';\r\n		// 3cols\r\n		} elseif (\"REX_VALUE[9]\" == \'3\')	 {\r\n			echo \'\r\n			<div class=\"col-sm-4\">\r\n				\'.$grid_content1.\'\r\n			</div>\r\n			<div class=\"col-sm-4\">\r\n				\'.$grid_content2.\'\r\n			</div>\r\n			<div class=\"col-sm-4\">\r\n				\'.$grid_content3.\'\r\n			</div>\';\r\n		// 1col\r\n		} else {\r\n			echo $grid_content1;\r\n		}\r\n		?>\r\n\r\n	</div>\r\n\r\n	<?php\r\n	if (\"REX_VALUE[18]\"== \'true\'){\r\n	echo \'\r\n	<div class=\"hline\"></div>\';\r\n	}\r\n	?>\r\n</div>\r\n', '<!-- *******************************************************\r\nTEXT UND BILD IN SPALTEN\r\n******************************************************** -->\r\n\r\n<script type=\"text/javascript\">\r\njQuery(function($){\r\n	$(document).ready(function(){\r\n\r\n		$(\'select#choices\').change(function() {\r\n			$(\'.off\').hide();\r\n\r\n			for(var i = 1; i <= parseInt($(this).val()); i++) {\r\n				$(\'#col\' + i).show();\r\n			}\r\n		});\r\n\r\n		$(\'select#choices\').change();\r\n\r\n	})\r\n});\r\n</script>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"choices\">Spalten</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'1\'=>\'volle Breite\',\r\n				\'2\'=>\'zwei Spalten\',\r\n				\'3\'=>\'drei Spalten\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[9]\" id=\"choices\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[9]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[10]\" value=\"REX_VALUE[10]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h1\'=>\'1. Ebene\',\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[11]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[11]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>1. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n\r\n<fieldset class=\"form-horizontal off\" id=\"col2\">\r\n    <legend>2. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"2\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_2\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_2\" name=\"REX_INPUT_VALUE[2]\">REX_VALUE[2]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n<fieldset class=\"form-horizontal off\" id=\"col3\">\r\n    <legend>3. Spalte</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"3\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_3\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-markdown_full\" id=\"markitup_textile_3\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Abstände</legend>\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Trennlinie</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'nein\',\r\n				\'true\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[18]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[18]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-01 10:21:28', 'admin', '2021-02-27 16:48:35', 'admin', '', 0),
(4, NULL, '04 . Drei Teaserkästen', '<!-- *******************************************************\r\nDREI TEASERKÄSTEN\r\n******************************************************** -->\r\n\r\n<?php\r\n$template = ($this->getTemplateId() == 1) ? \' container\' : \'\';\r\n$distance = (\"REX_VALUE[19]\" != \'\') ? \' REX_VALUE[19]\' : \'\';\r\n$iconsize = (\"REX_VALUE[15]\" != \'\') ? \' REX_VALUE[15]\' : \'\';\r\n?>\r\n\r\n<section class=\"service clearfix\">\r\n	<div class=\"full<?php echo $template.$distance.$iconsize; ?>\">\r\n\r\n		<div class=\"row centered\">\r\n\r\n			<div class=\"col-md-4\">\r\n				<?php\r\n				if (\"REX_VALUE[2]\" != \'\') {\r\n					if (\"REX_VALUE[1]\" != \'\') {\r\n						echo \'\r\n						<i class=\"fa REX_VALUE[1]\"></i>\';\r\n					}\r\n					echo \'\r\n					<h4>REX_VALUE[2]</h4>\';\r\n				}\r\n\r\n				if (\'REX_VALUE[id=3 isset=1]\') {\r\n				    echo markitup::parseOutput(\'textile\', \'REX_VALUE[id=3 output=\"html\"]\');\r\n				}\r\n\r\n				if (\"REX_LINK[1]\" != \'\') {\r\n					$article = rex_article::get(\"REX_LINK[1]\");\r\n					if ($article) {\r\n                        $article_name = $article->getValue(\'name\');\r\n                        if (\"REX_VALUE[4]\" != \'\') {\r\n                            $article_name = \'REX_VALUE[4]\';\r\n                        }\r\n                        echo \'\r\n					    <p><br/><a href=\"\' . rex_getUrl(\"REX_LINK[1]\") . \'\" class=\"btn btn-theme\">\' . $article_name . \'</a></p>\';\r\n                    }\r\n				}\r\n				?>\r\n			</div>\r\n\r\n			<div class=\"col-md-4\">\r\n				<?php\r\n				if (\"REX_VALUE[6]\" != \'\') {\r\n					if (\"REX_VALUE[5]\" != \'\') {\r\n						echo \'\r\n						<i class=\"fa REX_VALUE[5]\"></i>\';\r\n					}\r\n					echo \'\r\n					<h4>REX_VALUE[6]</h4>\';\r\n				}\r\n\r\n				if (\'REX_VALUE[id=7 isset=1]\') {\r\n				    echo markitup::parseOutput(\'textile\', \'REX_VALUE[id=7 output=\"html\"]\');\r\n				}\r\n\r\n				if (\"REX_LINK[2]\" != \'\') {\r\n					$article = rex_article::get(\"REX_LINK[2]\");\r\n                    if ($article) {\r\n                        $article_name = $article->getValue(\'name\');\r\n                        if (\"REX_VALUE[8]\" != \'\') {\r\n                            $article_name = \'REX_VALUE[8]\';\r\n                        }\r\n                        echo \'\r\n                        <p><br/><a href=\"\' . rex_getUrl(\"REX_LINK[2]\") . \'\" class=\"btn btn-theme\">\' . $article_name . \'</a></p>\';\r\n                    }\r\n				}\r\n				?>\r\n			</div>\r\n\r\n			<div class=\"col-md-4\">\r\n				<?php\r\n				if (\"REX_VALUE[10]\" != \'\') {\r\n					if (\"REX_VALUE[9]\" != \'\') {\r\n						echo \'\r\n						<i class=\"fa REX_VALUE[9]\"></i>\';\r\n					}\r\n					echo \'\r\n					<h4>REX_VALUE[10]</h4>\';\r\n				}\r\n\r\n				if (\'REX_VALUE[id=11 isset=1]\') {\r\n				    echo markitup::parseOutput(\'textile\', \'REX_VALUE[id=11 output=\"html\"]\');\r\n				}\r\n\r\n				if (\"REX_LINK[3]\" != \'\') {\r\n					$article = rex_article::get(\"REX_LINK[3]\");\r\n                    if ($article) {\r\n                        $article_name = $article->getValue(\'name\');\r\n                        if (\"REX_VALUE[12]\" != \'\') {\r\n                            $article_name = \'REX_VALUE[12]\';\r\n                        }\r\n                        echo \'\r\n                        <p><br/><a href=\"\' . rex_getUrl(\"REX_LINK[3]\") . \'\" class=\"btn btn-theme\">\' . $article_name . \'</a></p>\';\r\n                    }\r\n				}\r\n				?>\r\n			</div>\r\n		</div>\r\n	</div><! --/container -->\r\n</section><! --/service -->\r\n', '<!-- *******************************************************\r\nTEASERKÄSTEN\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Abstände</legend>\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">Icon-Größe</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'klein\',\r\n				\'size2\'=>\'mittel\',\r\n				\'size3\'=>\'groß\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[15]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[15]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>1. Kasten</legend>\r\n\r\n    <div class=\"form-group\" style=\"overflow: visible;\">\r\n        <label class=\"col-sm-2 control-label\" for=\"icon1\">Icon</label>\r\n        <div class=\"col-sm-10\">\r\n            <input data-placement=\"bottomRight\" class=\"form-control icp\" id=\"icon1\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n\r\n			<br><section class=\"rex-page-section\">\r\n				<div class=\"panel panel-default\">\r\n\r\n					<header class=\"panel-heading collapsed\" data-toggle=\"collapse\" data-target=\"#collapse-REX_SLICE_ID\" aria-expanded=\"false\">\r\n						<div class=\"panel-title\"><i class=\"rex-icon rex-icon-info\"></i> Hinweis zur Eingabe der Icons</div>\r\n					</header>\r\n\r\n					<div id=\"collapse-REX_SLICE_ID\" class=\"panel-collapse collapse\" aria-expanded=\"false\" style=\"height: 0px;\">\r\n\r\n						<div class=\"panel-body\" style=\"background: #f3f6fb;\">\r\n							<ul>\r\n								<li>Man kann hier Icons des Font-Zeichensatzes Font Awesome verwenden:<br>\r\n								<a href=\"https://fortawesome.github.io/Font-Awesome/icons/\" target=\"_blank\">https://fortawesome.github.io/Font-Awesome/icons/</a></li>\r\n								<li>Dazu bitte einfach den CSS-Klassennamne des gewünschten Icons eingeben.</li>\r\n								<li>Oder noch besser: Das <a href=\"index.php?page=install/packages/add&addonkey=iconpicker\">Iconpicker-AddOn</a> installieren! :-)</li>\r\n							</ul>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</section>\r\n\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline1\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline1\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-markdown_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Link</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_LINK[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"linktext1\">Linktext</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"linktext1\" type=\"text\" name=\"REX_INPUT_VALUE[4]\" value=\"REX_VALUE[4]\" />\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>2. Kasten</legend>\r\n\r\n    <div class=\"form-group\" style=\"overflow: visible;\">\r\n        <label class=\"col-sm-2 control-label\" for=\"icon2\">Icon</label>\r\n        <div class=\"col-sm-10\">\r\n            <input data-placement=\"bottomRight\" class=\"form-control icp\" id=\"icon2\" type=\"text\" name=\"REX_INPUT_VALUE[5]\" value=\"REX_VALUE[5]\" />\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline2\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline2\" type=\"text\" name=\"REX_INPUT_VALUE[6]\" value=\"REX_VALUE[6]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_2\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-markdown_full\" id=\"markitup_textile_2\" name=\"REX_INPUT_VALUE[7]\">REX_VALUE[7]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Link</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_LINK[id=\"2\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"linktext2\">Linktext</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"linktext2\" type=\"text\" name=\"REX_INPUT_VALUE[8]\" value=\"REX_VALUE[8]\" />\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>3. Kasten</legend>\r\n\r\n    <div class=\"form-group\" style=\"overflow: visible;\">\r\n        <label class=\"col-sm-2 control-label\" for=\"icon3\">Icon</label>\r\n        <div class=\"col-sm-10\">\r\n            <input data-placement=\"bottomRight\" class=\"form-control icp\" id=\"icon3\" type=\"text\" name=\"REX_INPUT_VALUE[9]\" value=\"REX_VALUE[9]\" />\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline3\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline3\" type=\"text\" name=\"REX_INPUT_VALUE[10]\" value=\"REX_VALUE[10]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_3\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-markdown_full\" id=\"markitup_textile_3\" name=\"REX_INPUT_VALUE[11]\">REX_VALUE[11]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Link</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_LINK[id=\"3\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"linktext3\">Linktext</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"linktext3\" type=\"text\" name=\"REX_INPUT_VALUE[12]\" value=\"REX_VALUE[12]\" />\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Abstände</legend>\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n</fieldset>\r\n', '2015-12-01 10:22:03', 'admin', '2018-11-03 12:47:41', 'admin', '', 0),
(5, NULL, '05 . Zitat (auf Bild)', '<!-- *******************************************************\r\nQUOTE\r\n******************************************************** -->\r\n<?php\r\n$bg = (\"REX_MEDIA[1]\" != \'\') ? \' style=\"background-image: url(index.php?rex_media_type=full&rex_media_file=REX_MEDIA[1])\"\' : \'\';\r\n?>\r\n\r\n<div class=\"fullpicture parallax clearfix\"<?php echo $bg; ?>>\r\n	<div class=\"layer\"></div>\r\n		<?php\r\n		if ($this->getTemplateId() == 1) {\r\n			echo \'\r\n			<div class=\"container centered\">\';\r\n		} else {\r\n			echo \'\r\n			<div class=\"centered\">\';\r\n		}\r\n		?>\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-8 col-lg-offset-2\">\r\n				<i class=\"fa fa-comment-o\"></i>\r\n				<?php\r\n				if (\'REX_VALUE[id=1 isset=1]\') {\r\n				    echo markitup::parseOutput(\'textile\', \'REX_VALUE[id=1 output=\"html\"]\');\r\n				}\r\n				?>\r\n				REX_VALUE[id=\'2\' prefix=\'<h4><br>\' suffix=\'</h4>\']\r\n			</div>\r\n		</div><! --/row -->\r\n	</div><! --/container -->\r\n</div><! --/twrap -->\r\n', '<!-- *******************************************************\r\nZITAT AUF BILD\r\n******************************************************** -->\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Titel / Intro</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Bild (ca. 2000px breit)</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_MEDIA[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"person\">Zitierte Person</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"person\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-01 10:22:33', 'admin', '2016-10-18 15:50:15', 'decaf', '', 0),
(6, NULL, '06 . Galerie', '<?php\r\n$fe = \'\';\r\n$be = \'\';\r\n\r\nif (\"REX_MEDIALIST[1]\" != \'\') {\r\n	$imagelist = explode(\',\', \"REX_MEDIALIST[1]\");\r\n\r\n	// Rahmen?\r\n	$frame = (\"REX_VALUE[5]\" != \'\') ? \"REX_VALUE[5]\" : \'framed\';\r\n\r\n	// Abstand?\r\n	$padding = (\"REX_VALUE[19]\" != \'\') ? \" REX_VALUE[19]\" : \'\';\r\n\r\n	// Volle Breite?\r\n	$full = (\"REX_VALUE[1]\" == \'full\') ? \' full \' : \' container \';\r\n	// Im Mehrspalten-Template keine volle Breite erlauben\r\n	if ($this->getTemplateId() != 1) { $full = \'\'; }\r\n\r\n	// Language suffix\r\n  $languageSuffix = \'\';\r\n  if (rex_clang::getCurrentId() == 2) {\r\n      $languageSuffix = \'_en\';\r\n  }\r\n\r\n	$fe .= \'\r\n	<section id=\"portfoliowrap\" class=\"clearfix\'.$full.$frame.$padding.\'\">\';\r\n\r\n		if (\"REX_VALUE[2]\" != \'\') {\r\n			$fe .= \'\r\n			<REX_VALUE[3]>REX_VALUE[2]</REX_VALUE[3]>\';\r\n			$be .= \'\r\n			<REX_VALUE[3]>REX_VALUE[2]</REX_VALUE[3]>\';\r\n		}\r\n\r\n		$fe .= \'\r\n		<div class=\"portfolio row\">\';\r\n\r\n				foreach ($imagelist as $file) {\r\n					$media = rex_media::get($file);\r\n					if ($media instanceof rex_media) {\r\n\r\n						$mediatitle = $media->getValue(\'title\');\r\n						$mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\' . $languageSuffix));\r\n						$medialink = $media->getValue(\'med_gallery_link\');\r\n\r\n						$fe .= \'\r\n						<div class=\"col-md-3 portfolio-item\">\r\n							<div class=\"he-wrap pic\">\r\n								<img src=\"index.php?rex_media_type=photos&rex_media_file=\'.$file.\'\" alt=\"\'.$mediadesc.\'\">\r\n								<div class=\"he-view\">\r\n									<div class=\"bg a0\" data-animate=\"fadeIn\">\';\r\n\r\n										if ($mediadesc != \'\' && $this->getTemplateId() == 1) {\r\n											// Nur im Einspalter Bildtexte anzeoigen, da Bilder ansonsten zu klein\r\n											$fe .= \'\r\n											   <h3 class=\"a1\" data-animate=\"fadeInDown\">\'.$mediadesc.\'</h3>\';\r\n										}\r\n\r\n										$fe .= \'\r\n										<a rel=\"prettyPhoto[galREX_SLICE_ID]\" href=\"index.php?rex_media_type=full&rex_media_file=\'.$file.\'\" class=\"dmbutton a2\" data-animate=\"fadeInUp\"><i class=\"fa fa-search\"></i></a>\';\r\n\r\n										if ($medialink != \'\') {\r\n											$fe .= \'\r\n											<a href=\"\'.$medialink.\'\" class=\"dmbutton a2\" data-animate=\"fadeInUp\"><i class=\"fa fa-link\"></i></a>\';\r\n										}\r\n\r\n									  $fe .= \'\r\n								  	</div><!-- he bg -->\r\n								</div><!-- he view -->\r\n							</div><!-- he wrap -->\r\n						</div><!-- end col-12 -->\';\r\n\r\n						$be .= \'\r\n						<img src=\"index.php?rex_media_type=rex_media_medium&rex_media_file=\'.$file.\'\" alt=\"\'.$mediadesc.\'\">\';\r\n\r\n					}\r\n				}\r\n\r\n			$fe .= \'\r\n		</div><!-- portfolio -->\r\n	</section><!--/Portfoliowrap -->\';\r\n\r\n}\r\n\r\n// Different output for frontend and backend\r\nif (rex::isBackend()) {\r\n	echo $be;\r\n} else {\r\n	echo $fe;\r\n}\r\n?>', '<!-- *******************************************************\r\nGALERIE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Galerie</legend>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[3]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[3]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Bilder</label>\r\n		<div class=\"col-sm-10\">\r\n            REX_MEDIALIST[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n	<?php\r\n	// Im Mehrspalten-Template keine volle Breite erlauben\r\n	if ($this->getTemplateId() == 1) {\r\n	?>\r\n		<div class=\"form-group\">\r\n	        <label class=\"col-sm-2 control-label\" for=\"width\">Breite</label>\r\n	        <div class=\"col-sm-10\">\r\n				<?php\r\n					$options = array(\r\n					\'\'=>\'Contentbreite\',\r\n					\'full\'=>\'volle Beite\'\r\n				);\r\n				?>\r\n				<select name=\"REX_INPUT_VALUE[1]\" id=\"width\" class=\"form-control\">\r\n				<?php foreach ($options as $k=>$v) : ?>\r\n				<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[1]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n				<?php endforeach ?>\r\n				</select>\r\n	        </div>\r\n	    </div>\r\n	<?php } ?>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"width\">Rahmen</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'Rahmen zwischen Bildern\',\r\n				\'frameless\'=>\'ohne Rahmen\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[5]\" id=\"width\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[5]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n\r\n<p>Bilder in der Medienkategorie \"Fotos\" (ID 1) haben ein zusätzliches Linkfeld.</p>\r\n', '2015-12-01 10:23:20', 'admin', '2022-01-04 11:19:15', 'admin', '', 0),
(7, NULL, '07 . Akkordeon / Tabs (Eingabe)', '<?php\r\nif (!isset($counter)) {\r\n	$counter = 0;\r\n}\r\n$counter++;\r\n\r\n// Write data in an array for Frontend, but do not show them\r\nif (! rex::isBackend()) {\r\n	$items = array();\r\n	$items = [\'title\' => \'REX_VALUE[2]\', \'text\' => \'REX_VALUE[1]\'];\r\n	rex::getProperty(\'tabs\')->append($items);\r\n// Im Backend wird der Inhalt als Info für den Redakteur angezeigt\r\n} else {\r\n	if (\'REX_VALUE[id=2 isset=1]\') {\r\n	    echo \'<h2>REX_VALUE[2]</h2>\';\r\n	}\r\n	if (\'REX_VALUE[id=1 isset=1]\') {\r\n	    echo \'<p>REX_VALUE[1]</p>\';\r\n	}\r\n}\r\n?>\r\n', '<!-- *******************************************************\r\nTABS EINGABE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Tabs Eingabe</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_textile_\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_textile_1\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-01 10:23:53', 'admin', '2016-06-02 12:30:53', 'admin', '', 0),
(8, NULL, '08 . Akkordeon Tabs (Ausgabe)', '<?php\r\n\r\n// In frontend read array\r\nif (!rex::isBackend()) {\r\n	$items = rex::getProperty(\'tabs\')->getArrayCopy();\r\n	rex::setProperty(\'tabs\', new ArrayIterator());\r\n\r\n	$tabs_title = \'\';\r\n	$tabs_text = \'\';\r\n	$tabs_out = \'\';\r\n	$counter = 1;\r\n\r\n	$title_style = \'title\';\r\n	$content_style = \'content\';\r\n	if (\"REX_VALUE[1]\" == \'tt\' || \"REX_VALUE[1]\" == \'vt\' || \"REX_VALUE[1]\" == \'bt\') {\r\n		$title_style = \'tab-title\';\r\n		$content_style = \'tab-content\';\r\n	}\r\n	$one_open = (\"REX_VALUE[3]\" == \'one-open\') ? \" one-open\" : \"\";\r\n\r\n	foreach ($items as $item) {\r\n\r\n		if (! isset($item[\'title\'])) { $item[\'title\'] = \'\'; };\r\n		if (! isset($item[\'text\'])) { $item[\'text\'] = \'\'; };\r\n\r\n		$active_title = \'\';\r\n		$active_text = \'\';\r\n\r\n		$tabs_title = $item[\'title\'];\r\n		$tabs_text = $item[\'text\'];\r\n\r\n		if ($tabs_title != \'\' && $tabs_text != \'\') {\r\n			if ($counter == 1) $active_title = \' class=\"active\"\';\r\n\r\n			$textile = markitup::parseOutput(\'textile\', $tabs_text);\r\n			$textile = str_replace(array(\'<b>\', \'</b>\', \'-&amp;gt;\'), array(\'<span class=\"label label-primary\">\', \'</span>\', \'->\'), $textile);\r\n\r\n			$tabs_out .= \'\r\n			<li\'.$active_title.\'>\r\n				<div class=\"\'.$title_style.\'\">\r\n					<span>\'.$tabs_title.\'</span>\r\n				</div>\r\n				<div class=\"\'.$content_style.\' text\">\'.$textile.\'</div>\r\n			</li>\';\r\n		}\r\n\r\n		$counter++;\r\n\r\n	}\r\n	?>\r\n\r\n	<section class=\"<?php if ($this->getTemplateId() == 1) echo \'container clearfix \'; ?>tabs\">\r\n			<div class=\"row\">\r\n				<div class=\"col-md-8 col-md-offset-2 col-sm-12\">\r\n\r\n					<?php\r\n					if (\"REX_VALUE[2]\" != \'\') {\r\n						echo \'\r\n						<h3>REX_VALUE[2]</h3>\';\r\n					}\r\n\r\n					if (\"REX_VALUE[1]\" == \'tt\') { // Text-Tabs\r\n						echo \'\r\n						<div class=\"tabbed-content text-tabs\">\';\r\n\r\n					} elseif (\"REX_VALUE[1]\" == \'vt\') { // Vertikale Tabs\r\n						echo \'\r\n						<div class=\"tabbed-content button-tabs vertical\">\';\r\n\r\n					} elseif (\"REX_VALUE[1]\" == \'bt\') { // Button-Tabs\r\n						echo \'\r\n						<div class=\"tabbed-content button-tabs\">\';\r\n					}\r\n\r\n					if (\"REX_VALUE[1]\" == \'ta\') { // Text-Accordions\r\n\r\n						echo \'\r\n						<ul class=\"accordion accordion-2\'.$one_open.\'\">\'.\r\n							$tabs_out.\'\r\n						</ul>\';\r\n\r\n					} elseif (\"REX_VALUE[1]\" == \'ba\') { // Button-Accordions\r\n\r\n						echo \'\r\n						<ul class=\"accordion accordion-1\'.$one_open.\'\">\'.\r\n							$tabs_out.\'\r\n						</ul>\';\r\n\r\n					} else {\r\n\r\n						echo \'\r\n						<ul class=\"tabs\">\'.\r\n							$tabs_out.\'\r\n						</ul>\';\r\n\r\n					}\r\n\r\n					if (\"REX_VALUE[1]\" == \'tt\' || \"REX_VALUE[1]\" == \'vt\' || \"REX_VALUE[1]\" == \'bt\') {\r\n						echo \'\r\n						</diV>\';\r\n					}\r\n					?>\r\n\r\n				</div>\r\n			</div>\r\n	</section>\r\n\r\n\r\n	<?php\r\n} else {\r\n	echo \'\r\n	<p>Output only in frontend</p>\';\r\n}\r\n?>\r\n', '<!-- *******************************************************\r\nTABS AUSGABE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Tab-Stil</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'ba\'=>\'Button-Akkordeons\',\r\n				\'ta\'=>\'Text-Akkordeons\',\r\n				\'bt\'=>\'Button-Tabs\',\r\n				\'vt\' => \'Vertikale Tabs\',\r\n				\'tt\' => \'Text-Tabs\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[1]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[1]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n	<!--\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">falls Akkordeon</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'one-open\'=>\'Akkordeon schließt anderes\',\r\n				\'multi-open\'=>\'mehrere Akkordions offen\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[3]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[3]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n	-->\r\n</fieldset>\r\n', '2015-12-01 10:24:18', 'admin', '2016-10-18 15:50:15', 'decaf', '', 0);
INSERT INTO `rex_module` (`id`, `key`, `name`, `output`, `input`, `createdate`, `createuser`, `updatedate`, `updateuser`, `attributes`, `revision`) VALUES
(9, NULL, '09 . Downloads', '<?php\r\n$background = (\"REX_VALUE[16]\" == \'true\') ? \' grey\' : \'\';\r\necho \'\r\n\r\n<div class=\" downloads-wrapper clearfix\'.$background.\'\">\r\n    <div class=\" downloads\';\r\n    if ($this->getTemplateId() == 1) {\r\n        echo \' container\';\r\n    }\r\n    if (\"REX_VALUE[19]\" != \'\') {\r\n        echo \' REX_VALUE[19]\';\r\n    }\r\n    echo \'\">\';\r\n\r\n        if (\"REX_VALUE[17]\" == \'vd\') {\r\n            echo \'\r\n            <div class=\"row\">\r\n            <div class=\"col-md-8 col-md-offset-2\">\';\r\n        }\r\n\r\n        if (\"REX_VALUE[2]\" != \'\') {\r\n            echo \'\r\n            <h3>REX_VALUE[2]</h3>\';\r\n        }\r\n\r\n        if (\"REX_MEDIALIST[1]\" != \'\') {\r\n\r\n            // Find out file size\r\n            if (!function_exists(\'datei_groesse\')) {\r\n                function datei_groesse($URL) {\r\n\r\n                    $groesse = filesize($URL);\r\n                    if($groesse<1000) {\r\n                        return number_format($groesse, 0, \",\", \".\").\" Bytes\";\r\n                    }\r\n                    elseif($groesse<1000000) {\r\n                        return number_format($groesse/1024, 0, \",\", \".\").\" kB\";\r\n                    } else {\r\n                        return number_format($groesse/1048576, 0, \",\", \".\").\" MB\";\r\n                    }\r\n                }\r\n            }\r\n\r\n            // Find out icon\r\n            if (!function_exists(\'parse_icon\')) {\r\n                function parse_icon($ext) {\r\n                    switch (strtolower($ext)) {\r\n                        case \'doc\': return \'<i class=\"fa fa-file-word-o\"></i>\';\r\n                        case \'pdf\': return \'<i class=\"fa fa-file-pdf-o\"></i>\';\r\n                        case \'zip\': return \'<i class=\"fa fa-archive-pdf-o\"></i>\';\r\n                        // please add your own settings, e.g. with icons of Font-Awesome\r\n                    default:\r\n                        return \'\';\r\n                    }\r\n                }\r\n            }\r\n\r\n\r\n            $languageSuffix = \'\';\r\n            if (rex_clang::getCurrentId() == 2) {\r\n                $languageSuffix = \'_en\';\r\n            }\r\n\r\n            $arr = explode(\",\",\"REX_MEDIALIST[1]\");\r\n            foreach ($arr as $value) {\r\n\r\n                $extension = substr(strrchr($value, \'.\'), 1);\r\n                $parsed_icon = parse_icon($extension);\r\n                $media = rex_media::get($value);\r\n                $file_desc = $media->getValue(\'med_description\' . $languageSuffix);\r\n\r\n                echo \'\r\n                <p><a href=\"\'.rex_getUrl(12, $this->clang, array (\'file\' => $value) ).\'\">\'.$parsed_icon;\r\n\r\n                // Description as linktext, if there is one. Otherwise filename\r\n                if ($file_desc != \"\") {\r\n                    echo $file_desc;\r\n                } else {\r\n                    echo $value;\r\n                }\r\n\r\n                echo \' (\'.datei_groesse(rex_path::media($value)).\')</a></p>\';\r\n\r\n            }\r\n        }\r\n\r\n        if (\"REX_VALUE[18]\"== \'true\'){\r\n            echo \'\r\n            <div class=\"hline\"></div>\';\r\n        }\r\n\r\n        if (\"REX_VALUE[17]\" == \'vd\') {\r\n            echo \'\r\n            </div>\r\n            </div>\';\r\n        }\r\n    echo \'\r\n    </div>\r\n</div>\';\r\n?>', '<!-- *******************************************************\r\nGALERIE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Downloads</legend>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Dateien zum Download</label>\r\n		<div class=\"col-sm-10\">\r\n            REX_MEDIALIST[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"padding\">Einrückung</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keine\',\r\n				\'vd\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[17]\" id=\"padding\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[17]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">vertikaler Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Trennlinie</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'nein\',\r\n				\'true\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[18]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[18]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Hintergrund</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'weiß\',\r\n				\'true\'=>\'grau\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[16]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[16]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>', '2015-12-01 10:24:45', 'admin', '2017-09-20 12:07:46', 'admin', '', 0),
(10, NULL, '11 . Code', '<!-- *******************************************************\r\nCODE\r\n******************************************************** -->\r\n<div class=\"<?php if ($this->getTemplateId() == 1) echo \'container clearfix \'; ?>full<?php if (\"REX_VALUE[19]\" != \'\') echo \" REX_VALUE[19]\"; ?>\">\r\n<pre class=\"prettyprint lnaghtml linenums\">\r\nREX_VALUE[1]\r\n</pre>\r\n</div>\r\n', '<!-- *******************************************************\r\nCODE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Code</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"code\">Code</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"10\" class=\"form-control rex-code\" id=\"code\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-01 10:25:30', 'admin', '2016-03-19 12:40:37', 'admin', '', 0),
(11, NULL, '12 . Text Seitenspalte', '<div class=\"sicetext<?php if (\"REX_VALUE[19]\" != \'\') echo \" REX_VALUE[19]\"; ?>\">\r\n\r\n	<?php\r\n	if (\"REX_VALUE[1]\" != \'\') {\r\n		echo \'\r\n		<REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>\';\r\n	}\r\n\r\n	if (\'REX_VALUE[id=3 isset=1]\') {\r\n	    $textile = markitup::parseOutput(\'textile\', \'REX_VALUE[id=3 output=\"html\"]\');\r\n	    echo str_replace(array(\'<b>\', \'</b>\'), array(\'<span class=\"label label-primary\">\', \'</span>\'), $textile);\r\n	}\r\n\r\n	if (\"REX_VALUE[18]\"== \'true\'){\r\n		echo \'\r\n		<div class=\"hline\"></div>\';\r\n	}\r\n\r\n	?>\r\n</div>\r\n\r\n<div class=\"spacing\"></div>\r\n', '<!-- *******************************************************\r\nTEXT\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[2]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[2]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-textile_full\" id=\"markitup_1\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">vertikaler Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Trennlinie</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'nein\',\r\n				\'true\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[18]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[18]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-01 10:26:10', 'admin', '2016-10-18 15:50:15', 'decaf', '', 0),
(12, NULL, '30 . PHP', 'REX_VALUE[id=1 output=php]', '<!-- *******************************************************\r\nPHP\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>PHP</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <div class=\"col-sm-12\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>', '2015-12-01 10:26:37', 'admin', '2017-09-20 10:59:04', 'admin', '', 0),
(13, NULL, '15 . Footer Text', '<div class=\"col-md-4\">\r\n	<?php\r\n	if (\'REX_VALUE[id=1 isset=1]\') {\r\n		echo \'\r\n		<h4>REX_VALUE[1]</h4>\r\n		<div class=\"hline-w\"></div>\';\r\n	}\r\n\r\n	if (\'REX_VALUE[id=2 isset=1]\') {\r\n	    echo markitup::parseOutput(\'textile\', \'REX_VALUE[id=2 output=\"html\"]\');\r\n	}\r\n	?>\r\n</div>\r\n', '<!-- *******************************************************\r\nFOOTER TEXTSPALTE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"markitup_1\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" class=\"form-control markitupEditor-markdown_full\" id=\"markitup_1\" name=\"REX_INPUT_VALUE[2]\">REX_VALUE[2]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-14 10:15:16', 'admin', '2016-10-18 15:50:15', 'decaf', '', 0),
(14, NULL, '16 . Footer Social Links', '<div class=\"col-md-4\">\r\n	<?php\r\n	if (\'REX_VALUE[id=1 isset=1]\') {\r\n		echo \'\r\n		<h4>REX_VALUE[1]</h4>\r\n		<div class=\"hline-w\"></div>\';\r\n	}\r\n\r\n	echo \'\r\n	<p class=\"social-links\">\';\r\n\r\n	if (\'REX_VALUE[id=2 isset=1]\') {\r\n		echo \'\r\n		<p class=\"social-links\">\r\n			<a href=\"REX_VALUE[2]\"><i class=\"fa fa-fw fa-facebook\"></i> Facebook</a>\r\n		</p>\';\r\n	}\r\n\r\n	if (\'REX_VALUE[id=3 isset=1]\') {\r\n		echo \'\r\n		<p class=\"social-links\">\r\n			<a href=\"REX_VALUE[3]\"><i class=\"fa fa-fw fa-twitter\"></i> Twitter</a>\r\n		</p>\';\r\n	}\r\n\r\n    if (\'REX_VALUE[id=4 isset=1]\') {\r\n        echo \'\r\n		<p class=\"social-links\">\r\n			<a href=\"REX_VALUE[4]\"><i class=\"fa fa-fw fa-github\"></i> GitHub</a>\r\n		</p>\';\r\n    }\r\n\r\n	echo \'\r\n	</p>\';\r\n	?>\r\n</div>\r\n', '<!-- *******************************************************\r\nFOOTER SOCIAL LINKS\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"facebook\">Facebook-Link</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"facebook\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"twitter\">Twitter-Link</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"twitter\" type=\"text\" name=\"REX_INPUT_VALUE[3]\" value=\"REX_VALUE[3]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"twitter\">GitHub-Link</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"github\" type=\"text\" name=\"REX_INPUT_VALUE[4]\" value=\"REX_VALUE[4]\" />\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-14 10:15:33', 'admin', '2017-08-17 17:20:02', 'admin', '', 0),
(15, NULL, '17 . Footer Links', '<div class=\"col-md-4\">\r\n	<?php\r\n	if (\'REX_VALUE[id=1 isset=1]\') {\r\n		echo \'\r\n		<h4>REX_VALUE[1]</h4>\r\n		<div class=\"hline-w\"></div>\';\r\n	}\r\n\r\n	if (\'REX_LINKLIST[1]\' != \'\') {\r\n		echo \'<ul>\';\r\n		$linklist = explode(\',\',\'REX_LINKLIST[1]\');\r\n		foreach ($linklist as $link) {\r\n			$art = rex_article::get($link);\r\n			if ($art instanceof rex_article) {\r\n\r\n                $class = \"\";\r\n                if(rex_article::getCurrentId() == $art->getId())\r\n                    $class = \' class=\"active\"\';\r\n\r\n				$art_name = $art->getValue(\'name\');\r\n				echo \'\r\n				<li\'.$class.\'><a href=\"\'.rex_getUrl($link).\'\">\'.$art_name.\'</a></li>\';\r\n			}\r\n		}\r\n		echo \'</ul>\';\r\n	}\r\n	?>\r\n</div>\r\n', '<!-- *******************************************************\r\nFOOTER LINKLISTE\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\">Links</label>\r\n        <div class=\"col-sm-10\">\r\n            REX_LINKLIST[id=\"1\" widget=\"1\"]\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-14 10:15:46', 'admin', '2017-08-18 11:25:49', 'admin', '', 0),
(16, NULL, '02b . Text (Redactor)', '<?php\r\n$template = ($this->getTemplateId() == 1) ? \' container\' : \'\';\r\n$distance = (\"REX_VALUE[19]\" != \'\') ? \' REX_VALUE[19]\' : \'\';\r\n$background = (\"REX_VALUE[16]\" == \'true\') ? \' grey\' : \'\';\r\n\r\necho \'\r\n<section class=\"module-wrapper clearfix\'.$background.\'\">\r\n<div class=\"full\'.$template.$distance.\'\">\';\r\n\r\n	// Linker und recter Einzug?\r\n	if (\"REX_VALUE[17]\" == \'vd\') {\r\n		echo \'\r\n		<div class=\"row\">\r\n		<div class=\"col-md-8 col-md-offset-2\">\';\r\n	}\r\n\r\n	if (\"REX_VALUE[1]\" != \'\') {\r\n		echo \'\r\n		<REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>\';\r\n	}\r\n\r\n	if (\'REX_VALUE[id=3 isset=1]\') {\r\n	    echo \"REX_VALUE[id=3 output=html]\";\r\n	}\r\n\r\n	// Trennlinie?\r\n	if (\"REX_VALUE[18]\"== \'true\'){\r\n		echo \'\r\n		<div class=\"hline\"></div>\';\r\n	}\r\n\r\n	if (\"REX_VALUE[17]\" == \'vd\') {\r\n		echo \'\r\n		</div>\r\n		</div>\';\r\n	}\r\n	?>\r\n</div>\r\n</section>\r\n', '<!-- *******************************************************\r\nTEXT\r\n******************************************************** -->\r\n\r\n<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline\">Überschrift</label>\r\n        <div class=\"col-sm-10\">\r\n            <input class=\"form-control\" id=\"headline\" type=\"text\" name=\"REX_INPUT_VALUE[1]\" value=\"REX_VALUE[1]\" />\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"headline-level\">Überschrift-Ebene</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'h2\'=>\'2. Ebene\',\r\n				\'h3\'=>\'3. Ebene\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[2]\" id=\"headline-level\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[2]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"redactor\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea class=\"form-control redactor-editor--demo\" name=\"REX_INPUT_VALUE[3]\">REX_VALUE[3]</textarea>\r\n        </div>\r\n    </div>\r\n\r\n	<div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"padding\">Einrückung</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keine\',\r\n				\'vd\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[17]\" id=\"padding\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[17]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n\r\n			<br><section class=\"rex-page-section\">\r\n			    <div class=\"panel panel-default\">\r\n\r\n			        <header class=\"panel-heading collapsed\" data-toggle=\"collapse\" data-target=\"#collapse-REX_SLICE_ID\" aria-expanded=\"false\">\r\n						<div class=\"panel-title\"><i class=\"rex-icon rex-icon-info\"></i> Hinweis</div>\r\n					</header>\r\n\r\n			        <div id=\"collapse-REX_SLICE_ID\" class=\"panel-collapse collapse\" aria-expanded=\"false\" style=\"height: 0px;\">\r\n\r\n			            <div class=\"panel-body\" style=\"background: #f3f6fb;\">\r\n			                <ul>\r\n								<li>Hier kann man eine linke und rechte Einrückung von je zwei Spalten des 12er-Bootstrap-Rasters aktivieren.</li>\r\n								<li>Der vertikale Abstand erzeugt einen oberen und unteren Zwischenraum von jeweils 60px.</li>\r\n							</ul>\r\n						</div>\r\n			        </div>\r\n			    </div>\r\n			</section>\r\n\r\n		</div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"distance\">vertikaler Abstand</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'keiner\',\r\n				\'mt\'=>\'oberhalb\',\r\n				\'mb\'=>\'unterhalb\',\r\n				\'mtb\'=>\'ober- und unterhalb\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[19]\" id=\"distance\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[19]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Trennlinie</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'nein\',\r\n				\'true\'=>\'ja\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[18]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[18]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"line\">Hintergrund</label>\r\n        <div class=\"col-sm-10\">\r\n			<?php\r\n				$options = array(\r\n				\'\'=>\'weiß\',\r\n				\'true\'=>\'grau\'\r\n			);\r\n			?>\r\n			<select name=\"REX_INPUT_VALUE[16]\" id=\"line\" class=\"form-control\">\r\n			<?php foreach ($options as $k=>$v) : ?>\r\n			<option value=\"<?php echo $k; ?>\"<?php if ($k == \"REX_VALUE[16]\") echo \' selected=\"selected\"\' ?>><?php echo $v; ?></option>\r\n			<?php endforeach ?>\r\n			</select>\r\n        </div>\r\n    </div>\r\n\r\n</fieldset>\r\n', '2015-12-18 09:40:51', 'admin', '2022-01-04 12:26:12', 'admin', '', 0),
(17, NULL, '20 . YForm', '<?php\n\n/**\n * yform.\n *\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:yform_basic_output\n// v1.1\n//--------------------------------------------------------------------------------\n\n$yform = new rex_yform();\nif (\'REX_VALUE[7]\' == 1) {\n    $yform->setDebug(true);\n}\n$form_data = \'REX_VALUE[id=3 output=html]\';\n$form_data = trim(rex_yform::unhtmlentities($form_data));\n$yform->setObjectparams(\'form_action\', rex_getUrl(REX_ARTICLE_ID, REX_CLANG_ID));\n$yform->setFormData($form_data);\n\n// action - showtext\nif (\'REX_VALUE[id=6]\' != \'\') {\n    $html = \'0\'; // plaintext\n    if (\'REX_VALUE[11]\' == 1) {\n        $html = \'1\'; // html\n    }\n\n    $e3 = \'\';\n    $e4 = \'\';\n    if ($html == \'0\') {\n        $e3 = \'<div class=\"alert alert-success\">\';\n        $e4 = \'</div>\';\n    }\n\n    $t = str_replace(\'<br />\', \'\', rex_yform::unhtmlentities(\'REX_VALUE[6]\'));\n    $yform->setActionField(\'showtext\', [$t, $e3, $e4, $html]);\n}\n\n$form_type = \'REX_VALUE[1]\';\n\n// action - email\nif ($form_type == \'1\' || $form_type == \'2\') {\n    $mail_from = (\'REX_VALUE[2]\' != \'\') ? \'REX_VALUE[2]\' : rex::getErrorEmail();\n    $mail_to = (\'REX_VALUE[12]\' != \'\') ? \'REX_VALUE[12]\' : rex::getErrorEmail();\n    $mail_subject = \'REX_VALUE[4]\';\n    $mail_body = str_replace(\'<br />\', \'\', rex_yform::unhtmlentities(\'REX_VALUE[5]\'));\n    $yform->setActionField(\'email\', [$mail_from, $mail_to, $mail_subject, $mail_body]);\n}\n\n// action - db\nif ($form_type == \'0\' || $form_type == \'2\') {\n    $yform->setObjectparams(\'main_table\', \'REX_VALUE[8]\');\n\n    if (\'REX_VALUE[10]\' != \'\') {\n        $yform->setObjectparams(\'getdata\', true);\n    }\n\n    $yform->setActionField(\'db\', [\'REX_VALUE[8]\', $yform->objparams[\'main_where\']]);\n}\n\necho $yform->getForm();\n', '<?php\n\n/**\n * yform\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\n */\n\n// module:yform_basic_input\n// v1.1\n// --------------------------------------------------------------------------------\n\n// DEBUG SELECT\n////////////////////////////////////////////////////////////////////////////////\n$dbg_sel = new rex_select();\n$dbg_sel->setName(\'REX_INPUT_VALUE[7]\');\n$dbg_sel->setAttribute(\'class\', \'form-control\');\n$dbg_sel->addOption(\'inaktiv\',\'0\');\n$dbg_sel->addOption(\'aktiv\',\'1\');\n$dbg_sel->setSelected(\'REX_VALUE[7]\');\n$dbg_sel = $dbg_sel->get();\n\n\n// TABLE SELECT\n////////////////////////////////////////////////////////////////////////////////\n$gc = rex_sql::factory();\n$gc->setQuery(\'SHOW TABLES\');\n$tables = $gc->getArray();\n$tbl_sel = new rex_select();\n$tbl_sel->setName(\'REX_INPUT_VALUE[8]\');\n$tbl_sel->setAttribute(\'class\', \'form-control\');\n$tbl_sel->addOption(\'Keine Tabelle ausgewählt\', \'\');\nforeach ($tables as $key => $value) {\n  $tbl_sel->addOption(current($value), current($value));\n}\n$tbl_sel->setSelected(\'REX_VALUE[8]\');\n$tbl_sel = $tbl_sel->get();\n\n\n// PLACEHOLDERS\n////////////////////////////////////////////////////////////////////////////////\n$yform = new rex_yform;\n$form_data = \'REX_VALUE[3]\';\n$form_data = trim(str_replace(\'<br />\',\'\',rex_yform::unhtmlentities($form_data)));\n$yform->setFormData($form_data);\n$yform->setRedaxoVars(REX_ARTICLE_ID,REX_CLANG_ID);\n$placeholders = \'\';\nif(\'REX_VALUE[3]\'!=\'\') {\n  $ignores = array(\'html\',\'validate\',\'action\');\n  $placeholders .= \'\n        <div id=\"yform-js-formbuilder-placeholders\">\n            <h3>Platzhalter: <span>[<a href=\"#\" id=\"yform-js-formbuilder-placeholders-help-toggler\">?</a>]</span></h3>\'.PHP_EOL;\n  foreach($yform->objparams[\'form_elements\'] as $e) {\n    if(!in_array($e[0],$ignores) && isset($e[1])) {\n      $label = (isset($e[2]) && $e[2] != \'\') ? $e[2] . \': \' : \'\';\n      $placeholders .= \'<code>\' . $label . \'###\'.$e[1].\'###</code> \'.PHP_EOL;\n    }\n  }\n  $placeholders .= \'\n            <ul id=\"yform-js-formbuilder-placeholders-help\">\n                <li>Die Platzhalter ergeben sich aus den obenstehenden Felddefinitionen.</li>\n                <li>Per Klick können einzelne Platzhalter in den Mail-Body kopiert werden.</li>\n                <li>Aktualisierung der Platzhalter erfolgt über die Aktualisierung des Moduls.</li>\n            </ul>\n        </div>\'.PHP_EOL;\n}\n\n\n// OTHERS\n////////////////////////////////////////////////////////////////////////////////\n$row_pad = 1;\n\n$sel = \'REX_VALUE[1]\';\n$db_display   = ($sel==\'\' || $sel==1) ?\' style=\"display:none\"\':\'\';\n$mail_display = ($sel==\'\' || $sel==0) ?\' style=\"display:none\"\':\'\';\n\n?>\n\n<div id=\"yform-formbuilder\">\n  <fieldset class=\"form-horizontal\">\n    <legend>Formular</legend>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label text-left\">Debug Modus</label>\n      <div class=\"col-md-10\">\n        <div class=\"yform-select-style\">\n          <?= $dbg_sel; ?>\n        </div>\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\" for=\"yform-formbuilder-definition\">Felddefinitionen</label>\n      <div class=\"col-md-10\">\n        <textarea class=\"form-control\" style=\"font-family: monospace;\" id=\"yform-formbuilder-definition\" name=\"REX_INPUT_VALUE[3]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[3]\'))+$row_pad);?>\">REX_VALUE[3]</textarea>\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Verfügbare Feldklassen</label>\n      <div class=\"col-md-10\">\n        <div id=\"yform-formbuilder-classes-showhelp\"><?= rex_yform::showHelp(); ?></div>\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Meldung bei erfolgreichen Versand</label>\n      <div class=\"col-md-10\">\n        <label class=\"radio-inline\">\n          <input type=\"radio\" name=\"REX_INPUT_VALUE[11]\" value=\"0\"<?php if(\"REX_VALUE[11]\" == \'0\') echo \' checked\'; ?> /> Plaintext\n        </label>\n        <label class=\"radio-inline\">\n          <input type=\"radio\" name=\"REX_INPUT_VALUE[11]\" value=\"1\"<?php if(\"REX_VALUE[11]\" == \'1\') echo \' checked\'; ?> /> HTML\n        </label>\n      </div>\n      <div class=\"col-md-offset-2 col-md-10\">\n        <textarea class=\"form-control\" name=\"REX_INPUT_VALUE[6]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[6]\'))+$row_pad);?>\">REX_VALUE[6]</textarea>\n      </div>\n    </div>\n  </fieldset>\n\n  <fieldset class=\"form-horizontal\">\n    <legend>Vordefinierte Aktionen</legend>\n\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Bei Submit</label>\n      <div class=\"col-md-10\">\n        <div class=\"yform-select-style\">\n          <select class=\"form-control\" id=\"yform-js-formbuilder-action-select\" name=\"REX_INPUT_VALUE[1]\" size=\"1\">\n            <option value=\"\"<?php if(\"REX_VALUE[1]\" == \"\")  echo \" selected \"; ?>>Nichts machen (actions im Formular definieren)</option>\n            <option value=\"0\"<?php if(\"REX_VALUE[1]\" == \"0\") echo \" selected \"; ?>>Nur in Datenbank speichern</option>\n            <option value=\"1\"<?php if(\"REX_VALUE[1]\" == \"1\") echo \" selected \"; ?>>Nur E-Mail versenden</option>\n            <option value=\"2\"<?php if(\"REX_VALUE[1]\" == \"2\") echo \" selected \"; ?>>E-Mail versenden und in Datenbank speichern</option>\n          </select>\n        </div>\n      </div>\n    </div>\n  </fieldset>\n\n  <fieldset class=\"form-horizontal\" id=\"yform-js-formbuilder-mail-fieldset\"<?php echo $mail_display;?> >\n    <legend>E-Mail-Versand:</legend>\n\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Absender</label>\n      <div class=\"col-md-10\">\n        <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Empfänger</label>\n      <div class=\"col-md-10\">\n        <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[12]\" value=\"REX_VALUE[12]\" />\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Subject</label>\n      <div class=\"col-md-10\">\n        <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[4]\" value=\"REX_VALUE[4]\" />\n      </div>\n    </div>\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Mailbody</label>\n      <div class=\"col-md-10\">\n        <textarea class=\"form-control\" id=\"yform-js-formbuilder-mail-body\" name=\"REX_INPUT_VALUE[5]\" rows=\"<?php echo (count(explode(\"\\r\",\'REX_VALUE[5]\'))+$row_pad);?>\">REX_VALUE[5]</textarea>\n        <div class=\"help-block\">\n          <?php echo $placeholders;?>\n        </div>\n      </div>\n    </div>\n\n  </fieldset>\n\n  <fieldset class=\"form-horizontal\" id=\"yform-js-formbuilder-db-fieldset\"<?php echo $db_display;?> >\n    <legend>Datenbank Einstellungen</legend>\n\n    <div class=\"form-group\">\n      <label class=\"col-md-2 control-label\">Tabelle wählen <span>[<a href=\"#\" id=\"yform-js-formbuilder-db-help-toggler\">?</a>]</span></label>\n      <div class=\"col-md-10\">\n        <div class=\"yform-select-style\">\n          <?= $tbl_sel; ?>\n        </div>\n        <div class=\"help-block\">\n          <ul id=\"yform-js-formbuilder-db-help\">\n            <li>Hier werden die Daten des Formular hineingespeichert</li>\n          </ul>\n        </div>\n      </div>\n    </div>\n  </fieldset>\n\n</div>\n\n<p id=\"yform-formbuilder-info\"><?=  rex_addon::get(\'yform\')->getName() . \' \' . rex_addon::get(\'yform\')->getVersion() ?></p>\n\n<script type=\"text/javascript\">\n  <!--\n  (function($){\n\n    // AUTOGROW BY ROWS\n    $(\'#yform-formbuilder textarea\').keyup(function(){\n      var rows = $(this).val().split(/\\r?\\n|\\r/).length + <?php echo $row_pad;?>;\n      $(this).attr(\'rows\',rows);\n    });\n\n    // TOGGLERS\n    $(\'#yform-js-formbuilder-placeholders-help-toggler\').click(function(e){\n      e.preventDefault();\n      $(\'#yform-js-formbuilder-placeholders-help\').toggle(50);return false;\n    });\n    $(\'#yform-js-formbuilder-where-help-toggler\').click(function(e){\n      e.preventDefault();\n      $(\'#yform-js-formbuilder-where-help\').toggle(50);return false;\n    });\n    $(\'#yform-js-formbuilder-db-help-toggler\').click(function(e){\n      e.preventDefault();\n      $(\'#yform-js-formbuilder-db-help\').toggle(50);return false;\n    });\n\n\n    // INSERT PLACEHOLDERS\n    $(\'#yform-js-formbuilder-placeholders code\').click(function(){\n      newval = $(\'#yform-js-formbuilder-mail-body\').val()+\' \'+$(this).html();\n      $(\'#yform-js-formbuilder-mail-body\').val(newval);\n      $(this).addClass(\'text-muted\');\n    });\n\n    // TOGGLE MAIL/DB PANELS\n    $(\'#yform-js-formbuilder-action-select\').change(function(){\n      switch($(this).val()){\n        case \'\':\n          $(\'#yform-js-formbuilder-db-fieldset\').hide(0);\n          $(\'#yform-js-formbuilder-mail-fieldset\').hide(0);\n          break;\n        case \'1\':\n          $(\'#yform-js-formbuilder-db-fieldset\').hide(0);\n          $(\'#yform-js-formbuilder-mail-fieldset\').show(0);\n          break;\n        case \'0\':\n          $(\'#yform-js-formbuilder-db-fieldset\').show(0);\n          $(\'#yform-js-formbuilder-mail-fieldset\').hide(0);\n          break;\n        case \'2\':\n        case \'3\':\n          $(\'#yform-js-formbuilder-db-fieldset\').show(0);\n          $(\'#yform-js-formbuilder-mail-fieldset\').show(0);\n          break;\n      }\n    });\n\n  })(jQuery)\n  //-->\n</script>\n', '0000-00-00 00:00:00', '', '2016-01-29 11:09:15', 'admin', '', 0),
(18, NULL, '10 . Teaser Unterkategorien', '<?php\r\n$cats = rex_category::get($this->getValue(\'article_id\'));\r\n$children = $cats->getChildren();\r\n\r\nif (is_array($children)) {\r\n\r\n	$container = ($this->getTemplateId() == 1) ? \'container \' : \'\';\r\n	echo \'\r\n	<div class=\"\'.$container.\'teaser clearfix\">\';\r\n\r\n	foreach ($children as $child) {\r\n\r\n		if ($child->isOnline() && $child->getValue(\'cat_pic\') != \'\') {\r\n\r\n			$media = rex_media::get($child->getValue(\'cat_pic\'));\r\n			$title = $media->getValue(\'title\');\r\n			$desc = $media->getValue(\'cat_description\');\r\n\r\n			echo \'\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-5\">\r\n					<img class=\"image-deco\" src=\"index.php?rex_media_type=content&rex_media_file=\'.$child->getValue(\'cat_pic\').\'\" alt=\"\'.$desc.\'\">\r\n				</div>\';\r\n\r\n				echo \'\r\n				<div class=\"col-lg-7\">\r\n					<h2><a class=\"hover-title\" href=\"\'.rex_getUrl($child->getId()).\'\">\'.$child->getValue(\'name\').\'</a></h2>\';\r\n					if($child->getValue(\'cat_description\') != \'\') {\r\n					    echo markitup::parseOutput(\'textile\', $child->getValue(\'cat_description\'));\r\n					}\r\n\r\n					echo \'\r\n					<a class=\"btn btn-theme\" href=\"\'.rex_getUrl($child->getId(), rex_clang::getCurrentId()).\'\" class=\"btn btn-theme\"><span>{{ more_info }}</span></a>\r\n				</div>\r\n			</div>\r\n			<div class=\"hline\"></div>\';\r\n\r\n		}\r\n	}\r\n	echo \'\r\n	</div>\';\r\n\r\n}\r\n?>\r\n', '<section class=\"rex-page-section\">\r\n    <div class=\"panel panel-default\">\r\n\r\n        <header class=\"panel-heading collapsed\" >\r\n			<div class=\"panel-title\"><i class=\"rex-icon rex-icon-info\"></i> Hinweis</div>\r\n		</header>\r\n\r\n        <div class=\"panel-collapse\">\r\n\r\n            <div class=\"panel-body\" style=\"background: #f3f6fb;\">\r\n				<p>Das Modul listet alle Unterkategorien, die:</p>\r\n				<ul>\r\n					<li>online sind</li>\r\n					<li>ein Foto im Kategorie-Metafeld zugewiesen bekamen</li>\r\n				</ul>\r\n				<br><p>Kategorie-Metafelder erreicht man durch Klick auf das Pluszeichen beim Editieren einer Kategorie.</p>\r\n			</div>\r\n        </div>\r\n    </div>\r\n</section>\r\n', '2015-12-31 00:06:41', 'admin', '2016-10-18 15:50:15', 'decaf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rex_module_action`
--

CREATE TABLE `rex_module_action` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_redactor_profile`
--

CREATE TABLE `rex_redactor_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `min_height` int(5) NOT NULL,
  `max_height` int(5) NOT NULL,
  `plugin_counter` tinyint(1) NOT NULL,
  `plugin_limiter` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `plugins` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rex_redactor_profile`
--

INSERT INTO `rex_redactor_profile` (`id`, `name`, `description`, `min_height`, `max_height`, `plugin_counter`, `plugin_limiter`, `plugins`) VALUES
(1, 'demo', 'Redactor-Konfiguration für die Demo', 300, 800, 1, '', 'html,undo,|,h2,h3,h4,bold,italic,alignment,|,lists,table,blockquote,image,linkExternal,linkInternal,hr,|,cleaner,properties,fullscreen');

-- --------------------------------------------------------

--
-- Table structure for table `rex_sprog_abbreviation`
--

CREATE TABLE `rex_sprog_abbreviation` (
  `id` int(11) UNSIGNED NOT NULL,
  `clang_id` int(11) NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_sprog_wildcard`
--

CREATE TABLE `rex_sprog_wildcard` (
  `pid` int(11) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `clang_id` int(11) NOT NULL,
  `wildcard` varchar(255) NOT NULL,
  `replace` text NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_sprog_wildcard`
--

INSERT INTO `rex_sprog_wildcard` (`pid`, `id`, `clang_id`, `wildcard`, `replace`, `createdate`, `createuser`, `updatedate`, `updateuser`, `revision`) VALUES
(1, 1, 1, 'more_info', 'Mehr Informationen', '2016-05-30 19:54:56', 'admin', '2016-05-30 19:54:56', 'admin', 0),
(2, 1, 2, 'more_info', 'More Information', '2016-05-30 19:54:56', 'admin', '2016-05-30 19:58:27', 'admin', 0),
(3, 2, 1, 'form_firstname', 'Vorname', '2016-05-30 20:03:22', 'admin', '2016-05-30 20:03:22', 'admin', 0),
(4, 2, 2, 'form_firstname', 'First name', '2016-05-30 20:03:22', 'admin', '2016-05-30 20:36:52', 'admin', 0),
(5, 3, 1, 'form_error_firstname', 'Bitte Vornamen angeben', '2016-05-30 20:34:44', 'admin', '2016-05-30 20:34:44', 'admin', 0),
(6, 3, 2, 'form_error_firstname', 'Please fill in your first name', '2016-05-30 20:34:44', 'admin', '2016-05-30 20:47:13', 'admin', 0),
(7, 4, 1, 'form_lastname', 'Nachname', '2016-05-30 20:35:48', 'admin', '2016-05-30 20:35:48', 'admin', 0),
(8, 4, 2, 'form_lastname', ' Last name', '2016-05-30 20:35:48', 'admin', '2016-05-30 20:46:38', 'admin', 0),
(9, 5, 1, 'form_error_lastname', 'Bitte Nachnamen angeben', '2016-05-30 20:36:01', 'admin', '2016-05-30 20:36:01', 'admin', 0),
(10, 5, 2, 'form_error_lastname', 'Please fill in your last name', '2016-05-30 20:36:01', 'admin', '2016-05-30 20:47:28', 'admin', 0),
(11, 6, 1, 'form_message', 'Nachricht', '2016-05-30 20:36:09', 'admin', '2016-05-30 20:36:09', 'admin', 0),
(12, 6, 2, 'form_message', 'Message', '2016-05-30 20:36:09', 'admin', '2016-05-30 20:46:48', 'admin', 0),
(13, 7, 1, 'form_error_message', 'Bitte Nachricht angeben', '2016-05-30 20:36:21', 'admin', '2016-05-30 20:36:21', 'admin', 0),
(14, 7, 2, 'form_error_message', 'Please fill in your message', '2016-05-30 20:36:22', 'admin', '2016-05-30 20:47:45', 'admin', 0),
(15, 8, 1, 'form_send', 'Nachricht senden', '2016-05-30 20:36:29', 'admin', '2016-05-30 20:49:02', 'admin', 0),
(16, 8, 2, 'form_send', 'Send message', '2016-05-30 20:36:30', 'admin', '2016-05-30 20:46:26', 'admin', 0),
(17, 9, 1, 'languages', 'Sprachen', '2016-06-01 23:26:33', 'admin', '2016-06-01 23:26:33', 'admin', 0),
(18, 9, 2, 'languages', 'Sprachen', '2016-06-01 23:26:33', 'admin', '2016-06-01 23:26:33', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rex_template`
--

CREATE TABLE `rex_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `active` tinyint(1) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rex_template`
--

INSERT INTO `rex_template` (`id`, `key`, `name`, `content`, `active`, `createdate`, `attributes`, `revision`, `createuser`, `updatedate`, `updateuser`) VALUES
(1, NULL, '01 . Standard', '<?php\r\nif (!defined(\'SITE_TYPE\')) {\r\n    define(\'SITE_TYPE\', \'col1\');\r\n}\r\n?>\r\nREX_TEMPLATE[3]\r\n', 1, '2018-11-03 11:51:57', '{\"ctype\":[],\"modules\":{\"1\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"16\",\"3\":\"3\",\"4\":\"4\",\"5\":\"5\",\"6\":\"6\",\"7\":\"7\",\"8\":\"8\",\"9\":\"9\",\"10\":\"18\",\"11\":\"10\",\"12\":\"11\",\"13\":\"17\",\"14\":\"12\",\"all\":0}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2018-11-03 11:51:57', 'admin'),
(2, NULL, '02 . Zweispalter', '<?php\r\nif (!defined(\'SITE_TYPE\')) {\r\n    define(\'SITE_TYPE\', \'col2\');\r\n}\r\n?>\r\nREX_TEMPLATE[3]\r\n', 1, '2018-11-03 11:52:30', '{\"ctype\":{\"1\":\"Hauptspalte\",\"2\":\"Seitenspalte\"},\"modules\":{\"1\":{\"0\":\"1\",\"1\":\"2\",\"2\":\"16\",\"3\":\"3\",\"4\":\"4\",\"5\":\"5\",\"6\":\"6\",\"7\":\"7\",\"8\":\"8\",\"9\":\"9\",\"10\":\"18\",\"11\":\"10\",\"12\":\"17\",\"13\":\"12\",\"all\":0},\"2\":{\"0\":\"11\",\"all\":0},\"3\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2018-11-03 11:52:30', 'admin'),
(3, NULL, '03 . TEMPLATE', 'REX_TEMPLATE[4]\r\n<body>\r\n\r\n<!-- Fixed navbar -->\r\n<div class=\"navbar navbar-default navbar-fixed-top\" role=\"navigation\">\r\n  <div class=\"container\">\r\n	<div class=\"navbar-header\">\r\n	  <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n		<span class=\"sr-only\">Toggle navigation</span>\r\n		<span class=\"icon-bar\"></span>\r\n		<span class=\"icon-bar\"></span>\r\n		<span class=\"icon-bar\"></span>\r\n	  </button>\r\n	  <a class=\"navbar-brand\" href=\"<?= rex_getUrl(rex_article::getSiteStartArticleId(), rex_clang::getCurrentId()) ?>\"><img src=\"<?= rex_url::base(\'resources/css/images/logo.svg\') ?>\" alt=\"REDAXO CMS\"></a>\r\n	</div>\r\n	<div class=\"navbar-collapse collapse navbar-right\">\r\n		<!-- Navigation -->\r\n		REX_TEMPLATE[6]\r\n		<!--/Navigation -->\r\n\r\n	</div><!--/.nav-collapse -->\r\n  </div>\r\n</div>\r\n\r\n<!-- *******************************************************\r\nHeaderpic\r\n******************************************************* -->\r\nREX_TEMPLATE[5]\r\n\r\n<?php\r\n// Breadcrumb\r\n$path = explode(\"|\",$this->getValue(\"path\").$this->getValue(\"article_id\").\"|\");\r\n$secondLevel = $path[2];\r\n\r\nif ($secondLevel != \'\') { // show breadcrumb only in second level or deeper\r\n	echo \'<div class=\"container breadcrumb-wrapper\">\';\r\n		echo \'Du bist hier: \';\r\n		$startArticle = rex_article::get(rex_article::getSiteStartArticleId());\r\n		$startArticleUrl = $startArticle->getUrl();\r\n		$startArticleName = $startArticle->getName();\r\n		echo \'<a href=\"\'.$startArticleUrl.\'\"><span class=\"home_link\">\'.$startArticleName.\'</a></span>\';\r\n\r\n		$nav = rex_navigation::factory();\r\n		echo $nav->showBreadcrumb(\'\', true);\r\n	echo \'</div>\';\r\n}\r\n\r\n/*\r\nIf \"01 . Standard\", content-container has full width\r\n*/\r\nif (SITE_TYPE == \'col1\') { ?>\r\n	<article class=\"mtb\">\r\n		<?php echo $this->getArticle(\'1\'); ?>\r\n	</article>\r\n<?php }\r\n\r\n/*\r\nIf \"02 . Zweispalter\", there is a main column and a side column with 2/3 - 1/3 width\r\n*/\r\nif (SITE_TYPE == \'col2\') { ?>\r\n	<div class=\"container mtb\">\r\n		<div class=\"row\">\r\n\r\n			<div class=\"col-lg-8 col-sm-12\">\r\n				<?php echo $this->getArticle(\'1\'); ?>\r\n			</div>\r\n\r\n			<div class=\"col-lg-3 col-lg-offset-1 sidebar hidden-xs hidden-sm\">\r\n				<!-- Subnavigation -->\r\n				REX_TEMPLATE[8]\r\n				<!-- /Subnavigation -->\r\n\r\n				<!-- more Content -->\r\n				<?php echo $this->getArticle(\'2\'); ?>\r\n			</div>\r\n\r\n		</div>\r\n	</div>\r\n<?php } ?>\r\n\r\n<!-- *******************************************************\r\n FOOTER\r\n ******************************************************* -->\r\nREX_TEMPLATE[7]\r\n\r\n<div style=\"display:none;\">REDAXO 5 rocks!</div>\r\n\r\n<!-- Javascripts -->\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/jquery.min.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/jquery-migrate.min.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/bootstrap.min.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/jquery.hoverex.min.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/jquery.prettyPhoto.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/jquery.flexslider-min.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/prettify.js\') ?>\"></script>\r\n<script type=\"text/javascript\" src=\"<?= rex_url::base(\'resources/js/redaxo-demo.js\') ?>\"></script>\r\n\r\n</body>\r\n</html>', 0, '2016-06-02 12:23:40', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2020-02-05 23:46:29', 'admin'),
(5, NULL, '04 . Headerbild', '<?php\r\n// Include Headerpicture recursive\r\n// If current article has no picture, take picture from parent categories\r\n$header = \'\';\r\n$headerpic = $this->getValue(\'art_file\');\r\n$darken = $this->getValue(\'art_darken\');\r\n\r\nif ($headerpic == \'\') {\r\n    $category = rex_article::getCurrent()->getCategory();\r\n    while ($headerpic == \'\') {\r\n        if ($category == null) {\r\n            break;\r\n        }\r\n        $headerpic = $category->getValue(\'art_file\');\r\n        $darken = $category->getValue(\'art_darken\');\r\n        $category = $category->getParent();\r\n    }\r\n}\r\n\r\nif ($headerpic == \'\') {\r\n    $headerpic = rex_article::getSiteStartArticle()->getValue(\'art_file\');\r\n    $darken = rex_article::getSiteStartArticle()->getValue(\'art_file_darken\');\r\n}\r\n\r\n\r\n$header = \'\r\n<div id=\"headerpic\" style=\"background-image: url(\'.rex_url::frontendController([\'rex_media_type\' => \'fullscreen\', \'rex_media_file\' => $headerpic]).\');\">\';\r\n\r\n    // Darken header picture\r\n    if ($darken == \'\')  $darken = \'0.35\'; // Default darken 35%\r\n    $header .= \'\r\n    <div class=\"layer\" style=\"opacity: \'.$darken.\';\"></div>\';\r\n\r\n    $header .= \'\r\n    <div class=\"container centered\">\r\n        <div class=\"row\">\r\n            <h3>\'.$this->getValue(\'name\').\'</h3>\r\n        </div><!-- /row -->\r\n    </div> <!-- /container -->\r\n</div><!-- /headerpic -->\';\r\n\r\n\r\n\r\n// If gallery exists,\r\n// show gallery instead of header picture\r\nif ($this->getValue(\'art_gallery\') != \'\') {\r\n\r\n    $header = \'\r\n    <section class=\"hero-slider slider-fullscreen\">\r\n        <ul class=\"slides\">\';\r\n        \r\n            $imagelist = explode(\',\', $this->getValue(\'art_gallery\'));\r\n            foreach ($imagelist as $file) {\r\n            \r\n                $media = rex_media::get($file);\r\n                if ($media) {\r\n                \r\n                    $languageSuffix = \'\';\r\n                    if (rex_clang::getCurrentId() == 2) {\r\n                        $languageSuffix = \'_en\';\r\n                    }\r\n\r\n                    $mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\' . $languageSuffix));\r\n					// english\r\n					$mediatitle = $media->getValue(\'med_gallery_title\' . $languageSuffix);\r\n                    $mediatext = $media->getValue(\'med_gallery_text\' . $languageSuffix);\r\n                    $medialinktext = $media->getValue(\'med_gallery_link_text\' . $languageSuffix);\r\n					$medialink = $media->getValue(\'med_gallery_link\');\r\n					$mediadarken = $media->getValue(\'med_darken\');\r\n\r\n                    $header .= \'\r\n                    <li class=\"parallax kenburns\">\';\r\n                        \r\n                        // Abdunkelung\r\n                        if ($mediadarken == \'\') $mediadarken = \'0.35\'; // Default darken 35%\r\n                        $header .= \'\r\n                        <div class=\"overlay\" style=\"opacity: \'.$mediadarken.\';\"></div>\';\r\n\r\n                        $header .= \'\r\n                        <img alt=\"\'.$mediatitle.\'\" class=\"background-image\" src=\"\'.rex_url::frontendController([\'rex_media_type\' => \'fullscreen\', \'rex_media_file\' => $file]).\'\">\';\r\n\r\n\r\n                        if ($mediatitle != \'\' || $mediatext != \'\') {\r\n                            $header .= \'\r\n                            <div class=\"row slide-content animate\">\r\n                                <div class=\"col-lg-6 col-lg-offset-3 text-center\">\';\r\n\r\n                                    if ($mediatitle != \'\') {\r\n                                        $header .= \'\r\n                                        <h1>\'.$mediatitle.\'</h1>\';\r\n                                    }\r\n                                    if ($mediatitle != \'\') {\r\n                                        $header .= \'\r\n                                        <p class=\"lead\">\'.$mediatext.\'</p>\';\r\n                                    }\r\n                                    if ($medialink != \'\' && $medialinktext != \'\') {\r\n                                        $header .= \'\r\n                                        <a href=\"\'.$medialink.\'\" class=\"btn btn-theme\">\'.$medialinktext.\'</a>\';\r\n                                    }\r\n\r\n                                    $header .= \'\r\n                                </div>\r\n                            </div>\';\r\n                        }\r\n\r\n                    $header .= \'\r\n                    </li>\';\r\n                }\r\n            }\r\n        \r\n        $header .= \'\r\n        </ul>\r\n    </section><!--end of fullscreen slider-->\';\r\n}\r\n\r\necho $header;\r\n?>', 0, '2016-06-09 09:52:25', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2017-08-17 22:40:14', 'admin'),
(6, NULL, '05 . Navigation', 'REX_TEMPLATE[10]\r\n<?php\r\n$path = explode(\"|\",$this->getValue(\"path\").$this->getValue(\"article_id\").\"|\");\r\n$path1 = ((!empty($path[1])) ? $path[1] : \'\');\r\n$path2 = ((!empty($path[2])) ? $path[2] : \'\');\r\n\r\n$nav_main = \'\';\r\n\r\nforeach (rex_category::getRootCategories() as $lev1) {\r\n\r\n	$hidden_ids = array(1,6);\r\n	// hide Home- and footer-article in navigation\r\n\r\n	$category_is_visible = true;\r\n	// only visible if online_from and online_to is ok\r\n	if ($lev1->getValue(\'art_online_from\') && $lev1->getValue(\'art_online_from\') > time()) { $category_is_visible = false; }\r\n\r\n	if ($lev1->getValue(\'art_online_to\') && $lev1->getValue(\'art_online_to\') < time()) { $category_is_visible = false; }\r\n\r\n\r\n	if ($lev1->isOnline(true) && (!in_array($lev1->getId(), $hidden_ids)) && $category_is_visible == true) {\r\n\r\n		if ($lev1->getId() == $path1) {\r\n			$nav_main .= \'\r\n			<li class=\"dropdown-toggle active\"><a href=\"\'.$lev1->getUrl().\'\">\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\r\n		} else {\r\n   			$nav_main .= \'\r\n			<li class=\"dropdown-toggle\"><a href=\"\'.$lev1->getUrl().\'\">\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\r\n		}\r\n\r\n		// 1st level start\r\n		$lev1Size = sizeof($lev1->getChildren());\r\n\r\n			if ($lev1Size != \"0\") {\r\n\r\n				$nav_main .= \'\r\n				<ul class=\"dropdown-menu\">\';\r\n\r\n					// START 2nd level categories\r\n					foreach ($lev1->getChildren() as $lev2):\r\n\r\n						$category_is_visible = true;\r\n						// only visible if online_from and online_to is ok\r\n						if ($lev2->getValue(\'art_online_from\') && $lev2->getValue(\'art_online_from\') > time()) { $category_is_visible = false; }\r\n\r\n						if ($lev2->getValue(\'art_online_to\') && $lev2->getValue(\'art_online_to\') < time()) { $category_is_visible = false; }\r\n\r\n\r\n						if ($lev2->isOnline(true) && $category_is_visible == true) {\r\n\r\n							if ($lev2->getId() == $path2) {\r\n								$nav_main .= \'\r\n								<li class=\"dropdown-toggle active\"><a href=\"\'.$lev2->getUrl().\'\">\'.htmlspecialchars($lev2->getValue(\'name\')).\'</a></li>\';\r\n							} else {\r\n								$nav_main .= \'\r\n								<li class=\"dropdown-toggle\"><a href=\"\'.$lev2->getUrl().\'\">\'.htmlspecialchars($lev2->getValue(\'name\')).\'</a></li>\';\r\n							}\r\n						}\r\n					endforeach;\r\n\r\n				$nav_main .= \'\r\n				</ul>\';\r\n\r\n			}\r\n\r\n		$nav_main .= \'\r\n		</li>\';\r\n	}\r\n}\r\n\r\necho \'\r\n<div class=\"navbar-collapse collapse navbar-right\">\r\n	<ul class=\"nav navbar-nav\">\r\n		\'.$nav_main.\'\r\n		\'.rex::getProperty(\'lang_switch\').\'\r\n	</ul>\r\n</div><!--/.nav-collapse -->\';\r\n?>\r\n', 0, '2017-09-21 10:07:10', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2020-02-05 23:45:51', 'admin'),
(7, NULL, '07 . Footer Hilfstemplate', ' <div id=\"footerwrap\">\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n\r\n			REX_ARTICLE[id=6]\r\n			<?php\r\n			// Include content of article 6. You can do it this way too:\r\n			// $footer = new rex_article_content(6);\r\n			// echo $footer->getArticle(\'1\');\r\n			?>\r\n\r\n			</div><! --/col -->\r\n		</div><! --/row -->\r\n	</div><! --/container -->\r\n </div><! --/footerwrap -->\r\n', 1, '2016-06-02 12:25:02', '{\"ctype\":[],\"modules\":{\"1\":{\"0\":\"13\",\"1\":\"14\",\"2\":\"15\",\"all\":0}},\"categories\":{\"0\":\"6\",\"all\":0}}', 0, 'admin', '2016-06-02 12:25:02', 'admin'),
(8, NULL, '06 . Subnavigation (Sidebar)', '<?php\r\n$path = explode(\"|\",$this->getValue(\"path\").$this->getValue(\"article_id\").\"|\");\r\n$path1 = ((!empty($path[1])) ? $path[1] : \'\');\r\n$path2 = ((!empty($path[2])) ? $path[2] : \'\');\r\n\r\n$article = rex_article::get($path1);\r\n$articleUrl = $article->getUrl();\r\n$articleName = $article->getName();\r\n\r\n$nav = rex_navigation::factory();\r\n$subnav = $nav->get($path1,2,TRUE,TRUE);\r\n\r\nif ($subnav != \'\') {\r\n\r\n	echo \'\r\n	<h4 id=\"sidenav_title\"><a href=\"\'.$articleUrl.\'\">\'.$articleName.\'</a></h4>\r\n	<div class=\"hline\"></div>\';\r\n\r\n	echo $subnav;\r\n\r\n}\r\n?>\r\n', 0, '2015-12-31 07:50:40', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2016-01-13 13:58:27', 'admin'),
(9, NULL, '08 . Download Hilfstemplate', '<?php\r\n$file_name = strtolower(preg_replace(\"/[^a-zA-Z0-9.\\-\\$\\+]/\",\"_\",rex_request(\'file\', \'string\')));\r\n$file_type = \"application/octetstream\";\r\n$file_path = rex_path::media($file_name);\r\n\r\nif ($file_name != \"\" && $fp = @fopen(\"$file_path\", \"r\"))\r\n{\r\n\r\nheader(\"Expires: Mon, 01 Jan 2000 01:01:01 GMT\"); // Date in the past\r\nheader(\"Last-Modified: \" . gmdate(\"D, d M Y H:i:s\") . \" GMT\");// always modified\r\nheader(\"Cache-Control: no-store, no-cache, must-revalidate\");// HTTP/1.1\r\nheader(\"Cache-Control: post-check=0, pre-check=0\", false);\r\nheader(\"Cache-Control: private\");\r\nheader(\"Pragma: no-cache\");\r\nheader(\"Content-Type: $file_type; name=\\\"$file_name\\\"\");\r\nheader(\"Content-Disposition: attachment; filename=\\\"$file_name\\\"\");\r\n\r\nrex_response::cleanOutputBuffers();\r\nfpassthru ($fp);\r\nfclose($fp);\r\nexit;\r\n\r\n}else\r\n{\r\n\r\necho \"<div class=warning>Download failed</div>\";\r\n\r\n}\r\n?>', 1, '2016-06-02 12:25:27', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":0}},\"categories\":{\"0\":\"6\",\"all\":0}}', 0, 'admin', '2016-06-02 12:25:27', 'admin'),
(10, NULL, '09 . Sprachwechsler', '<?php\r\n// uncomment to show language array\r\n// print_r(rex_clang::getAll());\r\n\r\n$current_language = \'\';\r\n$languages = \'\';\r\n\r\n\r\n// two languages online -> only show link to other language\r\nif (count(rex_clang::getAll(true)) == 2) {\r\n\r\n	foreach (rex_clang::getAll(true) as $lang) {\r\n		if (rex_clang::getCurrentId() != $lang->getValue(\'id\')) {\r\n			$languages = \'\r\n			<li class=\"lang-title visible-xs\">{{ languages }}</li>\r\n			<li class=\"lang\">\r\n				<a href=\"\'.rex_getUrl($this->getValue(\'article_id\'), $lang->getValue(\'id\')).\'\" title=\"\'.$lang->getValue(\'name\').\'\">\r\n					<span class=\"hidden-xs\">\'.$lang->getValue(\'code\').\'</span>\r\n					<span class=\"visible-xs\">\'.$lang->getValue(\'name\').\'</span>\r\n				</a>\r\n			</li>\';\r\n		}\r\n	}\r\n\r\n	rex::setProperty(\'lang_switch\', $languages);\r\n\r\n// more than two languages online -> show dropdown, current language not clickable\r\n} elseif (count(rex_clang::getAll(true)) > 2) {\r\n	\r\n	foreach (rex_clang::getAll(true) as $lang) {\r\n		if (rex_clang::getCurrentId() == $lang->getValue(\'id\')) {\r\n			$current_language .= \'\r\n			<a href=\"#\" title=\"\'.$lang->getValue(\'name\').\'\">\r\n				<span class=\"hidden-xs\">\'.$lang->getValue(\'code\').\'</span>\r\n				<span class=\"visible-xs\">\'.$lang->getValue(\'name\').\'</span>\r\n			</a>\';\r\n		} else {\r\n			$languages .= \'\r\n			<li class=\"dropdown-toggle\">\r\n				<a href=\"\'.rex_getUrl($this->getValue(\'article_id\'), $lang->getValue(\'id\')).\'\" title=\"\'.$lang->getValue(\'name\').\'\">\r\n					<span class=\"hidden-xs\">\'.$lang->getValue(\'code\').\'</span>\r\n					<span class=\"visible-xs\">\'.$lang->getValue(\'name\').\'</span>\r\n				</a>\r\n			</li>\';\r\n		}\r\n	}\r\n\r\n	rex::setProperty(\'lang_switch\', \'<li class=\"lang-title visible-xs\">{{ languages }}</li><li class=\"dropdown-toggle lang\">\' . $current_language . \'<ul class=\"dropdown-menu\">\' . $languages . \'</ul></li>\');\r\n\r\n}\r\n?>', 0, '2016-06-01 23:27:27', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'admin', '2016-06-01 23:27:27', 'admin'),
(11, NULL, '001 - MarienApo Main', '<html>\r\n\r\n<head>\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <link rel=\"shortcut icon\" href=\"./assets/apomain/images/favicon.png\">\r\n    <meta name=\"description\" content=\"\">\r\n    <meta name=\"author\" content=\"\">\r\n    <title>Marien Apotheke * Neukirchen\r\n    </title>\r\n    <!-- Bootstrap Grid CSS-->\r\n    <link href=\"./assets/apomain/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n\r\n\r\n    <link rel=\"shortcut icon\" href=\"files/template/Pics/favicon.svg\" type=\"image/svg\">\r\n    <!-- Custom CSS-->\r\n    <link href=\"./assets/apomain/css/base.css\" rel=\"stylesheet\">\r\n    <link href=\"./assets/apomain/css/custom.css\" rel=\"stylesheet\">\r\n\r\n</head>\r\n\r\n<body>\r\n    <!--MobileNav-->\r\n    REX_TEMPLATE[15]\r\n\r\n\r\n    <div id=\"scrollContainer\">\r\n        <!--Header-->\r\n        REX_TEMPLATE[12]\r\n\r\n        <?php\r\n\r\n        echo \'\r\n            <nav class=\"navvcontainer d-none d-md-block\">\r\n                <ul>\r\n                    \' . $nav_main . \'\r\n                    \' . rex::getProperty(\'lang_switch\') . \'\r\n                </ul>\r\n            </nav>\';\r\n\r\n\r\n\r\n        ?>\r\n\r\n        <div class=\"container-lg\">\r\n            <section class=\"row\">\r\n\r\n                <div class=\"col-lg-6 \">\r\n                    <h2>WILLKOMMEN</h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                </div>\r\n                <div class=\"col-lg-6 \">\r\n                    <img class=\"img-fluid spacedImg\" src=\"./assets/apomain/images/Startseite/windsafterl.webp\">\r\n                </div>\r\n\r\n            </section>\r\n        </div>\r\n        <div class=\"container-fluid sectionGrey\">\r\n\r\n            <div class=\"container-lg\">\r\n                <section class=\"row \">\r\n                    <div class=\"col-lg-12 \">\r\n                        <h2>WILLKOMMEN BEI DER MARIEN – APOTHEKE</h2>\r\n\r\n                        Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                        Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                        und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                        pharmazeutische Betreuung ermöglichen.\r\n                        Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                        Produkten\r\n                        nach eigener Rezeptur und für Sie\r\n                        maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                    </div>\r\n                </section>\r\n            </div>\r\n\r\n        </div>\r\n        <div class=\"container-lg\">\r\n            <section class=\"row\">\r\n\r\n                <div class=\"col-xs-12 col-lg-6 \">\r\n                    <h2 class=\"h2Spacer\">Über uns</h2>\r\n                    <img class=\"img-fluid spacedImg\" src=\"./assets/apomain/images/Startseite/3xkram.webp\">\r\n\r\n                </div>\r\n                <div class=\"col-xs-12 col-lg-6 \">\r\n\r\n                    <h2 class=\"h2Spacer\"></h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n\r\n\r\n\r\n                </div>\r\n                <div class=\"col-lg-6 \">\r\n                    <h2>Fasel</h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                </div>\r\n                <div class=\" col-xs-12 col-lg-6 \"></div>\r\n\r\n            </section>\r\n        </div>\r\n        <div class=\"posRel\">\r\n            <div class=\"container-fluid posRel parallaxBG\" style=\"background-image: url(./assets/apomain/images/hero/HistorischeApothekeBg_lg.webp); height: 400px;\" data-u-scale=\"1.5\" data-u-speed=\"4.5\">\r\n            </div>\r\n            <div class=\"container-lg\" style=\"position: absolute; top:0; left:0\">\r\n                <section class=\"row\">\r\n\r\n                    <div class=\"col-lg-12  \">\r\n                        <h2>WILLKOMMEN BEI DER MARIEN – APOTHEKE</h2>\r\n\r\n\r\n                    </div>\r\n\r\n\r\n                </section>\r\n            </div>\r\n        </div>\r\n\r\n\r\n        <div class=\"container-lg\">\r\n            <section class=\"row\">\r\n\r\n                <div class=\"col-lg-6 \">\r\n                    <h2>WILLKOMMEN BEI DER MARIEN – APOTHEKE</h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                </div>\r\n                <div class=\"col-lg-6 \"></div>\r\n\r\n            </section>\r\n        </div>\r\n        <div class=\"container-lg\">\r\n            <section class=\"row\">\r\n\r\n                <div class=\"col-lg-6 \">\r\n                    <h2>WILLKOMMEN BEI DER MARIEN – APOTHEKE</h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                </div>\r\n                <div class=\"col-lg-6 \"></div>\r\n\r\n            </section>\r\n        </div>\r\n        <div class=\"container-lg\">\r\n            <section class=\"row\">\r\n\r\n                <div class=\"col-lg-6 \">\r\n                    <h2>WILLKOMMEN BEI DER MARIEN – APOTHEKE</h2>\r\n\r\n                    Um Ihren persönlichen Ansprüchen gerecht zu werden, bietet Ihnen die Marien Apotheke einen\r\n                    Beratungsraum, eine behindertengerechte Automatiktür mit Rampe\r\n                    und gute Parkmöglichkeiten. Mittels unserer Gesundheitskarte können wir Ihnen eine umfassende\r\n                    pharmazeutische Betreuung ermöglichen.\r\n                    Eines unserer Spezialgebiete ist die individuelle Dermorezeptur - wir stellen eine Vielzahl an\r\n                    Produkten\r\n                    nach eigener Rezeptur und für Sie\r\n                    maßgeschneidert her. Lassen Sie sich bei uns beraten!\r\n                </div>\r\n                <div class=\"col-lg-6 \"></div>\r\n\r\n            </section>\r\n        </div>\r\n\r\n\r\n        REX_TEMPLATE[14]\r\n\r\n\r\n    </div>\r\n</body>\r\n<!--<script src=\"https://cdn.jsdelivr.net/npm/locomotive-scroll@4.1.3/dist/locomotive-scroll.min.js\"></script>\r\n<script src=\"./assets/js/ukiyo.min.js\" charset=\"utf-8\"></script>-->\r\n\r\n<script src=\"./assets/apomain/js/bootstrap.bundle.min.js\"></script>\r\n<script src=\"./assets/apomain/js/openingHours.js\" charset=\"utf-8\"></script>\r\n<script charset=\"utf-8\">\r\n    setOpeningHours();\r\n</script>\r\n\r\n</html>', 1, '2024-06-02 18:53:24', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'pax', '2024-06-03 15:02:01', 'pax'),
(12, NULL, '002 - MarienApo Header', '<div class=\"container-fluid\">\n            <div class=\"row posRel\">\n                <div class=\"col-lg-12 noPadding navContainer  \">\n                    <div class=\"topHeadContainer\">\n                        <div class=\"titlePhone\" >\n                            <div class=\"dTable\">\n                                <div class=\"dRow\">\n                                    <div class=\"dCell\" >\n                                        <img class=\"svgGreen phoneIcon\" src=\"./assets/apomain/images/fontawesome/phone.svg\"> \n                                    </div>\n                                    <div class=\"dCell\" >\n                                        09947 / 1224\n                                    </div>\n                                </div>\n                            </div>   \n                        </div>\n\n\n\n						REX_TEMPLATE[13]\n\n\n\n                        <div class=\"openingHours\">\n                            <div class=\"dTable\">\n                                <div class=\"dRow\">\n                                    <div class=\"dCell\" id=\"openingHours\"></div>\n                                    <div class=\"dCell clockContainer\" >\n                                        <img  class=\"svgGreen openingHoursClock\"\n                                            src=\"./assets/apomain/images/fontawesome/clock.svg\">\n                                    </div>\n                                </div>\n                            </div>\n\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <header class=\"row posRel\">\n                <div data-speed-y=\"5\" data-offset=\"-50\" class=\"col-lg-12 noPadding headerBG \"></div>\n                <div class=\"col-lg-12 noPadding posRel\">\n\n                    <!--<img class=\"img-fluid heroImage\" src=\"./assets/images/Header_Start.jpg\">-->\n                    <img class=\"heroLogo\" src=\"./assets/apomain/images/LogoMitDeko_sg.svg\" alt=\"\">\n                </div>\n\n\n\n            </header>\n        </div>', 0, '2024-06-02 19:04:28', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'pax', '2024-06-02 19:33:21', 'pax'),
(13, NULL, '003a - MarienApo Navigation ', '<?php\n$path = explode(\"|\", $this->getValue(\"path\") . $this->getValue(\"article_id\") . \"|\");\n$path1 = ((!empty($path[1])) ? $path[1] : \'\');\n$path2 = ((!empty($path[2])) ? $path[2] : \'\');\n\n$nav_main = \'\';\n\nforeach (rex_category::getRootCategories() as $lev1) {\n\n	$hidden_ids = array();\n	// hide Home- and footer-article in navigation\n\n	$category_is_visible = true;\n	// only visible if online_from and online_to is ok\n	if ($lev1->getValue(\'art_online_from\') && $lev1->getValue(\'art_online_from\') > time()) {\n		$category_is_visible = false;\n	}\n\n	if ($lev1->getValue(\'art_online_to\') && $lev1->getValue(\'art_online_to\') < time()) {\n		$category_is_visible = false;\n	}\n\n\n	if ($lev1->isOnline(true) && (!in_array($lev1->getId(), $hidden_ids)) && $category_is_visible == true) {\n\n		/*if ($lev1->getId() == $path1) {\n			$nav_main .= \'\n			<li class=\"dropdown-toggle active\"><a href=\"\'.$lev1->getUrl().\'\">\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\n		} else {\n   			$nav_main .= \'\n			<li class=\"dropdown-toggle\"><a href=\"\'.$lev1->getUrl().\'\">\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\n		}*/\n\n\n		if ($lev1->getId() == $path1) {\n			$nav_main .= \'\n			<li class=\"active\"><a href=\"\' . $lev1->getUrl() . \'\">\' . htmlspecialchars($lev1->getValue(\'name\')) . \'</a>\';\n		} else {\n			$nav_main .= \'\n			<li class=\"\"><a href=\"\' . $lev1->getUrl() . \'\">\' . htmlspecialchars($lev1->getValue(\'name\')) . \'</a>\';\n		}\n\n\n		// 1st level start\n		$lev1Size = sizeof($lev1->getChildren());\n\n		if ($lev1Size != \"0\") {\n\n			$nav_main .= \'\n				<ul class=\"navLevel2\">\';\n\n			// START 2nd level categories\n			foreach ($lev1->getChildren() as $lev2) :\n\n				$category_is_visible = true;\n				// only visible if online_from and online_to is ok\n				if ($lev2->getValue(\'art_online_from\') && $lev2->getValue(\'art_online_from\') > time()) {\n					$category_is_visible = false;\n				}\n\n				if ($lev2->getValue(\'art_online_to\') && $lev2->getValue(\'art_online_to\') < time()) {\n					$category_is_visible = false;\n				}\n\n\n				if ($lev2->isOnline(true) && $category_is_visible == true) {\n\n					/*if ($lev2->getId() == $path2) {\n								$nav_main .= \'\n								<li class=\"dropdown-toggle active\"><a href=\"\'.$lev2->getUrl().\'\">\'.htmlspecialchars($lev2->getValue(\'name\')).\'</a></li>\';\n							} else {\n								$nav_main .= \'\n								<li class=\"dropdown-toggle\"><a href=\"\'.$lev2->getUrl().\'\">\'.htmlspecialchars($lev2->getValue(\'name\')).\'</a></li>\';\n							}*/\n\n					if ($lev2->getId() == $path2) {\n						$nav_main .= \'\n								<li class=\"\"><a href=\"\' . $lev2->getUrl() . \'\">\' . htmlspecialchars($lev2->getValue(\'name\')) . \'</a></li>\';\n					} else {\n						$nav_main .= \'\n								<li class=\"\"><a href=\"\' . $lev2->getUrl() . \'\">\' . htmlspecialchars($lev2->getValue(\'name\')) . \'</a></li>\';\n					}\n				}\n			endforeach;\n\n			$nav_main .= \'\n				</ul>\';\n		}\n\n		$nav_main .= \'\n		</li>\';\n	}\n}\n\necho \'\n<nav class=\"navvcontainer d-none d-md-block\">\n	<ul>\n		\' . $nav_main . \'\n		\' . rex::getProperty(\'lang_switch\') . \'\n	</ul>\n</nav>\';\n?>', 0, '2024-06-02 19:04:48', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'pax', '2024-06-03 15:03:47', 'pax'),
(14, NULL, '004 - MarienApo Footer', '<footer class=\"container-lg\">\n	<div class=\"row\">\n		<div class=\"col-lg-4\">\n			Marien-Apotheke OHG <br>\n			Dr. Dominic und Dr. Gerhard Kram <br>\n			Marktplatz 18, 93453 Neukirchen b. Hl. Blut<br>\n			© 2024\n		</div>\n		<div class=\"col-lg-4 \"><a href=\"\">Impressum</a> <br><a href=\"\">Datenschutz</a></div>\n		<div class=\"col-lg-4 \">\n			<a href=\"https://www.aponet.de/apotheke/notdienstsuche\" target=\"_blank\">Notdienstsuche bei APONet</a>\n			<a href=\"\">Sonstige Links</a>\n		</div>\n	</div>\n</footer>', 0, '2024-06-02 19:05:23', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'pax', '2024-06-02 19:52:05', 'pax'),
(15, NULL, '003b - MarienApo Mobile Navigation', '<div class=\"d-block d-md-none mobileNavButtonContainer\">\n	<button style=\"display: inline-block;\" class=\" d-block d-md-none navbar-toggler mobileNavButton \" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseWidthExample\" aria-controls=\"navbarCollapse\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n		<img class=\"svgGreen\" src=\"./assets/apomain/images/fontawesome/bars.svg\" alt=\"MobileMenu\">\n	</button>\n</div>\n\n<div class=\"d-block d-md-none mobilenavcontainer\">\n	<nav class=\"collapse\" id=\"collapseWidthExample\">\n\n		<button class=\" d-block d-md-none navbar-toggler mobileNavButton \" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseWidthExample\" aria-controls=\"navbarCollapse\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n			<span class=\"navbar-toggler-icon\">\n				<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"25\" height=\"25\" fill=\"currentColor\" class=\"bi bi-list\" viewBox=\"0 0 16 16\">\n					<path fill-rule=\"evenodd\" d=\"M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5\" />\n				</svg>\n			</span>\n		</button>\n\n		<ul class=\"list-unstyled ps-0\">\n			<li class=\"mb-1 mobileNavItem\">\n				HomeXX\n			</li>\n			<li class=\"mb-1 mobileNavItem\">\n				Dermatika\n			</li>\n			<li class=\"mb-1 mobileNavItem\">\n				Spagyrik\n			</li>\n			<li class=\"mb-1 mobileNavItem\">\n				Herstellung\n			</li>\n			<li class=\"mb-1 mobileNavItem\">\n				Tee\n			</li>\n			<li class=\"mb-1 mobileNavItem\">\n				Links\n			</li>\n			<li class=\"border-top my-3\"></li>\n			<li class=\"mb-1 mobileNavItem\">\n				Telefon 09947 / 1224\n			</li>\n		</ul>\n</div>', 0, '2024-06-02 19:10:22', '{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}', 0, 'pax', '2024-06-02 19:35:32', 'pax');

-- --------------------------------------------------------

--
-- Table structure for table `rex_user`
--

CREATE TABLE `rex_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_tries` tinyint(4) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_changed` datetime NOT NULL,
  `previous_passwords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_change_required` tinyint(1) NOT NULL,
  `lasttrydate` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rex_user`
--

INSERT INTO `rex_user` (`id`, `name`, `description`, `login`, `password`, `email`, `status`, `admin`, `language`, `startpage`, `role`, `theme`, `login_tries`, `createdate`, `createuser`, `updatedate`, `updateuser`, `password_changed`, `previous_passwords`, `password_change_required`, `lasttrydate`, `lastlogin`, `session_id`, `revision`) VALUES
(1, 'Administrator', NULL, 'pax', '$2y$10$GnCzBM63IM5gl5DBUx7utejrLSst9yXOfd29ySnNHtXZKBJE7GxkO', NULL, 1, 1, '', '', NULL, NULL, 0, '2024-06-02 18:17:56', 'setup', '2024-06-02 18:17:56', 'setup', '2024-06-02 18:17:56', '[]', 0, '2024-06-03 12:23:58', '2024-06-03 12:23:58', 's3a8ih64m8ttn29f6sb5fk00vm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rex_user_passkey`
--

CREATE TABLE `rex_user_passkey` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_user_role`
--

CREATE TABLE `rex_user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `perms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_user_session`
--

CREATE TABLE `rex_user_session` (
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cookie_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passkey_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` datetime NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rex_user_session`
--

INSERT INTO `rex_user_session` (`session_id`, `user_id`, `cookie_key`, `passkey_id`, `ip`, `useragent`, `starttime`, `last_activity`) VALUES
('s3a8ih64m8ttn29f6sb5fk00vm', 1, NULL, NULL, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-06-03 12:23:58', '2024-06-03 15:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `rex_yform_email_template`
--

CREATE TABLE `rex_yform_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_reply_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mail_reply_to_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_yform_field`
--

CREATE TABLE `rex_yform_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_required` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expanded` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_attributes` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_yform_history`
--

CREATE TABLE `rex_yform_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_yform_history_field`
--

CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rex_yform_table`
--

CREATE TABLE `rex_yform_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_amount` int(11) NOT NULL DEFAULT '50',
  `list_sortfield` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `mass_edit` tinyint(1) NOT NULL,
  `schema_overwrite` tinyint(1) NOT NULL DEFAULT '1',
  `history` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rex_action`
--
ALTER TABLE `rex_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_article`
--
ALTER TABLE `rex_article`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `find_articles` (`id`,`clang_id`),
  ADD KEY `id` (`id`),
  ADD KEY `clang_id` (`clang_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `rex_article_slice`
--
ALTER TABLE `rex_article_slice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  ADD KEY `clang_id` (`clang_id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `find_slices` (`clang_id`,`article_id`);

--
-- Indexes for table `rex_clang`
--
ALTER TABLE `rex_clang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_config`
--
ALTER TABLE `rex_config`
  ADD PRIMARY KEY (`namespace`,`key`);

--
-- Indexes for table `rex_markitup_profiles`
--
ALTER TABLE `rex_markitup_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_markitup_snippets`
--
ALTER TABLE `rex_markitup_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_media`
--
ALTER TABLE `rex_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filename` (`filename`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `rex_media_category`
--
ALTER TABLE `rex_media_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `rex_media_manager_type`
--
ALTER TABLE `rex_media_manager_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `rex_media_manager_type_effect`
--
ALTER TABLE `rex_media_manager_type_effect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_metainfo_field`
--
ALTER TABLE `rex_metainfo_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `rex_metainfo_type`
--
ALTER TABLE `rex_metainfo_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_module`
--
ALTER TABLE `rex_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `rex_module_action`
--
ALTER TABLE `rex_module_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_redactor_profile`
--
ALTER TABLE `rex_redactor_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `rex_sprog_abbreviation`
--
ALTER TABLE `rex_sprog_abbreviation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `find_abbreviations` (`clang_id`,`abbreviation`);

--
-- Indexes for table `rex_sprog_wildcard`
--
ALTER TABLE `rex_sprog_wildcard`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rex_template`
--
ALTER TABLE `rex_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `rex_user`
--
ALTER TABLE `rex_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `rex_user_passkey`
--
ALTER TABLE `rex_user_passkey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rex_user_passkey_user_id` (`user_id`);

--
-- Indexes for table `rex_user_role`
--
ALTER TABLE `rex_user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_user_session`
--
ALTER TABLE `rex_user_session`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `cookie_key` (`cookie_key`),
  ADD KEY `rex_user_session_user_id` (`user_id`),
  ADD KEY `rex_user_session_passkey_id` (`passkey_id`);

--
-- Indexes for table `rex_yform_email_template`
--
ALTER TABLE `rex_yform_email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `rex_yform_field`
--
ALTER TABLE `rex_yform_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rex_yform_history`
--
ALTER TABLE `rex_yform_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataset` (`table_name`,`dataset_id`);

--
-- Indexes for table `rex_yform_history_field`
--
ALTER TABLE `rex_yform_history_field`
  ADD PRIMARY KEY (`history_id`,`field`);

--
-- Indexes for table `rex_yform_table`
--
ALTER TABLE `rex_yform_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name` (`table_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rex_action`
--
ALTER TABLE `rex_action`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_article`
--
ALTER TABLE `rex_article`
  MODIFY `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rex_article_slice`
--
ALTER TABLE `rex_article_slice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `rex_clang`
--
ALTER TABLE `rex_clang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rex_markitup_profiles`
--
ALTER TABLE `rex_markitup_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rex_markitup_snippets`
--
ALTER TABLE `rex_markitup_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_media`
--
ALTER TABLE `rex_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rex_media_category`
--
ALTER TABLE `rex_media_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rex_media_manager_type`
--
ALTER TABLE `rex_media_manager_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rex_media_manager_type_effect`
--
ALTER TABLE `rex_media_manager_type_effect`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rex_metainfo_field`
--
ALTER TABLE `rex_metainfo_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rex_metainfo_type`
--
ALTER TABLE `rex_metainfo_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rex_module`
--
ALTER TABLE `rex_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rex_module_action`
--
ALTER TABLE `rex_module_action`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_redactor_profile`
--
ALTER TABLE `rex_redactor_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rex_sprog_abbreviation`
--
ALTER TABLE `rex_sprog_abbreviation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_sprog_wildcard`
--
ALTER TABLE `rex_sprog_wildcard`
  MODIFY `pid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rex_template`
--
ALTER TABLE `rex_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rex_user`
--
ALTER TABLE `rex_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rex_user_role`
--
ALTER TABLE `rex_user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_yform_email_template`
--
ALTER TABLE `rex_yform_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_yform_field`
--
ALTER TABLE `rex_yform_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_yform_history`
--
ALTER TABLE `rex_yform_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rex_yform_table`
--
ALTER TABLE `rex_yform_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rex_user_passkey`
--
ALTER TABLE `rex_user_passkey`
  ADD CONSTRAINT `rex_user_passkey_user_id` FOREIGN KEY (`user_id`) REFERENCES `rex_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rex_user_session`
--
ALTER TABLE `rex_user_session`
  ADD CONSTRAINT `rex_user_session_passkey_id` FOREIGN KEY (`passkey_id`) REFERENCES `rex_user_passkey` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rex_user_session_user_id` FOREIGN KEY (`user_id`) REFERENCES `rex_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
