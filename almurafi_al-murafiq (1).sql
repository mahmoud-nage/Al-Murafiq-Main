-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2020 at 02:02 AM
-- Server version: 5.7.29
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almurafi_al-murafiq`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `in_home` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `active`, `in_home`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'xsax', 'xsaxas', '<div>xsaxsax</div>', '<div>xasxas</div>', 1, 1, '2020-10-20 10:51:39', '2020-10-20 10:51:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` text COLLATE utf8mb4_unicode_ci,
  `changes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '91ca2dc7-6d8e-4e02-9e41-d4344627bf7d', 1, 'Create', 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, '', 'finished', '', '2020-10-17 20:56:15', '2020-10-17 20:56:15', NULL, '{\"name_ar\":\"vxv\",\"name_en\":\"vxvx\",\"desc_ar\":\"<div>vxfvxf<\\/div>\",\"desc_en\":\"<div>vxvfxv<\\/div>\",\"active\":1,\"in_home\":1}'),
(2, '91ca3239-2c0d-4bd4-9cc8-c9c19322a218', 1, 'Create', 'App\\General\\File', 1, 'App\\General\\File', 1, 'App\\General\\File', 1, '', 'finished', '', '2020-10-17 21:08:40', '2020-10-17 21:08:40', NULL, '{\"fileable_type\":\"App\\\\General\\\\Blog\",\"fileable_id\":1,\"source\":\"\\/uploads\\/files\\/IExbgxywpyGQ8QFc99O4qTL8BiVkr4xyJSVAMxs5Wz9r8QusfB.png\",\"type\":\"1\"}'),
(3, '91ca3271-e8e4-4daf-97e9-bd111ae7b2fc', 1, 'Delete', 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, '', 'finished', '', '2020-10-17 21:09:17', '2020-10-17 21:09:17', NULL, NULL),
(4, '91ca32ad-767b-4dee-a384-0f4ef1f55341', 1, 'Restore', 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, 'App\\General\\Blog', 1, '', 'finished', '', '2020-10-17 21:09:56', '2020-10-17 21:09:56', NULL, NULL),
(5, '91ca34e2-f66a-4eaf-bda0-8cdbc13e6b48', 1, 'Create', 'App\\General\\File', 2, 'App\\General\\File', 2, 'App\\General\\File', 2, '', 'finished', '', '2020-10-17 21:16:07', '2020-10-17 21:16:07', NULL, '{\"fileable_type\":\"App\\\\General\\\\Blog\",\"fileable_id\":1,\"source\":\"\\/uploads\\/files\\/A5tujmNNW5TJ4HqjXx39zsTyRpZheoWBC21hVLk53g0OLqXHYM.jpg\",\"type\":\"2\"}'),
(6, '91cbfbc8-cda0-4a45-ba2e-c44124d71356', 1, 'Create', 'App\\General\\Admin', 1, 'App\\General\\Admin', 1, 'App\\General\\Admin', 1, '', 'finished', '', '2020-10-18 18:28:06', '2020-10-18 18:28:06', NULL, '{\"type\":\"2\"}'),
(7, '91cbfc37-1e55-468b-8051-367a8f5f74a3', 1, 'Update', 'App\\General\\Admin', 1, 'App\\General\\Admin', 1, 'App\\General\\Admin', 1, '', 'finished', '', '2020-10-18 18:29:18', '2020-10-18 18:29:18', '{\"type\":2}', '{\"type\":\"1\"}'),
(8, '91cbfc46-e4d8-4c1f-a18c-bf5e784d66d4', 1, 'Create', 'App\\General\\Admin', 2, 'App\\General\\Admin', 2, 'App\\General\\Admin', 2, '', 'finished', '', '2020-10-18 18:29:28', '2020-10-18 18:29:28', NULL, '{\"type\":\"2\"}'),
(9, '91cc02eb-2ae1-456d-a2b2-9ca5a507e631', 1, 'Create', 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, '', 'finished', '', '2020-10-18 18:48:03', '2020-10-18 18:48:03', NULL, '[]'),
(10, '91cc030a-b23c-4d11-8fdf-34c466ca26e8', 1, 'Update', 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, '', 'finished', '', '2020-10-18 18:48:23', '2020-10-18 18:48:23', '[]', '[]'),
(11, '91cc035d-21c4-43d5-8f0f-b4adc4ddd844', 1, 'Delete', 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, '', 'finished', '', '2020-10-18 18:49:17', '2020-10-18 18:49:17', NULL, NULL),
(12, '91cc0363-3b0d-4c16-b3d7-0ce69419f568', 1, 'Create', 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, '', 'finished', '', '2020-10-18 18:49:21', '2020-10-18 18:49:21', NULL, '[]'),
(13, '91cc03e7-2beb-4dbc-b355-1465a45d0b41', 1, 'Delete', 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, '', 'finished', '', '2020-10-18 18:50:48', '2020-10-18 18:50:48', NULL, NULL),
(14, '91cc03eb-8d48-4a50-8f41-dff400956015', 1, 'Create', 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, '', 'finished', '', '2020-10-18 18:50:51', '2020-10-18 18:50:51', NULL, '[]'),
(15, '91cc047b-55c3-417a-818c-97a795e6ac38', 1, 'Delete', 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, '', 'finished', '', '2020-10-18 18:52:25', '2020-10-18 18:52:25', NULL, NULL),
(16, '91cc0480-bcaa-4099-aea4-f7149e37c78e', 1, 'Restore', 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, '', 'finished', '', '2020-10-18 18:52:29', '2020-10-18 18:52:29', NULL, NULL),
(17, '91cc048c-1c55-4238-8969-0c2264e35b5a', 1, 'Update', 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, '', 'finished', '', '2020-10-18 18:52:36', '2020-10-18 18:52:36', '{\"ssd\":null}', '{\"ssd\":\"dddddd\"}'),
(18, '91cc0525-dc87-42c7-ae19-8bb7e1251833', 1, 'Create', 'App\\Affilate\\Affilate', 4, 'App\\Affilate\\Affilate', 4, 'App\\Affilate\\Affilate', 4, '', 'finished', '', '2020-10-18 18:54:17', '2020-10-18 18:54:17', NULL, '[]'),
(19, '91cc053d-5aaf-40f9-8fc7-28f91ecefe22', 1, 'Delete', 'App\\Affilate\\Affilate', 4, 'App\\Affilate\\Affilate', 4, 'App\\Affilate\\Affilate', 4, '', 'finished', '', '2020-10-18 18:54:32', '2020-10-18 18:54:32', NULL, NULL),
(20, '91cc054b-e769-40ae-82e5-7ce71048dc4f', 1, 'Delete', 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, 'App\\Affilate\\Affilate', 3, '', 'finished', '', '2020-10-18 18:54:42', '2020-10-18 18:54:42', NULL, NULL),
(21, '91cc0552-d7e9-4afb-a681-0e7b6326c9e8', 1, 'Create', 'App\\Affilate\\Affilate', 5, 'App\\Affilate\\Affilate', 5, 'App\\Affilate\\Affilate', 5, '', 'finished', '', '2020-10-18 18:54:46', '2020-10-18 18:54:46', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f8cab9470b77\"}'),
(22, '91cc05b9-66ea-439e-8e35-e2d372611852', 1, 'Create', 'App\\Affilate\\Affilate', 6, 'App\\Affilate\\Affilate', 6, 'App\\Affilate\\Affilate', 6, '', 'finished', '', '2020-10-18 18:55:53', '2020-10-18 18:55:53', NULL, '[]'),
(23, '91cc05c8-bbfb-4455-bfa1-2d8f6b34342e', 1, 'Delete', 'App\\Affilate\\Affilate', 6, 'App\\Affilate\\Affilate', 6, 'App\\Affilate\\Affilate', 6, '', 'finished', '', '2020-10-18 18:56:03', '2020-10-18 18:56:03', NULL, NULL),
(24, '91cc05d2-5be4-49cf-a3fd-10a725ccf4d0', 1, 'Create', 'App\\Affilate\\Affilate', 7, 'App\\Affilate\\Affilate', 7, 'App\\Affilate\\Affilate', 7, '', 'finished', '', '2020-10-18 18:56:10', '2020-10-18 18:56:10', NULL, '[]'),
(25, '91cc0619-f293-4d9e-9142-1bb99abe06fb', 1, 'Delete', 'App\\Affilate\\Affilate', 7, 'App\\Affilate\\Affilate', 7, 'App\\Affilate\\Affilate', 7, '', 'finished', '', '2020-10-18 18:56:57', '2020-10-18 18:56:57', NULL, NULL),
(26, '91cc061f-82bb-4597-bc44-1ece7d8bb434', 1, 'Create', 'App\\Affilate\\Affilate', 8, 'App\\Affilate\\Affilate', 8, 'App\\Affilate\\Affilate', 8, '', 'finished', '', '2020-10-18 18:57:00', '2020-10-18 18:57:00', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f8cac1b5c568\"}'),
(27, '91cc06fe-5a14-462d-9e90-8136703a3cd6', 1, 'Delete', 'App\\User', 1, 'App\\User', 1, 'App\\User', 1, '', 'finished', '', '2020-10-18 18:59:26', '2020-10-18 18:59:26', NULL, NULL),
(28, '91cc120b-4585-495b-93c1-910a330efbf0', 1, 'Create', 'App\\General\\GeneralSettings', 1, 'App\\General\\GeneralSettings', 1, 'App\\General\\GeneralSettings', 1, '', 'finished', '', '2020-10-18 19:30:20', '2020-10-18 19:30:20', NULL, '{\"site_ar\":\"\\u0627\\u0644\\u0645\\u0631\\u0627\\u0641\\u0642\",\"site_en\":\"Al-murafiq\",\"address_ar\":\"cdsd\",\"address_en\":\"dsds\",\"favicon\":\"\\/uploads\\/generalSettings\\/lzhzpItKm5Jumtm5txfqt111ZJilsHMCtN7l3EdAwbLriRTdpO.png\",\"logo\":\"\\/uploads\\/generalSettings\\/jj9BwWOiYmRpUUPjFdCFacwlyHtfGZioGURThhqRZNR6qQFWso.png\",\"lat\":\"0\",\"lon\":\"0\"}'),
(29, '91ccca42-0804-4c1b-847f-a7327f71a81d', 1, 'Create', 'App\\General\\Category', 1, 'App\\General\\Category', 1, 'App\\General\\Category', 1, '', 'finished', '', '2020-10-19 04:05:27', '2020-10-19 04:05:27', NULL, '{\"name_ar\":\"test1\",\"name_en\":\"test2\",\"slug\":\"9JkqqX\",\"parent_id\":\"0\",\"active\":1,\"top\":1}'),
(30, '91cccbc6-f0f8-4882-bceb-779b26edab20', 1, 'Create', 'App\\General\\Category', 2, 'App\\General\\Category', 2, 'App\\General\\Category', 2, '', 'finished', '', '2020-10-19 04:09:41', '2020-10-19 04:09:41', NULL, '{\"name_ar\":\"sub\",\"name_en\":\"sub\",\"slug\":\"au0w6O\",\"parent_id\":\"1\",\"active\":1,\"top\":0}'),
(31, '91cccc32-dbf9-406c-b780-15b6d2eed2a1', 1, 'Create', 'App\\General\\Category', 3, 'App\\General\\Category', 3, 'App\\General\\Category', 3, '', 'finished', '', '2020-10-19 04:10:52', '2020-10-19 04:10:52', NULL, '{\"name_ar\":\"sub sub\",\"name_en\":\"sub sub\",\"slug\":\"CRUx4J\",\"parent_id\":\"2\",\"active\":1,\"top\":0}'),
(33, '91cebdef-eeed-4598-8748-0a9e665b0107', 1, 'Update', 'App\\User', 1, 'App\\User', 1, 'App\\User', 1, '', 'finished', '', '2020-10-20 03:22:39', '2020-10-20 03:22:39', '{\"avatar\":null,\"gender\":null,\"phone\":null}', '{\"avatar\":\"\\/uploads\\/users\\/lKHPDBHiCTn8urgkGQKRhHF2BhldO0AsttqUutBqu6fNetdmH4.png\",\"gender\":\"Male\",\"phone\":\"01123003488\"}'),
(34, '91cebf75-f6c2-48f4-a5cb-085d279f949e', 1, 'Create', 'App\\User', 2, 'App\\User', 2, 'App\\User', 2, '', 'finished', '', '2020-10-20 03:26:54', '2020-10-20 03:26:54', NULL, '{\"name\":\"mahmoud\",\"email\":\"mahmoudn509@gmail.com\",\"provider\":null,\"provider_id\":null,\"avatar\":\"\\/uploads\\/users\\/jQQ8XAJM9A2GRcnDQrfIVETR1mHwVHYmHYzeX8NwdWqlxr4d5v.jpg\",\"birth_date\":\"1995-05-30\",\"gender\":null,\"default_lang\":\"ar\",\"phone\":\"01123003488\",\"city_id\":null,\"area_id\":null,\"zone_id\":null,\"national_id\":null,\"active\":1,\"userable_id\":8,\"userable_type\":\"App\\\\Affilate\\\\Affilate\"}'),
(35, '91cf4fe4-7069-4467-9d44-8f38991c2d79', 1, 'Create', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-20 10:10:46', '2020-10-20 10:10:46', NULL, '{\"name_ar\":\"dsa\",\"name_en\":\"dsa\",\"address_ar\":\"dsa\",\"address_en\":\"dsa\",\"desc_ar\":\"<div>dsa<\\/div>\",\"desc_en\":\"<div>dsad<\\/div>\",\"branch_num\":\"1\",\"is_open\":1,\"closed_reason\":null,\"open_from\":null,\"open_to\":null,\"active\":1}'),
(36, '91cf5075-aedb-4416-9a05-7651dae04f89', 1, 'Create', 'App\\User', 3, 'App\\User', 3, 'App\\User', 3, '', 'finished', '', '2020-10-20 10:12:21', '2020-10-20 10:12:21', NULL, '{\"name\":\"c\",\"email\":\"mahmoudn50900@gmail.com\",\"provider\":null,\"provider_id\":null,\"avatar\":\"\\/uploads\\/users\\/MFBDmjZC5lFvX3eu0EZ2PirU4RjL8bb71Icnuxjh5gzerNZ6DU.png\",\"birth_date\":null,\"gender\":null,\"default_lang\":\"ar\",\"phone\":\"01123003488\",\"city_id\":null,\"area_id\":null,\"zone_id\":null,\"national_id\":null,\"active\":0,\"userable_id\":1,\"userable_type\":\"App\\\\Company\\\\Company\"}'),
(37, '91cf5b65-14cb-4dee-a24b-046b5cf175a3', 1, 'Create', 'App\\General\\Ticket', 1, 'App\\General\\Ticket', 1, 'App\\General\\Ticket', 1, '', 'finished', '', '2020-10-20 10:42:56', '2020-10-20 10:42:56', NULL, '{\"user_id\":1,\"code\":\"680\",\"subject\":\"cc\",\"details\":\"<div>cdsc<\\/div>\",\"type\":\"0\"}'),
(38, '91cf5d92-725a-4a83-acb5-8e959707c95f', 1, 'Create', 'App\\General\\TicketReply', 1, 'App\\General\\TicketReply', 1, 'App\\General\\TicketReply', 1, '', 'finished', '', '2020-10-20 10:49:01', '2020-10-20 10:49:01', NULL, '{\"user_id\":1,\"ticket_id\":1,\"reply\":\"<div>csacsacd<\\/div>\"}'),
(39, '91cf5e83-a0a9-4035-b28e-cfa8af32e848', 1, 'Create', 'App\\General\\AboutUs', 1, 'App\\General\\AboutUs', 1, 'App\\General\\AboutUs', 1, '', 'finished', '', '2020-10-20 10:51:39', '2020-10-20 10:51:39', NULL, '{\"name_ar\":\"xsax\",\"name_en\":\"xsaxas\",\"desc_ar\":\"<div>xsaxsax<\\/div>\",\"desc_en\":\"<div>xasxas<\\/div>\",\"active\":1,\"in_home\":1}'),
(40, '91cf5e98-00b7-4159-8e98-3d337939fbf5', 1, 'Create', 'App\\General\\File', 3, 'App\\General\\File', 3, 'App\\General\\File', 3, '', 'finished', '', '2020-10-20 10:51:52', '2020-10-20 10:51:52', NULL, '{\"fileable_type\":\"App\\\\General\\\\AboutUs\",\"fileable_id\":1,\"source\":\"\\/uploads\\/files\\/7HmjbrR7y9Jj6slOQyxymPFVKGDJb5KtoTTK7iOYQ1WAPT98PU.jpg\",\"type\":\"1\"}'),
(41, '91cf75a3-465b-4908-b913-5c613ccfcf5a', 1, 'Create', 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, '', 'finished', '', '2020-10-20 11:56:18', '2020-10-20 11:56:18', NULL, '{\"name_ar\":\"ultra\",\"name_en\":\"ultra\",\"desc_ar\":\"<div>ultra<\\/div>\",\"desc_en\":\"<div>ultra<\\/div>\",\"price\":\"1000\",\"days\":\"30\",\"slider_num\":\"10\",\"banner_num\":\"15\",\"top\":1,\"active\":1}'),
(57, '91cf7bcc-44cb-42c4-91bd-d6d7dee3be67', 1, 'Attach', 'App\\Company\\Company', 1, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-20 12:13:32', '2020-10-20 12:13:32', NULL, '{\"company_id\":\"1\",\"subscription_id\":\"1\",\"from\":\"2020-10-13\",\"to\":\"2020-10-29\"}'),
(58, '91d0dd15-a00d-4b75-8e3e-579c166836e2', 1, 'Create', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, '', 'finished', '', '2020-10-21 04:41:24', '2020-10-21 04:41:24', NULL, '{\"name_ar\":\"dads\",\"name_en\":\"dsad\",\"address_ar\":\"dasd\",\"address_en\":\"dsa\",\"desc_ar\":\"<div>dsad<\\/div>\",\"desc_en\":\"<div>dasds<\\/div>\",\"branch_num\":\"1\",\"is_open\":0,\"closed_reason\":null,\"open_from\":null,\"open_to\":null,\"active\":0}'),
(59, '91d0ea0f-1eb2-442c-ae45-7743b3a039ef', 1, 'Update', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, '', 'finished', '', '2020-10-21 05:17:40', '2020-10-21 05:17:40', '{\"holiday\":null}', '{\"holiday\":{\"Saturday\":false,\"Sunday\":true,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":false,\"Friday\":false}}'),
(60, '91d0ea23-d774-427c-81fc-594c3dbf6301', 1, 'Update', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, '', 'finished', '', '2020-10-21 05:17:54', '2020-10-21 05:17:54', '{\"holiday\":\"{\\\"Saturday\\\":false,\\\"Sunday\\\":true,\\\"Monday\\\":false,\\\"Tuesday\\\":false,\\\"Wednesday\\\":false,\\\"Thursday\\\":false,\\\"Friday\\\":false}\"}', '{\"holiday\":{\"Saturday\":false,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":false,\"Friday\":true}}'),
(61, '91d0ec8c-aa33-4345-8290-62b7b6584e0b', 1, 'Create', 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, '', 'finished', '', '2020-10-21 05:24:38', '2020-10-21 05:24:38', NULL, '{\"name_ar\":\"mahmoud\",\"name_en\":\"mahmoud\",\"address_ar\":\"\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631\",\"address_en\":\"sssss\",\"desc_ar\":\"<div>sassa<\\/div>\",\"desc_en\":\"<div>sasas<\\/div>\",\"is_open\":1,\"open_from\":null,\"open_to\":null,\"active\":1,\"parent_id\":1}'),
(62, '91d0f326-83c6-4080-9944-931b9b6a2f28', 1, 'Update', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 05:43:06', '2020-10-21 05:43:06', '{\"open_from\":null,\"open_to\":null}', '{\"open_from\":\"2020-10-21 09:00:00\",\"open_to\":\"2020-10-21 18:00:00\"}'),
(63, '91d0f43b-815d-402f-8cdf-f800bc77a1d8', 1, 'Update', 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, '', 'finished', '', '2020-10-21 05:46:07', '2020-10-21 05:46:07', '{\"open_from\":null,\"open_to\":null}', '{\"open_from\":\"2020-10-21 09:00:00\",\"open_to\":\"2020-10-21 18:00:00\"}'),
(64, '91d0f4f4-caeb-41c2-b193-69a4b0d6ae54', 1, 'Update', 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, '', 'finished', '', '2020-10-21 05:48:09', '2020-10-21 05:48:09', '{\"open_from\":null,\"open_to\":null}', '{\"open_from\":\"2020-10-21 12:00:00\",\"open_to\":\"2020-10-21 13:00:00\"}'),
(65, '91d0f554-975f-464d-9a87-740b8eed5405', 1, 'Update', 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, '', 'finished', '', '2020-10-21 05:49:11', '2020-10-21 05:49:11', '{\"open_from\":null,\"open_to\":null}', '{\"open_from\":\"2020-10-21 12:00:00\",\"open_to\":\"2020-10-21 10:00:00\"}'),
(66, '91d0f731-9fa8-4f9b-9835-9d1400e485c4', 1, 'Update', 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, 'App\\Company\\Company', 3, '', 'finished', '', '2020-10-21 05:54:24', '2020-10-21 05:54:24', '{\"open_from\":null,\"open_to\":null}', '{\"open_from\":\"2020-10-21 12:00:00\",\"open_to\":\"2020-10-21 15:00:00\"}'),
(67, '91d0fc95-b833-4ce6-acb1-4dba75ed057e', 1, 'Create', 'App\\Company\\Company', 4, 'App\\Company\\Company', 4, 'App\\Company\\Company', 4, '', 'finished', '', '2020-10-21 06:09:28', '2020-10-21 06:09:28', NULL, '{\"name_ar\":\"mahmoud\",\"name_en\":\"mahmoud\",\"address_ar\":\"\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631\",\"address_en\":\"xsax\",\"desc_ar\":\"<div>xxxxx<\\/div>\",\"desc_en\":\"<div>xx<\\/div>\",\"is_open\":0,\"open_from\":\"2020-10-21T10:00:00.000000Z\",\"open_to\":\"2020-11-02T16:00:00.000000Z\",\"active\":1,\"parent_id\":1}'),
(68, '91d0fd67-d6b0-46e1-b78f-3f970dfe40be', 1, 'Delete', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:11:46', '2020-10-21 06:11:46', NULL, NULL),
(69, '91d0fdc4-1403-4621-8931-fa2c124ca53b', 1, 'Restore', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:12:47', '2020-10-21 06:12:47', NULL, NULL),
(70, '91d0fe5d-d9aa-47fb-83b4-51daa7ef3f2a', 1, 'Delete', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:14:28', '2020-10-21 06:14:28', NULL, NULL),
(71, '91d0ff07-95fa-4b99-8bed-4fd5b4f556d0', 1, 'Restore', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:16:19', '2020-10-21 06:16:19', NULL, NULL),
(72, '91d0ff14-47a7-4b7e-888b-a009ff1ef584', 1, 'Delete', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:16:27', '2020-10-21 06:16:27', NULL, NULL),
(73, '91d0ffc8-9f1f-4c95-bf79-3edf584032c0', 1, 'Restore', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:18:25', '2020-10-21 06:18:25', NULL, NULL),
(74, '91d0ffd1-a145-447a-90f3-d05b0660f36e', 1, 'Delete', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:18:31', '2020-10-21 06:18:31', NULL, NULL),
(75, '91d10033-bb0a-4944-a6f4-9d1393f36644', 1, 'Restore', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:19:35', '2020-10-21 06:19:35', NULL, NULL),
(76, '91d10068-f8d9-4ec9-96a2-a64272552959', 1, 'Create', 'App\\Company\\Company', 5, 'App\\Company\\Company', 5, 'App\\Company\\Company', 5, '', 'finished', '', '2020-10-21 06:20:10', '2020-10-21 06:20:10', NULL, '{\"name_ar\":\"xsax\",\"name_en\":\"xsaxsa\",\"address_ar\":\"xsax\",\"address_en\":\"axsaxsa\",\"desc_ar\":\"<div>xsxsasa<\\/div>\",\"desc_en\":\"<div>xsaxasxs<\\/div>\",\"is_open\":0,\"open_from\":\"2020-10-21T10:00:00.000000Z\",\"open_to\":\"2020-10-21T13:00:00.000000Z\",\"active\":1,\"parent_id\":1}'),
(77, '91d100c3-774b-4130-bbd2-e9edc9ba4d68', 1, 'Delete', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-21 06:21:10', '2020-10-21 06:21:10', NULL, NULL),
(78, '91d100fa-f3cc-4603-8d18-1bb86e9ddaf9', 1, 'Create', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, '', 'finished', '', '2020-10-21 06:21:46', '2020-10-21 06:21:46', NULL, '{\"name_ar\":\"mahmoud\",\"name_en\":\"mahmoud\",\"address_ar\":\"\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631\",\"address_en\":\"xsaxsa\",\"desc_ar\":\"<div>xsax<\\/div>\",\"desc_en\":\"<div>xsaxasx<\\/div>\",\"branch_num\":\"1\",\"is_open\":0,\"closed_reason\":null,\"open_from\":\"2020-10-21T12:00:00.000000Z\",\"open_to\":\"2020-10-21T15:00:00.000000Z\",\"active\":1}'),
(79, '91d1014d-f483-4ee5-8025-bef2462ddbc9', 1, 'Create', 'App\\Company\\Company', 7, 'App\\Company\\Company', 7, 'App\\Company\\Company', 7, '', 'finished', '', '2020-10-21 06:22:40', '2020-10-21 06:22:40', NULL, '{\"name_ar\":\"mahmoud\",\"name_en\":\"mahmoud\",\"address_ar\":\"\\u0645\\u062f\\u064a\\u0646\\u0647 \\u0646\\u0635\\u0631\",\"address_en\":\"cdscds\",\"desc_ar\":\"<div>cccc<\\/div>\",\"desc_en\":\"<div>ccccc<\\/div>\",\"is_open\":0,\"open_from\":null,\"open_to\":null,\"active\":1,\"parent_id\":6}'),
(80, '91d101ab-8e7e-4a02-b9be-1d5c2ee6ecb7', 1, 'Delete', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, '', 'finished', '', '2020-10-21 06:23:42', '2020-10-21 06:23:42', NULL, NULL),
(81, '91d101d9-ef50-4b78-a500-618376b2f431', 1, 'Restore', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, '', 'finished', '', '2020-10-21 06:24:12', '2020-10-21 06:24:12', NULL, NULL),
(82, '91d10282-fd5d-464a-a9b3-28080a431716', 1, 'Create', 'App\\User', 4, 'App\\User', 4, 'App\\User', 4, '', 'finished', '', '2020-10-21 06:26:03', '2020-10-21 06:26:03', NULL, '{\"name\":\"zacks\",\"email\":\"zacks@mail.com\",\"provider\":null,\"provider_id\":null,\"avatar\":\"\\/uploads\\/users\\/ZDixGxYpNroli3tW4hKE7oVAvJBxkndMEd9RWY7oJCba5iYVxW.jpg\",\"birth_date\":null,\"gender\":\"Male\",\"default_lang\":\"ar\",\"phone\":\"01123003488\",\"city_id\":null,\"area_id\":null,\"zone_id\":null,\"national_id\":null,\"active\":1,\"userable_id\":6,\"userable_type\":\"App\\\\Company\\\\Company\"}'),
(83, '91d10557-46a9-4c1f-b362-4b92ad26d7aa', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Category', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 06:33:57', '2020-10-21 06:33:57', NULL, '{\"company_id\":\"6\",\"category_id\":\"1\"}'),
(85, '91d10e7d-44d5-4915-8965-78b429f6dfc6', 1, 'Update', 'App\\General\\Category', 1, 'App\\General\\Category', 1, 'App\\General\\Category', 1, '', 'finished', '', '2020-10-21 06:59:32', '2020-10-21 06:59:32', '{\"name_ar\":\"test1\",\"name_en\":\"test2\"}', '{\"name_ar\":\"\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\",\"name_en\":\"cars\"}'),
(86, '91d11056-45db-4d99-81f6-ffc18b051226', 1, 'Create', 'App\\General\\Category', 4, 'App\\General\\Category', 4, 'App\\General\\Category', 4, '', 'finished', '', '2020-10-21 07:04:42', '2020-10-21 07:04:42', NULL, '{\"name_ar\":\"\\u0646\\u064a\\u0633\\u0627\\u0646\",\"name_en\":\"nissan\",\"slug\":\"DZVOJP\",\"parent_id\":1,\"active\":1}'),
(87, '91d1117c-1a94-4040-b62a-38a1f39fb855', 1, 'Update', 'App\\General\\Category', 2, 'App\\General\\Category', 2, 'App\\General\\Category', 2, '', 'finished', '', '2020-10-21 07:07:55', '2020-10-21 07:07:55', '{\"name_ar\":\"sub\",\"name_en\":\"sub\"}', '{\"name_ar\":\"\\u0628\\u064a \\u0627\\u0645\",\"name_en\":\"BM\"}'),
(88, '91d11f48-97db-4acc-927c-834337c2dbc3', 1, 'Create', 'App\\General\\Category', 5, 'App\\General\\Category', 5, 'App\\General\\Category', 5, '', 'finished', '', '2020-10-21 07:46:30', '2020-10-21 07:46:30', NULL, '{\"name_ar\":\"\\u0627\\u0643\\u0633 3\",\"name_en\":\"X3\",\"parent_id\":4,\"slug\":\"KUQuFe\",\"active\":1,\"type\":\"1\"}'),
(89, '91d11fcc-c3ae-4e9e-9afb-0f8548d12928', 1, 'Create', 'App\\General\\Category', 6, 'App\\General\\Category', 6, 'App\\General\\Category', 6, '', 'finished', '', '2020-10-21 07:47:57', '2020-10-21 07:47:57', NULL, '{\"name_ar\":\"\\u0641\\u0648\\u0631\\u062f\",\"name_en\":\"ford\",\"parent_id\":\"1\",\"slug\":\"COVXP6\",\"active\":1,\"type\":\"1\"}'),
(90, '91d1200e-ceba-4ffe-9f09-1620c4724d02', 1, 'Create', 'App\\General\\Category', 7, 'App\\General\\Category', 7, 'App\\General\\Category', 7, '', 'finished', '', '2020-10-21 07:48:40', '2020-10-21 07:48:40', NULL, '{\"name_ar\":\"\\u0641\\u0648\\u0631\\u062f \\u0627\\u0649 \\u062d\\u0627\\u062c\\u0647\",\"name_en\":\"ford ay 7aga\",\"parent_id\":6,\"slug\":\"VbzB4B\",\"active\":1,\"type\":\"2\"}'),
(91, '91d120ec-e58f-41fb-a8a8-7ee53771bae2', 1, 'Update', 'App\\General\\Category', 3, 'App\\General\\Category', 3, 'App\\General\\Category', 3, '', 'finished', '', '2020-10-21 07:51:05', '2020-10-21 07:51:05', '[]', '[]'),
(92, '91d1214c-4b47-4405-8be9-dfe0277511d2', 1, 'Update', 'App\\General\\Category', 3, 'App\\General\\Category', 3, 'App\\General\\Category', 3, '', 'finished', '', '2020-10-21 07:52:08', '2020-10-21 07:52:08', '{\"parent_id\":2}', '{\"parent_id\":\"4\"}'),
(93, '91d12191-25ac-41d4-aa58-894ca936be0c', 1, 'Update', 'App\\General\\Category', 5, 'App\\General\\Category', 5, 'App\\General\\Category', 5, '', 'finished', '', '2020-10-21 07:52:53', '2020-10-21 07:52:53', '{\"parent_id\":4}', '{\"parent_id\":\"2\"}'),
(94, '91d13c4c-fe3e-4f93-9d53-404b863d6826', 1, 'Restore', 'App\\General\\Category', 1, 'App\\General\\Category', 1, 'App\\General\\Category', 1, '', 'finished', '', '2020-10-21 09:07:39', '2020-10-21 09:07:39', NULL, NULL),
(95, '91d13f92-3fa6-474b-ac48-6872cf758f87', 1, 'Create', 'App\\Company\\Company', 8, 'App\\Company\\Company', 8, 'App\\Company\\Company', 8, '', 'finished', '', '2020-10-21 09:16:47', '2020-10-21 09:16:47', NULL, '{\"name_ar\":\"xsx\",\"name_en\":\"xsxs\",\"address_ar\":\"sxxxx\",\"address_en\":\"xxxxx\",\"desc_ar\":\"<div>xsaxx<\\/div>\",\"desc_en\":\"<div>sx<\\/div>\",\"is_open\":1,\"open_from\":null,\"open_to\":null,\"active\":1,\"parent_id\":6}'),
(96, '91d14022-e679-40d1-953d-5b4deec7b658', 1, 'Create', 'App\\Company\\Company', 9, 'App\\Company\\Company', 9, 'App\\Company\\Company', 9, '', 'finished', '', '2020-10-21 09:18:22', '2020-10-21 09:18:22', NULL, '{\"name_ar\":\"cds\",\"name_en\":\"dsadsa\",\"address_ar\":\"dsadsa\",\"address_en\":\"dsadsad\",\"desc_ar\":\"<div>dsdsadsad<\\/div>\",\"desc_en\":\"<div>dasdasd<\\/div>\",\"is_open\":0,\"open_from\":null,\"open_to\":null,\"active\":1,\"parent_id\":6}'),
(97, '91d14244-12b6-49ac-b971-d8fd2736edb5', 1, 'Create', 'App\\General\\PaymentMethod', 1, 'App\\General\\PaymentMethod', 1, 'App\\General\\PaymentMethod', 1, '', 'finished', '', '2020-10-21 09:24:19', '2020-10-21 09:24:19', NULL, '{\"name_ar\":\"\\u0627\\u0631\\u0633\\u0627\\u0644 \\u0645\\u0646\\u062f\\u0648\\u0628\",\"name_en\":\"send delegate\",\"active\":1,\"type\":\"1\"}'),
(98, '91d146a8-08e7-4d0e-95d0-59a34b898d61', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 09:36:36', '2020-10-21 09:36:36', NULL, '{\"company_id\":\"6\",\"subscription_id\":\"1\",\"from\":\"2020-10-21\",\"to\":\"2020-10-30\"}'),
(99, '91d1486a-b987-44d0-aafc-7a9d77f157f8', 1, 'Update', 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, '', 'finished', '', '2020-10-21 09:41:31', '2020-10-21 09:41:31', '{\"price\":1000,\"slider_num\":10,\"banner_num\":15}', '{\"price\":\"500\",\"slider_num\":\"5\",\"banner_num\":\"3\"}'),
(100, '91d14fb0-6e10-44be-81a3-ac0a8d466088', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 10:01:51', '2020-10-21 10:01:51', NULL, '{\"company_id\":\"6\",\"subscription_id\":\"1\",\"from\":\"2020-10-21\",\"to\":\"2020-11-20\"}'),
(101, '91d15052-892e-458c-a138-4afb5ea9bd8f', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 10:03:37', '2020-10-21 10:03:37', NULL, '{\"company_id\":\"6\",\"subscription_id\":\"1\",\"from\":\"2020-10-21\",\"to\":\"2020-10-31\"}'),
(103, '91d151c3-854c-4328-af2e-a0205a7b1d8c', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 10:07:39', '2020-10-21 10:07:39', NULL, '{\"company_id\":\"6\",\"subscription_id\":\"1\",\"from\":\"2020-10-21\",\"to\":\"2020-10-29\"}'),
(104, '91d15393-0eb6-49bd-a343-e976f9f92286', 1, 'Attach', 'App\\Company\\Company', 6, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 10:12:43', '2020-10-21 10:12:43', NULL, '{\"company_id\":\"6\",\"subscription_id\":\"1\",\"from\":\"2020-10-21\",\"to\":\"2020-10-30\"}'),
(112, '91d15e13-b32e-4f91-b6cc-478b336c4480', 1, 'Attach Subscription', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'a:5:{s:15:\"subscription_id\";s:1:\"1\";s:4:\"from\";s:10:\"2020-10-21\";s:2:\"to\";s:10:\"2020-11-20\";s:13:\"paymentMethod\";s:1:\"1\";s:14:\"payment_status\";i:1;}', 'finished', '', '2020-10-21 10:42:05', '2020-10-21 10:42:05', NULL, NULL),
(117, '91d17aab-9606-4362-87c6-3bf14993d7c5', 1, 'Attach Ads', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'a:5:{s:11:\"ad_location\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:3:\"url\";s:32:\"https://almurafiq.dev-krito.com/\";s:3:\"top\";i:1;s:5:\"image\";s:45:\"ZRoi1bVQoaxXBNGQOvMXSPxSrnpvGRvf2mM0is4n.jpeg\";}', 'finished', '', '2020-10-21 12:02:02', '2020-10-21 12:02:02', NULL, NULL),
(118, '91d1840d-cadb-4255-a794-d13c6efc405e', 1, 'Attach', 'App\\Affilate\\Affilate', 8, 'App\\Company\\Company', 6, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-21 12:28:16', '2020-10-21 12:28:16', NULL, '{\"affilate_id\":\"8\",\"company_id\":\"6\"}'),
(119, '91d18878-768e-40a8-91f7-ae2239981223', 1, 'Update', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, '', 'finished', '', '2020-10-21 12:40:37', '2020-10-21 12:40:37', '{\"is_open\":0}', '{\"is_open\":1}'),
(120, '91d188ad-96ac-4c98-9b42-35686642e2ad', 1, 'Update', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, '', 'finished', '', '2020-10-21 12:41:12', '2020-10-21 12:41:12', '{\"name_ar\":\"mahmoud\",\"name_en\":\"mahmoud\",\"address_en\":\"xsaxsa\"}', '{\"name_ar\":\"\\u0632\\u0627\\u0643\\u0633\",\"name_en\":\"zacks\",\"address_en\":\"nasir city\"}'),
(121, '91d30781-8230-4411-a213-11617a1b33f5', 1, 'Create', 'App\\General\\Currency', 1, 'App\\General\\Currency', 1, 'App\\General\\Currency', 1, '', 'finished', '', '2020-10-22 06:31:40', '2020-10-22 06:31:40', NULL, '{\"name_ar\":\"\\u0631\\u064a\\u0627\\u0644 \\u0633\\u0639\\u0648\\u062f\\u0649\",\"name_en\":\"sr\",\"symbol\":\"\\u0631 \\u0633\",\"country_code\":\"sa\",\"country_name\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\\u0647\",\"dial_code\":\"+966\",\"size_phone\":\"11\",\"exchange_rate\":\"1\",\"exchange_rate_usd\":\"1\",\"active\":1,\"default\":0}'),
(122, '91d3084f-40ee-475a-a23f-f62b60c82528', 1, 'Create', 'App\\General\\Country', 2, 'App\\General\\Country', 2, 'App\\General\\Country', 2, '', 'finished', '', '2020-10-22 06:33:55', '2020-10-22 06:33:55', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0647\",\"name_en\":\"soudia\",\"currency_id\":1,\"icon\":\"\\/uploads\\/countries\\/10kfATxZh3dhii8eoOOZ5FVYYcrV0Z1CobFKzX7bjio23GFNAH.png\",\"active\":1,\"default\":0}'),
(123, '91d30899-99bf-433c-8733-e6197f33367a', 1, 'Create', 'App\\General\\City', 1, 'App\\General\\City', 1, 'App\\General\\City', 1, '', 'finished', '', '2020-10-22 06:34:44', '2020-10-22 06:34:44', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"name_en\":\"elryad\",\"country_id\":2,\"active\":1}'),
(124, '91d308c6-d5ed-49c6-bbdd-5835be5b05af', 1, 'Create', 'App\\General\\Area', 1, 'App\\General\\Area', 1, 'App\\General\\Area', 1, '', 'finished', '', '2020-10-22 06:35:13', '2020-10-22 06:35:13', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u062f\\u0645\\u0627\\u0645\",\"name_en\":\"eldmama\",\"city_id\":1,\"active\":1}'),
(125, '91d308e3-583b-4f7c-ac14-f6f37219dd72', 1, 'Create', 'App\\General\\Zone', 1, 'App\\General\\Zone', 1, 'App\\General\\Zone', 1, '', 'finished', '', '2020-10-22 06:35:32', '2020-10-22 06:35:32', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u062d\\u0649 7\",\"name_en\":\"7\",\"area_id\":1}'),
(126, '91d30984-88f4-4641-a322-ddcee0b80054', 1, 'Create', 'App\\Customer\\Customer', 1, 'App\\Customer\\Customer', 1, 'App\\Customer\\Customer', 1, '', 'finished', '', '2020-10-22 06:37:18', '2020-10-22 06:37:18', NULL, '{\"updated_at\":\"2020-10-22T08:37:18.000000Z\",\"created_at\":\"2020-10-22T08:37:18.000000Z\",\"id\":1}'),
(127, '91d3098e-fb65-42ca-89ac-4951706c4578', 1, 'Delete', 'App\\Customer\\Customer', 1, 'App\\Customer\\Customer', 1, 'App\\Customer\\Customer', 1, '', 'finished', '', '2020-10-22 06:37:24', '2020-10-22 06:37:24', NULL, NULL),
(128, '91d30a4a-a2ff-40bc-aad6-794888891c1f', 1, 'Create', 'App\\General\\Admin', 3, 'App\\General\\Admin', 3, 'App\\General\\Admin', 3, '', 'finished', '', '2020-10-22 06:39:27', '2020-10-22 06:39:27', NULL, '{\"type\":\"2\"}'),
(129, '91d30b78-0de4-420b-a4c0-92924a42ec6b', 1, 'Create', 'App\\General\\Admin', 4, 'App\\General\\Admin', 4, 'App\\General\\Admin', 4, '', 'finished', '', '2020-10-22 06:42:45', '2020-10-22 06:42:45', NULL, '{\"type\":\"2\"}'),
(130, '91d30bde-c42a-48d6-a906-33be8398d268', 1, 'Create', 'App\\Affilate\\Affilate', 9, 'App\\Affilate\\Affilate', 9, 'App\\Affilate\\Affilate', 9, '', 'finished', '', '2020-10-22 06:43:52', '2020-10-22 06:43:52', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f9146422e6a6\"}'),
(131, '91d3132a-86ee-41e0-b6b9-68c4f34038d3', 1, 'Attach Subscription', 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'App\\Company\\Company', 6, 'a:5:{s:15:\"subscription_id\";s:1:\"1\";s:4:\"from\";s:10:\"2020-10-06\";s:2:\"to\";s:10:\"2020-10-24\";s:13:\"paymentMethod\";s:1:\"1\";s:14:\"payment_status\";i:0;}', 'finished', '', '2020-10-22 07:04:16', '2020-10-22 07:04:16', NULL, NULL),
(132, '91d3174c-1ac2-4143-ad26-0278642e477a', 1, 'Create', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, '', 'finished', '', '2020-10-22 07:15:49', '2020-10-22 07:15:49', NULL, '{\"name_ar\":\"\\u0643\\u0646\\u062a\\u0627\\u0643\\u0649\",\"name_en\":\"kfc\",\"address_ar\":\"zakria osman\",\"address_en\":\"11 zakria\",\"desc_ar\":\"<div dir=\\\"rtl\\\">\\u0637\\u0639\\u0627\\u0645 \\u062c\\u064a\\u062f<\\/div>\",\"desc_en\":\"<div>good food<\\/div>\",\"pdf\":\"\\/uploads\\/users\\/companies\\/pdf\\/bwMeoEmfzCzAcEcIUMSb6uZo0a1zGm9kbpaGeaWI5kCcneA2PY.pdf\",\"open_from\":\"2020-10-21T22:00:00.000000Z\",\"open_to\":\"2020-10-22T05:00:00.000000Z\",\"active\":1,\"is_open\":1,\"closed_reason\":null}'),
(133, '91d317ca-3434-46d4-8b51-cb7f2dbac803', 1, 'Create', 'App\\User', 5, 'App\\User', 5, 'App\\User', 5, '', 'finished', '', '2020-10-22 07:17:12', '2020-10-22 07:17:12', NULL, '{\"name\":\"ahmed\",\"email\":\"ahmed@mail.com\",\"avatar\":\"\\/uploads\\/users\\/UAcyNJJJtMHK63pj35J1mGmdisvKYWloarz2elCITfwc2eUz5C.png\",\"birth_date\":\"2020-10-22T00:00:00.000000Z\",\"gender\":\"Male\",\"default_lang\":\"en\",\"phone\":\"+201100266528\",\"city_id\":null,\"area_id\":null,\"zone_id\":null,\"national_id\":\"29809878908\",\"active\":1,\"userable_id\":10,\"userable_type\":\"App\\\\Company\\\\Company\"}'),
(134, '91d31bd1-e977-410e-978c-46375bfde165', 1, 'Create', 'App\\General\\PaymentMethod', 2, 'App\\General\\PaymentMethod', 2, 'App\\General\\PaymentMethod', 2, '', 'finished', '', '2020-10-22 07:28:28', '2020-10-22 07:28:28', NULL, '{\"name_ar\":\"\\u0627\\u064a\\u062f\\u0627\\u0639 \\u0628\\u0646\\u0643\\u0649\",\"name_en\":\"bank\",\"active\":1,\"type\":\"3\"}'),
(135, '91d31c93-a1b7-436a-aea7-74faff303597', 1, 'Update', 'App\\General\\Payment', 2, 'App\\General\\Payment', 2, 'App\\General\\Payment', 2, '', 'finished', '', '2020-10-22 07:30:35', '2020-10-22 07:30:35', '{\"payment_status\":0}', '{\"payment_status\":1}'),
(136, '91d320a6-d659-4866-a35f-b746b82bd90d', 1, 'Attach', 'App\\Company\\Company', 10, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-22 07:41:59', '2020-10-22 07:41:59', NULL, '{\"company_id\":\"10\",\"subscription_id\":\"1\",\"from\":\"2020-10-20\",\"to\":\"2020-10-29\"}'),
(137, '91d320d1-b76f-47a1-80b3-745b8fcda8bf', 1, 'Attach', 'App\\Company\\Company', 10, 'App\\General\\Category', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-22 07:42:27', '2020-10-22 07:42:27', NULL, '{\"company_id\":\"10\",\"category_id\":\"1\"}'),
(138, '91d321a1-690b-4fa7-b60f-d43b7ae38be5', 1, 'Attach Subscription', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:5:{s:15:\"subscription_id\";s:1:\"1\";s:4:\"from\";s:10:\"2020-10-16\";s:2:\"to\";s:10:\"2020-10-30\";s:13:\"paymentMethod\";s:1:\"2\";s:14:\"payment_status\";i:1;}', 'finished', '', '2020-10-22 07:44:43', '2020-10-22 07:44:43', NULL, NULL),
(139, '91d3223b-d499-459d-9959-b95ac5f69966', 1, 'Create', 'App\\Affilate\\Affilate', 10, 'App\\Affilate\\Affilate', 10, 'App\\Affilate\\Affilate', 10, '', 'finished', '', '2020-10-22 07:46:24', '2020-10-22 07:46:24', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f9154ee5d116\"}'),
(140, '91d36d6a-cfe8-490e-94fc-cd84d0b914d0', 1, 'Detach', 'App\\Company\\Company', 10, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-22 11:16:38', '2020-10-22 11:16:38', NULL, NULL),
(141, '91d36d6b-85df-47c4-8951-bdbc39037df6', 1, 'Detach', 'App\\Company\\Company', 10, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-22 11:16:38', '2020-10-22 11:16:38', NULL, NULL),
(152, '91d37280-cefc-4121-99a2-fe9b56902cb7', 1, 'Attach Subscription', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:4:{s:15:\"subscription_id\";s:1:\"1\";s:4:\"from\";s:10:\"2020-10-22\";s:13:\"paymentMethod\";s:1:\"1\";s:14:\"payment_status\";i:0;}', 'finished', '', '2020-10-22 11:30:51', '2020-10-22 11:30:51', NULL, NULL),
(153, '91d3753c-8d24-41e0-b1fe-03238ac24e99', 1, 'Create', 'App\\General\\Country', 3, 'App\\General\\Country', 3, 'App\\General\\Country', 3, '', 'finished', '', '2020-10-22 11:38:30', '2020-10-22 11:38:30', NULL, '{\"name_ar\":\"vfcsz\",\"name_en\":\"fsdf\",\"icon\":\"\\/uploads\\/countries\\/nUtRfL1AvTAWuYwy3ur6VZNdUmjszb3fnr2IICMuz5Cs9mkzCZ.png\",\"active\":1,\"default\":1}'),
(154, '91d3755b-fabc-41a9-8a76-4d537461b02e', 1, 'Delete', 'App\\General\\Country', 3, 'App\\General\\Country', 3, 'App\\General\\Country', 3, '', 'finished', '', '2020-10-22 11:38:50', '2020-10-22 11:38:50', NULL, NULL),
(155, '91d37560-85fd-4fc6-aed3-59dc4803ca10', 1, 'Restore', 'App\\General\\Country', 3, 'App\\General\\Country', 3, 'App\\General\\Country', 3, '', 'finished', '', '2020-10-22 11:38:53', '2020-10-22 11:38:53', NULL, NULL),
(156, '91d37564-597a-4caf-a4c6-db345b201564', 1, 'Delete', 'App\\General\\Country', 3, 'App\\General\\Country', 3, 'App\\General\\Country', 3, '', 'finished', '', '2020-10-22 11:38:56', '2020-10-22 11:38:56', NULL, NULL),
(157, '91d37574-3418-4854-8a05-686e2c25c503', 1, 'Create', 'App\\General\\Country', 4, 'App\\General\\Country', 4, 'App\\General\\Country', 4, '', 'finished', '', '2020-10-22 11:39:06', '2020-10-22 11:39:06', NULL, '{\"name_ar\":\"fvdxg\",\"name_en\":\"gfdgfdg\",\"icon\":\"\\/uploads\\/countries\\/BhKskEduAB70yKQw5aOCSsiweqVccrBmZfBAFZvCNMiAhU3ZFb.png\",\"active\":1}'),
(158, '91d3758e-04e5-4651-a2f4-04efc656e801', 1, 'Delete', 'App\\General\\Country', 4, 'App\\General\\Country', 4, 'App\\General\\Country', 4, '', 'finished', '', '2020-10-22 11:39:23', '2020-10-22 11:39:23', NULL, NULL),
(159, '91d37a1f-2c01-48cf-aa8b-2f21d1c05ae0', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:5:{s:11:\"ad_location\";s:1:\"1\";s:4:\"type\";s:1:\"2\";s:3:\"top\";i:1;s:6:\"active\";i:1;s:5:\"image\";s:44:\"NqoHEcCA2wKF12IwWvLoSk7qy8wDNz09ZhnhoZHx.png\";}', 'finished', '', '2020-10-22 11:52:09', '2020-10-22 11:52:09', NULL, NULL),
(160, '91d37ba5-06bc-4a2f-993e-bdde2e1efdde', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:5:{s:11:\"ad_location\";s:1:\"1\";s:4:\"type\";s:1:\"2\";s:3:\"top\";i:1;s:6:\"active\";i:1;s:5:\"image\";s:44:\"b89lhtN5v2Dcuh8Qi2cXYkYIDKvZKfxOtlSfrVHv.png\";}', 'finished', '', '2020-10-22 11:56:25', '2020-10-22 11:56:25', NULL, NULL),
(161, '91d37bed-1bc3-4906-8112-cdc0344ead72', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:5:{s:11:\"ad_location\";s:1:\"2\";s:4:\"type\";s:1:\"1\";s:3:\"top\";i:1;s:6:\"active\";i:1;s:5:\"image\";s:44:\"2tKkHdAMcHUPoiBX9ApsxiwpWBsOEgGq4JAaxZlg.png\";}', 'finished', '', '2020-10-22 11:57:12', '2020-10-22 11:57:12', NULL, NULL),
(162, '91d37c96-90f1-4255-9557-9f7d8449b0b1', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:4:{s:11:\"ad_location\";s:1:\"2\";s:4:\"type\";s:1:\"1\";s:3:\"top\";i:1;s:6:\"active\";i:1;}', 'finished', '', '2020-10-22 11:59:03', '2020-10-22 11:59:03', NULL, NULL),
(163, '91d37ce4-f924-44d9-8b92-b59e8583263b', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:4:{s:11:\"ad_location\";s:1:\"2\";s:4:\"type\";s:1:\"1\";s:3:\"top\";i:1;s:6:\"active\";i:1;}', 'finished', '', '2020-10-22 11:59:55', '2020-10-22 11:59:55', NULL, NULL),
(164, '91d37d0f-3eba-4b36-ac7d-609c45cc64dc', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:4:{s:11:\"ad_location\";s:1:\"1\";s:4:\"type\";s:1:\"2\";s:3:\"top\";i:1;s:6:\"active\";i:1;}', 'finished', '', '2020-10-22 12:00:22', '2020-10-22 12:00:22', NULL, NULL),
(165, '91d37dc3-3710-4be5-af9b-a012276ba0ee', 1, 'Attach Ads', 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'App\\Company\\Company', 10, 'a:4:{s:11:\"ad_location\";s:1:\"2\";s:4:\"type\";s:1:\"1\";s:3:\"top\";i:1;s:6:\"active\";i:1;}', 'finished', '', '2020-10-22 12:02:20', '2020-10-22 12:02:20', NULL, NULL),
(166, '91d38dd6-a51b-4663-8f74-987fdd6e02e7', 1, 'Create', 'App\\General\\Ticket', 2, 'App\\General\\Ticket', 2, 'App\\General\\Ticket', 2, '', 'finished', '', '2020-10-22 12:47:17', '2020-10-22 12:47:17', NULL, '{\"user_id\":5,\"code\":\"237\",\"subject\":\"\\u0645\\u0634\\u0643\\u0644\\u0647 \\u0645\\u0639 \\u0639\\u0645\\u064a\\u0644\",\"details\":\"<div dir=\\\"rtl\\\">\\u062a\\u0627\\u062e\\u064a\\u0631 \\u062a\\u0648\\u0635\\u064a\\u0644&nbsp;<\\/div>\",\"type\":\"2\"}'),
(167, '91d38eee-b715-44ef-ba08-c19b389644da', 1, 'Create', 'App\\General\\TicketReply', 2, 'App\\General\\TicketReply', 2, 'App\\General\\TicketReply', 2, '', 'finished', '', '2020-10-22 12:50:21', '2020-10-22 12:50:21', NULL, '{\"user_id\":5,\"ticket_id\":2,\"reply\":\"<div dir=\\\"rtl\\\">\\u0646\\u062a\\u0627\\u0644\\u0646\\u0642\\u0627\\u0644\\u0646\\u0641\\u0627\\u0644\\u0646\\u0641\\u0646\\u0644<\\/div>\"}');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_mark` text COLLATE utf8mb4_unicode_ci,
  `address_details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` bigint(20) NOT NULL DEFAULT '0',
  `lon` bigint(20) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2020-10-18 18:28:04', '2020-10-18 18:29:18', NULL),
(2, 2, '2020-10-18 18:29:28', '2020-10-18 18:29:28', NULL),
(3, 2, '2020-10-22 06:39:27', '2020-10-22 06:39:27', NULL),
(4, 2, '2020-10-22 06:42:45', '2020-10-22 06:42:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_subsription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('banner','slider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_location` enum('category','special','home') COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `company_id`, `subscription_id`, `company_subsription_id`, `image`, `top`, `type`, `ad_location`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1, 12, NULL, 1, 'banner', 'category', 'https://almurafiq.dev-krito.com/', '2020-10-21 12:02:02', '2020-10-21 12:02:02', NULL),
(2, 10, 1, 16, NULL, 1, 'slider', 'category', NULL, '2020-10-22 11:52:09', '2020-10-22 11:52:09', NULL),
(3, 10, 1, 16, NULL, 1, 'slider', 'category', NULL, '2020-10-22 11:56:25', '2020-10-22 11:56:25', NULL),
(4, 10, 1, 16, NULL, 1, 'banner', 'special', NULL, '2020-10-22 11:57:12', '2020-10-22 11:57:12', NULL),
(5, 10, 1, 16, NULL, 1, 'banner', 'special', NULL, '2020-10-22 11:59:03', '2020-10-22 11:59:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affilates`
--

CREATE TABLE `affilates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ssd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_companies` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affilates`
--

INSERT INTO `affilates` (`id`, `ssd`, `total_companies`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '5f8cab9470b77', 0, '2020-10-18 18:54:46', '2020-10-18 18:54:46', NULL),
(8, '5f8cac1b5c568', 0, '2020-10-18 18:57:00', '2020-10-18 18:57:00', NULL),
(9, '5f9146422e6a6', 0, '2020-10-22 06:43:52', '2020-10-22 06:43:52', NULL),
(10, '5f9154ee5d116', 0, '2020-10-22 07:46:24', '2020-10-22 07:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affilate_companies`
--

CREATE TABLE `affilate_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `affilate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affilate_companies`
--

INSERT INTO `affilate_companies` (`id`, `company_id`, `affilate_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name_ar`, `name_en`, `city_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الدمام', 'eldmama', 1, 1, '2020-10-22 06:35:13', '2020-10-22 06:35:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `in_home` tinyint(1) NOT NULL DEFAULT '0',
  `read_num` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `active`, `in_home`, `read_num`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vxv', 'vxvx', '<div>vxfvxf</div>', '<div>vxvfxv</div>', 1, 1, 0, '2020-10-17 20:56:12', '2020-10-17 21:09:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `slug`, `active`, `top`, `parent_id`, `created_at`, `updated_at`, `deleted_at`, `type`) VALUES
(1, 'سيارات', 'cars', '9JkqqX', 1, 1, 0, '2020-10-19 04:05:25', '2020-10-21 09:07:37', NULL, 0),
(2, 'بي ام', 'BM', 'au0w6O', 1, 0, 1, '2020-10-19 04:09:41', '2020-10-21 07:07:55', NULL, 1),
(3, 'sub sub', 'sub sub', 'CRUx4J', 1, 0, 4, '2020-10-19 04:10:52', '2020-10-21 07:52:08', NULL, 2),
(4, 'نيسان', 'nissan', 'DZVOJP', 1, 0, 1, '2020-10-21 07:04:42', '2020-10-21 07:04:42', NULL, 1),
(5, 'اكس 3', 'X3', 'KUQuFe', 1, 0, 2, '2020-10-21 07:46:30', '2020-10-21 07:52:53', NULL, 2),
(6, 'فورد', 'ford', 'COVXP6', 1, 0, 1, '2020-10-21 07:47:57', '2020-10-21 07:47:57', NULL, 1),
(7, 'فورد اى حاجه', 'ford ay 7aga', 'VbzB4B', 1, 0, 6, '2020-10-21 07:48:40', '2020-10-21 07:48:40', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الرياض', 'elryad', 2, 1, '2020-10-22 06:34:44', '2020-10-22 06:34:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `reson` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_num` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `is_open` tinyint(1) NOT NULL DEFAULT '1',
  `closed_reason` text COLLATE utf8mb4_unicode_ci,
  `open_from` timestamp NULL DEFAULT NULL,
  `open_to` datetime DEFAULT NULL,
  `holiday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `phone1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapshat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_count` bigint(20) NOT NULL DEFAULT '0',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_user_count` bigint(20) NOT NULL DEFAULT '0',
  `total_rating` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `address_ar`, `address_en`, `pdf`, `branch_num`, `active`, `is_open`, `closed_reason`, `open_from`, `open_to`, `holiday`, `parent_id`, `phone1`, `phone2`, `tel`, `fax`, `facebook`, `instagram`, `twitter`, `snapshat`, `whatsapp`, `googleplus`, `website`, `email`, `visit_count`, `lat`, `lon`, `rate_user_count`, `total_rating`, `created_at`, `updated_at`, `deleted_at`, `image`, `country_id`) VALUES
(6, 'زاكس', 'zacks', '<div>xsax</div>', '<div>xsaxasx</div>', 'مدينه نصر', 'nasir city', NULL, 3, 1, 1, NULL, '2020-10-21 10:00:00', '2020-10-21 15:00:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-21 06:21:46', '2020-10-21 12:41:12', NULL, '', 0),
(7, 'mahmoud', 'mahmoud', '<div>cccc</div>', '<div>ccccc</div>', 'مدينه نصر', 'cdscds', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-21 06:22:39', '2020-10-21 06:24:12', NULL, '', 0),
(8, 'xsx', 'xsxs', '<div>xsaxx</div>', '<div>sx</div>', 'sxxxx', 'xxxxx', NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-21 09:16:47', '2020-10-21 09:16:47', NULL, '', 0),
(9, 'cds', 'dsadsa', '<div>dsdsadsad</div>', '<div>dasdasd</div>', 'dsadsa', 'dsadsad', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-21 09:18:22', '2020-10-21 09:18:22', NULL, '', 0),
(10, 'كنتاكى', 'kfc', '<div dir=\"rtl\">طعام جيد</div>', '<div>good food</div>', 'zakria osman', '11 zakria', '/uploads/users/companies/pdf/bwMeoEmfzCzAcEcIUMSb6uZo0a1zGm9kbpaGeaWI5kCcneA2PY.pdf', 0, 1, 1, NULL, '2020-10-21 20:00:00', '2020-10-22 05:00:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-22 07:15:49', '2020-10-22 07:15:49', NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_subsriptions`
--

CREATE TABLE `company_subsriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `slider_num` int(11) NOT NULL DEFAULT '1',
  `banner_num` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_subsriptions`
--

INSERT INTO `company_subsriptions` (`id`, `company_id`, `subscription_id`, `from`, `to`, `price`, `slider_num`, `banner_num`, `created_at`, `updated_at`, `deleted_at`, `payment_id`) VALUES
(12, 6, 1, '2020-10-21', '2020-11-20', 500, 5, 3, '2020-10-21 10:42:05', '2020-10-21 10:42:05', NULL, 1),
(13, 6, 1, '2020-10-06', '2020-10-24', 500, 5, 3, '2020-10-22 07:04:16', '2020-10-22 07:04:16', NULL, 2),
(16, 10, 1, '2020-10-22', '2020-11-21', 500, 5, 3, '2020-10-22 11:30:51', '2020-10-22 11:30:51', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `compay_categories`
--

CREATE TABLE `compay_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compay_categories`
--

INSERT INTO `compay_categories` (`id`, `company_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1, NULL, NULL, NULL),
(2, 10, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `currency_id`, `icon`, `active`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'السعوديه', 'soudia', 1, '/uploads/countries/10kfATxZh3dhii8eoOOZ5FVYYcrV0Z1CobFKzX7bjio23GFNAH.png', 1, 0, '2020-10-22 06:33:55', '2020-10-22 06:33:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_phone` int(10) UNSIGNED NOT NULL,
  `exchange_rate` double(10,8) NOT NULL DEFAULT '1.00000000',
  `exchange_rate_usd` double(10,8) NOT NULL DEFAULT '1.00000000',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name_ar`, `name_en`, `symbol`, `active`, `country_code`, `country_name`, `dial_code`, `size_phone`, `exchange_rate`, `exchange_rate_usd`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ريال سعودى', 'sr', 'ر س', 1, 'sa', 'سعوديه', '+966', 11, 1.00000000, 1.00000000, 0, '2020-10-22 06:31:39', '2020-10-22 06:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-10-22 06:37:18', '2020-10-22 06:37:24', '2020-10-22 06:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileable_id` bigint(20) UNSIGNED NOT NULL,
  `fileable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `fileable_id`, `fileable_type`, `source`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'App\\General\\Blog', '/uploads/files/IExbgxywpyGQ8QFc99O4qTL8BiVkr4xyJSVAMxs5Wz9r8QusfB.png', 1, '2020-10-17 21:08:40', '2020-10-17 21:08:40', NULL),
(2, 1, 'App\\General\\Blog', '/uploads/files/A5tujmNNW5TJ4HqjXx39zsTyRpZheoWBC21hVLk53g0OLqXHYM.jpg', 2, '2020-10-17 21:16:06', '2020-10-17 21:16:06', NULL),
(3, 1, 'App\\General\\AboutUs', '/uploads/files/7HmjbrR7y9Jj6slOQyxymPFVKGDJb5KtoTTK7iOYQ1WAPT98PU.jpg', 1, '2020-10-20 10:51:52', '2020-10-20 10:51:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` bigint(20) NOT NULL DEFAULT '0',
  `lon` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `favicon`, `address_ar`, `address_en`, `site_ar`, `site_en`, `lat`, `lon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '/uploads/generalSettings/jj9BwWOiYmRpUUPjFdCFacwlyHtfGZioGURThhqRZNR6qQFWso.png', '/uploads/generalSettings/lzhzpItKm5Jumtm5txfqt111ZJilsHMCtN7l3EdAwbLriRTdpO.png', 'cdsd', 'dsds', 'المرافق', 'Al-murafiq', 0, 0, '2020-10-18 19:30:20', '2020-10-18 19:30:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2018_01_01_000000_create_action_events_table', 1),
(2, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_16_232446_create_about_us_table', 1),
(5, '2020_10_16_232446_create_addresses_table', 1),
(6, '2020_10_16_232446_create_admins_table', 1),
(7, '2020_10_16_232446_create_ads_table', 1),
(8, '2020_10_16_232446_create_affilate_companies_table', 1),
(9, '2020_10_16_232446_create_affilates_table', 1),
(10, '2020_10_16_232446_create_areas_table', 1),
(11, '2020_10_16_232446_create_blogs_table', 1),
(12, '2020_10_16_232446_create_business_settings_table', 1),
(13, '2020_10_16_232446_create_categories_table', 1),
(14, '2020_10_16_232446_create_cities_table', 1),
(15, '2020_10_16_232446_create_comment_likes_table', 1),
(16, '2020_10_16_232446_create_companies_table', 1),
(17, '2020_10_16_232446_create_company_subsriptions_table', 1),
(18, '2020_10_16_232446_create_compay_categories_table', 1),
(19, '2020_10_16_232446_create_contacts_table', 1),
(20, '2020_10_16_232446_create_countries_table', 1),
(21, '2020_10_16_232446_create_currencies_table', 1),
(22, '2020_10_16_232446_create_customers_table', 1),
(23, '2020_10_16_232446_create_files_table', 1),
(24, '2020_10_16_232446_create_general_settings_table', 1),
(25, '2020_10_16_232446_create_links_table', 1),
(26, '2020_10_16_232446_create_notification_users_table', 1),
(27, '2020_10_16_232446_create_notifications_table', 1),
(28, '2020_10_16_232446_create_payment_methods_table', 1),
(29, '2020_10_16_232446_create_payments_table', 1),
(30, '2020_10_16_232446_create_policies_table', 1),
(31, '2020_10_16_232446_create_reviews_table', 1),
(32, '2020_10_16_232446_create_searches_table', 1),
(33, '2020_10_16_232446_create_socials_table', 1),
(34, '2020_10_16_232446_create_statuses_table', 1),
(35, '2020_10_16_232446_create_subscriptions_table', 1),
(36, '2020_10_16_232446_create_ticket_replies_table', 1),
(37, '2020_10_16_232446_create_tickets_table', 1),
(38, '2020_10_16_232446_create_tokens_table', 1),
(39, '2020_10_16_232446_create_users_table', 1),
(40, '2020_10_16_232446_create_wishlists_table', 1),
(41, '2020_10_16_232446_create_zones_table', 1),
(42, '2020_10_16_232456_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ar` text COLLATE utf8mb4_unicode_ci,
  `body_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_users`
--

CREATE TABLE `notification_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `company_subsription_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `payment_details` longtext COLLATE utf8mb4_unicode_ci,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `payment_method_id`, `company_subsription_id`, `amount`, `payment_details`, `payment_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, 12, 500, NULL, 1, '2020-10-21 10:42:05', '2020-10-21 10:42:05', NULL),
(2, 4, 1, 13, 500, NULL, 1, '2020-10-22 07:04:16', '2020-10-22 07:30:35', NULL),
(3, 5, 2, 15, 500, NULL, 1, '2020-10-22 07:44:43', '2020-10-22 07:44:43', NULL),
(4, 5, 1, 16, 500, NULL, 0, '2020-10-22 11:30:51', '2020-10-22 11:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name_ar`, `name_en`, `active`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ارسال مندوب', 'send delegate', 1, 1, NULL, '2020-10-21 09:24:19', '2020-10-21 09:24:19'),
(2, 'ايداع بنكى', 'bank', 1, 3, NULL, '2020-10-22 07:28:28', '2020-10-22 07:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL,
  `likes_count` bigint(20) NOT NULL DEFAULT '0',
  `dislikens_count` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `icon` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `desc_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `slider_num` int(11) NOT NULL DEFAULT '0',
  `banner_num` int(11) NOT NULL DEFAULT '0',
  `total_company` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name_ar`, `name_en`, `price`, `days`, `active`, `desc_ar`, `desc_en`, `top`, `slider_num`, `banner_num`, `total_company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ultra', 'ultra', 500, 30, 1, '<div>ultra</div>', '<div>ultra</div>', 1, 5, 3, 0, '2020-10-20 11:56:18', '2020-10-21 09:41:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_status_priority` int(11) NOT NULL DEFAULT '1',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `ticket_status_priority`, `viewed`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 680, 1, 'cc', '<div>cdsc</div>', 1, 0, 0, '2020-10-20 10:42:54', '2020-10-20 10:42:54', NULL),
(2, 237, 5, 'مشكله مع عميل', '<div dir=\"rtl\">تاخير توصيل&nbsp;</div>', 1, 0, 2, '2020-10-22 12:47:17', '2020-10-22 12:47:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '<div>csacsacd</div>', '2020-10-20 10:49:01', '2020-10-20 10:49:01', NULL),
(2, 2, 5, '<div dir=\"rtl\">نتالنقالنفالنفنل</div>', '2020-10-22 12:50:21', '2020-10-22 12:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fcm_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userable_id` bigint(20) UNSIGNED NOT NULL,
  `userable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lang` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reset_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider`, `provider_id`, `name`, `userable_id`, `userable_type`, `email`, `email_verified_at`, `remember_token`, `password`, `avatar`, `birth_date`, `gender`, `default_lang`, `phone`, `city_id`, `area_id`, `zone_id`, `reset_code`, `national_id`, `api_token`, `fcm_token`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, 'SuperAdmin', 1, 'App\\General\\Admin', 'SuperAdmin@mail.com', NULL, NULL, '$2y$10$1WRWcPO7SpRl1.Ngb0LeNeoV070gFi59diRet5hpAOJbijBuknk9S', '/uploads/users/lKHPDBHiCTn8urgkGQKRhHF2BhldO0AsttqUutBqu6fNetdmH4.png', NULL, 'Male', 'ar', '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-16 22:04:00', '2020-10-20 03:22:39', NULL),
(2, NULL, NULL, 'mahmoud', 8, 'App\\Affilate\\Affilate', 'mahmoudn509@gmail.com', NULL, NULL, '$2y$10$y3vWJqbHrokx.QjIUXrroOS.5mdI3Z/h8JLLURVECQaIly/Mj7Vcm', '/uploads/users/jQQ8XAJM9A2GRcnDQrfIVETR1mHwVHYmHYzeX8NwdWqlxr4d5v.jpg', '1995-05-30', NULL, 'ar', '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-20 03:26:54', '2020-10-20 03:26:54', NULL),
(4, NULL, NULL, 'zacks', 6, 'App\\Company\\Company', 'zacks@mail.com', NULL, NULL, '$2y$10$54UhYi7GFM4bFfWeCOWxyuwk4qqcCYdkBMBZRhySeXYnCwY0.s2.S', '/uploads/users/ZDixGxYpNroli3tW4hKE7oVAvJBxkndMEd9RWY7oJCba5iYVxW.jpg', NULL, 'Male', 'ar', '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-21 06:26:03', '2020-10-21 06:26:03', NULL),
(5, NULL, NULL, 'ahmed', 10, 'App\\Company\\Company', 'ahmed@mail.com', NULL, NULL, '$2y$10$LioD.xGLqUgtI9jMucN0z.9/oIcEfBs6nuYGMQhXm5qOapPXTzw0a', '/uploads/users/UAcyNJJJtMHK63pj35J1mGmdisvKYWloarz2elCITfwc2eUz5C.png', '2020-10-22', 'Male', 'en', '+201100266528', NULL, NULL, NULL, NULL, '29809878908', NULL, NULL, 1, '2020-10-22 07:17:12', '2020-10-22 07:17:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name_ar`, `name_en`, `area_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الحى 7', '7', 1, 1, '2020-10-22 06:35:32', '2020-10-22 06:35:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_area_id_foreign` (`area_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_company_id_foreign` (`company_id`),
  ADD KEY `ads_subscription_id_foreign` (`subscription_id`);

--
-- Indexes for table `affilates`
--
ALTER TABLE `affilates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affilate_companies`
--
ALTER TABLE `affilate_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affilate_companies_company_id_foreign` (`company_id`),
  ADD KEY `affilate_companies_affilate_id_foreign` (`affilate_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_id_foreign` (`city_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_settings_type_unique` (`type`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_likes_user_id_foreign` (`user_id`),
  ADD KEY `comment_likes_review_id_foreign` (`review_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_subsriptions`
--
ALTER TABLE `company_subsriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_subsriptions_company_id_foreign` (`company_id`),
  ADD KEY `company_subsriptions_subscription_id_foreign` (`subscription_id`);

--
-- Indexes for table `compay_categories`
--
ALTER TABLE `compay_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compay_categories_company_id_foreign` (`company_id`),
  ADD KEY `compay_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_ar_unique` (`name_ar`),
  ADD UNIQUE KEY `countries_name_en_unique` (`name_en`),
  ADD KEY `countries_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_ar_unique` (`name_ar`),
  ADD UNIQUE KEY `currencies_name_en_unique` (`name_en`),
  ADD UNIQUE KEY `currencies_country_code_unique` (`country_code`),
  ADD UNIQUE KEY `currencies_country_name_unique` (`country_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `notification_users`
--
ALTER TABLE `notification_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_users_user_id_foreign` (`user_id`),
  ADD KEY `notification_users_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_company_id_foreign` (`company_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_code_unique` (`code`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_area_id_foreign` (`area_id`),
  ADD KEY `users_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_company_id_foreign` (`company_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zones_area_id_foreign` (`area_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affilates`
--
ALTER TABLE `affilates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `affilate_companies`
--
ALTER TABLE `affilate_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company_subsriptions`
--
ALTER TABLE `company_subsriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `compay_categories`
--
ALTER TABLE `compay_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_users`
--
ALTER TABLE `notification_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ads_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `affilate_companies`
--
ALTER TABLE `affilate_companies`
  ADD CONSTRAINT `affilate_companies_affilate_id_foreign` FOREIGN KEY (`affilate_id`) REFERENCES `affilates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affilate_companies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compay_categories`
--
ALTER TABLE `compay_categories`
  ADD CONSTRAINT `compay_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compay_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification_users`
--
ALTER TABLE `notification_users`
  ADD CONSTRAINT `notification_users_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `users_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
