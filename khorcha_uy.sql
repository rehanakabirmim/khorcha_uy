-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2024 at 02:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khorcha_uy`
--

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint UNSIGNED NOT NULL,
  `basic_company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_flogo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_creator` int DEFAULT NULL,
  `basic_editor` int DEFAULT NULL,
  `basic_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_company`, `basic_title`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_creator`, `basic_editor`, `basic_slug`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'UY Systems Limited', NULL, NULL, NULL, NULL, 1, NULL, 'B20655c602d6457c', 1, '2023-11-21 07:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `ci_id` bigint UNSIGNED NOT NULL,
  `ci_phone1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_phone4` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email3` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_email4` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_address1` text COLLATE utf8mb4_unicode_ci,
  `ci_address2` text COLLATE utf8mb4_unicode_ci,
  `ci_address3` text COLLATE utf8mb4_unicode_ci,
  `ci_address4` text COLLATE utf8mb4_unicode_ci,
  `ci_creator` int DEFAULT NULL,
  `ci_editor` int DEFAULT NULL,
  `ci_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`ci_id`, `ci_phone1`, `ci_phone2`, `ci_phone3`, `ci_phone4`, `ci_email1`, `ci_email2`, `ci_email3`, `ci_email4`, `ci_address1`, `ci_address2`, `ci_address3`, `ci_address4`, `ci_creator`, `ci_editor`, `ci_slug`, `ci_status`, `created_at`, `updated_at`) VALUES
(1, '01795913294', NULL, NULL, NULL, 'info@domain.com', NULL, NULL, NULL, 'Rayerbag,Dhaka.', NULL, NULL, NULL, 1, NULL, 'CI20655c602d68981', 1, '2023-11-21 07:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` bigint UNSIGNED NOT NULL,
  `expense_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expcat_id` int DEFAULT NULL,
  `expense_amount` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_creator` int DEFAULT NULL,
  `expense_editor` int DEFAULT NULL,
  `expense_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expense_title`, `expcat_id`, `expense_amount`, `expense_date`, `expense_creator`, `expense_editor`, `expense_slug`, `expense_status`, `created_at`, `updated_at`) VALUES
(1, 'Aut exercitationem u', 3, '77', '2023-11-22', 1, NULL, 'I20655d7ddf7cfb8', 0, '2023-11-22 04:04:47', '2023-11-22 04:05:11'),
(5, 'Iure nobis eiusmod i', 3, '53', '2023-11-22', 1, NULL, 'I20655d8b040a4c2', 1, '2023-11-22 05:00:52', NULL),
(6, 'Aliquam quibusdam co', 3, '66', '2023-11-22', 1, NULL, 'I20655d8b3c3019b', 1, '2023-11-22 05:01:48', NULL),
(7, 'Basha Vara', 4, '2000', '2023-11-01', 1, NULL, 'I20655da0b8cd3b6', 1, '2023-11-22 06:33:28', NULL),
(8, 'Fruits', 5, '1000', '2023-11-05', 1, NULL, 'I20655da0fd965ed', 1, '2023-11-22 06:34:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `expcat_id` bigint UNSIGNED NOT NULL,
  `expcat_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expcat_remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expcat_creator` int DEFAULT NULL,
  `expcat_editor` int DEFAULT NULL,
  `expcat_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expcat_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expcat_id`, `expcat_name`, `expcat_remarks`, `expcat_creator`, `expcat_editor`, `expcat_slug`, `expcat_status`, `created_at`, `updated_at`) VALUES
(3, 'Uma Lynch', 'Totam aliquid sit ei', 1, NULL, 'uma-lynch', 0, '2023-11-22 04:59:04', '2023-11-22 06:32:36'),
(4, 'House Rent', 'house', 1, NULL, 'house-rent', 1, '2023-11-22 06:32:57', NULL),
(5, 'Food', 'food for me and family', 1, NULL, 'food', 1, '2023-11-22 06:33:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `income_id` bigint UNSIGNED NOT NULL,
  `income_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incate_id` int DEFAULT NULL,
  `income_amount` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_creator` int DEFAULT NULL,
  `income_editor` int DEFAULT NULL,
  `income_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`income_id`, `income_title`, `incate_id`, `income_amount`, `income_date`, `income_creator`, `income_editor`, `income_slug`, `income_status`, `created_at`, `updated_at`) VALUES
(1, 'Cumque adipisicing a', 5, '20', '2023-11-22', 1, NULL, 'I20655d6ee1a6898', 0, '2023-11-22 03:00:49', '2023-11-22 03:02:29'),
(3, 'Quis omnis veritatis', 10, '50000', '2023-11-22', 1, 1, 'I20655d6ef109ce3', 1, '2023-11-22 03:01:05', '2023-12-05 06:24:59'),
(4, 'Iste laborum Pariat', 10, '50000', '2023-11-22', 1, 1, 'I20655d7dbbe2b3a', 1, '2023-11-22 04:04:11', '2023-12-05 06:24:36'),
(5, 'LMS Project', 12, '30000', '2023-11-22', 1, 1, 'I20655d8b84738bc', 1, '2023-11-22 05:03:00', '2023-12-05 06:31:03'),
(6, 'UY Lab', 9, '10000', '2023-11-20', 1, NULL, 'I20655da05a9c1a8', 1, '2023-11-22 06:31:54', NULL),
(7, 'Web Application', 8, '15000', '2023-11-22', 1, NULL, 'I20655da075c71b1', 1, '2023-11-22 06:32:21', NULL),
(8, 'Voluptas veniam at', 9, '10000', '2023-11-26', 1, 1, 'I206562e56db1409', 1, '2023-11-26 06:27:57', '2023-12-05 06:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `incate_id` bigint UNSIGNED NOT NULL,
  `incate_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incate_remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incate_creator` int DEFAULT NULL,
  `incate_editor` int DEFAULT NULL,
  `incate_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incate_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`incate_id`, `incate_name`, `incate_remarks`, `incate_creator`, `incate_editor`, `incate_slug`, `incate_status`, `created_at`, `updated_at`) VALUES
(5, 'Paula Lang', 'Explicabo Consequat', 1, NULL, 'paula-lang', 0, '2023-11-22 04:19:09', '2023-12-05 06:31:47'),
(7, 'Meghan Carter', 'Magni minima alias t', 1, NULL, 'meghan-carter', 0, '2023-11-22 05:02:40', '2023-12-05 06:31:42'),
(8, 'Freelancing', 'freelancing', 1, NULL, 'freelancing', 1, '2023-11-22 06:30:37', NULL),
(9, 'Tution', 'private', 1, NULL, 'tution', 1, '2023-11-22 06:30:52', NULL),
(10, 'Business', NULL, 1, NULL, 'business', 1, '2023-12-05 06:24:10', NULL),
(12, 'Web Development', NULL, 1, NULL, 'web-development', 1, '2023-12-05 06:29:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_17_025630_create_income_categories_table', 1),
(6, '2023_10_17_025807_create_expense_categories_table', 1),
(7, '2023_10_29_164850_create_incomes_table', 1),
(8, '2023_10_29_164925_create_expenses_table', 1),
(9, '2023_11_01_093121_create_roles_table', 1),
(10, '2023_11_19_143253_create_basics_table', 1),
(11, '2023_11_19_143512_create_social_media_table', 1),
(12, '2023_11_19_143809_create_contact_information_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_slug`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'R20655c602d6a8d6', 1, '2023-11-21 07:45:49', NULL),
(2, 'Admin', 'R20655c602d6c5a5', 1, '2023-11-21 07:45:49', NULL),
(3, 'Author', 'R20655c602d6fd01', 1, '2023-11-21 07:45:49', NULL),
(4, 'Editor', 'R20655c602d732ea', 1, '2023-11-21 07:45:49', NULL),
(5, 'Subscriber', 'R20655c602d74fa4', 1, '2023-11-21 07:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint UNSIGNED NOT NULL,
  `sm_facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_behance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_whatsapp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_telegram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_github` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_creator` int DEFAULT NULL,
  `sm_editor` int DEFAULT NULL,
  `sm_slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_youtube`, `sm_instagram`, `sm_pinterest`, `sm_behance`, `sm_whatsapp`, `sm_telegram`, `sm_github`, `sm_creator`, `sm_editor`, `sm_slug`, `sm_status`, `created_at`, `updated_at`) VALUES
(1, 'www.facebook.com', '#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'SM20655c602d66941', 1, '2023-11-21 07:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL DEFAULT '5',
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `username`, `role`, `photo`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rehana Kabir Mim', '01795913294', 'rehanakabirmim@gmail.com', NULL, '$2y$10$lbr4CJUuqf9mDD1xnQ8wd.6j6IPeefvn0rm7CRqIQAbjqdA75.zce', NULL, 'mim', 1, NULL, 'U20655c602d618db', 1, '2023-11-21 07:45:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`ci_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`expcat_id`),
  ADD UNIQUE KEY `expense_categories_expcat_name_unique` (`expcat_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`incate_id`),
  ADD UNIQUE KEY `income_categories_incate_name_unique` (`incate_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `roles_role_name_unique` (`role_name`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `ci_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expcat_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `income_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `incate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
