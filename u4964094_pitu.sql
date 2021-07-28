-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2021 at 12:27 AM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u4964094_pitu`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(5, 'banner_1', 'banner-1', '/storage/photos/1/data_pitu/slider_images/Default/1GsP3GZHiUyYtr84ul87r370dAYK4KMNWNwmua9g.jpg', '<p>banner_1</p>', 'active', '2021-06-27 10:07:36', '2021-07-02 00:42:43'),
(6, 'banner_2', 'banner-2', '/storage/photos/1/data_pitu/slider_images/Default/4qnJiH1YSIwycSOH15UfLNV2r1q48pVduGFN3GR8.jpg', '<p><br></p>', 'active', '2021-06-27 10:08:00', '2021-06-27 10:08:55'),
(7, 'banner_3', 'banner-3', '/storage/photos/1/data_pitu/slider_images/Default/5TUQ4Rsr9jnoEvZXYK7SPIMm2E3vZtJeYLtdJ81p.jpg', '<p>banner_3</p>', 'active', '2021-07-02 00:29:29', '2021-07-02 00:29:29'),
(8, 'banner_4', 'banner-4', '/storage/photos/1/data_pitu/slider_images/Default/CrWCB8fhKEUZ0rp5wemkzV6gkgltV5EVtmprddhq.jpg', '<p>banner_4<br></p>', 'active', '2021-07-02 00:30:02', '2021-07-02 00:30:02'),
(9, 'banner_5', 'banner-5', '/storage/photos/1/data_pitu/slider_images/Default/E7RnP7u4L1ZRswAJ14E7QFGfmgjAzdaIu7GsuAL2.jpg', '<p>banner_5<br></p>', 'active', '2021-07-02 00:30:24', '2021-07-02 00:30:24'),
(10, 'banner_6', 'banner-6', '/storage/photos/1/data_pitu/slider_images/Default/G3jjtfu2An76nyycLCcgGsKWWZwGMVWoR3kIxZ49.jpg', '<p>banner_6<br></p>', 'active', '2021-07-02 00:30:56', '2021-07-02 00:30:56'),
(11, 'banner_7', 'banner-7', '/storage/photos/1/data_pitu/slider_images/Default/G6BqZKmUhvMEWdoesDU27Mn3Wic8WD6WQtHHx0fY.jpg', '<p>banner_7</p>', 'active', '2021-07-02 00:31:38', '2021-07-02 00:31:38'),
(12, 'banner_8', 'banner-8', '/storage/photos/1/data_pitu/slider_images/Default/MwnOzw1Mvcv8anmw8myMiVeRoRw3n2pDLvcka7Eg.jpg', '<p>banner_8</p>', 'active', '2021-07-02 00:34:05', '2021-07-02 00:34:05'),
(13, 'banner_9', 'banner-9', '/storage/photos/1/data_pitu/slider_images/Default/OCkBuFl6OKX85B9irgnFlHaythDUUEOE6vs5z65t.jpg', '<p>banner_9</p>', 'active', '2021-07-02 00:34:34', '2021-07-02 00:34:34'),
(14, 'banner_10', 'banner-10', '/storage/photos/1/data_pitu/slider_images/Default/SXJncmYgRs9ny80RWG1vTAtXcCUT7esQhfwCuY0p.jpg', '<p>banner_10</p>', 'active', '2021-07-02 00:35:09', '2021-07-02 00:35:09'),
(15, 'banner_11', 'banner-11', '/storage/photos/1/data_pitu/slider_images/Default/dZSJaA4XNFmLEUvFwGth47c3cRYe3QZoCsBRnqfI.jpg', '<p>banner_11</p>', 'active', '2021-07-02 00:35:41', '2021-07-02 00:35:41'),
(16, 'banner_12', 'banner-12', '/storage/photos/1/data_pitu/slider_images/Default/nTKuC8KrwsYX5hELULwoEgh6mkcaQTs7b2wFrx5W.jpg', '<p>banner_12</p>', 'active', '2021-07-02 00:36:14', '2021-07-02 00:36:14'),
(17, 'banner_13', 'banner-13', '/storage/photos/1/data_pitu/slider_images/Default/pprxAauOd4HIOaWuqFTFcSS7ajaehmEdCWlPaG7a.jpg', '<p>banner_13</p>', 'active', '2021-07-02 00:37:04', '2021-07-02 00:37:04'),
(18, 'banner_14', 'banner-14', '/storage/photos/1/data_pitu/slider_images/Default/rEKcEr3iXOerxU77nog7hQHEsGlW5CxwCjVQICRn.jpg', '<p>banner_14</p>', 'active', '2021-07-02 00:37:36', '2021-07-02 00:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(7, 'PitoeStore', 'pitoestore', 'active', '2021-07-04 20:02:37', '2021-07-04 20:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(31, 22, NULL, 2, 77000.00, 'new', 1, 77000.00, '2021-07-18 09:47:36', '2021-07-18 09:47:36'),
(32, 15, NULL, 2, 10000.00, 'new', 3, 20000.00, '2021-07-20 06:17:00', '2021-07-20 06:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(12, 'BERAS', 'beras', '<p>BERAS</p>', '/storage/photos/1/data_pitu/category/11/AXO6UugwGib6LeSR4vOHtxRdUp7TXn3cVwFtzy1Y.png', 1, NULL, NULL, 'active', '2021-07-04 19:50:08', '2021-07-04 19:50:08'),
(13, 'TEPUNG', 'tepung', '<p>TEPUNG</p>', '/storage/photos/1/data_pitu/category/12/a3mmt5oBPgt3rLh6Fi2DXkFNgFK5jkuyTd9tlUjV.jpg', 1, NULL, NULL, 'active', '2021-07-04 19:50:29', '2021-07-04 19:50:29'),
(14, 'KALDU', 'kaldu', '<p>KALDU</p>', '/storage/photos/1/data_pitu/category/13/Fpvb1kmB1atA8ptz5bSqlySzdiLwCOAXVS0uqn3y.jpg', 1, NULL, NULL, 'active', '2021-07-04 19:50:48', '2021-07-04 19:50:48'),
(15, 'KARAK', 'karak', '<p>KARAK</p>', '/storage/photos/1/data_pitu/category/14/eFW2fwyBaZgxcKgtLYM1tTU46rOXmICc0vd6IA8F.jpg', 1, NULL, NULL, 'active', '2021-07-04 19:51:04', '2021-07-04 19:51:04'),
(16, 'HERBAL DAN KESEHATAN', 'herbal-dan-kesehatan', '<p>HERBAL DAN KESEHATAN</p>', '/storage/photos/1/data_pitu/category/15/I0PUUplWy40Ylldl3xR9y4jKUsCEV5sXXJFQSPVe.png', 1, NULL, NULL, 'active', '2021-07-04 19:51:27', '2021-07-04 19:51:27'),
(17, 'OLAH PANGAN', 'olah-pangan', '<p>OLAH PANGAN</p>', '/storage/photos/1/data_pitu/category/16/HpI8puZQtBrDAq6bdnshzMjbc6yeMbL7idKSQNKS.jpg', 1, NULL, NULL, 'active', '2021-07-04 19:51:45', '2021-07-04 19:51:45'),
(18, 'SENI & PERLENGKAPAN', 'seni-perlengkapan', '<p>SENI &amp; PERLENGKAPAN<br></p>', '/storage/photos/1/data_pitu/category/17/n4ZYudIXGJNBQJ5CWbjNWuOP4jgQf8Hr1QDRdc9e.png', 1, NULL, NULL, 'active', '2021-07-04 19:52:48', '2021-07-04 19:52:48'),
(19, 'BUMBU DAPUR', 'bumbu-dapur', '<p>BUMBU DAPUR</p>', '/storage/photos/1/data_pitu/category/18/nuoID8jIZUbLgTE9V2P85WiyVRhf6WY5NKcRKlvH.jpg', 1, NULL, NULL, 'active', '2021-07-04 19:53:12', '2021-07-04 19:53:12'),
(20, 'PERTANIAN, PETERNAKAN & KEBUN', 'pertanian-peternakan-kebun', '<p>PERTANIAN, PETERNAKAN &amp; KEBUN&nbsp;<br></p>', '/storage/photos/1/data_pitu/category/19/JW77FmDWkHhF5WP9G2CqzsnnrE1uNIUpfVBuoFab.png', 1, NULL, NULL, 'active', '2021-07-04 19:53:36', '2021-07-04 19:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1),
(21, '2021_07_02_074813_add_location_to_products', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `weight` bigint(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`, `location`, `location_id`, `weight`) VALUES
(15, 'Brambang Goreng', 'brambang-goreng', 'Brambang Goreng', 'Brambang Goreng tanpa Campuran yang diolah dengan kwalitas tinggi agar tetap renyah.', '/system/storage/app/public/photos/1/Products/img56.jpg', 50, 'M', 'default', 'active', 22000.00, 0.00, 1, 17, NULL, 7, '2021-07-11 20:12:41', '2021-07-11 20:12:41', NULL, 427, 3),
(16, 'Sambal Pecel Ora Nyono', 'sambal-pecel-ora-nyono', 'Sambal Pecel Ora Nyono', 'Sambal Pecel tanpa pengawet, Tersedia dalam berbagai macam pedas.', '/system/storage/app/public/photos/1/Products/img56.jpg', 50, 'M', 'default', 'active', 27000.00, 0.00, 1, 17, NULL, NULL, '2021-07-11 20:17:39', '2021-07-11 20:17:39', NULL, 427, 3),
(17, 'Sabun Herbal Daun Ara', 'sabun-herbal-daun-ara', 'Sabun Herbal Daun Ara', 'Sabun Herbal Daun Ara \r\nMenggunakan 15% dari daun ara/Tin muda yang dipadu dengan susu sapi dan minyak zaitun kwalitas Import, \r\nMengandung banyak protein yang sangat bermanfaat membantu kesehatan kulit.\r\nMelembapkan, menghaluskan kulit. Sensasi kesegaran aroma terapi dari parfum membuat badan lebih segar dan menyegarkan pikiran.\r\nBusanya mengandun berjuta manfaat. Bukan sekedar sabun mandi biasa.', '/system/storage/app/public/photos/1/Products/img24.jpg', 50, 'M', 'default', 'active', 17000.00, 0.00, 1, 16, NULL, NULL, '2021-07-11 20:25:41', '2021-07-11 20:26:39', NULL, 427, 3),
(18, 'Teh Celup Mustika', 'teh-celup-mustika', 'Teh Celup Mustika', 'Terbuat dari 3-4 pucuk teratas daun Ara/Tin jenis yordania.\r\nDitanam dengan perlakuan khusus, dipetik sebelum Matahari terbit dan diolah dengan metode tanpa fermentasi, sehingga menghasilkan cita rasa dan aroma teh wangi Ara yang sesungguhnya.\r\nDaun Ara mengandung senyawa flavonoid terutam querecara serta luteotin.\r\nKeduanya adalah senyawa anti radang dan anti oksidan.', '/system/storage/app/public/photos/1/Products/img47.jpg', 50, 'M', 'default', 'active', 27000.00, 0.00, 1, 16, NULL, NULL, '2021-07-11 20:41:18', '2021-07-11 20:41:18', NULL, 427, 3),
(19, 'Teh Seduh Mustika', 'teh-seduh-mustika', 'Teh Seduh Mustika', 'Terbuat dari 3-4 pucuk teratas daun Ara/Tin jenis yordania.\r\nDitanam dengan perlakuan khusus, dipetik sebelum Matahari terbit dan diolah dengan metode tanpa fermentasi, sehingga menghasilkan cita rasa dan aroma teh wangi Ara yang sesungguhnya.\r\nDaun Ara mengandung senyawa flavonoid terutam querecara serta luteotin.\r\nKeduanya adalah senyawa anti radang dan anti oksidan.', '/system/storage/app/public/photos/1/Products/img44.jpg', 50, 'M', 'default', 'active', 37000.00, 0.00, 1, 16, NULL, NULL, '2021-07-11 20:43:37', '2021-07-11 20:43:37', NULL, 427, 3),
(20, 'Singkong Frozzen D\'java', 'singkong-frozzen-djava', 'Singkong Frozzen D\'java', 'Singkon Frozzen D\'java \r\nTerbuat dari singkong pilihan, Berbumbu Tradisional tanpa bahan Pengawet\r\nTinggal Goreng renyah gurih pasti nagih.', '/system/storage/app/public/photos/1/Products/img51.jpg', 50, 'M', 'default', 'active', 10000.00, 0.00, 1, 17, NULL, NULL, '2021-07-11 20:51:42', '2021-07-11 20:51:42', NULL, 427, 3),
(21, 'Telor Bebek Asin Bu Alex', 'telor-bebek-asin-bu-alex', 'Telor Bebek Asin Bu Alex', 'Telor Bebek Asin Bu Alex\r\nTerbuat dari telor Bebek kwalitas pilihan, diproses secara alami, untuk hasil yang enak dan gurih, serta terjaga kandungan gizinya.', '/system/storage/app/public/photos/1/Products/img39.jpg', 50, 'M', 'default', 'active', 5000.00, 0.00, 1, 17, NULL, NULL, '2021-07-11 20:58:22', '2021-07-11 20:58:22', NULL, 427, 3),
(22, 'Lemon Sultan 350ml', 'lemon-sultan-350ml', 'Lemon Sultan 350ml', 'Lemon Sultan 350ml \r\nLemon kaya manfaat diperas dan diolah beserta kulitnya, sehingga manfaat kulit lemon yang sangat baik untuk kesehatan juga bisa anda dapatkan.\r\nTidak mengandung pengawet dan pewarna maupun pewangi apapun.', '/system/storage/app/public/photos/1/Products/img29.jpg', 50, 'M', 'default', 'active', 77000.00, 0.00, 1, 16, NULL, NULL, '2021-07-11 22:40:25', '2021-07-11 22:40:25', NULL, 427, 3),
(23, 'Madu Imun Sultan 450ml', 'madu-imun-sultan-450ml', 'Madu Imun Sultan 450ml', 'Madu Imun Sultan 450ml\r\nLemon Peras kaya manfaat diperas dan diolah beserta dengan kulitnya, Sehingga manfaat kulit lemon yang sangat baik untuk kesehatan juga bisa anda dapatkan. Tidak mengandung pengawet, pewarna maupun pewangi apapun.', '/system/storage/app/public/photos/1/Products/img29.jpg', 50, 'M', 'default', 'active', 162000.00, 0.00, 1, 16, NULL, NULL, '2021-07-11 23:45:52', '2021-07-11 23:45:52', NULL, 427, 450),
(28, 'Jahe Instan Prafa Food 1kg', 'jahe-instan-prafa-food-1kg', 'Jahe Instan Prafa Food 1kg', 'Jahe Instan yang menghangatkan tubuh', '/system/storage/app/public/photos/1/Products/img38.jpg', 50, 'M', 'default', 'active', 77000.00, 0.00, 1, 16, NULL, NULL, '2021-07-18 20:43:48', '2021-07-18 20:43:48', NULL, 427, 3),
(29, 'Jahe Instan Prafa Food 1/2kg', 'jahe-instan-prafa-food-12kg', 'Jahe Instan Prafa Food 1/2kg', 'Jahe Yang Menghangatkan tubuh', '/system/storage/app/public/photos/1/Products/img38.jpg', 50, 'S', 'default', 'active', 42000.00, 0.00, 1, 16, NULL, NULL, '2021-07-18 20:48:32', '2021-07-18 20:48:32', NULL, 427, 1),
(30, 'Jamunir Prafa Food 1kg', 'jamunir-prafa-food-1kg', 'Jamunir Prafa Food 1kg', 'Minuman herbal yang terbuat dari kunyit', '/system/storage/app/public/photos/1/Products/img31.jpg', 50, 'M', 'default', 'active', 67000.00, 0.00, 1, 16, NULL, NULL, '2021-07-18 20:56:57', '2021-07-18 20:56:57', NULL, 427, 3),
(31, 'Jamunir Prafa Food 1/2kg', 'jamunir-prafa-food-12kg', 'Jamunir Prafa Food 1/2kg', 'Minuman herbal yang terbuat dari kunyit', '/system/storage/app/public/photos/1/Products/img31.jpg', 50, 'S', 'default', 'active', 42000.00, 0.00, 1, 16, NULL, NULL, '2021-07-18 21:04:46', '2021-07-18 21:04:46', NULL, 427, 1),
(32, 'Wedang uwuh per box', 'wedang-uwuh-per-box', 'Wedang uwuh per box', 'Wedang uwuh, minuman herbal alami berkhasiat tinggi', '/system/storage/app/public/photos/1/Products/img21.jpg', 50, 'M', 'default', 'active', 37000.00, 0.00, 1, 16, NULL, NULL, '2021-07-18 23:18:37', '2021-07-18 23:18:37', NULL, 427, 2),
(33, 'Telur Asin GeaGeo', 'telur-asin-geageo', 'Telur Asin GeaGeo', 'Telur asin Geageo', '/system/storage/app/public/photos/1/Products/img39.jpg', 50, 'M', 'default', 'active', 5000.00, 0.00, 1, 17, NULL, NULL, '2021-07-18 23:38:41', '2021-07-18 23:38:41', NULL, 427, 1),
(34, 'Madu Ranupatma 640ml', 'madu-ranupatma-640ml', 'Madu Ranupatma 640ml', 'Madu murni tanpa bahan campuran, diambil langsung dari peternak.', '/system/storage/app/public/photos/1/Products/madu ranupatma.jpg', 50, 'M', 'default', 'active', 107000.00, 0.00, 1, 16, NULL, NULL, '2021-07-22 21:03:57', '2021-07-22 21:03:57', NULL, 427, 640),
(35, 'Madu Ranupatma 330ml', 'madu-ranupatma-330ml', 'Madu Ranupatma 330ml', 'Madu murni tanpa bahan campuran, diambil langsung dari peternak.', '/system/storage/app/public/photos/1/Products/madu ranupatma.jpg', 50, 'S', 'default', 'active', 62000.00, 0.00, 1, 16, NULL, NULL, '2021-07-22 21:07:27', '2021-07-22 21:07:27', NULL, 427, 330),
(36, 'Pangsit Goreng Nanchita 220gr', 'pangsit-goreng-nanchita-220gr', 'Pangsit Goreng Nanchita 220gr', 'Keripik Pangsit renyah cocok untuk camilan.', '/system/storage/app/public/photos/1/Products/img33.jpg', 50, 'M', 'default', 'active', 12000.00, 0.00, 1, 17, NULL, NULL, '2021-07-22 21:19:05', '2021-07-22 21:19:05', NULL, 427, 220),
(37, 'Keripik Pisang 175gr', 'keripik-pisang-175gr', 'Keripik Pisang 175gr', 'Keripik Pisang', '/system/storage/app/public/photos/1/Products/aneka.jpg', 50, 'M', 'default', 'active', 12000.00, 0.00, 1, 17, NULL, NULL, '2021-07-22 23:25:53', '2021-07-22 23:25:53', NULL, 427, 175),
(38, 'Geplak Jahe Curah/kg', 'geplak-jahe-curahkg', 'Geplak Jahe Curah/kg', 'Geplak Jahe Curah/kg', '/system/storage/app/public/photos/1/Products/aneka.jpg', 50, 'M', 'default', 'active', 67000.00, 0.00, 1, 17, NULL, NULL, '2021-07-22 23:28:38', '2021-07-22 23:28:38', NULL, 427, 1000),
(39, 'Geplak Jahe Curah/dos', 'geplak-jahe-curahdos', 'Geplak Jahe Curah/dos', 'Geplak Jahe Curah/dos', '/system/storage/app/public/photos/1/Products/aneka.jpg', 50, 'M', 'default', 'active', 17000.00, 0.00, 1, 17, NULL, NULL, '2021-07-22 23:31:44', '2021-07-22 23:31:44', NULL, 427, 100),
(40, 'Garamku', 'garamku', 'Garamku', 'Garamku merupakan garam dapur dari proses pengeringan air darat biasa (bukan laut) yang biasa di sebut Bledug kuwu.\r\nSehingga belum tercemar oleh logam berat sera kandungan laut yang berbahaya seperti di laut.\r\nCita rasa yang dihasilkan kurang begitu asin namun terasa lebih gurih, walaupun tanpa penyedap rasa.', '/system/storage/app/public/photos/1/img39.jpg', 50, 'M', 'default', 'active', 19000.00, 0.00, 1, 19, NULL, NULL, '2021-07-22 23:43:56', '2021-07-22 23:43:56', NULL, 134, 3),
(41, 'Gethuk Crispy', 'gethuk-crispy', 'Gethuk Crispy', 'Gethuk Crispy adalah makan tradisional yang dikemas modern dalam bentuk beku.\r\nTerbuat dari singkong asli Grobogan', '/system/storage/app/public/photos/1/Products/Gethuk crispy.jpg', 50, 'M', 'default', 'active', 17000.00, 0.00, 1, 17, NULL, NULL, '2021-07-22 23:59:09', '2021-07-22 23:59:09', NULL, 134, 3),
(42, 'Timus Crispy', 'timus-crispy', 'Timus Crispy', 'Timus Crispy DD” adalah makanan tradisional yg dikemas moderen dalam bentuk beku (Frozen). Terbuat dari ubi pilihan asli Grobogan. Dalam dua macam varian rasa', '/system/storage/app/public/photos/1/timus crispy.jpg', 3, 'M', 'default', 'active', 17000.00, 0.00, 1, 17, NULL, NULL, '2021-07-23 00:04:58', '2021-07-23 00:04:58', NULL, 134, 3),
(43, 'Sambal Brambut', 'sambal-brambut', 'Sambal Brambut', 'Sambal Brambut\r\nSambal Brambut (Brambang Mawut) adalah brambang goreng renyah yang sudah diberi bumbu.\r\nMerupakan produk lokal asli grobogan. Sudah terdaftar di dinkes dengan nomor PIRT. Cocok untuk teman makan nasi atau mie. Masa simpan 1 bulan.', '/system/storage/app/public/photos/1/img28.jpg', 50, 'M', 'default', 'active', 22000.00, 0.00, 1, 17, NULL, NULL, '2021-07-23 00:14:29', '2021-07-23 00:14:29', NULL, 134, 3),
(44, 'Sambal Pecel Kering Mathuk', 'sambal-pecel-kering-mathuk', 'Sambal Pecel Kering Mathuk', 'Sambel Pecel “MATHUK” sangat istimewa, lain dari pada yang lain, karena :\r\n1. Bertekstur halus (seperti abon)\r\n2. Rendah lemak/minyak, cocok banget buat orang yang menghindari makanan-makanan berminyak.\r\n3. Tahan lama karena teksturnya kering.\r\n4. Kemasan sangat praktis dan mudah dibawa kemaa-mana.\r\n5. Sangat simpel, tinggal ditabur di atas nasi hangat, bisa langsung dinikmati.\r\nSambal Pecel', '/system/storage/app/public/photos/1/img35.jpg', 50, 'M', 'default', 'active', 17000.00, 0.00, 1, 17, NULL, NULL, '2021-07-23 00:19:37', '2021-07-23 00:19:37', NULL, 134, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'PT. Truka Mandiri Jaya adalah unit usaha yang didirikan oleh Yayasan Trukajaya Salatiga. Salah satu bidang usaha yang dilakukan adalah mengelola marketplace Pitoestore. Produk Pitoestore berasal dari petani dan pengrajin dari berbagai wiayah Indonesia.', 'PT. Truka Mandiri Jaya adalah unit usaha yang didirikan oleh Yayasan Trukajaya Salatiga. Salah satu bidang usaha yang dilakukan adalah mengelola marketplace Pitoestore. Produk Pitoestore berasal dari petani dan pengrajin dari berbagai wiayah Indonesia.', '/storage/photos/1/data_pitu/configuration/jo5Vunir9nf7YQQuqZfrBuL1z3f4yfgeGbyskOvK.png', '/storage/photos/1/data_pitu/configuration/lJydOvR43fFclBrxPTrtawVn3bQy2j6l4kN0g9hl.png', 'Jl. Cemara II No.65, Sidorejo Lor, Kec. Sidorejo, Kota Salatiga, Jawa Tengah 50742', '0878 8364 5411', 'admin@trukajaya.com', NULL, '2021-06-28 00:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(5, 'POS Indonesia (POS)', 1000.00, 'active', '2021-07-04 20:38:30', '2021-07-04 20:38:30'),
(6, 'Lion Parcel (LION)', 24.00, 'active', '2021-07-04 20:39:08', '2021-07-04 20:39:08'),
(7, 'Ninja Xpress (NINJA)', 312.00, 'active', '2021-07-04 20:39:19', '2021-07-04 20:39:19'),
(8, 'ID Express (IDE)', 4342.00, 'active', '2021-07-04 20:39:30', '2021-07-04 20:39:30'),
(9, 'SiCepat Express (SICEPAT)', 3412.00, 'active', '2021-07-04 20:39:42', '2021-07-04 20:39:42'),
(11, 'SAP Express (SAP)', 534.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(12, 'Nusantara Card Semesta (NCS)', 423.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(13, 'AnterAja (ANTERAJA)', 534.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(14, 'Royal Express Indonesia (REX)', 534.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(15, 'Sentral Cargo (SENTRAL)', 5443.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(16, 'Jalur Nugraha Ekakurir (JNE)', 54.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(17, 'Citra Van Titipan Kilat (TIKI)', 5634.00, 'active', '2021-07-05 03:40:30', '2021-07-05 03:40:30'),
(18, 'RPX Holding (RPX)', 534.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(19, 'Pandu Logistics (PANDU)', 54.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(20, 'Wahana Prestasi Logistik (WAHANA)', 645.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(21, 'J&T Express (J&T)', 6765.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(22, 'Pahala Kencana Express (PAHALA)', 654.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(23, 'JET Express (JET)', 456.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(24, 'Solusi Ekspres (SLIS)', 87.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(25, 'Expedito* (EXPEDITO)', 23.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(26, '21 Express (DSE)', 12.00, 'active', '2021-07-05 03:42:37', '2021-07-05 03:42:37'),
(27, 'First Logistics (FIRST)', 123.00, 'active', '2021-07-05 03:44:30', '2021-07-05 03:44:30'),
(28, 'Star Cargo (STAR)', 124.00, 'active', '2021-07-05 03:44:30', '2021-07-05 03:44:30'),
(29, 'IDL Cargo (IDL)', 12232.00, 'active', '2021-07-05 03:44:30', '2021-07-05 03:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Trukajaya', 'admin@gmail.com', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', '/storage/photos/1/data_pitu/configuration/jo5Vunir9nf7YQQuqZfrBuL1z3f4yfgeGbyskOvK.png', 'admin', NULL, NULL, 'active', 'nXJqZOlchfoT56bTLInYyHJlzQlS8tVQhMGwvAwCZkehcy5EhKAepIeTfb34', NULL, '2021-07-04 20:36:33'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', '/storage/photos/1/users/user2.jpg', 'user', NULL, NULL, 'active', NULL, NULL, '2020-08-15 07:30:07'),
(30, 'telign manis', 'teling@gmail.com', NULL, '$2y$10$NoaAa0CVFDNBbBd9xgsBl.1Gwmv76AOy/Sx0jyEK5F4JV.gzKN2RK', NULL, 'user', 'google', NULL, 'active', NULL, '2021-07-17 08:51:43', '2021-07-17 08:51:43'),
(31, 'telign manis', 'teling1@gmail.com', NULL, '$2y$10$G9EDMWJCi5ZGRi2PON2TFuYl3K3LeMazcBHbvqT5iJztfcNWh3yQa', NULL, 'user', 'google', NULL, 'active', NULL, '2021-07-17 17:24:54', '2021-07-17 17:24:54'),
(32, 'sahid', 'sahid@gmail.com', NULL, '$2y$10$87NtPI38i9KmUbykKfa77usgGFplUlX7fQuzg14a2Fil4myp5rEru', NULL, 'user', 'google', NULL, 'active', NULL, '2021-07-17 17:38:14', '2021-07-17 17:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(5, 23, NULL, 2, 162000.00, 1, 162000.00, '2021-07-18 09:44:39', '2021-07-18 09:44:39'),
(6, 15, NULL, 2, 38000.00, 4, 76000.00, '2021-07-20 06:17:01', '2021-07-20 06:17:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
