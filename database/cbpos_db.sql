-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 10:37 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbpos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'L’Oreal', 'L’Oreal  manufactures and markets a wide range of skincare, makeup, fragrance, and hair care products', 'uploads/brands/1.jpg?v=1645066502', 1, 0, '2022-07-31 11:55:02'),
(2, 'test', 'test', NULL, 1, 1, '2022-07-31 00:00:00'),
(3, 'Nivea', 'Nivea manufactures and markets skin, sun, lip and deodorant products', 'uploads/brands/3.jpg?v=1645066772', 1, 0, '2022-07-31 11:59:32'),
(4, 'Olay', 'Olay manufactures and markets face and skin care products', 'uploads/brands/4.jpg?v=1645066818', 1, 0, '2022-07-31 12:00:18'),
(5, 'LUX', 'A global personal care brand by Unilever, Lux product categories include soaps, shower gels, bath products, shampoos, and conditioners. Lux is a strong advocate of sustainable causes and is sold in more than 100 countries worldwide.', 'uploads/brands/5.jpg?v=1645066872', 1, 0, '2022-07-31 12:01:12'),
(6, 'AVON', 'Avon is a direct sales company operating in the skin, body, fragrance, make-up, sun care and fashion markets. A leading company within the direct sales market, Avon has millions of beauty advisors worldwide and recently moved its headquarters from the U.S. to the UK.', 'uploads/brands/6.jpg?v=1645066909', 1, 0, '2022-07-31 12:01:49'),
(8, 'Uniliver', 'EcoFriendly', 'uploads/brands/8.jpg?v=1661871866', 1, 0, '2022-08-30 20:49:26'),
(9, 'Sunsilk', 'For better Hair', 'uploads/brands/9.jpg?v=1661872256', 1, 0, '2022-08-30 20:55:56'),
(10, 'Lotus', 'best Brand', 'uploads/brands/10.jpg?v=1661872936', 1, 0, '2022-08-30 21:07:16'),
(11, 'Lakme', 'Natural', 'uploads/brands/11.jpg?v=1661875397', 1, 0, '2022-08-30 21:48:17'),
(12, 'ABC', 'Better Products', 'uploads/brands/12.jpg?v=1661908237', 1, 0, '2022-08-31 06:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Skin Care', 'For healthy and moist skin', 1, 0, '2022-07-31 11:27:11'),
(2, 'Oral Care', ' For healthy mouth', 1, 0, '2022-07-31 11:27:29'),
(3, 'Body Care', 'For Helthy Body', 1, 0, '2022-07-31 11:27:45'),
(4, 'Perfumes', 'For Better smell', 1, 0, '2022-07-31 11:27:55'),
(5, 'Hair Care', 'For Healthy And Long hair', 1, 0, '2022-07-31 11:28:04'),
(8, 'Lipsticks', 'For a Perfect Lady', 1, 0, '2022-07-31 11:29:38'),
(9, 'Lip Tint', 'For Healthy Lips', 1, 0, '2022-07-31 11:29:59'),
(10, 'test', 'test', 0, 1, '2022-07-31 11:31:18'),
(11, 'Foot Care', 'For healthy foot', 1, 0, '2022-08-31 06:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `status`, `delete_flag`, `date_created`) VALUES
(3, 'Pradip ', 'Thagunna', 'Male', '9876543212', 'pkpunk31@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Sitapaila', 1, 0, '2022-08-30 20:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `variant` text NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(8, '1', 11, 300, 100, '2022-08-30 21:13:10', NULL),
(11, '1', 8, 500, 299, '2022-08-30 21:14:21', NULL),
(12, '1', 9, 1000, 299, '2022-08-30 21:14:47', NULL),
(13, '3', 10, 500, 299, '2022-08-30 21:15:04', NULL),
(14, '1', 12, 1000, 400, '2022-08-30 21:50:23', NULL),
(15, '1', 13, 100, 299, '2022-08-30 22:00:15', NULL),
(16, '1', 14, 1000, 150, '2022-08-31 06:56:32', NULL),
(17, '1', 15, 100, 150, '2022-08-31 07:03:48', NULL),
(18, '1', 16, 100, 130, '2022-08-31 07:05:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = pending,\r\n1= Packed,\r\n2 = Out for Delivery,\r\n3=Delivered,\r\n4=cancelled',
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_code`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(6, '20220800001', 3, 'Sitapaila', 'cod', 0, 350, 4, 0, '2022-08-30 20:03:51', '2022-08-30 21:28:33'),
(7, '20220800002', 3, 'Sitapaila', 'cod', 0, 1250, 4, 0, '2022-08-30 20:04:25', '2022-08-30 21:28:06'),
(8, '20220800003', 3, 'Sitapaila', 'cod', 0, 155, 4, 0, '2022-08-30 20:10:09', '2022-08-30 21:28:02'),
(9, '20220800004', 3, 'Sitapaila', 'cod', 0, 400, 4, 0, '2022-08-30 21:27:23', '2022-08-30 21:27:57'),
(10, '20220800005', 3, 'Sitapaila', 'cod', 0, 400, 4, 0, '2022-08-30 21:27:35', '2022-08-30 21:27:49'),
(11, '20220800006', 3, 'Sitapaila', 'cod', 0, 500, 0, 0, '2022-08-30 21:29:17', NULL),
(12, '20220800007', 3, 'Sitapaila', 'cod', 0, 400, 0, 0, '2022-08-30 21:29:34', NULL),
(13, '20220800008', 3, 'Sitapaila', 'cod', 0, 100, 0, 0, '2022-08-30 21:30:03', NULL),
(14, '20220800009', 3, 'Sitapaila', 'cod', 0, 400, 3, 1, '2022-08-30 21:30:49', '2022-08-30 21:34:45'),
(15, '20220800010', 3, 'Sitapaila', 'cod', 0, 299, 3, 1, '2022-08-30 21:31:13', '2022-08-30 21:34:10'),
(16, '20220800011', 3, 'Sitapaila', 'cod', 0, 299, 3, 1, '2022-08-30 21:32:41', '2022-08-30 21:33:32'),
(17, '20220800012', 3, 'Sitapaila', 'cod', 0, 800, 0, 0, '2022-08-30 21:35:57', NULL),
(18, '20220800013', 3, 'Sitapaila', 'cod', 0, 1600, 0, 0, '2022-08-30 21:38:17', NULL),
(19, '20220800014', 3, 'Sitapaila', 'cod', 0, 1700, 0, 0, '2022-08-30 21:38:37', NULL),
(20, '20220800015', 3, 'Sitapaila', 'cod', 0, 100, 3, 1, '2022-08-30 21:38:49', '2022-08-30 21:39:44'),
(21, '20220800016', 3, 'Sitapaila', 'cod', 0, 400, 0, 0, '2022-08-30 21:41:00', NULL),
(22, '20220800017', 3, 'Sitapaila', 'cod', 0, 500, 0, 0, '2022-08-30 21:41:46', NULL),
(23, '20220800018', 3, 'Sitapaila', 'cod', 0, 400, 3, 1, '2022-08-30 21:43:09', '2022-08-30 21:44:55'),
(24, '20220800019', 3, 'Sitapaila', 'cod', 0, 400, 0, 0, '2022-08-30 21:51:28', NULL),
(25, '20220800020', 3, 'Sitapaila', 'cod', 0, 400, 0, 0, '2022-08-30 21:52:38', NULL),
(26, '20220800021', 3, 'Sitapaila', 'cod', 0, 299, 0, 0, '2022-08-30 22:00:30', NULL),
(27, '20220800022', 3, 'Sitapaila', 'cod', 0, 150, 3, 1, '2022-08-31 06:57:44', '2022-08-31 06:58:15'),
(28, '20220800023', 3, 'Sitapaila', 'cod', 0, 100, 0, 0, '2022-08-31 06:59:00', NULL),
(29, '20220800024', 3, 'Sitapaila', 'cod', 0, 299, 0, 0, '2022-08-31 07:38:10', NULL),
(30, '20220800025', 3, 'Sitapaila', 'cod', 0, 1495, 0, 0, '2022-08-31 07:47:50', NULL),
(31, '20220800026', 3, 'Sitapaila', 'cod', 0, 400, 0, 0, '2022-08-31 18:03:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(15, 13, 11, 1, 100, 100),
(18, 16, 8, 1, 299, 299),
(23, 20, 11, 1, 100, 100),
(27, 24, 12, 1, 400, 400),
(28, 25, 12, 1, 400, 400),
(29, 26, 13, 1, 299, 299),
(30, 27, 14, 1, 150, 150),
(31, 28, 11, 1, 100, 100),
(32, 29, 13, 1, 299, 299),
(34, 31, 12, 1, 400, 400);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specs` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `specs`, `status`, `delete_flag`, `date_created`) VALUES
(8, 10, 1, 'Sunscreen cream', '&lt;p&gt;Protects from UV rays&lt;/p&gt;', 1, 0, '2022-08-30 21:08:36'),
(9, 9, 5, 'Sunsilk black', '&lt;p&gt;Best shampoo range for years.&lt;/p&gt;', 1, 0, '2022-08-30 21:09:44'),
(10, 9, 5, 'Sunsilk pink', '&lt;p&gt;Best Shampoo&lt;/p&gt;', 1, 0, '2022-08-30 21:10:29'),
(11, 8, 2, 'Colgate', '&lt;p&gt;For strong teeth&lt;/p&gt;', 1, 0, '2022-08-30 21:11:33'),
(12, 11, 3, 'BB Creame', '&lt;p&gt;For smooth Skin&lt;/p&gt;', 1, 0, '2022-08-30 21:49:31'),
(13, 11, 3, 'Compact Powder', '&lt;p&gt;lakme product&lt;/p&gt;', 1, 0, '2022-08-30 21:59:42'),
(14, 12, 11, 'XYZ', '&lt;p&gt;Natural&lt;/p&gt;', 1, 0, '2022-08-31 06:56:09'),
(15, 8, 2, 'Sensodyne', '&lt;p&gt;strong teeth&lt;/p&gt;', 1, 0, '2022-08-31 07:03:23'),
(16, 12, 2, 'Pepsodent', '&lt;p&gt;asdfgh&lt;/p&gt;', 1, 0, '2022-08-31 07:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(6, 6, 350, '2022-08-30 20:03:51'),
(7, 7, 1250, '2022-08-30 20:04:26'),
(8, 8, 155, '2022-08-30 20:10:09'),
(9, 11, 500, '2022-08-30 21:29:17'),
(10, 13, 100, '2022-08-30 21:30:03'),
(11, 15, 299, '2022-08-30 21:31:14'),
(12, 16, 299, '2022-08-30 21:32:41'),
(13, 20, 100, '2022-08-30 21:38:49'),
(14, 22, 500, '2022-08-30 21:41:46'),
(15, 24, 400, '2022-08-30 21:51:28'),
(16, 25, 400, '2022-08-30 21:52:39'),
(17, 26, 299, '2022-08-30 22:00:30'),
(18, 27, 150, '2022-08-31 06:57:45'),
(19, 28, 100, '2022-08-31 06:59:00'),
(20, 29, 299, '2022-08-31 07:38:11'),
(21, 31, 400, '2022-08-31 18:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Cosmetic  Store'),
(6, 'short_name', 'Cosmetics Store'),
(11, 'logo', 'uploads/logo-1661870103.jpg?v=1661870103'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1661870103.jpg?v=1661870103');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Pradip', 'Thagunna', 'pradip', 'dac1c5e85e5c3130af9fbdeafe998161', 'uploads/avatars/1.JPG?v=1669290735', NULL, 1, '2021-01-20 14:02:37', '2022-11-24 17:37:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
