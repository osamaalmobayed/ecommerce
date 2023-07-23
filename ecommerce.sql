-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 02:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eco1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `type`, `phone`, `brand`, `category`, `product`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$2K/72Pji5Tvt/nWFZFIiGOL7wnwUtHesgfDJaSIrHBWf/k/mKQ2AK', 'hPMfLAYDNr4Q09ebxlZwslLZAe41Hty60dosfcM51j8CfjSyMoa3kNE6jNFq', NULL, NULL, NULL, NULL, NULL, NULL, '20230521124901.png', '2021-02-02 15:36:52', '2023-07-17 06:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_hin`, `post_slug_en`, `post_slug_hin`, `post_image`, `post_details_en`, `post_details_hin`, `created_at`, `updated_at`) VALUES
(4, 1, 'What is Lorem Ipsum?', 'What is Lorem Ipsum?', 'what-is-lorem-ipsum?', 'What-is-Lorem-Ipsum?', 'upload/post/1767130967814845.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2023-05-28 06:50:18', NULL),
(5, 3, 'Why do we use it?', 'Why do we use it?', 'why-do-we-use-it?', 'Why-do-we-use-it?', 'upload/post/1767131020465772.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2023-05-28 06:51:08', NULL),
(6, 2, 'Where does it come from?', 'Where does it come from?', 'where-does-it-come-from?', 'Where-does-it-come-from?', 'upload/post/1767131040023199.webp', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2023-05-28 06:51:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_hin`, `blog_category_slug_en`, `blog_category_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 'Watches', 'Watches', 'watches', 'Watches', '2023-05-28 06:42:10', '2023-05-28 06:42:10'),
(2, 'Phones', 'Phones', 'phones', 'Phones', '2023-05-28 06:41:30', '2023-05-28 06:41:30'),
(3, 'Clothes', 'Clothes', 'clothes', 'Clothes', '2023-05-28 06:41:48', '2023-05-28 06:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(10, 'Samsung', 'Samsung', 'samsung', 'Samsung', 'upload/brand/1766506575097367.png', NULL, NULL),
(11, 'Apple', 'Apple', 'apple', 'Apple', 'upload/brand/1766506601995058.png', NULL, NULL),
(12, 'Xiaomi', 'Xiaomi', 'xiaomi', 'Xiaomi', 'upload/brand/1766506616764908.png', NULL, NULL),
(13, 'H&M', 'H&M', 'h&m', 'H&M', 'upload/brand/1766506661967752.png', NULL, NULL),
(14, 'Zara', 'Zara', 'zara', 'Zara', 'upload/brand/1766506775421148.png', NULL, NULL),
(15, 'Casio', 'Casio', 'casio', 'Casio', 'upload/brand/1766508643820442.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(10, 'Computers', 'Computers', 'computers', 'Computers', 'fa fa-camera', NULL, '2023-06-12 08:09:53'),
(11, 'Smart Homes', 'Intelligente Häuser', 'smart-homes', 'Intelligente-Häuser', 'fa fa-automobile', NULL, '2023-06-12 08:10:27'),
(12, 'Men\'s Fashion', 'Männermode', 'men\'s-fashion', 'Männermode', 'fa fa-life-ring', NULL, '2023-06-12 08:10:51'),
(13, 'Women\'s Fashion', 'Frauenmode', 'women\'s-fashion', 'Frauenmode', 'fa fa-diamond', NULL, '2023-06-12 08:11:46'),
(14, 'Video Games', 'Videospiele', 'video-games', 'Videospiele', 'fa fa-database', NULL, '2023-06-12 08:11:37'),
(15, 'Health Care', 'Gesundheitspflege', 'health-care', 'Gesundheitspflege', 'fa fa-tags', NULL, '2023-06-12 08:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VIEW', 20, '2023-05-30', 1, '2023-05-15 08:49:10', NULL),
(3, 'SUMMER', 30, '2023-10-10', 1, '2023-05-28 06:32:13', NULL),
(4, 'BIGSALE', 35, '2023-10-25', 1, '2023-05-28 06:32:46', NULL),
(5, 'COUPON1', 30, '2023-08-23', 1, '2023-06-20 08:05:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(26, '2021_03_27_192140_create_reviews_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'upload/products/multi-image/1767140435806184.webp', NULL, '2023-05-28 09:20:47'),
(3, 2, 'upload/products/multi-image/1767140436124126.webp', NULL, '2023-05-28 09:20:47'),
(4, 2, 'upload/products/multi-image/1767140436380330.webp', NULL, '2023-05-28 09:20:48'),
(5, 2, 'upload/products/multi-image/1767140436813591.webp', NULL, '2023-05-28 09:20:48'),
(6, 2, 'upload/products/multi-image/1 (1).jpg', NULL, NULL),
(7, 4, 'upload/products/multi-image/1767156378481247.webp', NULL, '2023-05-28 13:34:11'),
(8, 4, 'upload/products/multi-image/1767156379005831.webp', NULL, '2023-05-28 13:34:12'),
(9, 4, 'upload/products/multi-image/1767156379608331.webp', NULL, '2023-05-28 13:34:12'),
(10, 4, 'upload/products/multi-image/1 (5).jpg', NULL, NULL),
(11, 8, 'upload/products/multi-image/1767156615880733.webp', NULL, '2023-05-28 13:37:58'),
(12, 8, 'upload/products/multi-image/1767156616510942.webp', NULL, '2023-05-28 13:37:58'),
(13, 8, 'upload/products/multi-image/1767156616992580.webp', NULL, '2023-05-28 13:37:59'),
(14, 8, 'upload/products/multi-image/1767156617523443.webp', NULL, '2023-05-28 13:37:59'),
(15, 8, 'upload/products/multi-image/1767156617966116.webp', NULL, '2023-05-28 13:38:00'),
(16, 1, 'upload/products/multi-image/1767157132645622.webp', NULL, '2023-05-28 13:46:11'),
(17, 1, 'upload/products/multi-image/1767157133225216.webp', NULL, '2023-05-28 13:46:12'),
(18, 1, 'upload/products/multi-image/1767157134478177.webp', NULL, '2023-05-28 13:46:13'),
(19, 1, 'upload/products/multi-image/1767157135327543.webp', NULL, '2023-05-28 13:46:13'),
(20, 5, 'upload/products/multi-image/1767157484010099.webp', NULL, '2023-05-28 13:51:46'),
(21, 5, 'upload/products/multi-image/1767157484529529.webp', NULL, '2023-05-28 13:51:46'),
(22, 5, 'upload/products/multi-image/1767157484987647.webp', NULL, '2023-05-28 13:51:47'),
(23, 5, 'upload/products/multi-image/1767157485672215.webp', NULL, '2023-05-28 13:51:47'),
(24, 6, 'upload/products/multi-image/1767157763564078.webp', NULL, '2023-05-28 13:56:12'),
(25, 6, 'upload/products/multi-image/1767157764072450.webp', NULL, '2023-05-28 13:56:13'),
(26, 6, 'upload/products/multi-image/1767157764617490.webp', NULL, '2023-05-28 13:56:13'),
(27, 0, 'upload/products/multi-image/1 (22).jpg', NULL, NULL),
(28, 7, 'upload/products/multi-image/1767217935989570.webp', NULL, '2023-05-29 05:52:37'),
(29, 7, 'upload/products/multi-image/1767217936616318.webp', NULL, '2023-05-29 05:52:38'),
(30, 7, 'upload/products/multi-image/1767217937008520.webp', NULL, '2023-05-29 05:52:38'),
(31, 7, 'upload/products/multi-image/1767217937323275.webp', NULL, '2023-05-29 05:52:38'),
(32, 7, 'upload/products/multi-image/1767217937625455.webp', NULL, '2023-05-29 05:52:39'),
(33, 9, 'upload/products/multi-image/1767218093825885.webp', NULL, '2023-05-29 05:55:07'),
(34, 9, 'upload/products/multi-image/1767218094138119.webp', NULL, '2023-05-29 05:55:08'),
(35, 9, 'upload/products/multi-image/1767218094486965.webp', NULL, '2023-05-29 05:55:08'),
(36, 3, 'upload/products/multi-image/1 (23).jpg', NULL, NULL),
(37, 3, 'upload/products/multi-image/1 (24).jpg', NULL, NULL),
(38, 3, 'upload/products/multi-image/1 (25).jpg', NULL, NULL),
(39, 3, 'upload/products/multi-image/1 (26).jpg', NULL, NULL),
(40, 10, 'upload/products/multi-image/1767218599779560.webp', NULL, '2023-05-29 06:03:10'),
(41, 10, 'upload/products/multi-image/1767218600205189.webp', NULL, '2023-05-29 06:03:10'),
(42, 10, 'upload/products/multi-image/1767218600545566.webp', NULL, '2023-05-29 06:03:11'),
(43, 10, 'upload/products/multi-image/1767218600961208.webp', NULL, '2023-05-29 06:03:11'),
(44, 11, 'upload/products/multi-image/1767218757595718.webp', NULL, '2023-05-29 06:05:40'),
(45, 11, 'upload/products/multi-image/1767218757965944.webp', NULL, '2023-05-29 06:05:41'),
(46, 11, 'upload/products/multi-image/1767218758347181.webp', NULL, '2023-05-29 06:05:41'),
(47, 12, 'upload/products/multi-image/1767218887817669.webp', NULL, '2023-05-29 06:07:45'),
(48, 12, 'upload/products/multi-image/1767218888192185.webp', NULL, '2023-05-29 06:07:45'),
(49, 12, 'upload/products/multi-image/1767218888560571.webp', NULL, '2023-05-29 06:07:45'),
(50, 13, 'upload/products/multi-image/1767219057236652.webp', NULL, '2023-05-29 06:10:26'),
(51, 13, 'upload/products/multi-image/1767219057569990.webp', NULL, '2023-05-29 06:10:26'),
(52, 13, 'upload/products/multi-image/1767219057856795.webp', NULL, '2023-05-29 06:10:27'),
(53, 13, 'upload/products/multi-image/1767219058258439.webp', NULL, '2023-05-29 06:10:27'),
(54, 14, 'upload/products/multi-image/1767220015406200.webp', NULL, '2023-05-29 06:25:40'),
(55, 14, 'upload/products/multi-image/1767220015778767.webp', NULL, '2023-05-29 06:25:40'),
(56, 3, 'upload/products/multi-image/1 (54).jpg', NULL, NULL),
(57, 3, 'upload/products/multi-image/1 (55).jpg', NULL, NULL),
(58, 3, 'upload/products/multi-image/1 (56).jpg', NULL, NULL),
(59, 3, 'upload/products/multi-image/1 (57).jpg', NULL, NULL),
(60, 15, 'upload/products/multi-image/1767220701984174.webp', NULL, '2023-05-29 06:36:35'),
(61, 15, 'upload/products/multi-image/1767220702308639.webp', NULL, '2023-05-29 06:36:35'),
(62, 15, 'upload/products/multi-image/1767220702588501.webp', NULL, '2023-05-29 06:36:35'),
(63, 15, 'upload/products/multi-image/1767220702833245.webp', NULL, '2023-05-29 06:36:36'),
(64, 16, 'upload/products/multi-image/1767220518876144.webp', NULL, '2023-05-29 06:33:40'),
(65, 16, 'upload/products/multi-image/1767220519207459.webp', NULL, '2023-05-29 06:33:40'),
(66, 16, 'upload/products/multi-image/1767220519512092.webp', NULL, '2023-05-29 06:33:41'),
(67, 16, 'upload/products/multi-image/1767220519839890.webp', NULL, '2023-05-29 06:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_order` int(11) DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `return_order`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 6, 6, 6, 'User', 'user@gmail.com', '123123', 123123, '123123123', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 35.00, NULL, 'EOS92686079', NULL, '30 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-30 09:30:13', NULL),
(4, 1, 6, 6, 6, 'User', 'user@gmail.com', '123123', 1234234, 'wecdsadvasdc', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 168.00, NULL, 'EOS32669832', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delivered', '2023-05-31 06:16:34', '2023-05-31 07:21:31'),
(5, 1, 5, 7, 9, 'User', 'user@gmail.com', '5436234', 434435, 'csdacd', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 100.00, NULL, 'EOS37444830', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-31 07:25:45', NULL),
(6, 1, 7, 9, 8, 'User', 'user@gmail.com', '45634', 456345345, 'asfergv', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 500.00, NULL, 'EOS32162365', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-31 08:46:58', NULL),
(7, 1, 7, 9, 8, 'User', 'user@gmail.com', '45634', 456345345, 'asfergv', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 500.00, NULL, 'EOS81208193', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-31 08:47:42', NULL),
(8, 1, 7, 10, 7, 'User', 'user@gmail.com', '3452345', 23452345, 'fasdvdrfv', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 5150.00, NULL, 'EOS84236318', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'picked', '2023-05-31 08:48:54', '2023-06-21 09:58:35'),
(9, 1, 5, 7, 9, 'User', 'user@gmail.com', '34534', 42134, 'sdcdfvdfv', 'card_1NDntLALc6pn5BvMIdwrXxZg', 'Stripe', 'txn_3NDntMALc6pn5BvM1gmfTkeK', 'usd', 6.00, '647739b79427b', 'EOS15501843', NULL, '31 May 2023', 'May', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-05-31 09:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 4, 8, 'Black', 'Medium', '3', 80.00, '2023-05-31 06:16:37', NULL),
(2, 5, 12, 'Green', 'Small', '2', 50.00, '2023-05-31 07:25:46', NULL),
(3, 7, 12, 'Green', 'Small', '10', 50.00, '2023-05-31 08:47:43', NULL),
(4, 8, 12, 'Green', 'Large', '103', 50.00, '2023-05-31 08:48:55', NULL),
(5, 9, 15, 'Green', 'Small', '3', 2.00, '2023-05-31 09:12:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 12, 21, 34, 'Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD', 'Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD', 'negocio-rock-crawler-1:-20-2.4ghz-remote-control-car-4wd', 'Negocio-Rock-Crawler-1:-20-2.4GHz-Remote-Control-Car-4WD', '1231234', '200', 'awecawe,Negocio', 'awefawef,Negocio', 'Medium', 'Medium', 'Black', 'Black', '300', '250', 'Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD', 'Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD', '<p>Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD</p>', '<p>Negocio Rock Crawler 1: 20 2.4GHz Remote Control Car 4WD</p>', 'upload/products/thambnail/1767157104750849.webp', 1, 1, 1, 1, 1, '2023-05-31 09:26:57', '2023-05-31 09:26:57'),
(2, 14, 12, 20, 33, 'Women Brown Hand-held Bag', 'Women Brown Hand-held Bag', 'women-brown-hand-held-bag', 'Women-Brown-Hand-held-Bag', 'Women Bag', '50', 'Bag', 'Bag', 'Small,Medium', 'Medium,Small', 'red,black', 'red,black', '600', '500', 'khatushyam collection Women Brown Hand-held Bag', 'khatushyam collection Women Brown Hand-held Bag', '<p>khatushyam collection&nbsp;Women Brown Hand-held Bag</p>', '<p>khatushyam collection&nbsp;Women Brown Hand-held Bag</p>', 'upload/products/thambnail/1767155776067088.webp', 1, 1, NULL, NULL, 1, '2023-05-28 13:21:48', '2023-05-28 13:24:38'),
(4, 10, 11, 16, 26, 'Canon PIXMA E3370 Multi-function', 'Canon PIXMA E3370 Multi-function', 'canon-pixma-e3370-multi-function', 'Canon-PIXMA-E3370-Multi-function', 'Canon', '100', 'Canon', 'Canon', 'Large', 'Large', 'Black', 'Black', '500', '300', 'test2', 'test2', '<p>Canon PIXMA E3370 Multi-function WiFi Color Inkjet Printer (Borderless Printing)&nbsp;&nbsp;(Black, Ink Cartridge)</p>', '<p>Canon PIXMA E3370 Multi-function WiFi Color Inkjet Printer (Borderless Printing)&nbsp;&nbsp;(Black, Ink Cartridge)</p>', 'upload/products/thambnail/1767156914594885.webp', 1, 1, 1, 1, 1, '2023-05-28 13:32:34', '2023-05-28 13:42:43'),
(5, 12, 15, 31, 42, 'Audio Technica ATH-M30x Professional', 'Audio Technica ATH-M30x Professional', 'audio-technica-ath-m30x-professional', 'Audio-Technica-ATH-M30x-Professional', 'Audio Technica', '22', 'Audio Technica', 'Audio Technica', 'Large', 'Large', 'Red', 'Red', '60', NULL, 'Audio Technica ATH-M30x Professional', 'Audio Technica ATH-M30x Professional', '<p>Audio Technica ATH-M30x Professional Monitor Headphones Wired without Mic Headset&nbsp;&nbsp;(Black, On the Ear)</p>', '<p>Audio Technica ATH-M30x Professional Monitor Headphones Wired without Mic Headset&nbsp;&nbsp;(Black, On the Ear)</p>', 'upload/products/thambnail/1767157453649264.webp', NULL, NULL, 1, 1, 1, '2023-05-31 09:23:25', '2023-05-31 09:23:25'),
(6, 15, 15, 30, 41, 'Happilo Premium Natural', 'Happilo Premium Natural', 'happilo-premium-natural', 'Happilo-Premium-Natural', 'Happilo Premium Natural', '300', 'Happilo', 'Happilo', 'Large', 'Large', 'Green', 'Green', '10', NULL, 'Happilo Premium Natural', 'Happilo Premium Natural', '<p>Happilo Premium Natural Californian Almonds&nbsp;&nbsp;(200 g)</p>', '<p>Happilo Premium Natural Californian Almonds&nbsp;&nbsp;(200 g)</p>', 'upload/products/thambnail/1767157734068415.webp', NULL, NULL, NULL, NULL, 1, '2023-05-31 09:23:19', '2023-05-31 09:23:19'),
(7, 13, 11, 18, 30, 'Men Slim Fit Checkered Casual Shirt', 'Men Slim Fit Checkered Casual Shirt', 'men-slim-fit-checkered-casual-shirt', 'Men-Slim-Fit-Checkered-Casual-Shirt', 'Men Slim', '30', 'Men Slim', 'Men Slim', 'Small, Medium, Large', 'Small, Medium, Large', 'Green,Red', 'Green,Red', '60', NULL, 'Men Slim Fit Checkered Casual Shirt', 'Men Slim Fit Checkered Casual Shirt', '<p>Men Slim Fit Checkered Casual Shirt</p>', '<p>Men Slim Fit Checkered Casual Shirt</p>', 'upload/products/thambnail/1767217947536649.webp', NULL, NULL, NULL, NULL, 1, '2023-05-31 09:27:26', '2023-06-10 06:50:00'),
(8, 12, 14, 27, 39, 'Syska SH0300 Shaver For Men', 'Syska SH0300 Shaver For Men', 'syska-sh0300-shaver-for-men', 'Syska-SH0300-Shaver-For-Men', 'Syska', '17', 'Syska', 'Syska', 'Medium', 'Medium', 'Black', 'Black', '80', '70', 'Syska SH0300 Shaver For Men  (Black)', 'Syska SH0300 Shaver For Men  (Black)', '<p>Syska SH0300 Shaver For Men&nbsp;&nbsp;(Black)</p>', '<p>Syska SH0300 Shaver For Men&nbsp;&nbsp;(Black)</p>', 'upload/products/thambnail/1767156937265668.webp', 1, 1, 1, 1, 1, '2023-05-31 09:23:23', '2023-05-31 09:23:23'),
(9, 13, 13, 24, 36, 'Men Regular Fit Checkered Casual Shirt', 'Men Regular Fit Checkered Casual Shirt', 'men-regular-fit-checkered-casual-shirt', 'Men-Regular-Fit-Checkered-Casual-Shirt', 'Men Regular Fit Checkered Casual Shirt', '20', 'Men Regular Fit Checkered Casual Shirt', 'Men Regular Fit Checkered Casual Shirt', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '40', '35', 'Men Regular Fit Checkered Casual Shirt', 'Men Regular Fit Checkered Casual Shirt', '<p>Men Regular Fit Checkered Casual Shirt</p>', '<p>Men Regular Fit Checkered Casual Shirt</p>', 'upload/products/thambnail/1767220922420323.webp', 1, 1, 1, 1, 1, '2023-05-29 05:54:08', '2023-05-29 06:40:05'),
(10, 14, 10, 15, 24, 'Men Blue Artificial', 'Men Blue Artificial', 'men-blue-artificial', 'Men-Blue-Artificial', 'Men Blue Artificial', '12', 'Men Blue Artificial', 'Men Blue Artificial', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '15', NULL, 'Men Blue Artificial Leather Wallet - Mini  (3 Card Slots)', 'Men Blue Artificial Leather Wallet - Mini  (3 Card Slots)', '<p>Men Blue Artificial Leather Wallet - Mini&nbsp;&nbsp;(3 Card Slots)</p>', '<p>Men Blue Artificial Leather Wallet - Mini&nbsp;&nbsp;(3 Card Slots)</p>', 'upload/products/thambnail/1767218310908968.webp', NULL, NULL, NULL, NULL, 1, '2023-05-31 09:26:48', '2023-05-31 09:28:04'),
(11, 15, 14, 27, 39, 'Day and Date Functioning Blue', 'Day and Date Functioning Blue', 'day-and-date-functioning-blue', 'Day-and-Date-Functioning-Blue', 'test32', '26', 'nicht', 'nicht', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '22', '12', 'Day and Date Functioning Blue Avatar Leather Strap Quartz Operated Analog Watch - For Men LS2914', 'Day and Date Functioning Blue Avatar Leather Strap Quartz Operated Analog Watch - For Men LS2914', '<p>Day and Date Functioning Blue Avatar Leather Strap Quartz Operated Analog Watch - For Men LS2914</p>', '<p>Day and Date Functioning Blue Avatar Leather Strap Quartz Operated Analog Watch - For Men LS2914</p>', 'upload/products/thambnail/1767218770757772.webp', NULL, NULL, NULL, NULL, 1, '2023-05-29 06:04:54', '2023-05-29 06:05:53'),
(12, 13, 13, 24, 36, '41 L Hand Duffel Bag', '41 L Hand Duffel Bag', '41-l-hand-duffel-bag', '41-L-Hand-Duffel-Bag', '41 L Hand Duffel Bag', '20', 'Bag', 'Bag', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '50', '40', '41 L Hand Duffel Bag - PANORAMA DF - Grey - Large Capacity', '41 L Hand Duffel Bag - PANORAMA DF - Grey - Large Capacity', '<p>41 L Hand Duffel Bag - PANORAMA DF - Grey - Large Capacity</p>', '<p>41 L Hand Duffel Bag - PANORAMA DF - Grey - Large Capacity</p>', 'upload/products/thambnail/1767218899076707.webp', NULL, 1, NULL, NULL, 1, '2023-05-31 09:23:11', '2023-05-31 09:23:11'),
(13, 14, 14, 27, 39, 'Slip On For Men  (Tan)', 'Slip On For Men  (Tan)', 'slip-on-for-men--(tan)', 'Slip-On-For-Men--(Tan)', 'Slip On For Men  (Tan)', '10', 'Slip On For Men  (Tan)', 'Slip On For Men  (Tan)', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '100', NULL, 'Slip On For Men  (Tan)', 'Slip On For Men  (Tan)', '<p>Slip On For Men&nbsp;&nbsp;(Tan)</p>', '<p>Slip On For Men&nbsp;&nbsp;(Tan)</p>', 'upload/products/thambnail/1767219067561446.webp', NULL, NULL, NULL, 1, 1, '2023-05-31 09:23:08', '2023-06-20 08:03:25'),
(14, 14, 12, 21, 34, 'Synthetic Leather| Ultralightweight', 'Synthetic Leather| Ultralightweight', 'synthetic-leather|-ultralightweight', 'Synthetic-Leather|-Ultralightweight', 'Synthetic Leather| Ultralightweight', '20', 'Synthetic Leather| Ultralightweight', 'Synthetic Leather| Ultralightweight', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '80', NULL, 'Synthetic Leather| Ultralightweight | Comfortable | Breathable Walking | Outdoor For Men  (Brown)', 'Synthetic Leather| Ultralightweight | Comfortable | Breathable Walking | Outdoor For Men  (Brown)', '<p>Synthetic Leather| Ultralightweight | Comfortable | Breathable Walking | Outdoor For Men&nbsp;&nbsp;(Brown)</p>', '<p>Synthetic Leather| Ultralightweight | Comfortable | Breathable Walking | Outdoor For Men&nbsp;&nbsp;(Brown)</p>', 'upload/products/thambnail/1767220059011095.webp', NULL, NULL, NULL, NULL, 1, '2023-05-31 09:23:05', '2023-05-31 09:23:05'),
(15, 11, 12, 20, 33, 'Canon EOS M200 Mirrorless Camera', 'Canon EOS M200 Mirrorless Camera', 'canon-eos-m200-mirrorless-camera', 'Canon-EOS-M200-Mirrorless-Camera', 'Canon Camera', '22', 'Canon Camera', 'Canon Camera', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '700', NULL, 'Canon EOS M200 Mirrorless Camera Body with Single Lens (EF-M15-45mm f/3.5-6.3 IS STM)  (Black)', 'Canon EOS M200 Mirrorless Camera Body with Single Lens (EF-M15-45mm f/3.5-6.3 IS STM)  (Black)', '<p>Canon EOS M200 Mirrorless Camera Body with Single Lens (EF-M15-45mm f/3.5-6.3 IS STM)&nbsp;&nbsp;(Black)</p>', '<p>Canon EOS M200 Mirrorless Camera Body with Single Lens (EF-M15-45mm f/3.5-6.3 IS STM)&nbsp;&nbsp;(Black)</p>', 'upload/products/thambnail/1767220720290902.webp', NULL, NULL, NULL, NULL, 1, '2023-05-31 09:22:01', '2023-05-31 09:22:01'),
(16, 12, 12, 21, 34, 'DELL S Series 24 inch Full HD', 'DELL S Series 24 inch Full HD', 'dell-s-series-24-inch-full-hd', 'DELL-S-Series-24-inch-Full-HD', 'DELL S Series 24 inch Full HD', '25', 'DELL', 'DELL', 'Small, Medium, Large', 'Small, Medium, Large', 'Green, Red, Black', 'Green, Red, Black', '22', NULL, 'DELL S Series 24 inch Full HD IPS Panel Monitor (S2421HNM / S2421HN)  (AMD Free Sync, Response Time: 4 ms, 75 Hz Refresh Rate)', 'DELL S Series 24 inch Full HD IPS Panel Monitor (S2421HNM / S2421HN)  (AMD Free Sync, Response Time: 4 ms, 75 Hz Refresh Rate)', '<p>DELL S Series 24 inch Full HD IPS Panel Monitor (S2421HNM / S2421HN)&nbsp;&nbsp;(AMD Free Sync, Response Time: 4 ms, 75 Hz Refresh Rate)</p>', '<p>DELL S Series 24 inch Full HD IPS Panel Monitor (S2421HNM / S2421HN)&nbsp;&nbsp;(AMD Free Sync, Response Time: 4 ms, 75 Hz Refresh Rate)</p>', 'upload/products/thambnail/1767220533378909.webp', NULL, NULL, NULL, NULL, 1, '2023-05-29 06:27:49', '2023-05-29 06:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Easy Shop', 'Easy Shop', 'Easy Shop', 'Easy Shop', 'Easy Shop', NULL, '2023-05-28 07:01:54'),
(2, 'ASDC', 'ASDC', 'ASCDASCD', 'ASDCSDC', 'ASDCASDCASCD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bH04AiN1ySNeWd178wDTf9ynKS3GXIS1EPuyARRj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmZKNnJFM3lvYVUzdFA4TjFydlVxMk1ncDZiMGNkcERpWjg2ZFBPYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1689585771),
('JFh1FAyUDEa7ylcc4anuzYzGY7qCXvHE6oln1uB7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL215L29yZGVycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJQS1U4eDc3aUFaZnQ2VXlCSzVvSG00Y2lyZTdpbjZheVJ4WjhreUJOIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRk5HOE1pNEs1bHFpZ0ZBc3VmYk5MLjNNSGZFckpOSU00dHRXU0F6dC9lM3ZkTnk1YWZjd3kiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEZORzhNaTRLNWxxaWdGQXN1ZmJOTC4zTUhmRXJKTklNNHR0V1NBenQvZTN2ZE55NWFmY3d5Ijt9', 1689585928),
('zj819IjvAIIExfUn4rB1HMlQQnDTJWg5mWjtjmkL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGduVEdWSTRTa0pxSUpVWDhRRHZVRXRaU3ZVcjdqNkdxZzdqcHlGWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1689585829);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(5, 6, 'Los Angeles', '2023-05-28 06:35:18', NULL),
(6, 6, 'San Diego', '2023-05-28 06:35:22', NULL),
(7, 5, 'New York city', '2023-05-28 06:36:54', NULL),
(8, 5, 'Brookhaven', '2023-05-28 06:37:02', NULL),
(9, 7, 'Miami', '2023-05-28 06:37:19', NULL),
(10, 7, 'Tampa', '2023-05-28 06:37:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(5, 'NY', '2023-05-28 06:33:40', NULL),
(6, 'CA', '2023-05-28 06:34:03', NULL),
(7, 'FL', '2023-05-28 06:34:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(5, 6, 5, 'State 1', '2023-05-28 06:35:52', NULL),
(6, 6, 6, 'State 1', '2023-05-28 06:36:05', NULL),
(7, 7, 10, 'State 3', '2023-05-28 06:37:50', NULL),
(8, 7, 9, 'State 4', '2023-05-28 06:38:07', NULL),
(9, 5, 7, 'State 5', '2023-05-28 06:38:16', NULL),
(10, 5, 8, 'State 6', '2023-05-28 06:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1765961094066996.jpg', '+12-345-67899', '+22-345-67899', 'easyshop@gmail.com', 'Easy Shop', '13th Street. 47 W 13th St, New York, NY 10011', 'Easy Shop', 'Easy Shop', 'Easy Shop', 'Easy Shop', NULL, '2023-06-10 07:03:36'),
(2, 'ASCASD', 'CSADCASDC', 'ASDCASDC', 'ASDCASDC', 'ASDC', 'ASDCASDC', 'ASDC', 'ASDC', 'ASDC', 'ASDC', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'upload/slider/1767128591746931.jpg', 'Casio Watch', 'It is a long established fact that', 1, NULL, '2023-05-28 06:24:31'),
(4, 'upload/slider/1768493776403523.webp', 'H&M T-shirt', 'Contrary to popular belief', 1, NULL, '2023-06-12 07:51:33'),
(5, 'upload/slider/1767128726767351.jpg', 'Where can I get some?', 'There are many variations of passages of Lorem', 0, NULL, '2023-05-28 06:16:12'),
(6, 'upload/slider/1767128772027032.jpg', 'iPhone 14', 'New iPhone 14', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(13, 10, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(14, 10, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-2', NULL, NULL),
(15, 10, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(16, 11, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(17, 11, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-3', NULL, '2023-05-21 16:14:25'),
(18, 11, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(19, 12, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(20, 12, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-2', NULL, NULL),
(21, 12, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(22, 13, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(23, 13, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(24, 13, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-2', NULL, NULL),
(25, 13, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(26, 14, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(27, 14, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-2', NULL, NULL),
(28, 14, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(29, 15, 'SubCategory 1', 'SubCategory 1', 'subcategory-1', 'SubCategory-1', NULL, NULL),
(30, 15, 'SubCategory 2', 'SubCategory 2', 'subcategory-2', 'SubCategory-2', NULL, NULL),
(31, 15, 'SubCategory 3', 'SubCategory 3', 'subcategory-3', 'SubCategory-3', NULL, NULL),
(32, 12, 'SubCategory 1', 'SubCategory 4', 'subcategory-1', 'SubCategory-4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_hin`, `subsubcategory_slug_en`, `subsubcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(15, 10, 13, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(16, 10, 13, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(17, 10, 13, 'SubSubCategory 3', 'SubSubCategory 3', 'subsubcategory-3', 'SubSubCategory-3', NULL, NULL),
(18, 10, 13, 'SubSubCategory 4', 'SubSubCategory 4', 'subsubcategory-4', 'SubSubCategory-4', NULL, NULL),
(19, 10, 14, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(20, 10, 14, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(21, 10, 14, 'SubSubCategory 3', 'SubSubCategory 3', 'subsubcategory-3', 'SubSubCategory-3', NULL, NULL),
(22, 10, 14, 'SubSubCategory 4', 'SubSubCategory 4', 'subsubcategory-4', 'SubSubCategory-4', NULL, NULL),
(23, 10, 15, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(24, 10, 15, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(25, 10, 15, 'SubSubCategory 3', 'SubSubCategory 3', 'subsubcategory-3', 'SubSubCategory-3', NULL, NULL),
(26, 11, 16, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(27, 11, 16, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(28, 11, 17, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(29, 11, 17, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(30, 11, 18, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(31, 11, 18, 'SubSubCategory 2', 'SubSubCategory 2', 'subsubcategory-2', 'SubSubCategory-2', NULL, NULL),
(32, 12, 19, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(33, 12, 20, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(34, 12, 21, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(35, 13, 22, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(36, 13, 24, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(37, 13, 25, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(38, 14, 26, 'SubSubCateg1ory 1', 'SubSubCategory 1', 'subsubcateg1ory-1', 'SubSubCategory-1', NULL, NULL),
(39, 14, 27, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(40, 15, 29, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(41, 15, 30, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(42, 15, 31, 'SubSubCategory 1', 'SubSubCategory 1', 'subsubcategory-1', 'SubSubCategory-1', NULL, NULL),
(43, 15, 31, 'SubSubCategory 1', 'SubSubCategory 15', 'subsubcategory-1', 'SubSubCategory-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `last_seen`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', NULL, NULL, '2023-07-17 09:25:27', '$2y$10$FNG8Mi4K5lqigFAsufbNL.3MHfErJNIM4ttWSAzt/e3vdNy5afcwy', NULL, NULL, NULL, NULL, '202305310932001.jpg', '2021-02-02 14:54:02', '2023-07-17 06:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2023-05-29 07:59:08', NULL),
(2, 1, 9, '2023-05-29 07:59:19', NULL),
(3, 1, 15, '2023-05-30 09:17:28', NULL),
(4, 1, 8, '2023-05-30 10:02:08', NULL),
(5, 1, 16, '2023-06-20 08:17:36', NULL),
(6, 1, 14, '2023-06-21 10:02:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
