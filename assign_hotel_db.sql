-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 06:53 PM
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
-- Database: `assign_hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `is_active`) VALUES
(1, 'Sri Lanka\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `email`, `phone`, `price`, `state`, `type`, `is_active`) VALUES
(1, 'Millenium Hotel', 'milleniumotel.jpg', 'Located in Anuradhapura, 5.7 km from Anuradhapura Railway Station, Millenium Hotel provides accommodation with a garden, free private parking, a terrace and a restaurant. This 3-star hotel offers room service, a 24-hour front desk and free WiFi. Certain rooms at the property include a balcony with a city view.', 'milleniumhotel.jpg', '764387574', '7500', 2, 2, 1),
(2, 'Heaven Kandy', 'heavenkandy.jpg', 'Heaven Seven Kandy offers accommodation located within just 300 metres from Kandy Museum and Sri Dalada Maligawa. Guests can enjoy the on-site restaurant.\r\n\r\nEach air-conditioned room is fitted with a flat-screen TV. A terrace or balcony is featured in certain rooms. Every room comes with a private bathroom. For your comfort, you will find free toiletries and a hair dryer.', 'heavenkandy@gmail.com', '0764387574', '15900', 11, 1, 2),
(3, 'View 360', 'view360.jpg', 'Set in Kandy and with Kandy City Center Shopping Mall reachable within 3 km, View360 offers express check-in and check-out, non-smoking rooms, a restaurant, free WiFithroughout the property and an outdoor swimming pool. Among the various facilities of this property are a fitness centre, a terrace and a bar. There is free private parking and the property features paid airport shuttle service.', 'view360@gmail.com', '0764354767', '16600', 11, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_type`
--

CREATE TABLE `hotel_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_type`
--

INSERT INTO `hotel_type` (`id`, `type`) VALUES
(1, 'Luxury'),
(2, 'Semi Luxury'),
(3, 'Villa');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `hotel_id`, `rate`, `review`) VALUES
(1, 1, 1, 4, 'Nice Hotel\r\n'),
(2, 2, 1, 1, 'Not Recomended'),
(3, 1, 1, 5, 'Best Hotel'),
(4, 1, 2, 5, 'Amazing view across Kandy Lake from my balcony. Beautiful room.'),
(5, 2, 3, 4, 'Rooftop pool had nice view\r\nRoom was spacious and had separate pantry with coffee and sofa\r\n\r\nBreakfast was good spread');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state_name`, `is_active`) VALUES
(1, 1, 'Ampara', 2),
(2, 1, 'Anuradhapura', 2),
(3, 1, 'Badulla', 2),
(4, 1, 'Batticaloa', 2),
(5, 1, 'Colombo', 2),
(6, 1, 'Galle', 2),
(7, 1, 'Gampaha', 2),
(8, 1, 'Hambantota', 2),
(9, 1, 'Jaffna', 2),
(10, 1, 'Kalutara', 2),
(11, 1, 'Kandy', 2),
(12, 1, 'Kegalla', 2),
(13, 1, 'Kilinochchi', 2),
(14, 1, 'Kurunegala', 2),
(15, 1, 'Mannar', 2),
(16, 1, 'Matale', 2),
(17, 1, 'Monaragala', 2),
(18, 1, 'Mullaitivu', 2),
(19, 1, 'Nuwara Eliya', 2),
(20, 1, 'Polonnaruwa', 2),
(21, 1, 'Puttalam', 2),
(22, 1, 'Ratnapura', 2),
(23, 1, 'Trincomalee', 2),
(24, 1, 'Vavuniya', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `created_at`, `is_active`, `updated_at`, `deleted_at`) VALUES
(1, 'Anuhas', 'Kalhara', 'anuhaskalharax@gmail.com', NULL, '11f5c46231a22fa0d1f6ed46edaf7642cdd0bef2', '0000-00-00 00:00:00', 2, '2024-05-08 21:28:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_type`
--
ALTER TABLE `hotel_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_type`
--
ALTER TABLE `hotel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
