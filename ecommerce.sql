-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 02:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Cameras'),
(3, 'Mobiles'),
(4, 'Computers');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`) VALUES
(1, '::1', 'Georgios', 'cs141097@uniwa.gr', '0000', 'Greece', 'Athens', '698698698', 'Athinas 27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(3, 1, 1, 'HP Laptop pavilion', 460, '<p><span style=\"font-family: HPSimplified; font-size: 16px;\">Designed for long-lasting performance, this stylishly designed HP 15\" laptop has a long-lasting battery that keeps you connected, entertained, and productive all day. Speed through tasks, or sit back and socialize &ndash; with the latest processors</span></p>', 'hp_pavilion.png', 'laptop , hp , new'),
(4, 4, 1, 'HP 6000 Desktop PC', 820, '<p><span style=\"color: #888888; font-family: arial, sans-serif; font-size: 13px; background-color: #222222;\">Refurbished HP 6000 Desktop PC with Intel Core 2 Duo Processor, 4GB Memory, 19\" Monitor, 250GB Hard Drive and Windows 10 Home</span></p>', 'hp_desktop.jpeg', 'pc , hp , desktop'),
(5, 3, 5, 'Apple iPhone 6 Plus', 640, '<p><span style=\"color: #5e5e5e; font-family: Titillium, arial, sans-serif; font-size: 16px;\">this phone comes with a 5.50-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels at a PPI of 401 pixels per inch.</span></p>', 'iphone.jpg', 'iphone , 6 , mobile , apple'),
(6, 2, 4, 'Samsung Smart Camera', 520, '<p><span style=\"color: #5e5e5e; font-family: Titillium, arial, sans-serif; font-size: 16px;\">New camera from samsung with focus effect.</span></p>', 'WB2100F-Digital-Camera.jpg', 'camera , new , samsung , digital'),
(8, 3, 4, 'Samsung Galaxy S9+', 920, '<p><span style=\"box-sizing: border-box; font-family: NHaasGroteskDSStd-55Rg; font-size: 12px;\">The new Samsung Galaxy S9+, on the best network. A powerful dual camera that can record in super slow-mo and capture 4k video in true-to-life detail.</span><span style=\"font-family: NHaasGroteskDSStd-55Rg; font-size: 12px;\">&nbsp;</span></p>', 'samsung_galaxy.png', 'new , samsung , galaxy ,s9'),
(9, 1, 3, 'LG gram laptop', 1900, '<p>LG gram 15 laptop. Lightweight touchsreen with intel core.</p>', 'lg_laptop.jpg', 'lg , laptop , new , touchscreen'),
(10, 4, 5, 'Mac Desktop', 1650, '<p>Mac desktop PC with the latest features and 8 core proccessor and huge memory capacity.</p>', 'mac_pc.jpg', 'mac, pc , desktop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
