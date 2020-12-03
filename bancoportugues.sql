-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 10.1.2.122:3306
-- Tempo de geração: 11/01/2020 às 22:48
-- Versão do servidor: 10.2.24-MariaDB
-- Versão do PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u855105583_acade`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `date_added`, `last_modified`, `font_awesome_class`) VALUES
(1, '2b03163550', 'Tem de Tudo Programas', 0, 1576627200, NULL, 'fa fa-adn'),
(2, '759a037039', 'teste', 1, 1576627200, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4h8lp2lrfljk0s05cp6jtu8pehhl6nlr', '187.111.192.206', 1576725107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732353130373b636172745f6974656d737c613a303a7b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a31353a226d616e6167655f6c616e6775616765223b),
('67de9ri5o1e5smvcbfkqp9t0t3ib18t8', '187.111.192.206', 1576725684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732353638343b636172745f6974656d737c613a303a7b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a31353a226d616e6167655f6c616e6775616765223b),
('u8fd9qebflj50uj8gi4mt85cl9pbt21n', '187.111.192.206', 1576725986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732353938363b636172745f6974656d737c613a303a7b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a31393a22696e7374727563746f725f73657474696e6773223b),
('d979fjfc0kbas8qjakufj4lgler8ll4j', '187.111.192.206', 1576726362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732363336323b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a31353a226d616e6167655f6c616e6775616765223b),
('2k3ghkl3fji6ktsg1kmc5n73kvte20qo', '187.111.192.206', 1576726671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732363637313b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a373a22636f7572736573223b),
('rhgbld4cqrm4u887ir9ji88pkkniqnn7', '187.111.192.206', 1576726977, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732363937373b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a393a2264617368626f617264223b),
('qtal6m5otptink0sah0lestg1oo2rmti', '187.111.192.206', 1576727284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732373238343b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a393a2264617368626f617264223b),
('ordraabmnfl7tjcpui9iqt3nkuh11rgj', '187.111.192.206', 1576727300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363732373238343b636172745f6974656d737c613a313a7b693a303b733a313a2231223b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c6173745f706167657c733a393a2264617368626f617264223b),
('4ctjvo5tmsl0iv7h89f9cae18ohbr1cp', '187.111.192.206', 1576757302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363735373034313b636172745f6974656d737c613a303a7b7d),
('20nedudisskqabcskatudl9ec9um064l', '187.111.192.206', 1576757041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363735373034313b636172745f6974656d737c613a303a7b7d),
('30kju35ldbo2fqb9dovnlidjf2197mua', '168.0.2.142', 1576865084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363836353033393b636172745f6974656d737c613a303a7b7d),
('8atttijedb77hdhk1grhnujpumkjqp24', '187.111.197.168', 1576881094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363838313039343b636172745f6974656d737c613a303a7b7d),
('u7n6q2vmcvmm4vrsqslq6b6djq4bavlb', '187.111.197.168', 1576881251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363838313039343b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a3132303a2273657520726567697374726f20666f69207265616c697a61646f20636f6d207375636573736f2e207665726966697175652073756120636169786120646520656e747261646120646520652d6d61696c2070617261207665726966696361722073657520656e64657265c3a76f20646520652d6d61696c2e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('os140ipu55atllaviob29dn0nhkdtcav', '189.40.95.66', 1576940359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363934303335383b636172745f6974656d737c613a303a7b7d),
('e8kspfnuehpuddp4der50ke9gfdvul9b', '187.111.192.206', 1576953429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363935333332323b636172745f6974656d737c613a303a7b7d),
('vhfv82fje5o34aro9ht244mhdmj4nqv0', '187.111.192.206', 1576953677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363935333637373b636172745f6974656d737c613a303a7b7d),
('c9q8t9h5shi0us1jnk40u7u3blpt2c40', '187.111.192.206', 1576959409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363935393430393b636172745f6974656d737c613a303a7b7d),
('cuufb35k7kf7fep35p1k6mj0s6q2di7i', '187.111.192.206', 1576959409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363935393430393b636172745f6974656d737c613a303a7b7d),
('9q3hnv5c52vip4pnljeuacbkf474cmcp', '179.162.197.168', 1576975563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363937353534313b636172745f6974656d737c613a303a7b7d),
('6ie4vqdc043s43afm7akvchtghoda01c', '177.16.231.28', 1577047636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373034373633363b636172745f6974656d737c613a303a7b7d),
('pb4j9j6n8ir7t0pen0rl0v02peffuq5k', '54.36.150.107', 1577088237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373038383233373b636172745f6974656d737c613a303a7b7d),
('q7dv3hm8s96dtddndfglg71187j5p86u', '177.85.75.21', 1577161998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373136313836303b636172745f6974656d737c613a303a7b7d),
('oemjmlsr7ifc7im7iv6iqctcoo7qvnus', '189.5.177.191', 1577310719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373331303632363b636172745f6974656d737c613a303a7b7d),
('lpejchb0qsvttcebkd2er59souh5pt5g', '54.36.148.73', 1577482742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373438323734323b636172745f6974656d737c613a303a7b7d),
('f6bdjhn6658pfm24qr0ffh8cm73rml99', '54.36.150.35', 1577483280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373438333238303b),
('a6ou5m4vikh4mph6s495iffhhbm16929', '54.36.148.159', 1577495672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373439353637323b636172745f6974656d737c613a303a7b7d),
('kb231arhhjhek6vo9gjn0sne07kl2sh7', '177.37.193.43', 1577501170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373530313137303b636172745f6974656d737c613a303a7b7d),
('0cnegdr0c407pnpsa9pa7mb8ql04gvt8', '177.37.193.43', 1577501656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373530313635353b636172745f6974656d737c613a303a7b7d),
('dqk1peble9peqlmlink528cc67mv6kio', '54.36.150.8', 1577505768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373530353736373b636172745f6974656d737c613a303a7b7d),
('s7n95mnqbqgmq2l2ruegovt98r46p90o', '54.36.148.129', 1577509799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373530393739393b636172745f6974656d737c613a303a7b7d),
('t6hsmevpr1tf88dof0vdppk1fnk9et8f', '54.36.148.32', 1577515335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373531353333343b636172745f6974656d737c613a303a7b7d),
('gmju6ca2ka3rj9t5m9nspv9nfmpqavmu', '54.36.150.181', 1577632629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373633323632393b636172745f6974656d737c613a303a7b7d),
('dfvsu2tsukek05595na5hdj8m5f19li9', '179.222.93.168', 1577920065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373932303036353b636172745f6974656d737c613a303a7b7d),
('6e0ckjkqljvn7ra834rb4djqcshj8f89', '54.36.149.30', 1577948665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373934383636353b636172745f6974656d737c613a303a7b7d),
('prm96kjfr2madl44j4o5ddjrf0tkod2k', '54.36.148.242', 1577963240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373936333234303b636172745f6974656d737c613a303a7b7d),
('mkukikn3uhrpt4njc3c0oa59b3ih9jfq', '164.85.83.104', 1577968657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537373936383631363b636172745f6974656d737c613a303a7b7d),
('da653755d74a7095fd946b38a3fae8c3328f4c22', '54.36.150.158', 1578004745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383030343734353b),
('4a602fba0bd47fb875693c55ee835465657d34a5', '54.36.150.125', 1578011877, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383031313837373b636172745f6974656d737c613a303a7b7d),
('c5f70dcbac4fe10a872c7438aa70a0fc9c670351', '54.36.150.50', 1578018672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383031383637323b636172745f6974656d737c613a303a7b7d),
('40126c24448774d31ba778a7d4811ca3343db7e4', '54.36.150.83', 1578043497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383034333439373b636172745f6974656d737c613a303a7b7d),
('94c59064d3aadc2dabf1185a1609996e2d936d71', '54.36.150.40', 1578046295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383034363239343b636172745f6974656d737c613a303a7b7d),
('9a481110731c8b2fe27c16a8c3c228ece3d0d84c', '54.36.150.113', 1578063328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383036333332383b636172745f6974656d737c613a303a7b7d),
('086adbe763ab72c30bd74196594603f46777ae9b', '46.229.168.154', 1578238904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383233383930343b636172745f6974656d737c613a303a7b7d),
('0ec3f7b546aed151d52f025f2648e138330c789b', '45.228.165.129', 1578665330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383636353333303b636172745f6974656d737c613a303a7b7d),
('134e5a89c3be8cc7f45d9d8299481d143fe77c12', '45.228.165.129', 1578665345, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383636353333303b636172745f6974656d737c613a303a7b7d),
('207644448ffd243143da5ae9260966f56639aa3c', '187.111.192.206', 1578667845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383636373834353b636172745f6974656d737c613a303a7b7d),
('d45ed5a988c1fb194dd849f40e8a5cea942c188a', '187.46.84.185', 1578769755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383736393735353b636172745f6974656d737c613a303a7b7d),
('9134cda59255bb41bf34e4640fc28c884de1cb3e', '187.46.84.185', 1578769755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383736393735353b636172745f6974656d737c613a303a7b7d),
('71be0f0b1ec5d3fc2a7e80f4b764b81e701a1e38', '201.148.124.249', 1578773367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383737333336373b636172745f6974656d737c613a303a7b7d),
('dc109c2301f27c528a60fe3d227e38714c6ed175', '201.148.124.249', 1578772674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383737323637343b636172745f6974656d737c613a303a7b7d),
('1720ac05c3371d34d3c17f225f5db45b27cac6d0', '201.148.124.249', 1578772682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383737323638323b636172745f6974656d737c613a303a7b7d),
('2845e6ab6f828874f362f72bee05cfb393073b73', '201.148.124.249', 1578773894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383737333839343b636172745f6974656d737c613a303a7b7d),
('adcfd9ac3abc76b8dd0e9244738525af6cd0b3f4', '201.148.124.249', 1578773901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383737333839343b636172745f6974656d737c613a303a7b7d),
('6db4db57898d9af7b701c84e8c3805f0d88d3cd6', '187.111.192.206', 1578782723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383738323732333b636172745f6974656d737c613a303a7b7d),
('96278ca55b4ea8511b93a07b4d98dbf4f29cc071', '201.148.124.249', 1578781983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383738313938333b636172745f6974656d737c613a303a7b7d),
('4c0b3dd32a70bf0002cac1908b298d54da22c5f5', '187.111.192.206', 1578782723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537383738323732333b636172745f6974656d737c613a303a7b7d);

-- --------------------------------------------------------

--
-- Estrutura para tabela `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcomes` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `requirements` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `is_free_course`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `course_overview_provider`, `video_url`, `date_added`, `last_modified`, `visibility`, `is_top_course`, `is_admin`, `status`, `meta_keywords`, `meta_description`) VALUES
(1, 'Tem de Tudo programas', 'Tem de Tudo Programas', 'Tem de Tudo Programas<br>', '[\"Tem de Tudo Programas\"]', 'portuguese', 1, 2, '[]', '[\"Tem de Tudo Programas\"]', NULL, 30, NULL, 1, 'advanced', 1, NULL, 'youtube', 'https://www.youtube.com/watch?v=Rfp8vMi_7YM', 1576627200, 1576713600, NULL, 0, 1, 'pending', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_supported` int(11) NOT NULL DEFAULT 0,
  `stripe_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `enroll`
--

CREATE TABLE `enroll` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Academy'),
(2, 'banner_sub_title', 'Sistema de gerenciamento de aprendizado baseado em curso'),
(3, 'about_us', '<h1>Isto é sobre a página</h1><h1>Isso é sobre corpo</h1><h1></h1>'),
(4, 'terms_and_condition', '<h1>Esta é a página Termos e Condições</h1><h1>Este é termos e corpo</h1>'),
(5, 'privacy_policy', '<h1>Esta é a página da Política de Privacidade</h1><h1>Este é o corpo da Política de Privacidade</h1>');

-- --------------------------------------------------------

--
-- Estrutura para tabela `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `russian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `french` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `greek` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `german` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `italian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thai` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `latin` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `korean` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1, 'manage_profile', 'Manage Profile', NULL, 'Administrar el perfil', NULL, NULL, NULL, NULL, NULL, 'gerenciar perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'category_code', NULL, NULL, 'Código de categoría', NULL, NULL, NULL, NULL, NULL, ' código da categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'dashboard', NULL, NULL, 'Tablero', NULL, NULL, NULL, NULL, NULL, 'painel de controle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'categories', NULL, NULL, 'Categorías', NULL, NULL, NULL, NULL, NULL, 'categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'students', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'alunos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'enroll_history', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'registrar histórico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'system_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'frontend_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de front-end', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'payment_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'manage_language', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'edit_profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar Perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'log_out', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sair', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'first_name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'primeiro nome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'last_name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'último nome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'email', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'o email', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'facebook_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'link do facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'twitter_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'link do twitter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'linkedin_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'link do linkedin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'a_short_title_about_yourself', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'um título curto sobre você', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'biography', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'biografia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'photo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'foto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'select_image', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione a imagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'change', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mudança', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'remove', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'remover', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'update_profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'change_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mudar senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'current_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'senha atual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'new_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Nova senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'confirm_new_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'confirme a nova senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'delete', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'excluir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'cancel', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cancelar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'are_you_sure_to_update_this_information', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'você tem certeza de atualizar essas informações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'yes', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'no', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'não', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'system settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'system_name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nome do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'system_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'slogan', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'slogan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'system_email', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sistema de e-mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'address', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'endereço', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'phone', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'telefone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'youtube_api_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'chave de API do YouTube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'get_youtube_api_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Obter chave de API do YouTube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'vimeo_api_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Feeds chave de API', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'purchase_code', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'código de compra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'language', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'língua', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'text-align', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'alinhamento de texto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'update_system_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar configurações do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'update_product', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Atualização do produto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'file', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Arquivo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'install_update', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'instalar atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'system_logo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'logotipo do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'update_logo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'logotipo atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'get_vimeo_api_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'obter chave api do vimeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'add_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Adicionar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'category_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título da categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'sub_categories', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'em categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'actions', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'action', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'açao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'manage_sub_categories', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar as categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'edit', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'add_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'select_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Selecione a Categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '#_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '#_seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '#_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '#_lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '#_enrolled_user', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '#_utilizador registado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'view_course_details', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ver detalhes do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'manage_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar Secções', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'manage_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' Aluna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'add_student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'date_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'data adicionada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'enrolled_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos matriculados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'view_profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ver perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'admin_dashboard', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'painel de administração', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'total_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'total de cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'number_of_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'total_lessons', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lições totais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'number_of_lessons', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de lições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'total_enrollment', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'matrícula total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'number_of_enrollment', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de matrículas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'total_student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'aluno total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'number_of_student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de alunos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'manage_sections', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar seções', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'manage sections', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar seções', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'add_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção Adicionar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'lessons', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'serialize_sections', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção serialize', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'add_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'add lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'edit_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Editar seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'delete_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção de exclusão', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'course_details', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'detalhes do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'course details', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'detalhes do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'details', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'detalhes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'instructor', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'enrolled_user', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'usuário matriculado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'last_modified', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'última modificação', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'manage language', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'language_list', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lista de idiomas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'add_phrase', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar frase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'add_language', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Adicionar idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'option', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'opção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'edit_phrase', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar frase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'delete_language', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Excluir idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'phrase', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'frase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'value_required', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'valor necessário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'frontend settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'banner_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título do banner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'banner_sub_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'subtítulo do banner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'about_us', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sobre nós', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'blog', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'blogue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'update_frontend_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar configurações de front-end', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'update_banner', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'bandeira atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner_image', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'imagem do banner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'update_banner_image', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'imagem da bandeira atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'payment settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'paypal_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'client_id', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ID do Cliente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'sandbox', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'caixa de areia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'production', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Produção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'active', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'mode', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'modo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'stripe_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações de distribuição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'testmode', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'modo de teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'on', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'em', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'off', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'fora', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'test_secret_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'teste de chave secreta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'test_public_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'chave pública de teste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'live_secret_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ao vivo Chave Secreta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'live_public_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'chave pública ativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'save_changes', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Salvar alterações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'update_phrase', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'frase atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'check', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Verifica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'settings_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Configurações atualizadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'checking', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'verificação', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'phrase_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'frase adicionada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'language_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'idioma acrescentou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'language_deleted', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'idioma excluído', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'add course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'add_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'add_course_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' adicionar formulário de curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'basic_info', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'informação básica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'short_description', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Pequena descrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'description', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'descrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'level', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nível', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'beginner', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'principiante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'advanced', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'avançado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'intermediate', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'intermediário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'language_made_in', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Idioma feita em', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'is_top_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'é claro topo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'outcomes', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'resultados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'category_and_sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'categoria e subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'select_a_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Selecione uma categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'select_a_category_first', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecionar uma categoria primeiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'requirements', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'requisitos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'price_and_discount', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'preço e desconto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'price', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'preço', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'has_discount', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'estes preços', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'discounted_price', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'preço com desconto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'course_thumbnail', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'miniatura do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'note', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Nota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'o tamanho da miniatura deve ser 600 x 600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'course_overview_url', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'URL da visão geral do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '0%', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'manage profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'gerenciar perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'edit_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' editar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'edit course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'edit_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' editar cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'edit_course_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar formulário do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'update_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'course_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'curso atualizado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'number_of_sections', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' número de seções', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'number_of_enrolled_users', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de usuários inscritos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'add section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'add_section_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar formulário de seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'update', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'serialize_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção de serialização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'serialize section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção de serialização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'submit', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'enviar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'sections_have_been_serialized', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção foi serializada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'select_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecionar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'search', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'procurar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'thumbnail', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'miniatura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'duration', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'duração', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'provider', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'fornecedor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'add lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'add_lesson_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar formulário de lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'video_type', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'tipo de vídeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'select_a_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione um curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'select_a_course_first', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione um curso primeiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'video_url', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'URL do vídeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'invalid_url', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'URL inválida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sua fonte de vídeo deve ser youtube ou vimeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'for', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'para', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'of', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'do', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'edit_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'edit lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'edit_lesson_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar formulário da lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'login', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'entrar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'password', 'Password', NULL, '', NULL, NULL, NULL, NULL, NULL, 'senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'forgot_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Esqueceu a senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'back_to_website', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'voltar ao site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'send_mail', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'enviar correio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'back_to_login', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Volte ao login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'student_add', 'Student Add', NULL, '', NULL, NULL, NULL, NULL, NULL, 'aluno adicionar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'student add', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'add_students', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar alunos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'student_add_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'formulário de adição de aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'login_credentials', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'credenciais de login', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'social_information', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'informações  sociais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'facebook', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'twitter', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Twitter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'linkedin', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'linkedin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'user_image', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'imagem do usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'add_user', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'user_update_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualização do usuário com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'user_added_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'usuário adicionado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'student_edit', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'edição do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'student edit', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'edição do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'edit_students', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar alunos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'student_edit_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'formulário de edição do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'update_user', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'enroll history', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'registrar histórico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'filter', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' filtro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'user_name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'enrolled_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'matriculado curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'enrollment_date', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Data de inscrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'biography2', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'biografia2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'home', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Inicio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'search_for_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'procurar cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'total', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'go_to_cart', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' ir ao carrinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'your_cart_is_empty', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Seu carrinho está vazio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'log_in', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' entrar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'sign_up', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'inscrever-se', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'what_do_you_want_to_learn', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'o que você quer aprender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'online_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Cursos online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'explore uma variedade de novos tópicos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'expert_instruction', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'instrução especializada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'find_the_right_course_for_you', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' Encontre o curso certo para você', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'lifetime_access', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'acesso da vida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'learn_on_your_schedule', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Aprenda sobre sua programação', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'top_courses', NULL, NULL, 'Mejores cursos', NULL, NULL, NULL, NULL, NULL, 'melhores cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'last_updater', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'último atualizador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'hours', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'horas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'add_to_cart', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Adicionar ao carrinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'top', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'topo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'latest_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos mais recentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'added_to_cart', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionados ao carrinho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'admin', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'administrador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'log_in_to_your_udemy_account', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' faça login na sua conta conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'by_signing_up_you_agree_to_our', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ao se inscrever, você concorda com o nosso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'terms_of_use', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'termos de uso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'and', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'privacy_policy', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'política de Privacidade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'do_not_have_an_account', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Não tem uma conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'sign_up_and_start_learning', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'inscreva-se e comece a aprender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' confira aqui promoções interessantes e recomendações personalizadas de cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'already_have_an_account', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'já tem uma conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'checkout', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'confirmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'paypal', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'stripe', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'listra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'step', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'degrau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'how_would_you_rate_this_course_overall', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' como você classificaria este curso em geral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'write_a_public_review', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' escreva uma crítica pública', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'descreva sua experiência com o que você estudou e destacou os destaques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'o que o instrutor fez bem e o que poderia usar alguma melhoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'next', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Próximo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'previous', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'anterior', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'publish', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'publicar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'search_results', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Procurar Resultados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'ratings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'classificações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'search_results_for', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Buscar resultados para', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'category_page', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' página de categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'all', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'todos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'category_list', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Lista de categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'by', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'go_to_wishlist', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' vá para a lista de desejos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'hi', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Oi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'my_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'meus cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'my_wishlist', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Minha Lista de Desejos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'my_messages', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'minhas mensagens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'purchase_history', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'histórico de compras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'user_profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'perfil de usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'already_purchased', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'já comprado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'all_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' todos os cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'wishlists', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'listas de desejo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'search_my_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'students_enrolled', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'alunos matriculados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'created_by', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'criado por', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'last_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ultima atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'what_will_i_learn', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'o que eu vou aprender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'view_more', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Veja mais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'other_related_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'outros cursos relacionados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Atualizada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'curriculum_for_this_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' currículo para este curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'about_the_instructor', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sobre o instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'reviews', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'rever', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'student_feedback', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'feedback dos alunos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'average_rating', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'classificação média', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'preview_this_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'visualizar este curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(312, 'includes', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'inclui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'on_demand_videos', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'vídeos sob demanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'full_lifetime_access', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'access_on_mobile_and_tv', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'acesso no celular e tv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'course_preview', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'visualização do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'instructor_page', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'página do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'buy_now', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Comprar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'shopping_cart', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'carrinho de compras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'courses_in_cart', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos em carro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'student_name', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' nome do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'amount_to_pay', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'valor a pagar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'payment_successfully_done', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pagamento realizado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'filter_by', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'filtrar por', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'instructors', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'instrutores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'reset', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'restabelecer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'your', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'rating', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Avaliação', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'course_detail', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'detalhe do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'start_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'show_full_biography', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' mostrar biografia completa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'terms_and_condition', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'termos e Condições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'about', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sobre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'terms_&_condition', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'termos e Condições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'sub categories', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'sub categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'add_sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'sub_category_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título da subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'add sub category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'add_sub_category_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicionar formulário de subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'sub_category_code', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'código da subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'data_deleted', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'dados excluídos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'edit_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'edit category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'edit_category_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' 18/5000 editar formulário de categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'font', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Fonte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'awesome class', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'classe incrível', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'update_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'categoria de atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'data_updated_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'dados atualizados com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'edit_sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' 17/5000 editar subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'edit sub category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'sub_category_edit', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'subcategoria editar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'update_sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'course_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'curso adicionado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'user_deleted_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'usuário excluído com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'private_messaging', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mensagens privadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'private messaging', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mensagens privadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'messages', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mensagens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'select_message_to_read', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione a mensagem para ler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'new_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nova mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'email_duplication', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'duplicação de e-mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'your_registration_has_been_successfully_done', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seu registro foi realizado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'account', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicione informações sobre você para compartilhar em seu perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'basics', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'básico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'add_your_twitter_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicione seu link do twitter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'add_your_facebook_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicione seu link do facebook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'add_your_linkedin_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'adicione o seu link do linkedin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'credentials', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'credenciais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'edit_your_account_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'edite as configurações da sua conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'enter_current_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'digite a senha atual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'enter_new_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'insira a nova senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 're-type_your_password', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'digite novamente sua senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'save', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Salve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'update_user_photo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar foto do usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'update_your_photo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualize sua foto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'upload_image', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Enviar Imagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'updated_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Atualizado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'video_player', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'video player', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'video player', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'video player', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'data_deleted_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'dados excluídos com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'all_categories', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'todas as categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'all_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' toda a categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'all_sub_category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' todas subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'instructor_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'instructor settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'allow_public_instructor', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'permitir instrutor público', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'instructor_revenue_percentage', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' 29/5000 porcentagem de receita do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'update_instructor_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'atualizar configurações do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'admin_revenue_percentage', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'porcentagem de receita do administrador', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'instructor_settings_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' 27/5000 configurações do instrutor atualizadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'invalid_login_credentials', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'credenciais de login inválidas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'create', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'crio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'instructor_dashboard', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'instrutor de painel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'create_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'criar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'select_a_message_thread_to_read_it_here', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione um segmento de mensagem para ler não aqui', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'enviar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'active_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos ativos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'pending_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos pendentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'create_a_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'criar um curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'save_to_draft', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'salvar em rascunho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'draft', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'esboço, projeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'blank_page', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'página em branco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'no_section_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhuma seção encontrada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'vide_details', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'vide detalhes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'view_lessons', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ver lições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'edit_lessons', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar lições', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'publish_this_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'publique este curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'request_for_publishing_this_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pedido de publicação deste curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'course_updated_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'please_wait_untill_admin_approves_it', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'aguarde até que o administrador aprove', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'your_course_has_been_added_to_draft', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seu curso foi adicionado ao rascunho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'course_added_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'curso adicionado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'edit_basic_informations', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar informações básicas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'edit_course_detail', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'editar detalhes do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'section_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção adicionada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'section_deleted', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção excluída', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'update_section', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seção de atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'lesson_added', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lição adicionada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'lesson_deleted', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lição excluída', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'analyzing_given_url', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'análise dada url', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'update_lesson', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lição de atualização', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'lesson_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'lição atualizada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'analyzing_the_url', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'analise o URL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'select_instructor', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecionar instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'all_instructor', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'todo instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'view_course_details_on_frontend', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ver detalhes do curso na parte dianteira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'view_course_on_frontend', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ver curso no frontend', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'no_data_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhum dado encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'enrollment_report', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'admin_revenue', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'receita administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'instructor_revenue', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'receita do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'admin revenue', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'receita administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'instructor revenue', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'receita do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'report', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'relatório', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'credit_/_debit_card', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Cartão de Crédito / Débito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'pay', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pagar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'total_amount', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'valor total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'mark_as_approved', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'marcar como aprovado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'mark_as_pending', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'marcar como pendente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'course_status_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'status do curso atualizado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'approved_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'cursos aprovados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'mark_as_active', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'marcar como ativo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'mail_subject', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'assunto do correio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'mail_body', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'corpo de correio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'update_backend_logo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'update_frontend_logo', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' atualizar logotipo da interface', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'update_favicon', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' favicon update', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'favicon', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'favicon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'favicon_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' favicon updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'add category', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Adicionar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'add_categories', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' adicionar categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'category_add_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' categoria adicionar formulário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'awesome_icon_picker', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' incrível seletor de ícones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'data_added_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'dados adicionados com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'view_frontend', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Ver a parte dianteira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'log_in_to_your_account', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Faça login na sua conta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'number_of_active_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' número de cursos ativos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'number_of_pending_courses', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'número de cursos pendentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'icon_picker', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'seletor de ícones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'selected_icon', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ícone selecionado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'pick_another_icon_picker', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'escolha outro seletor de ícones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'search_result', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'resultado da pesquisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'no_courses_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhum curso encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'no_course_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhum curso encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'no_result_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhum resultado encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'date', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'encontro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'total_price', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'preço total', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'payment_type', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'tipo de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'message_sent!', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'mensagem enviada!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'type_your_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'Digite sua mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'reply_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'responder à mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'reply', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'resposta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'write_new_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'escreva nova mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'recipient', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'destinatário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'select_a_user', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione um usuário', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'write_your_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'escreva sua mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'send_message', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'enviar mensagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'enrollment', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'inscrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'enroll_a_student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' matricular um aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'enroll a student', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'matricular um aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'enrollment_form', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' formulário de inscrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'student_has_already_been_enrolled_to_this_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'aluno já está matriculado neste curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'student_has_been_enrolled_to_that_course', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'aluno foi matriculado nesse curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'transaction', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'transação', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'transactions', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'transações', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'status', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'status', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'pending', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pendente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'pay_with_paypal', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pagar com paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'pay_with_stripe', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pagar com tarja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'course_title', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'título do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'payment_due', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' pagamento devido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'instructor_payment_has_been_done', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' pagamento do instrutor foi feito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'paid', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'pago', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'instructor_has_not_provided_valid_paypal_client_id', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'O instrutor não forneceu um ID de cliente paypal válido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'este instructor_ não forneceu um ID de cliente paypal válido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'este instrutor não forneceu chave pública válida ou chave secreta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'payment_info', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'informação de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'paypal_client_id', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'ID do cliente paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'stripe_public_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'chave pública de distribuição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'stripe_secret_key', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'chave secreta de distribuição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'required_for_instructors', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'necessário para instrutores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'payment_report', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' relatório de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'update_your_payment_settings', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' atualize suas configurações de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'no_payment_history_found', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'nenhum histórico de pagamentos encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'product_updated_successfully', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'produto atualizado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'select_a_section', 'Select A Section', NULL, '', NULL, NULL, NULL, NULL, NULL, 'selecione uma seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'footer_text', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'texto de rodapé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'footer_link', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ' link footerb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'system_settings_updated', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'configurações do sistema atualizadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'tablero', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 'bordo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'administrar el perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'administrar el perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'set_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'definir moeda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'set_paypal_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'definir moeda paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'paypal_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'moeda paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'stripe_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'moeda de distribuição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'select_paypal_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selecione moeda paypal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'select_stripe_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selecione a moeda da faixa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'select_system_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selecione a moeda do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'pending courses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cursos pendentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'subcategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subcategoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'active courses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cursos ativos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'lesson_type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tipo de lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'video', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vídeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'text_file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arquivo de texto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'pdf_file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ficheiro PDF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'document_file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arquivo de documento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'image_file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arquivo de imagem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'select_type_of_lesson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selecione o tipo de lição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'summary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'resumo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'attachment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anexo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'lesson_provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'provedor de aula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'select_lesson_provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selecionar provedor de aula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'youtube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Youtube', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'vimeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vimeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'invalid_lesson_provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'provedor de lições inválido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'invalid_lesson_url_and_duration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'URL e duração da lição inválidos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'invalid_attachment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anexo inválido', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'video_url_is_not_supported', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'o URL do vídeo não é suportado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'lesson_title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lição título', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'author', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'autor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'tags_input', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'keywords', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'palavras-chave', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'meta_keywords', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'meta palavras-chave', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'meta_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Meta Descrição', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'download', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'baixar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'no_summary_has_been_added', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nenhum resumo foi adicionado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'no_summary_found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nenhum resumo encontrado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'website_name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nome do site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'website_title', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'título do site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'system_currency_settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de moeda do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'currency_position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'posição da moeda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'esquerda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'direita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'website_keywords', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'palavras-chave do site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'website_description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Descrição do site', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'left_with_a_space', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deixado com um espaço', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'right_with_a_space', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'certo com um espaço', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'video_file', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'arquivo de vídeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'course_overview_provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'provedor de visão geral do curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'html5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'heads_up', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atenção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'please_make_sure_that', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'por favor, certifique-se de que', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'system_currency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' moeda do sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'are_same', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'são iguais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'no_records_found', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sem registros encontrados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'free_course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' curso livre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'free', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'livre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'get_enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'se matricular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'successfully_enrolled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bem sucedido inscrito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'please_check_your_email_for_new_password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'verifique seu e-mail para obter uma nova senha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'smtp_settings', 'SMTP Settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'smtp settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'phrase_updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'expressão atualizada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'protocol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'protocolo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'smtp_host', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'host smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'smtp_port', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'porta smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'smtp_user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'usuário smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'smtp_pass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'passagem smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'update_smtp_settings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'atualizar configurações smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'smtp_settings_updated_successfully', 'SMTP Settings Updated Successfully', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de smtp atualizadas com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'please_login_with_your_email_to_verify', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'faça o login com seu e-mail para verificar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'please_check_your_mail_inbox_to_verify_your_email_address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'verifique sua caixa de entrada de e-mail para verificar seu endereço de e-mail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'congratulations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Parabéns', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'your_email_address_has_been_successfully_verified', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'seu endereço de email foi verificado com sucesso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'edit section', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Editar seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'edit_section_form', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editar formulário de seção', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'frontend_settings_updated', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de front-end atualizadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'registrar histórico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'registrador histórico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'configurações de front-end', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Configuração da dianteira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'gerenciar idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gerenciar idioma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'matricular um aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'matricular um aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'categorias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'cursos ativos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cursos ativos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'aluna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aluna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'painel de controle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'painel de controle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'adicionar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adicionar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'adicionar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adicionar categoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'aluno adicionar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aluno adicionar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'configurações de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de pagamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'configurações de smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de smtp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'configurações de sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações de sistema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'editar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'editar curso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'configurações do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'configurações do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'edição do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'edição do aluno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(607, 'Showing 1 to 1 of 1 entries', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mostrando de 1 até 1 de 1 registros', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'cursos pendentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'mensagens privadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'receita administrativa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'receita do instrutor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'gerenciar perfil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `reciever` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Estrutura para tabela `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'portuguese'),
(2, 'system_name', 'Tem de Tudo Programas'),
(3, 'system_title', 'Academy'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'E fui selecionado para o muito grande para acompanhar a dor de omitir eles, a culpa é de certa naturalmente acompanhá-los'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'u855105583_acade'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'AIzaSyBBJrcS7AhGd1Cgd6GKH3G5aUUj9L9NrFQ'),
(11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c'),
(12, 'slogan', 'A course based video CMS...'),
(13, 'text_align', 'left-to-right'),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '64'),
(16, 'footer_text', 'Tem de Tudo Programas'),
(17, 'footer_link', 'http://olhardigital.xyz/Academy'),
(18, 'system_currency', 'BRL'),
(19, 'paypal_currency', 'BRL'),
(20, 'stripe_currency', 'BRL'),
(21, 'author', 'Tem de Tudo Programas'),
(22, 'currency_position', 'left'),
(23, 'website_description', 'Boa aplicação'),
(24, 'website_keywords', 'LMS,Learning Management System,Creativeitem'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', ''),
(29, 'smtp_pass', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_keys` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`) VALUES
(1, 'admin', 'admin', 'pontodigitalprogramas@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/temdetudoprogramascom\\/\",\"twitter\":\"https:\\/\\/twitter.com\",\"linkedin\":\"https:\\/\\/br.linkedin.com\"}', 'Nosso site: <a href=\"https://temdetudoprogramas.com\" target=\"\" rel=\"\">https://temdetudoprogramas.com</a><br>', 1, NULL, 1576726881, NULL, NULL, 'Nosso site: https://temdetudoprogramas.com', '[{\"production_client_id\":null}]', '[{\"public_live_key\":null,\"secret_live_key\":null}]', NULL, 1),
(2, 'Neide', 'Cruz', 'teste@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1576702127, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '4ef5db67cd1ce53145ede472b497f647', 0),
(3, 'Ana', 'Maria', 'demo@demo.com', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1576726133, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'd5842560bcc17dcbd746782d4c0ea74c', 0),
(4, 'Ana', 'Maria', 'ana@hotmail.com', '0d77f62467382908f376607d2accaa874ae70c51', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1576881182, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'a61d8d4a519d5955405a1f0b55416989', 0),
(5, 'Bastos', 'Bastos', 'amaurib2010@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1576881250, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '83b0f5ebb076616312004cbc1dfe688b', 0),
(6, 'LUANDERSON', 'OLIVEIRA', 'luanderson.oliveira@gmail.com', '0a97dae2d99bf59dc467d45a652ce9aabcc06150', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1577161888, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', '8e456c1927785632e38292449763461c', 0);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Índices de tabela `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Índices de tabela `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Índices de tabela `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `enroll`
--
ALTER TABLE `enroll`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT de tabela `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
