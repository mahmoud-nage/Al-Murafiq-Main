-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 05:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al-murafiq`
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
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `in_home` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `original` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '91d5d8bf-5fd3-464b-a7cd-7b6612cb663d', 2, 'Create', 'App\\General\\Banks', 1, 'App\\General\\Banks', 1, 'App\\General\\Banks', 1, '', 'finished', '', '2020-10-23 16:08:24', '2020-10-23 16:08:24', NULL, '{\"bank_name_ar\":\"bank1\",\"bank_name_en\":\"bank1\",\"branch_name_ar\":\"bank1\",\"branch_name_en\":\"bank1\",\"owner_name_ar\":\"bank1\",\"owner_name_en\":\"bank1\",\"account_num\":\"bank1\",\"swift_num\":\"bank1\",\"logo\":\"\\/uploads\\/banks\\/nKcrvOILs91YeoSZwuLkr6hT5QXQOpxpuQfI2NrgqFc625pDrH.png\",\"active\":1}'),
(2, '91d5e53f-3c2e-46b3-8a24-e2d53f7ee477', 2, 'Create', 'App\\General\\City', 1, 'App\\General\\City', 1, 'App\\General\\City', 1, '', 'finished', '', '2020-10-23 16:43:21', '2020-10-23 16:43:21', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0647\",\"name_en\":\"cairo\",\"country_id\":3,\"active\":1}'),
(3, '91d5e5bc-3871-4e1b-88d2-0ae801d57f9a', 2, 'Create', 'App\\General\\Area', 1, 'App\\General\\Area', 1, 'App\\General\\Area', 1, '', 'finished', '', '2020-10-23 16:44:43', '2020-10-23 16:44:43', NULL, '{\"name_ar\":\"\\u0639\\u064a\\u0646 \\u0634\\u0645\\u0633\",\"name_en\":\"ain shams\",\"city_id\":1,\"active\":1}'),
(4, '91d5e618-5a9c-490b-bd55-c9cdfdcbce56', 2, 'Create', 'App\\General\\Zone', 1, 'App\\General\\Zone', 1, 'App\\General\\Zone', 1, '', 'finished', '', '2020-10-23 16:45:44', '2020-10-23 16:45:44', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0627\\u0646\\u062f\\u0644\\u0633\",\"name_en\":\"andalous\",\"area_id\":1}'),
(5, '91d5f6e8-c430-42c0-9f95-a4c48b9ac0fe', 2, 'Create', 'App\\General\\Country', 4, 'App\\General\\Country', 4, 'App\\General\\Country', 4, '', 'finished', '', '2020-10-23 17:32:45', '2020-10-23 17:32:45', NULL, '{\"name_ar\":\"\\u0633\\u0635\\u0635\\u0633\",\"name_en\":\"\\u064a\\u064a\\u0633\\u0634\\u064a\",\"icon\":\"\\/uploads\\/countries\\/8vS4Bkj8Aaxva8Waa5y7Rz5Qulj5hCl6QqlL54vZyzVaNMQkfZ.png\",\"active\":1}'),
(6, '91d5f6f3-fd96-49bd-9f1c-120e7b25aa6e', 2, 'Delete', 'App\\General\\Country', 4, 'App\\General\\Country', 4, 'App\\General\\Country', 4, '', 'finished', '', '2020-10-23 17:32:52', '2020-10-23 17:32:52', NULL, NULL),
(7, '91d61bcd-28a5-40cc-9b08-f352c749bc12', 2, 'Create', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-23 19:15:54', '2020-10-23 19:15:54', NULL, '{\"name_ar\":\"dsd\",\"name_en\":\"dsa\",\"address_ar\":\"dasd\",\"address_en\":\"dasd\",\"desc_ar\":\"<div>dasd<\\/div>\",\"desc_en\":\"<div>dsadas<\\/div>\",\"pdf\":\"\\/uploads\\/users\\/companies\\/pdf\\/snqZ5zmLWioB0Xndhm5ugWfLfEcljX48mDoRBBnvKZ1Ljy5UdA.pdf\",\"phone1\":\"01123003488\",\"phone2\":null,\"tel\":null,\"fax\":null,\"whatsapp\":null,\"email\":\"mahmoudn509@gmail.com\",\"facebook\":null,\"instagram\":null,\"twitter\":null,\"snapshat\":null,\"googleplus\":null,\"website\":null,\"open_from\":\"2020-10-23T10:00:00.000000Z\",\"open_to\":\"2020-10-23T11:00:00.000000Z\",\"holiday\":{\"Saturday\":true,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":false,\"Friday\":true},\"active\":1}'),
(8, '91d61cb4-547d-4dbe-9019-f12dd142748b', 2, 'Create', 'App\\General\\Category', 1, 'App\\General\\Category', 1, 'App\\General\\Category', 1, '', 'finished', '', '2020-10-23 19:18:26', '2020-10-23 19:18:26', NULL, '{\"name_ar\":\"cat1\",\"name_en\":\"cat1\",\"slug\":\"M5TWmr\",\"parent_id\":\"0\",\"active\":1,\"top\":1}'),
(9, '91d61ccb-fa80-4bfd-a327-4bc572ed189d', 2, 'Create', 'App\\General\\Category', 2, 'App\\General\\Category', 2, 'App\\General\\Category', 2, '', 'finished', '', '2020-10-23 19:18:41', '2020-10-23 19:18:41', NULL, '{\"name_ar\":\"sub\",\"name_en\":\"sub\",\"parent_id\":1,\"slug\":\"vkFr7E\",\"active\":1,\"type\":\"1\"}'),
(10, '91d61cec-8c38-404c-87ef-caa6f31400c1', 2, 'Create', 'App\\General\\Category', 3, 'App\\General\\Category', 3, 'App\\General\\Category', 3, '', 'finished', '', '2020-10-23 19:19:02', '2020-10-23 19:19:02', NULL, '{\"name_ar\":\"sub sub\",\"name_en\":\"sub sub\",\"parent_id\":2,\"slug\":\"1jWWXk\",\"active\":1,\"type\":\"2\"}'),
(11, '91d61d12-d110-4515-9096-e8c9d3ef8623', 2, 'Attach', 'App\\Company\\Company', 1, 'App\\General\\Category', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-23 19:19:28', '2020-10-23 19:19:28', NULL, '{\"company_id\":\"1\",\"category_id\":\"1\"}'),
(12, '91d61d61-9071-420e-9de2-4c78fcea4a8e', 2, 'Create', 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, 'App\\General\\Subscription', 1, '', 'finished', '', '2020-10-23 19:20:19', '2020-10-23 19:20:19', NULL, '{\"name_ar\":\"ultra\",\"name_en\":\"ultra\",\"desc_ar\":\"<div>ultra<\\/div>\",\"desc_en\":\"<div>ultra<\\/div>\",\"price\":\"1000\",\"days\":\"30\",\"slider_num\":\"5\",\"banner_num\":\"3\",\"top\":0,\"active\":1}'),
(15, '91d61ea1-d451-4b54-842d-f4baeced111b', 2, 'Create', 'App\\General\\PaymentMethod', 1, 'App\\General\\PaymentMethod', 1, 'App\\General\\PaymentMethod', 1, '', 'finished', '', '2020-10-23 19:23:49', '2020-10-23 19:23:49', NULL, '{\"name_ar\":\"\\u0643\\u0627\\u0634\",\"name_en\":\"cash\",\"active\":1,\"type\":\"1\"}'),
(22, '91d62b69-546e-49b2-b060-7c1f5ea40462', 2, 'Attach', 'App\\Company\\Company', 1, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-23 19:59:33', '2020-10-23 19:59:33', NULL, '{\"company_id\":\"1\",\"subscription_id\":\"1\",\"from\":\"2020-10-23\"}'),
(23, '91d62bc7-345e-42da-8202-2b2f3fb2ca81', 2, 'Update Attached', 'App\\Company\\Company', 1, 'App\\General\\Subscription', 1, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-23 20:00:35', '2020-10-23 20:00:35', '[]', '{\"from\":\"2020-10-23\"}'),
(24, '91d634c3-8114-466b-bf83-90c218ebe5d6', 2, 'Create', 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, 'App\\Affilate\\Affilate', 1, '', 'finished', '', '2020-10-23 20:25:42', '2020-10-23 20:25:42', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f9358648bc9f\"}'),
(25, '91d638e6-c32c-42b0-8249-793e530a3a31', 2, 'Create', 'App\\User', 3, 'App\\User', 3, 'App\\User', 3, '', 'finished', '', '2020-10-23 20:37:16', '2020-10-23 20:37:16', NULL, '{\"name\":\"mahmoud\",\"email\":\"mahmoudn509@gmail.com\",\"avatar\":\"\\/uploads\\/users\\/nos1zpDCvukrXB7Wv2UwZC9Jbvjgm7ZoQELYDKrnjoygWmsjNf.png\",\"birth_date\":null,\"gender\":null,\"default_lang\":\"ar\",\"phone\":\"01123003488\",\"city_id\":\"1\",\"area_id\":\"1\",\"zone_id\":\"1\",\"national_id\":null,\"active\":1,\"userable_id\":1,\"userable_type\":\"App\\\\Company\\\\Company\"}'),
(26, '91d63b2f-d76d-4760-949e-ea9e3465dc62', 2, 'Create', 'App\\General\\CampanySubsriptions', 11, 'App\\General\\CampanySubsriptions', 11, 'App\\General\\CampanySubsriptions', 11, '', 'finished', '', '2020-10-23 20:43:40', '2020-10-23 20:43:40', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-23\"}'),
(27, '91d64338-15b2-4442-9480-ab87d2554cac', 2, 'Create', 'App\\General\\Ad', 1, 'App\\General\\Ad', 1, 'App\\General\\Ad', 1, '', 'finished', '', '2020-10-23 21:06:07', '2020-10-23 21:06:07', NULL, '{\"company_id\":1,\"subscription_id\":1,\"ad_location\":\"1\",\"type\":\"2\",\"top\":1,\"image\":\"\\/uploads\\/ads\\/C9KKrcUnov3twKR0livcwhjmoMrQsGeQaXaPjaYIWT2Tvu0CAB.png\"}'),
(28, '91d64388-8a91-409a-9f83-33d937d2d4a7', 2, 'Create', 'App\\General\\CampanySubsriptions', 179363, 'App\\General\\CampanySubsriptions', 179363, 'App\\General\\CampanySubsriptions', 179363, '', 'finished', '', '2020-10-23 21:07:00', '2020-10-23 21:07:00', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-23T00:00:00.000000Z\"}'),
(29, '91d64ee7-fb15-4fb6-b794-fdf7898976eb', 2, 'Create', 'App\\General\\CampanySubsriptions', 580631, 'App\\General\\CampanySubsriptions', 580631, 'App\\General\\CampanySubsriptions', 580631, '', 'finished', '', '2020-10-23 21:38:48', '2020-10-23 21:38:48', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-23T00:00:00.000000Z\",\"to\":\"2020-11-22T00:00:00.000000Z\"}'),
(30, '91d65056-cc31-4b8a-a0bc-a0f2fbad58ca', 2, 'Create', 'App\\General\\CampanySubsriptions', 580633, 'App\\General\\CampanySubsriptions', 580633, 'App\\General\\CampanySubsriptions', 580633, '', 'finished', '', '2020-10-23 21:42:48', '2020-10-23 21:42:48', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-23T00:00:00.000000Z\",\"to\":\"2020-11-22T00:00:00.000000Z\",\"price\":1000,\"slider_num\":5,\"banner_num\":3,\"payment_id\":1}'),
(31, '91d65270-40a5-42ee-bd6b-2b828996190c', 2, 'Create', 'App\\General\\CampanySubsriptions', 580634, 'App\\General\\CampanySubsriptions', 580634, 'App\\General\\CampanySubsriptions', 580634, '', 'finished', '', '2020-10-23 21:48:41', '2020-10-23 21:48:41', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-23T00:00:00.000000Z\",\"to\":\"2020-11-22T00:00:00.000000Z\",\"price\":1000,\"slider_num\":5,\"banner_num\":3,\"payment_id\":2}'),
(32, '91d652d6-9a57-47eb-9d51-ff9cb7a23a87', 2, 'Delete', 'App\\General\\Ad', 1, 'App\\General\\Ad', 1, 'App\\General\\Ad', 1, '', 'finished', '', '2020-10-23 21:49:48', '2020-10-23 21:49:48', NULL, NULL),
(33, '91d65307-fc69-428e-94b9-e305d5a5f7d6', 2, 'Create', 'App\\General\\Ad', 2, 'App\\General\\Ad', 2, 'App\\General\\Ad', 2, '', 'finished', '', '2020-10-23 21:50:20', '2020-10-23 21:50:20', NULL, '{\"company_id\":1,\"subscription_id\":1,\"ad_location\":\"1\",\"type\":\"2\",\"top\":1,\"image\":\"\\/uploads\\/ads\\/zRFoU9ivIlZJfW2KO6ARHpvHXFHHZJMShGmqBGgr26paMHn9Ut.jpg\"}'),
(34, '91d65359-bc0a-417b-bf66-e194247c5454', 2, 'Delete', 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, '', 'finished', '', '2020-10-23 21:51:14', '2020-10-23 21:51:14', NULL, NULL),
(35, '91d65367-77f0-4eca-8fb5-40341952ee52', 2, 'Restore', 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, '', 'finished', '', '2020-10-23 21:51:23', '2020-10-23 21:51:23', NULL, NULL),
(36, '91d65378-9572-4948-847a-400def3c616e', 2, 'Delete', 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, 'App\\General\\Payment', 1, '', 'finished', '', '2020-10-23 21:51:34', '2020-10-23 21:51:34', NULL, NULL),
(37, '91d729f2-229e-4a12-a3ba-8ba616bebb7e', 2, 'Delete', 'App\\General\\CampanySubsriptions', 580634, 'App\\General\\CampanySubsriptions', 580634, 'App\\General\\CampanySubsriptions', 580634, '', 'finished', '', '2020-10-24 07:51:17', '2020-10-24 07:51:17', NULL, NULL),
(38, '91d72a01-a5f5-49df-a9c4-63d93f457571', 2, 'Create', 'App\\General\\CampanySubsriptions', 580635, 'App\\General\\CampanySubsriptions', 580635, 'App\\General\\CampanySubsriptions', 580635, '', 'finished', '', '2020-10-24 07:51:27', '2020-10-24 07:51:27', NULL, '{\"company_id\":1,\"subscription_id\":1,\"from\":\"2020-10-24T00:00:00.000000Z\",\"to\":\"2020-11-23T00:00:00.000000Z\",\"price\":1000,\"slider_num\":5,\"banner_num\":3,\"payment_id\":3}'),
(39, '91d72a3d-7562-4f27-8894-d7cfc0d77357', 2, 'Delete', 'App\\General\\Ad', 2, 'App\\General\\Ad', 2, 'App\\General\\Ad', 2, '', 'finished', '', '2020-10-24 07:52:06', '2020-10-24 07:52:06', NULL, NULL),
(40, '91d72a65-544a-449e-ba6c-a999552f5103', 2, 'Create', 'App\\General\\Ad', 3, 'App\\General\\Ad', 3, 'App\\General\\Ad', 3, '', 'finished', '', '2020-10-24 07:52:32', '2020-10-24 07:52:32', NULL, '{\"company_id\":1,\"subscription_id\":1,\"ad_location\":\"1\",\"type\":\"2\",\"top\":0,\"image\":\"\\/uploads\\/ads\\/kM0mcvkUWdKcnNEhQh7jkygdzjixkn5BelJ96IJXLb3B11rWP4.png\"}'),
(41, '91d72aac-7ae0-4779-ad82-c84f93106aa6', 2, 'Delete', 'App\\General\\Payment', 2, 'App\\General\\Payment', 2, 'App\\General\\Payment', 2, '', 'finished', '', '2020-10-24 07:53:19', '2020-10-24 07:53:19', NULL, NULL),
(42, '91d72af1-b190-4ae8-ac60-8f5dee956214', 2, 'Create', 'App\\General\\Ad', 4, 'App\\General\\Ad', 4, 'App\\General\\Ad', 4, '', 'finished', '', '2020-10-24 07:54:04', '2020-10-24 07:54:04', NULL, '{\"company_id\":1,\"subscription_id\":1,\"ad_location\":\"2\",\"type\":\"2\",\"top\":0,\"image\":\"\\/uploads\\/ads\\/t7Fr0ZLGhDvwXgnS4ZMxW3qlry61eJGjv4598u5Yxl2JRWWHEC.png\"}'),
(43, '91d731e6-9895-4136-99b3-262dcf17bb56', 2, 'Create', 'App\\General\\Category', 4, 'App\\General\\Category', 4, 'App\\General\\Category', 4, '', 'finished', '', '2020-10-24 08:13:31', '2020-10-24 08:13:31', NULL, '{\"name_ar\":\"\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a\",\"name_en\":\"cars\",\"slug\":\"tdWfMW\",\"parent_id\":\"0\",\"active\":1,\"top\":1}'),
(44, '91d7320c-ffe4-4316-bcc5-75ac0aa7ed44', 2, 'Create', 'App\\General\\Category', 5, 'App\\General\\Category', 5, 'App\\General\\Category', 5, '', 'finished', '', '2020-10-24 08:13:57', '2020-10-24 08:13:57', NULL, '{\"name_ar\":\"\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a \\u0645\\u0633\\u062a\\u0639\\u0645\\u0644\\u0647\",\"name_en\":\"used cars\",\"parent_id\":4,\"slug\":\"dIapz3\",\"active\":1,\"type\":\"1\"}'),
(45, '91d73235-17b1-4d95-83d0-c6ce8fa364d4', 2, 'Create', 'App\\General\\Category', 6, 'App\\General\\Category', 6, 'App\\General\\Category', 6, '', 'finished', '', '2020-10-24 08:14:23', '2020-10-24 08:14:23', NULL, '{\"name_ar\":\"\\u0645\\u0648\\u062f\\u064a\\u0644 2019\",\"name_en\":\"2019 model\",\"parent_id\":5,\"slug\":\"uNaYKV\",\"active\":1,\"type\":\"2\"}'),
(46, '91d73358-409d-4480-8d03-fa1375e9fce8', 2, 'Create', 'App\\General\\Subscription', 2, 'App\\General\\Subscription', 2, 'App\\General\\Subscription', 2, '', 'finished', '', '2020-10-24 08:17:34', '2020-10-24 08:17:34', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u062e\\u0637\\u0647 \\u0627\\u0644\\u0641\\u0636\\u064a\\u0647\",\"name_en\":\"silver plan\",\"desc_ar\":\"<div dir=\\\"rtl\\\">\\u062e\\u0637\\u0647 \\u0627\\u0634\\u062a\\u0631\\u0627\\u0643 3 \\u0634\\u0647\\u0648\\u0631&nbsp;<br>3 \\u0627\\u0639\\u0644\\u0627\\u0646\\u0627\\u062a \\u0645\\u0645\\u064a\\u0632\\u0647&nbsp;<br><br><\\/div>\",\"desc_en\":\"<div>silver plan for 3 months&nbsp;<br>3 ads&nbsp;<\\/div>\",\"price\":\"100\",\"days\":\"90\",\"slider_num\":\"2\",\"banner_num\":\"1\",\"top\":0,\"active\":1}'),
(47, '91d7370d-5a0b-40f5-a5ea-8427fd4c69ea', 2, 'Create', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, '', 'finished', '', '2020-10-24 08:27:56', '2020-10-24 08:27:56', NULL, '{\"name_ar\":\"\\u062d\\u0644\\u0648\\u0644\",\"name_en\":\"planning\",\"address_ar\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"address_en\":\"alyrad\",\"desc_ar\":\"<div dir=\\\"rtl\\\">\\u0634\\u0631\\u0643\\u0629 \\u0628\\u0631\\u0645\\u062c\\u0629 \\u0648\\u062a\\u0633\\u0648\\u064a\\u0642 \\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u0649<\\/div>\",\"desc_en\":\"<div>programming and marketing<\\/div>\",\"pdf\":\"\\/uploads\\/users\\/companies\\/pdf\\/k9pWt7dHgL4VyVc2Mb9PGncG8QHp25QwTc3IYJ3AyiQmdyxSbD.pdf\",\"phone1\":\"011000026678\",\"phone2\":\"0111008049\",\"tel\":\"19011\",\"fax\":\"90875\",\"whatsapp\":\"01001208409\",\"email\":\"planning@mail.com\",\"facebook\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"instagram\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"twitter\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"snapshat\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"googleplus\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"website\":\"https:\\/\\/almurafiq.dev-krito.com\\/\",\"open_from\":\"2020-10-23T22:00:00.000000Z\",\"open_to\":\"2020-10-24T14:00:00.000000Z\",\"holiday\":{\"Saturday\":false,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":true,\"Friday\":true},\"active\":1}'),
(48, '91d73872-1d6d-4f1e-b24a-64cc7eebe54c', 2, 'Create', 'App\\User', 4, 'App\\User', 4, 'App\\User', 4, '', 'finished', '', '2020-10-24 08:31:49', '2020-10-24 08:31:49', NULL, '{\"name\":\"ahmed\",\"email\":\"ahmed@mail.com\",\"avatar\":\"\\/uploads\\/users\\/gZ0ZiUOhdrlMw4ltkQMG3duzyeSrRWi4773vz2N7rRL6cFYyth.png\",\"birth_date\":\"1999-11-17T00:00:00.000000Z\",\"gender\":\"Male\",\"default_lang\":\"ar\",\"phone\":\"01001208408\",\"city_id\":\"1\",\"area_id\":\"1\",\"zone_id\":\"1\",\"national_id\":\"290875691003\",\"active\":1,\"userable_id\":2,\"userable_type\":\"App\\\\Company\\\\Company\"}'),
(49, '91d73a12-a4d4-420b-b73d-e3050bab7488', 2, 'Create', 'App\\General\\Country', 6, 'App\\General\\Country', 6, 'App\\General\\Country', 6, '', 'finished', '', '2020-10-24 08:36:22', '2020-10-24 08:36:22', NULL, '{\"name_ar\":\"vcx\",\"name_en\":\"vcxv\",\"icon\":\"\\/uploads\\/countries\\/n2dwHmRiP0e2hZxwuznBwKBmo7CV1Ldb2FWOQOPNjapR4kEAPB.png\",\"active\":1}'),
(50, '91d73a17-f65d-4a88-9310-1820472365d1', 2, 'Delete', 'App\\General\\Country', 6, 'App\\General\\Country', 6, 'App\\General\\Country', 6, '', 'finished', '', '2020-10-24 08:36:26', '2020-10-24 08:36:26', NULL, NULL),
(51, '91d73a64-bfa7-44b1-aa9d-85a92db97f4f', 2, 'Create', 'App\\General\\Country', 7, 'App\\General\\Country', 7, 'App\\General\\Country', 7, '', 'finished', '', '2020-10-24 08:37:16', '2020-10-24 08:37:16', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0647\",\"name_en\":\"soudia\",\"icon\":\"\\/uploads\\/countries\\/72t4GKNHeoyoLqfBvSfE61QJB2YRAebVgKZySB2QOyY7qSCEei.png\",\"active\":1}'),
(52, '91d73a9d-e90c-4ec3-9f00-540035bac106', 2, 'Create', 'App\\General\\City', 2, 'App\\General\\City', 2, 'App\\General\\City', 2, '', 'finished', '', '2020-10-24 08:37:54', '2020-10-24 08:37:54', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"name_en\":\"elryad\",\"country_id\":7,\"active\":1}'),
(53, '91d73ab3-ac93-426f-9aee-7aa70455e5de', 2, 'Create', 'App\\General\\Area', 2, 'App\\General\\Area', 2, 'App\\General\\Area', 2, '', 'finished', '', '2020-10-24 08:38:08', '2020-10-24 08:38:08', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u062f\\u0645\\u0627\\u0645\",\"name_en\":\"aldmam\",\"city_id\":2,\"active\":1}'),
(54, '91d73ac7-efd4-4925-8df9-4011d4e19e57', 2, 'Create', 'App\\General\\Zone', 2, 'App\\General\\Zone', 2, 'App\\General\\Zone', 2, '', 'finished', '', '2020-10-24 08:38:21', '2020-10-24 08:38:21', NULL, '{\"name_ar\":\"\\u0627\\u0644\\u062f\\u0645\\u0627\\u06452\",\"name_en\":\"aldmam2\",\"area_id\":2}'),
(55, '91d73e39-4d15-4dfb-8fcb-044c44455520', 2, 'Attach', 'App\\Company\\Company', 2, 'App\\General\\Category', 4, 'Illuminate\\Database\\Eloquent\\Relations\\Pivot', NULL, '', 'finished', '', '2020-10-24 08:47:59', '2020-10-24 08:47:59', NULL, '{\"company_id\":\"2\",\"category_id\":\"4\"}'),
(56, '91d73ea7-6ebd-49c8-80b1-e93ce242308c', 2, 'Create', 'App\\General\\CampanySubsriptions', 580636, 'App\\General\\CampanySubsriptions', 580636, 'App\\General\\CampanySubsriptions', 580636, '', 'finished', '', '2020-10-24 08:49:11', '2020-10-24 08:49:11', NULL, '{\"company_id\":2,\"subscription_id\":2,\"from\":\"2020-11-01T00:00:00.000000Z\",\"to\":\"2021-01-30T00:00:00.000000Z\",\"price\":100,\"slider_num\":2,\"banner_num\":1,\"payment_id\":4}'),
(57, '91d73f79-c4f3-44d0-8ee0-078b5ea34ba6', 2, 'Create', 'App\\General\\Ad', 5, 'App\\General\\Ad', 5, 'App\\General\\Ad', 5, '', 'finished', '', '2020-10-24 08:51:29', '2020-10-24 08:51:29', NULL, '{\"company_id\":2,\"subscription_id\":2,\"ad_location\":\"1\",\"type\":\"2\",\"top\":0,\"image\":\"\\/uploads\\/ads\\/FVRh25bXKD2btQREl6PUE8y4YSkbAZLGy6C3sbhdHrMC1xQ0df.png\"}'),
(58, '91d743ef-53dd-4b6d-92ca-4b9a0486da16', 2, 'Create', 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, 'App\\Affilate\\Affilate', 2, '', 'finished', '', '2020-10-24 09:03:57', '2020-10-24 09:03:57', NULL, '{\"total_companies\":\"0\",\"ssd\":\"5f940a0fbb827\"}'),
(59, '91d74448-b70e-48c6-a027-1d68662fadb8', 2, 'Create', 'App\\User', 5, 'App\\User', 5, 'App\\User', 5, '', 'finished', '', '2020-10-24 09:04:56', '2020-10-24 09:04:56', NULL, '{\"name\":\"aly\",\"email\":\"aly@mail.com\",\"avatar\":\"\\/uploads\\/users\\/WT2BohMVN4BY23rRe0f5mPA4braeuKfLb0aesxXnrAXldYjceX.png\",\"birth_date\":\"2013-10-15T00:00:00.000000Z\",\"gender\":\"Male\",\"default_lang\":\"ar\",\"phone\":\"01001208409\",\"city_id\":\"2\",\"area_id\":\"2\",\"zone_id\":\"2\",\"national_id\":\"9087545803\",\"active\":1,\"userable_id\":2,\"userable_type\":\"App\\\\Affilate\\\\Affilate\"}'),
(60, '91d745c6-349d-4c36-b0b2-6a56f93b17aa', 2, 'Create', 'App\\General\\Admin', 2, 'App\\General\\Admin', 2, 'App\\General\\Admin', 2, '', 'finished', '', '2020-10-24 09:09:06', '2020-10-24 09:09:06', NULL, '{\"type\":\"2\"}'),
(61, '91d746ba-57e3-4e6f-817d-c68ac96d4d46', 2, 'Create', 'App\\General\\Admin', 3, 'App\\General\\Admin', 3, 'App\\General\\Admin', 3, '', 'finished', '', '2020-10-24 09:11:46', '2020-10-24 09:11:46', NULL, '{\"type\":\"2\"}'),
(62, '91d74725-dd22-45ac-95c4-7382ed466da3', 2, 'Create', 'App\\User', 6, 'App\\User', 6, 'App\\User', 6, '', 'finished', '', '2020-10-24 09:12:56', '2020-10-24 09:12:56', NULL, '{\"name\":\"mohamed\",\"email\":\"mohamed@mail.com\",\"avatar\":\"\\/uploads\\/users\\/BDCke2Y3wrLQOt1joFaZ9BGN1KaFlAYrnsf0rrLnySpJZySpKU.png\",\"birth_date\":\"2020-10-28T00:00:00.000000Z\",\"gender\":\"Male\",\"default_lang\":\"en\",\"phone\":\"01002908765\",\"city_id\":\"1\",\"area_id\":\"1\",\"zone_id\":\"1\",\"national_id\":\"09086534673\",\"active\":1,\"userable_id\":3,\"userable_type\":\"App\\\\General\\\\Admin\"}'),
(63, '91d76dda-9f58-4c28-8c71-c4d35caf4c8c', 2, 'Update', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, '', 'finished', '', '2020-10-24 11:01:10', '2020-10-24 11:01:10', '{\"active\":1}', '{\"active\":0}'),
(64, '91dc2b2c-0d65-441d-99d9-47cac34f3ad1', 2, 'Deactive', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'a:0:{}', 'finished', '', '2020-10-26 19:33:51', '2020-10-26 19:33:51', NULL, NULL),
(65, '91dc2b2c-0d65-441d-99d9-47cac34f3ad1', 2, 'Deactive', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'a:0:{}', 'finished', '', '2020-10-26 19:33:51', '2020-10-26 19:33:51', NULL, NULL),
(66, '91dc2b35-a3fb-4fe1-b97d-0eadb7b331f1', 2, 'Active', 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'App\\Company\\Company', 2, 'a:0:{}', 'finished', '', '2020-10-26 19:33:57', '2020-10-26 19:33:57', NULL, NULL),
(67, '91dc2b35-a3fb-4fe1-b97d-0eadb7b331f1', 2, 'Active', 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'App\\Company\\Company', 1, 'a:0:{}', 'finished', '', '2020-10-26 19:33:57', '2020-10-26 19:33:57', NULL, NULL),
(68, '91dd6547-ceed-45c5-bbd5-b6ed0af0fdc7', 2, 'Hide Home', 'App\\General\\Category', 4, 'App\\General\\Category', 4, 'App\\General\\Category', 4, 'a:0:{}', 'finished', '', '2020-10-27 10:12:10', '2020-10-27 10:12:10', NULL, NULL),
(69, '91dd66b4-75b3-493c-9b46-749f41b358f7', 2, 'Create', 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, '', 'finished', '', '2020-10-27 10:16:09', '2020-10-27 10:16:09', NULL, '{\"name_ar\":\"cds\",\"name_en\":\"fdsf\",\"logo\":\"\\/uploads\\/partners\\/6lZo17BwMUKjFYCB9koGNm0DQAlVPKYeqo3blyKJDXbFV2Bsu3.png\",\"active\":1}'),
(70, '91dd66c1-9a07-4a6f-a48e-72c9ac047fb5', 2, 'Deactive', 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, 'a:0:{}', 'finished', '', '2020-10-27 10:16:17', '2020-10-27 10:16:17', NULL, NULL),
(71, '91dd66cf-29b8-4e55-8833-8ca1c1eb2b4b', 2, 'Active', 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, 'App\\General\\Partner', 1, 'a:0:{}', 'finished', '', '2020-10-27 10:16:26', '2020-10-27 10:16:26', NULL, NULL),
(72, '91e53f40-8a26-4db4-bed0-237ec39aca4e', 2, 'Create', 'App\\General\\BusinessSettings', 1, 'App\\General\\BusinessSettings', 1, 'App\\General\\BusinessSettings', 1, '', 'finished', '', '2020-10-31 07:52:27', '2020-10-31 07:52:27', NULL, '{\"type\":\"home_ads_slider_count\",\"value\":\"6\"}'),
(73, '91e53f8e-9bdd-48d9-bb65-f8304dab7060', 2, 'Create', 'App\\General\\BusinessSettings', 2, 'App\\General\\BusinessSettings', 2, 'App\\General\\BusinessSettings', 2, '', 'finished', '', '2020-10-31 07:53:18', '2020-10-31 07:53:18', NULL, '{\"type\":\"home_latest_company_count\",\"value\":\"6\"}'),
(74, '91e53fb1-edd3-422b-97a9-6151f47359c6', 2, 'Create', 'App\\General\\BusinessSettings', 3, 'App\\General\\BusinessSettings', 3, 'App\\General\\BusinessSettings', 3, '', 'finished', '', '2020-10-31 07:53:41', '2020-10-31 07:53:41', NULL, '{\"type\":\"home_reviews_count\",\"value\":\"6\"}'),
(75, '91e541ad-22a3-4c64-8a9e-eff798b2ebb6', 2, 'Create', 'App\\General\\BusinessSettings', 4, 'App\\General\\BusinessSettings', 4, 'App\\General\\BusinessSettings', 4, '', 'finished', '', '2020-10-31 07:59:14', '2020-10-31 07:59:14', NULL, '{\"type\":\"search_count\",\"value\":\"9\"}'),
(76, '91e548e1-dd78-4566-8675-2208dd1ba60d', 2, 'Create', 'App\\General\\BusinessSettings', 5, 'App\\General\\BusinessSettings', 5, 'App\\General\\BusinessSettings', 5, '', 'finished', '', '2020-10-31 08:19:23', '2020-10-31 08:19:23', NULL, '{\"type\":\"home_category_count\",\"value\":\"6\"}'),
(77, '91e54c82-e8b7-4875-b1f1-f85dc1c0936d', 2, 'Update', 'App\\General\\BusinessSettings', 2, 'App\\General\\BusinessSettings', 2, 'App\\General\\BusinessSettings', 2, '', 'finished', '', '2020-10-31 08:29:31', '2020-10-31 08:29:31', '{\"value\":\"6\"}', '{\"value\":\"3\"}'),
(78, '91e5b91e-d1fb-4f75-a58b-71729ab8fe50', 2, 'Create', 'App\\General\\BusinessSettings', 6, 'App\\General\\BusinessSettings', 6, 'App\\General\\BusinessSettings', 6, '', 'finished', '', '2020-10-31 13:33:13', '2020-10-31 13:33:13', NULL, '{\"type\":\"special_ads_slider_count\",\"value\":\"6\"}'),
(79, '91e5b93a-0edf-41cb-a358-4ef7c30a156a', 2, 'Create', 'App\\General\\BusinessSettings', 7, 'App\\General\\BusinessSettings', 7, 'App\\General\\BusinessSettings', 7, '', 'finished', '', '2020-10-31 13:33:31', '2020-10-31 13:33:31', NULL, '{\"type\":\"banner_ads_slider_count\",\"value\":\"6\"}');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_mark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` bigint(20) NOT NULL DEFAULT 0,
  `lon` bigint(20) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
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
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2020-10-23 15:48:52', '2020-10-23 15:48:52', NULL),
(2, 2, '2020-10-24 09:09:06', '2020-10-24 09:09:06', NULL),
(3, 2, '2020-10-24 09:11:46', '2020-10-24 09:11:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `company_subsription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('banner','slider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_location` enum('category','special','home') COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `from` timestamp NULL DEFAULT NULL,
  `to` timestamp NULL DEFAULT NULL,
  `visit_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--



-- --------------------------------------------------------

--
-- Table structure for table `affilates`
--

CREATE TABLE `affilates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ssd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_companies` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affilates`
--

INSERT INTO `affilates` (`id`, `ssd`, `total_companies`, `created_at`, `updated_at`, `deleted_at`, `points`) VALUES
(1, '5f9358648bc9f', 0, '2020-10-23 20:25:42', '2020-10-23 20:25:42', NULL, 0),
(2, '5f940a0fbb827', 0, '2020-10-24 09:03:57', '2020-10-24 09:03:57', NULL, 0),
(3, '5f982803ca931', 0, '2020-10-27 12:00:35', '2020-10-27 12:00:35', NULL, 0),
(4, '5f982d184e1b8', 0, '2020-10-27 12:22:16', '2020-10-27 12:22:16', NULL, 0),
(5, '5f982d4a0f2b0', 0, '2020-10-27 12:23:06', '2020-10-27 12:23:06', NULL, 0),
(6, '5f982d7e707df', 0, '2020-10-27 12:23:58', '2020-10-27 12:23:58', NULL, 0),
(7, '5f996a3d0d079', 0, '2020-10-28 10:55:25', '2020-10-28 10:55:25', NULL, 0),
(8, '5f996a5217ec3', 0, '2020-10-28 10:55:46', '2020-10-28 10:55:46', NULL, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name_ar`, `name_en`, `city_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'عين شمس', 'ain shams', 1, 1, '2020-10-23 16:44:43', '2020-10-23 16:44:43', NULL),
(2, 'الدمام', 'aldmam', 2, 1, '2020-10-24 08:38:08', '2020-10-24 08:38:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swift_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name_ar`, `bank_name_en`, `branch_name_ar`, `branch_name_en`, `owner_name_ar`, `owner_name_en`, `account_num`, `swift_num`, `logo`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bank1', 'bank1', 'bank1', 'bank1', 'bank1', 'bank1', 'bank1', 'bank1', '/uploads/banks/nKcrvOILs91YeoSZwuLkr6hT5QXQOpxpuQfI2NrgqFc625pDrH.png', 1, '2020-10-23 16:08:24', '2020-10-23 16:08:24', NULL);

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
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `in_home` tinyint(1) NOT NULL DEFAULT 0,
  `read_num` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_ads_slider_count', '6', '2020-10-31 07:52:26', '2020-10-31 07:52:26'),
(2, 'home_latest_company_count', '3', '2020-10-31 07:53:18', '2020-10-31 08:29:31'),
(3, 'home_reviews_count', '6', '2020-10-31 07:53:41', '2020-10-31 07:53:41'),
(4, 'search_count', '9', '2020-10-31 07:59:14', '2020-10-31 07:59:14'),
(5, 'home_category_count', '6', '2020-10-31 08:19:22', '2020-10-31 08:19:22'),
(6, 'special_ads_slider_count', '6', '2020-10-31 13:33:13', '2020-10-31 13:33:13'),
(7, 'banner_ads_slider_count', '6', '2020-10-31 13:33:31', '2020-10-31 13:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `in_home` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'sub => 1, subsub =>2',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `slug`, `active`, `in_home`, `type`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cat1', 'cat1', 'M5TWmr', 1, 1, 0, 0, '2020-10-23 19:18:26', '2020-10-23 19:18:26', NULL),
(2, 'sub', 'sub', 'vkFr7E', 1, 0, 1, 1, '2020-10-23 19:18:41', '2020-10-23 19:18:41', NULL),
(3, 'sub sub', 'sub sub', '1jWWXk', 1, 0, 2, 2, '2020-10-23 19:19:02', '2020-10-23 19:19:02', NULL),
(4, 'سيارات', 'cars', 'tdWfMW', 1, 0, 0, 0, '2020-10-24 08:13:31', '2020-10-27 10:12:10', NULL),
(5, 'سيارات مستعمله', 'used cars', 'dIapz3', 1, 0, 1, 4, '2020-10-24 08:13:57', '2020-10-24 08:13:57', NULL),
(6, 'موديل 2019', '2019 model', 'uNaYKV', 1, 0, 2, 5, '2020-10-24 08:14:23', '2020-10-24 08:14:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `country_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'القاهره', 'cairo', 3, 1, '2020-10-23 16:43:21', '2020-10-23 16:43:21', NULL),
(2, 'الرياض', 'elryad', 7, 1, '2020-10-24 08:37:54', '2020-10-24 08:37:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0->like ,1-> dislike',
  `reson` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`id`, `user_id`, `review_id`, `type`, `reson`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 2, 0, NULL, '2020-10-28 13:21:22', '2020-10-28 13:21:22', NULL),
(2, 7, 2, 1, '\'very bad content\'', '2020-10-28 13:22:49', '2020-10-28 13:22:49', NULL);

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
  `branch_num` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `closed_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `visit_count` bigint(20) NOT NULL DEFAULT 0,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_user_count` bigint(20) NOT NULL DEFAULT 0,
  `total_rating` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `app` tinyint(1) NOT NULL DEFAULT 0,
  `linked_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name_ar`, `name_en`, `desc_ar`, `desc_en`, `address_ar`, `address_en`, `pdf`, `branch_num`, `active`, `is_open`, `closed_reason`, `open_from`, `open_to`, `holiday`, `parent_id`, `phone1`, `phone2`, `tel`, `fax`, `facebook`, `instagram`, `twitter`, `snapshat`, `whatsapp`, `googleplus`, `website`, `email`, `visit_count`, `lat`, `lon`, `rate_user_count`, `total_rating`, `created_at`, `updated_at`, `deleted_at`, `image`, `service_ar`, `service_en`, `country_id`, `city_id`, `area_id`, `zone_id`, `app`, `linked_in`) VALUES
(1, 'dsd', 'dsa', '<div>dasd</div>', '<div>dsadas</div>', 'dasd', 'dasd', '/uploads/users/companies/pdf/snqZ5zmLWioB0Xndhm5ugWfLfEcljX48mDoRBBnvKZ1Ljy5UdA.pdf', 0, 1, 1, NULL, '2020-10-23 10:00:00', '2020-10-23 11:00:00', '{\"Saturday\":true,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":false,\"Friday\":true}', 0, '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mahmoudn509@gmail.com', 0, NULL, NULL, 0, 0, '2020-10-23 19:15:54', '2020-10-26 19:33:57', NULL, '/uploads/companies/jiqjOYzU0czt8xznWl8OJxOeQ6Yt71CmLtwqr5FuAHsi09epl5.png', '<div>dsad</div>', '<div>dasdas</div>', 3, 1, 1, 1, 0, '0'),
(2, 'حلول', 'planning', '<div dir=\"rtl\">شركة برمجة وتسويق الكترونى</div>', '<div>programming and marketing</div>', 'الرياض', 'alyrad', '/uploads/users/companies/pdf/k9pWt7dHgL4VyVc2Mb9PGncG8QHp25QwTc3IYJ3AyiQmdyxSbD.pdf', 0, 1, 1, NULL, '2020-10-23 22:00:00', '2020-10-24 14:00:00', '{\"Saturday\":false,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":true,\"Friday\":true}', 0, '011000026678', '0111008049', '19011', '90875', 'https://almurafiq.dev-krito.com/', 'https://almurafiq.dev-krito.com/', 'https://almurafiq.dev-krito.com/', 'https://almurafiq.dev-krito.com/', '01001208409', 'https://almurafiq.dev-krito.com/', 'https://almurafiq.dev-krito.com/', 'planning@mail.com', 0, NULL, NULL, 0, 0, '2020-10-24 08:27:56', '2020-10-26 19:33:57', NULL, '/uploads/companies/bJajmWaShYbc1jzJStzGQ25l7f1IP5Z2CT0maw7ZVM1idqihto.png', '<div dir=\"rtl\">تسويق الكترونى<br>برمجة&nbsp;</div>', '<div>marketing&nbsp;<br>programming</div>', 3, 1, 1, 1, 0, '0'),
(3, 'sdasdadsa', 'ddsad', 'dsadsa', 'dsadsadsdsa', 'dsad', 'sdad', NULL, 0, 1, 1, NULL, '2020-10-27 12:10:00', '2020-10-27 06:15:00', '\"{\\\"Saturday\\\":false,\\\"Sunday\\\":false,\\\"Monday\\\":false,\\\"Tuesday\\\":false,\\\"Wednesday\\\":false,\\\"Thursday\\\":true,\\\"Friday\\\":true}\"', 0, '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mahmoudn50999999@mail.com', 0, NULL, NULL, 0, 0, '2020-10-27 13:29:39', '2020-10-27 13:29:39', NULL, NULL, 'dsadsdsa', 'dsad', 3, 2, 1, 1, 0, NULL),
(4, 'زاكس', 'zacks', 'dsadsa', 'dsadsadsdsa', 'dsad', 'sdad', NULL, 0, 1, 1, NULL, '2020-10-27 12:10:00', '2020-10-27 06:15:00', '{\"Saturday\":false,\"Sunday\":false,\"Monday\":false,\"Tuesday\":false,\"Wednesday\":false,\"Thursday\":true,\"Friday\":true}', 0, '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mahmoudn5009@mail.com', 5, NULL, NULL, 1, 4, '2020-10-27 13:29:52', '2020-10-31 10:37:56', NULL, NULL, 'dsadsdsa', 'dsad', 3, 1, 1, 1, 1, NULL),
(5, 'sdasdadsa', 'ddsad', 'dsadsa', 'dsadsadsdsa', 'dsad', 'sdad', NULL, 0, 0, 1, NULL, '', '', '\"{\\\"Saturday\\\":false,\\\"Sunday\\\":false,\\\"Monday\\\":false,\\\"Tuesday\\\":false,\\\"Wednesday\\\":false,\\\"Thursday\\\":true,\\\"Friday\\\":true}\"', 0, '01123003488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, '2020-10-31 11:55:42', '2020-10-31 11:55:42', NULL, NULL, 'dsadsdsa', 'dsad', 3, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_subsriptions`
--

CREATE TABLE `company_subsriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `slider_num` int(11) NOT NULL DEFAULT 1,
  `banner_num` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_subsriptions`
--

INSERT INTO `company_subsriptions` (`id`, `company_id`, `subscription_id`, `from`, `to`, `price`, `slider_num`, `banner_num`, `created_at`, `updated_at`, `deleted_at`, `payment_id`) VALUES
(580635, 1, 1, '2020-10-24', '2020-11-23', 1000, 5, 3, '2020-10-24 07:51:27', '2020-10-24 07:51:27', NULL, 3),
(580636, 2, 2, '2020-11-01', '2021-01-30', 100, 2, 1, '2020-10-24 08:49:11', '2020-10-24 08:49:11', NULL, 4);

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
(1, 1, 1, NULL, NULL, NULL),
(2, 2, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT 0,
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
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `currency_id`, `icon`, `active`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'مصر', 'Egypt', NULL, 'null', 1, 1, '2020-10-23 15:48:52', '2020-10-23 15:48:52', NULL),
(7, 'السعوديه', 'soudia', NULL, '/uploads/countries/72t4GKNHeoyoLqfBvSfE61QJB2YRAebVgKZySB2QOyY7qSCEei.png', 1, 0, '2020-10-24 08:37:16', '2020-10-24 08:37:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_phone` int(10) UNSIGNED NOT NULL,
  `exchange_rate` double(10,8) NOT NULL DEFAULT 1.00000000,
  `exchange_rate_usd` double(10,8) NOT NULL DEFAULT 1.00000000,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2020-10-27 11:54:50', '2020-10-31 11:47:04', '2020-10-31 11:47:04');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `lat` bigint(20) NOT NULL DEFAULT 0,
  `lon` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(42, '2020_10_23_171724_create_banks_table', 1),
(43, '2030_10_16_232456_create_foreign_keys', 1),
(44, '2020_10_24_095647_create_parteners_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parteners`
--

CREATE TABLE `parteners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parteners`
--

INSERT INTO `parteners` (`id`, `name_ar`, `name_en`, `logo`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cds', 'fdsf', '/uploads/partners/6lZo17BwMUKjFYCB9koGNm0DQAlVPKYeqo3blyKJDXbFV2Bsu3.png', 1, '2020-10-27 10:16:08', '2020-10-27 10:16:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `company_subsription_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `payment_method_id`, `company_subsription_id`, `amount`, `payment_details`, `payment_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 3, 1, 580635, 1000, NULL, 1, '2020-10-24 07:51:27', '2020-10-24 07:51:27', NULL),
(4, 4, 1, 580636, 100, NULL, 1, '2020-10-24 08:49:11', '2020-10-24 08:49:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name_ar`, `name_en`, `active`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'كاش', 'cash', 1, 1, NULL, '2020-10-23 19:23:49', '2020-10-23 19:23:49');

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
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
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
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `likes_count` bigint(20) NOT NULL DEFAULT 0,
  `dislikens_count` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `in_home` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `company_id`, `comment`, `active`, `rate`, `likes_count`, `dislikens_count`, `created_at`, `updated_at`, `deleted_at`, `in_home`) VALUES
(1, 5, 2, '\'very Gooooood\'', 0, 4, 0, 0, '2020-10-28 13:12:37', '2020-10-28 13:12:37', NULL, 0),
(2, 7, 4, '\'very Gooooood\'', 1, 4, 1, 1, '2020-10-28 13:13:38', '2020-10-28 13:22:49', NULL, 1);

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
  `count` bigint(20) NOT NULL DEFAULT 1,
  `searchable_id` bigint(20) DEFAULT NULL,
  `searchable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `created_at`, `updated_at`, `deleted_at`, `query`, `count`, `searchable_id`, `searchable_type`) VALUES
(1, '2020-10-31 09:21:23', '2020-10-31 10:29:19', NULL, 'planning', 10, NULL, NULL),
(2, '2020-10-31 10:31:33', '2020-10-31 10:31:46', NULL, 'حلول', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `icon` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_type` tinyint(4) NOT NULL DEFAULT 0,
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
  `priority` tinyint(4) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
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
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `desc_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top` tinyint(1) NOT NULL DEFAULT 0,
  `slider_num` int(11) NOT NULL DEFAULT 0,
  `banner_num` int(11) NOT NULL DEFAULT 0,
  `total_company` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `name_ar`, `name_en`, `price`, `days`, `active`, `desc_ar`, `desc_en`, `top`, `slider_num`, `banner_num`, `total_company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ultra', 'ultra', 1000, 30, 1, '<div>ultra</div>', '<div>ultra</div>', 0, 5, 3, 0, '2020-10-23 19:20:19', '2020-10-23 19:20:19', NULL),
(2, 'الخطه الفضيه', 'silver plan', 100, 90, 1, '<div dir=\"rtl\">خطه اشتراك 3 شهور&nbsp;<br>3 اعلانات مميزه&nbsp;<br><br></div>', '<div>silver plan for 3 months&nbsp;<br>3 ads&nbsp;</div>', 0, 2, 1, 0, '2020-10-24 08:17:34', '2020-10-24 08:17:34', NULL);

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
  `ticket_status_priority` int(11) NOT NULL DEFAULT 1,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fcm_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `fcm_token`, `created_at`, `updated_at`, `deleted_at`, `provider`) VALUES
(1, 'ssssssssssssssssssss', '2020-10-28 12:55:45', '2020-10-28 12:56:23', NULL, NULL),
(2, 'ssssssssssssssssssss', '2020-10-28 12:59:47', '2020-10-28 12:59:47', NULL, 'google');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `userable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `fcm_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider`, `provider_id`, `name`, `userable_id`, `userable_type`, `email`, `email_verified_at`, `remember_token`, `password`, `avatar`, `birth_date`, `gender`, `default_lang`, `phone`, `city_id`, `area_id`, `zone_id`, `reset_code`, `national_id`, `api_token`, `fcm_token`, `active`, `created_at`, `updated_at`, `deleted_at`, `type`, `country_id`) VALUES
(2, '', NULL, 'SuperAdmin', 1, 'App\\General\\Admin', 'SuperAdmin@mail.com', NULL, NULL, '$2y$10$UMf/qaDcyg2z1gMbXobTjuv.Pnc6PU1zFwTmueHDF6IQep5VBvdsC', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-23 15:48:52', '2020-10-23 15:48:52', NULL, 'Admin', 0),
(3, 'google', 'provider_id_google', 'mahmoud', 1, 'App\\Company\\Company', 'mahmoudn509@gmail.com', NULL, NULL, '$2y$10$LgldXb5m6sHL4vygUBaN7OF5OqqXfabIVH9OtIapXAkTGm9CJov6K', '/uploads/users/nos1zpDCvukrXB7Wv2UwZC9Jbvjgm7ZoQELYDKrnjoygWmsjNf.png', NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, NULL, NULL, 1, '2020-10-23 20:37:16', '2020-10-28 10:40:08', NULL, 'Company', 0),
(4, NULL, NULL, 'ahmed', 2, 'App\\Company\\Company', 'ahmed@mail.com', NULL, NULL, '$2y$10$3W8Z5Aekw3ENdrrsshCsZOsi8rE44JxsTD8LDitkBG3Pr3IaJkn7W', '/uploads/users/gZ0ZiUOhdrlMw4ltkQMG3duzyeSrRWi4773vz2N7rRL6cFYyth.png', '1999-11-17', 'Male', 'ar', '01001208408', 1, 1, 1, NULL, '290875691003', NULL, NULL, 1, '2020-10-24 08:31:49', '2020-10-24 08:31:49', NULL, 'Company', 0),
(5, NULL, NULL, 'aly', 2, 'App\\Affilate\\Affilate', 'aly@mail.com', NULL, NULL, '$2y$10$T0G2/7AYkTTGmjdHE28AUOS1FXV.pGHv4C5Yigsb.3KsV33aLtSLe', '/uploads/users/WT2BohMVN4BY23rRe0f5mPA4braeuKfLb0aesxXnrAXldYjceX.png', '2013-10-15', 'Male', 'ar', '01001208409', 2, 2, 2, NULL, '9087545803', NULL, NULL, 1, '2020-10-24 09:04:56', '2020-10-24 09:04:56', NULL, 'Marketer', 0),
(6, NULL, NULL, 'mohamed', 3, 'App\\General\\Admin', 'mohamed@mail.com', NULL, NULL, '$2y$10$GEHQljiJsa2LzCwuVd4AXeB2iRjoO0HEBWm151lijtbEvAbktb9oe', '/uploads/users/BDCke2Y3wrLQOt1joFaZ9BGN1KaFlAYrnsf0rrLnySpJZySpKU.png', '2020-10-28', 'Male', 'en', '01002908765', 1, 1, 1, NULL, '09086534673', NULL, NULL, 1, '2020-10-24 09:12:56', '2020-10-24 09:12:56', NULL, 'Staff', 0),
(7, NULL, NULL, 'mahmoud nage', 5, 'App\\Company\\Company', 'mahmoudn509@mail.com', NULL, NULL, '$2y$10$semLZQcddDiNhTvcDhX2a.KVjQ4iak8V5PAFj492HptBno82TkFHS', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, '239720', NULL, '844aaebeee75da90314f522e454644670322ea570f39f5ae65f3c05da384', NULL, 1, '2020-10-27 11:54:50', '2020-10-31 11:55:42', NULL, 'Company', 3),
(8, NULL, NULL, 'mahmoud nage', 3, 'App\\Affilate\\Affilate', 'mahmoudn5099@mail.com', NULL, NULL, '$2y$10$FC7OJl82DE296nZTcE5cT.56nzOe4X9gyVRGveXys61FBS4rZpuNK', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '7e4e9cad368b1e9707363ed600cc85722e40331f6424ea28f994ae6d2a0f', NULL, 1, '2020-10-27 12:00:35', '2020-10-27 12:00:35', NULL, 'Marketer', 3),
(9, NULL, NULL, 'mahmoud nage', 4, 'App\\Affilate\\Affilate', 'mahmoudn50999@mail.com', NULL, NULL, '$2y$10$SpX0s5cAuca2XdLoJOynu.o8Sc4FQXN.I9vlW4J8e2gYKuRDeZOqe', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '8e6d220c1bf8dad1aae5f678b35d70e4df91474d1260104ae8e61b9df747', NULL, 1, '2020-10-27 12:22:16', '2020-10-27 12:22:16', NULL, 'Marketer', 3),
(10, NULL, NULL, 'mahmoud nage', 5, 'App\\Affilate\\Affilate', 'mahmoudn509999@mail.com', NULL, NULL, '$2y$10$tPPG9emrK6iA3jX15pHVCOftMVLaUsQ1K.RJC.yc280j7Nm6Xtp0u', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '10c6261f36c3ad142316807a73fafd8ac8d1815a52bf554d23c486411a8d', NULL, 1, '2020-10-27 12:23:06', '2020-10-27 12:23:06', NULL, 'Marketer', 3),
(11, NULL, NULL, 'mahmoud nage', 6, 'App\\Affilate\\Affilate', 'mahmoudn50999999@mail.com', NULL, NULL, '$2y$10$L/WBfAtqfiC/q8uOnG8qHuNd0UVhuApFdRTtlji.tM.DBbqm5LM7u', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '7962347d92139a05928705b9e6a6b4ca8bc37b7048bfe11171aa8706067f', NULL, 1, '2020-10-27 12:23:58', '2020-10-27 12:23:58', NULL, 'Marketer', 3),
(13, NULL, NULL, 'mahmoud nag', 4, 'App\\Company\\Company', 'mahmoudn5009@mail.com', NULL, NULL, '$2y$10$KEPAeR2dNQimiKZP0jgISO52yt/i88VAziDPxJPIwb7dRjRKty0Ti', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '2e509708ff3abb65f33cd74de86d9321be6d80c1895ee7d2f702586fa1bf', NULL, 1, '2020-10-27 13:29:52', '2020-10-28 12:23:55', NULL, 'Company', 3),
(14, NULL, NULL, 'mahmoud nage', 8, 'App\\Affilate\\Affilate', 'mahmoudn5@mail.com', NULL, NULL, '$2y$10$KNnunfENPDsZnUiFIISJ0exT5qRdlMU9Pk.xd27udAVVIAOvuOTpm', NULL, NULL, NULL, 'ar', '01123003488', 1, 1, 1, NULL, NULL, '21dd8ccb77ddecc74cac7c063736a5d2b2658dbb3d82ed4747595e5bdb0e', NULL, 1, '2020-10-28 10:55:46', '2020-10-28 10:55:46', NULL, 'Marketer', 3);

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

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 4, '2020-10-28 13:52:21', '2020-10-28 13:56:17', '2020-10-28 13:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name_ar`, `name_en`, `area_id`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الاندلس', 'andalous', 1, 1, '2020-10-23 16:45:44', '2020-10-23 16:45:44', NULL),
(2, 'الدمام2', 'aldmam2', 2, 1, '2020-10-24 08:38:21', '2020-10-24 08:38:21', NULL);

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
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `company_subsriptions_subscription_id_foreign` (`subscription_id`),
  ADD KEY `company_subsriptions_payment_id_foreign` (`payment_id`);

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
  ADD UNIQUE KEY `countries_name_en_unique` (`name_en`);

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
-- Indexes for table `parteners`
--
ALTER TABLE `parteners`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affilates`
--
ALTER TABLE `affilates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `affilate_companies`
--
ALTER TABLE `affilate_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_subsriptions`
--
ALTER TABLE `company_subsriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580637;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
-- AUTO_INCREMENT for table `parteners`
--
ALTER TABLE `parteners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `company_subsriptions`
--
ALTER TABLE `company_subsriptions`
  ADD CONSTRAINT `company_subsriptions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_subsriptions_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `company_subsriptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
