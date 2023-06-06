-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 12:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sproware`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `prod_size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `prod_size`) VALUES
(44, 15, 10, 4, '2023-05-27 10:56:58', 'xs'),
(132, 2, 13, 1, '2023-06-06 10:02:29', 'xs'),
(133, 2, 14, 1, '2023-06-06 10:02:33', 'xs');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`) VALUES
(1, 'ICT & Engineering', 'ICT.png', '2023-05-08'),
(2, 'Senior High school', 'BOX-GRAY.png', '2023-05-08'),
(3, 'Arts & Sciences', '1683549018.png', '2023-05-08'),
(4, 'Business & Management', '1683549043.png', '2023-05-08'),
(5, 'Hospitality Management', '1683549056.png', '2023-05-08'),
(6, 'Tourism Management', 'TOURISM.png', '2023-05-08'),
(9, 'Others', '1683712018.png', '2023-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `male` varchar(255) NOT NULL,
  `female` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` int(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_price` float NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `payment_mode`, `payment_id`, `status`, `created_at`, `total_price`, `image`) VALUES
(1, 'STIPROWARE1425298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:19:40', 1544.16, ''),
(2, 'STIPROWARE4614298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:20:17', 801.18, ''),
(3, 'STIPROWARE7764298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:20:33', 799.98, ''),
(4, 'STIPROWARE8008298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:21:47', 801.18, ''),
(5, 'STIPROWARE9913298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:22:13', 799.98, ''),
(6, 'STIPROWARE4072298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:24:07', 599.99, ''),
(7, 'STIPROWARE7001393633590', 17, 'Marc Noel Mamalateo', 'mamalateo.253975@globalcity.sti.edu.ph', '09393633590', '0', NULL, 0, '2023-06-06 03:29:56', 3547.11, ''),
(8, 'STIPROWARE4836393633590', 17, 'Marc Noel Mamalateo', 'mamalateo.253975@globalcity.sti.edu.ph', '09393633590', '0', NULL, 0, '2023-06-06 03:33:27', 7999.8, ''),
(9, 'STIPROWARE8318298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', '0', NULL, 0, '2023-06-06 03:38:50', 801.18, ''),
(10, 'STIPROWARE9464298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'cash', NULL, 0, '2023-06-06 03:39:34', 0, ''),
(11, 'STIPROWARE3449298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'cash', NULL, 2, '2023-06-06 03:39:54', 801.18, ''),
(12, 'STIPROWARE9676298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 3, '2023-06-06 03:40:15', 599.99, ''),
(13, 'STIPROWARE9448298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'cash', NULL, 0, '2023-06-06 04:06:23', 2002.95, ''),
(14, 'STIPROWARE5787298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 0, '2023-06-06 04:20:00', 999.98, ''),
(15, 'STIPROWARE6146298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 0, '2023-06-06 05:08:00', 801.18, ''),
(16, 'STIPROWARE1182298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'cash', NULL, 0, '2023-06-06 05:09:22', 400.59, ''),
(17, 'STIPROWARE4499298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 2, '2023-06-06 10:11:22', 801.18, 'BOX-LIGHTGRAY.png'),
(18, 'STIPROWARE9943298628202', 16, 'yuan cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 0, '2023-06-06 10:15:37', 1599.96, 'BOX-GRAY.png'),
(19, 'STIPROWARE6225298628202', 18, 'yuki cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'cash', NULL, 1, '2023-06-06 16:36:31', 1602.36, ''),
(20, 'STIPROWARE5794298628202', 18, 'yuki cano', 'cano.269716@globalcity.sti.edu.ph', '09298628202', 'gcash', NULL, 0, '2023-06-06 16:51:11', 1485.96, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 16, 1, 401, '2023-06-06 03:19:40'),
(2, 1, 15, 1, 401, '2023-06-06 03:19:40'),
(3, 1, 14, 1, 400, '2023-06-06 03:19:40'),
(4, 1, 13, 1, 343, '2023-06-06 03:19:40'),
(5, 2, 9, 1, 401, '2023-06-06 03:20:17'),
(6, 2, 8, 1, 401, '2023-06-06 03:20:17'),
(7, 3, 11, 1, 400, '2023-06-06 03:20:33'),
(8, 3, 10, 1, 400, '2023-06-06 03:20:33'),
(9, 4, 9, 1, 401, '2023-06-06 03:21:47'),
(10, 4, 8, 1, 401, '2023-06-06 03:21:47'),
(11, 5, 10, 1, 400, '2023-06-06 03:22:13'),
(12, 5, 11, 1, 400, '2023-06-06 03:22:13'),
(13, 6, 17, 1, 200, '2023-06-06 03:24:07'),
(14, 6, 18, 1, 400, '2023-06-06 03:24:07'),
(15, 7, 9, 2, 401, '2023-06-06 03:29:56'),
(16, 7, 8, 1, 401, '2023-06-06 03:29:56'),
(17, 7, 15, 2, 401, '2023-06-06 03:29:56'),
(18, 7, 16, 2, 401, '2023-06-06 03:29:56'),
(19, 7, 13, 1, 343, '2023-06-06 03:29:56'),
(20, 7, 14, 1, 400, '2023-06-06 03:29:56'),
(21, 8, 10, 10, 400, '2023-06-06 03:33:27'),
(22, 8, 11, 10, 400, '2023-06-06 03:33:27'),
(23, 9, 9, 1, 401, '2023-06-06 03:38:50'),
(24, 9, 8, 1, 401, '2023-06-06 03:38:50'),
(25, 11, 8, 1, 401, '2023-06-06 03:39:54'),
(26, 11, 9, 1, 401, '2023-06-06 03:39:54'),
(27, 12, 18, 1, 400, '2023-06-06 03:40:15'),
(28, 12, 17, 1, 200, '2023-06-06 03:40:15'),
(29, 13, 8, 2, 401, '2023-06-06 04:06:23'),
(30, 13, 9, 3, 401, '2023-06-06 04:06:23'),
(31, 14, 18, 2, 400, '2023-06-06 04:20:00'),
(32, 14, 17, 1, 200, '2023-06-06 04:20:00'),
(33, 15, 8, 1, 401, '2023-06-06 05:08:00'),
(34, 15, 9, 1, 401, '2023-06-06 05:08:00'),
(35, 16, 8, 1, 401, '2023-06-06 05:09:22'),
(36, 17, 8, 2, 401, '2023-06-06 10:11:22'),
(37, 18, 11, 2, 400, '2023-06-06 10:15:37'),
(38, 18, 10, 2, 400, '2023-06-06 10:15:37'),
(39, 19, 9, 2, 401, '2023-06-06 16:36:31'),
(40, 19, 8, 2, 401, '2023-06-06 16:36:31'),
(41, 20, 13, 2, 343, '2023-06-06 16:51:11'),
(42, 20, 18, 2, 400, '2023-06-06 16:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL,
  `photo` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `photo`, `counter`, `type`, `slug`, `gender`) VALUES
(6, 9, 'PE Uniform', '', 899, 'BLUE-BANNER.png', 0, 0, 'pe-uniform', 'male'),
(7, 2, 'Senior High school - Pants', '', 399.99, 'RED-BANNER.png', 0, 0, 'senior-high-school-pants', 'male'),
(8, 1, 'Polo - ICT & Engineering', '', 400.59, 'ICT-DEPARTMENT2.png', 0, 0, 'polo-ict-engineering', 'male'),
(9, 1, 'Slacks - ICT & Engineering', '', 400.59, 'ICT-PANTS.png', 0, 0, 'slacks-ict-engineering', 'male'),
(10, 1, 'Blouse - ICT & Engineering', '', 399.99, 'ICT-POLO.png', 0, 0, 'blouse-ict-engineering', 'female'),
(11, 1, 'Skirt - ICT & Engineering', '', 399.99, 'ICT-SKIRT.png', 0, 0, 'skirt-ict-engineering', 'female'),
(13, 6, 'Vest - Tourism Management', '', 342.99, 'vest-tourism-management.png', 0, 1, 'vest-tourism-management', 'male'),
(14, 6, 'Polo - Tourism Management', '', 399.99, 'polo-tourism-management.png', 0, 1, 'polo-tourism-management', 'male'),
(15, 6, 'Necktie - Tourism Management', '', 400.59, 'NECKTIE-TOURISM.png', 0, 1, 'necktie-tourism-management', 'male'),
(16, 6, 'Pants - Tourism Management', '', 400.59, 'pants-tourism-management.png', 0, 1, 'pants-tourism-management', 'male'),
(17, 6, 'Neckerchief - Tourism Management', '', 200, 'neckerchief-tourism-management.png', 0, 1, 'neckerchief-tourism-management', 'female'),
(18, 6, 'Hat - Tourism Management', '', 399.99, 'hat-tourism-management.png', 0, 1, 'hat-tourism-management', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `extra_small` int(6) DEFAULT NULL,
  `small` int(6) DEFAULT NULL,
  `medium` int(6) DEFAULT NULL,
  `large` int(6) DEFAULT NULL,
  `extra_large` int(6) DEFAULT NULL,
  `2_extra_large` int(6) DEFAULT NULL,
  `3_extra_large` int(6) DEFAULT NULL,
  `type` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `ver_code` varchar(255) NOT NULL,
  `acc_creation` date NOT NULL DEFAULT current_timestamp(),
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `token` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `pwd`, `ver_code`, `acc_creation`, `type`, `status`, `token`) VALUES
(1, 'adnin', '', '09298628202', 'admin@admin.com', '$2y$10$m2eMR4GwUnq3l2vIWmvMqeeBiESfMu6ePdKNkbv.Bop5TscISkgx6', 'yURkACFLl2tc', '2023-05-24', 1, 1, '503e7dbbd6217b9a591f3322f39b5a6c'),
(16, 'yuan', 'cano', '09298628202', 'canoo.269716@globalcity.sti.edu.ph', '$2y$10$WoxLMsuO93Nmi6.WkriNa.Afh1dnzgPN3TJ2P3bgwvHftSEzNioEG', 'kcoKYmaz2ZBG', '2023-05-27', 0, 1, '859555c74e9afd45ab771c615c1e49a6'),
(18, 'yuki', 'cano', '09298628202', 'cano.269716@globalcity.sti.edu.ph', '$2y$10$DBjfZc.BlUZQ3A9BYTyn4el6rq2NXGRj7wkd5As/SiJtS1CHARb0.', 'aBpWYeGuslxv', '2023-06-07', 0, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
