-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2026 at 07:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppms`
--

-- --------------------------------------------------------

--
-- Table structure for table `photographs`
--

CREATE TABLE `photographs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `photo_title` varchar(200) DEFAULT NULL,
  `photographer_name` varchar(100) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'tom', 'tom@gmail.com', '$2y$10$8lmjg5e6mlIQaIUB33XKSOpKx.jpeOCH8OmPJ7ycwUdmLlRJQu30K'),
(4, 'tom', 'tom1@gmail.com', '$2y$10$vGzDwRIlsGBaeG53IV93GOc4LYLIzacHz1bsAB2M0C5DW.Y5x3be6'),
(5, 'tom', 'tom2@gmail.com', '$2y$10$btedg1s1EUsoeNZ/ZPaM2uVOqumvfthZm8OIG9jBAllGYWp0WP.Fu'),
(6, 'tom', 'tom3@gmail.com', '$2y$10$n99l6F1XBloI8B1tC3Hl6O07eu2xxhe.9KOdIbOwguRVsS3ATE6E.'),
(7, 'tom', 'tom4@gmail.com', '$2y$10$mXkPaabxyaJB7O5n.AXF/.RMwDreU9LHLfflE0v3tC1qgKnZfWgxS'),
(8, 'tom', 'tom5@gmail.com', '$2y$10$UEeGlZ27CLPpz3yxWALgz.njUYeiTEMFS0s58qiDFRl0JWS2mnJZO'),
(10, 'shubham', 'shubham@gmail.com', '$2y$10$pgzGO4Nh4yTw3X5vi/Xh6ODSltRA8juItqZ2MVUcOOLq.NQHWBxma'),
(12, 'jerry', 'jerry@gmail.com', '$2y$10$dXXMKVpgnHPlmKh6V0F0o.gyshsF8wUwuuYVxLIeHbNbs6heg/IxW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photographs`
--
ALTER TABLE `photographs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photographs`
--
ALTER TABLE `photographs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
