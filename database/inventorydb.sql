SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streamlime`
-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `auth_token` VARCHAR(100) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   UNIQUE KEY `uq_username` (`username`)
  ) ENGINE=InnoDB, AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2asU3di');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  ``id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `auth_token` VARCHAR(100) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   UNIQUE KEY `uq_username` (`username`)
  ) ENGINE=InnoDB, AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'adones', '$2a$10$g');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `pid` VARCHAR(100) NOT NULL,
  `uid` VARCHAR(100) NOT NULL,
  `qty` VARCHAR(100) NOT NULL,
  `status` VARCHAR(100) NOT NULL DEFAULT 'ordered'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Table structure for table `paid`
--

CREATE TABLE `paid` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `pid` VARCHAR(100) NOT NULL,
  `uid` VARCHAR(100) NOT NULL,
  `quantity` VARCHAR(100) NOT NULL,
  `status` VARCHAR(100) NOT NULL DEFAULT 'paid'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255 NOT NULL,
  `category` VARCHAR(255) NOT NULL,
  `brand` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `price` INT(20) NOT NULL,
  `quantity` INT(20) NOT NULL,
  `created_by` VARCHAR(127) DEFAULT NULL,
  `updated_by` VARCHAR(127) DEFAULT NULL,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   UNIQUE KEY `uq_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `descr`, `price`, `stock`, `picture`) VALUES
(1, 'All Natural Soap', 'Cleanse, moisturize and soothe your skin with all natural handmade soap made with organic oils and plant butters, pure essential oils, organic herbs, and spices. ', 126, 100, 'afc7eae2c9b20daad05728da662f3c65.jpg'),
(2, 'Unscented Baby Powder', 'An organic baby powder for delicate skin formulated with finely milled vegetable root powders, skin soothing botanicals and silky clay that work together to absorb moisture.', 520, 100, 'organic_natural_baby_skin_care_products-16.jpg'),
(4, 'Lip Balm: Healing Herbs', 'An organic lip balm made with soothing oils and botanicals that moisturize and help promote healing.', 560, 100, 'c335c6e65ac8c9327bf5bd023e38a3b1.jpg'),
(5, 'Deodorant: Coconut Cream', 'An organic cream deodorant made with soothing ingredients that effectively neutralize odor and plant-based powders that help absorb wetness, so you stay fresh naturally.', 122, 100, '40e14cf92b6d21976908d25fa136ccbf.jpg'),
(6, 'Xanthone Plus Capsule', 'The best medicine for health issues', 250, 100, '6b72346f80fb5478f34ef8558e4be80d.jpg'),
(7, 'Malunggay Medicine', 'Moringa Oleifera or locally known as Malungay, is widely used as a vegetable ingredient in cooking. It is a popular plant known for high nutritional value as well as an herbal medicine a number of illness and other practical uses.', 350, 100, 'bc0cd8fd7a3bcfa86a8efad5effa452e.jpg');
-- --------------------------------------------------------
--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `product_id` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    `selling_price` INT(20) DEFAULT NULL,
    `cost_price` INT(20) DEFAULT NULL,
    `quantity` INT(20) DEFAULT NULL,
    `status` VARCHAR(20) DEFAULT NULL,
    `restock` BOOLEAN,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (`id`),
     UNIQUE KEY `uq_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
