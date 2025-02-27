-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 02:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Color', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 'Size', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 'Weight', '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Red', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 1, 'Blue', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 1, 'Green', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(4, 2, 'Small', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(5, 2, 'Medium', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(6, 2, 'Large', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(7, 3, '1kg', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(8, 3, '2kg', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(9, 3, '3kg', '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_25_102311_create_products_table', 1),
(5, '2025_02_25_102334_create_attributes_table', 1),
(6, '2025_02_25_102343_create_attribute_values_table', 1),
(7, '2025_02_25_102355_create_rental_periods_table', 1),
(8, '2025_02_25_102404_create_regions_table', 1),
(9, '2025_02_25_102413_create_product_pricings_table', 1),
(10, '2025_02_25_103812_create_rentals_table', 1),
(11, '2025_02_26_052402_create_personal_access_tokens_table', 1),
(12, '2025_02_26_060652_create_product_attributes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `category`, `description`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'modi', 'ducimus', 'Books', 'Qui numquam odio laudantium quia officia quis libero.', 69, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(2, 'vero', 'expedita', 'Clothing', 'Eum ullam magnam totam expedita.', 58, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(3, 'repudiandae', 'et', 'Clothing', 'Sunt amet itaque quibusdam adipisci minima aut optio velit.', 57, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(4, 'molestiae', 'reprehenderit', 'Clothing', 'Veritatis minus aliquam sint aut et quis distinctio.', 9, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(5, 'vero', 'provident', 'Clothing', 'Sint maiores dignissimos sed nesciunt dolorum.', 37, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(6, 'et', 'quae', 'Books', 'Consequatur illo aut distinctio tenetur dolore est.', 60, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(7, 'sint', 'eaque', 'Clothing', 'Est deserunt blanditiis iste quia ea.', 47, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(8, 'nisi', 'ullam', 'Electronics', 'Molestiae fugiat eum corrupti et et laborum animi quo.', 72, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(9, 'amet', 'nobis', 'Clothing', 'Sequi ipsam minus deleniti non.', 66, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(10, 'illo', 'eveniet', 'Electronics', 'Doloribus sit qui cum consequatur incidunt quos.', 70, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(11, 'quae', 'aut', 'Clothing', 'Fugit quaerat cumque velit quo officiis ea et aperiam.', 34, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(12, 'velit', 'qui', 'Books', 'Est reiciendis eum minima ut libero reiciendis vero.', 63, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(13, 'veniam', 'dolorem', 'Electronics', 'Maiores dolores omnis et quos molestiae.', 91, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(14, 'amet', 'quisquam', 'Books', 'Necessitatibus error qui voluptatum.', 26, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(15, 'sapiente', 'cumque', 'Books', 'Cum quam aut quaerat voluptatem quo cupiditate beatae.', 14, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(16, 'minus', 'voluptas', 'Books', 'Quaerat magni qui vero quas ipsa eaque.', 42, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(17, 'ex', 'ut', 'Electronics', 'Neque sint quae nostrum quaerat quae perspiciatis.', 85, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(18, 'sed', 'alias', 'Clothing', 'Dolore velit magni nemo unde.', 51, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(19, 'qui', 'magnam', 'Electronics', 'Eveniet vel labore accusamus suscipit voluptate voluptate quo.', 80, '2025-02-26 18:51:51', '2025-02-26 18:51:51'),
(20, 'veritatis', 'totam', 'Books', 'Dolor iusto quo eos.', 35, '2025-02-26 18:51:51', '2025-02-26 18:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`, `attribute_value_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 1, 2, 4, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 1, 3, 7, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(4, 2, 1, 2, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(5, 2, 2, 5, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(6, 2, 3, 8, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(7, 3, 1, 3, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(8, 3, 2, 6, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(9, 3, 3, 9, '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_pricings`
--

CREATE TABLE `product_pricings` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `rental_period_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_pricings`
--

INSERT INTO `product_pricings` (`id`, `product_id`, `region_id`, `rental_period_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 100.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 1, 1, 2, 200.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 1, 1, 3, 300.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(4, 2, 2, 1, 150.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(5, 2, 2, 2, 250.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(6, 2, 2, 3, 350.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(7, 3, 3, 1, 200.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(8, 3, 3, 2, 300.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(9, 3, 3, 3, 400.00, '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Indonesia', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 'Malaysia', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 'Singapore', '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(4, 'Thailand', '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `rental_start` date NOT NULL,
  `rental_end` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_periods`
--

CREATE TABLE `rental_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `period` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_periods`
--

INSERT INTO `rental_periods` (`id`, `period`, `created_at`, `updated_at`) VALUES
(1, 3, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(2, 6, '2025-02-27 01:51:51', '2025-02-27 01:51:51'),
(3, 12, '2025-02-27 01:51:51', '2025-02-27 01:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'iHWPFqd6PP', 'RklntmwIzv@example.com', NULL, '$2y$12$jVRT3zBo.ym.oWz/XwrFOuy81q34fw7KPyt1nZnc2N7/d.8IXXpWS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `product_attributes_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_attributes_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_pricings`
--
ALTER TABLE `product_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_pricings_product_id_foreign` (`product_id`),
  ADD KEY `product_pricings_region_id_foreign` (`region_id`),
  ADD KEY `product_pricings_rental_period_id_foreign` (`rental_period_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regions_name_unique` (`name`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_index` (`user_id`),
  ADD KEY `rentals_product_id_index` (`product_id`),
  ADD KEY `rentals_region_id_index` (`region_id`);

--
-- Indexes for table `rental_periods`
--
ALTER TABLE `rental_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_pricings`
--
ALTER TABLE `product_pricings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_periods`
--
ALTER TABLE `rental_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_pricings`
--
ALTER TABLE `product_pricings`
  ADD CONSTRAINT `product_pricings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_pricings_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_pricings_rental_period_id_foreign` FOREIGN KEY (`rental_period_id`) REFERENCES `rental_periods` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
