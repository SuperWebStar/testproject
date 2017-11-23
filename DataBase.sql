-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2017 at 05:37 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shortner`
--
CREATE DATABASE IF NOT EXISTS `shortner` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shortner`;

-- --------------------------------------------------------

--
-- Table structure for table `url_mapping`
--

CREATE TABLE `url_mapping` (
  `id` int(11) NOT NULL,
  `short_url` varchar(255) NOT NULL,
  `original_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_mapping`
--

INSERT INTO `url_mapping` (`id`, `short_url`, `original_url`) VALUES
(2, 'hj20f', 'http://www.w3sols.com'),
(6, '5pzqw', 'http://google.co.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `url_mapping`
--
ALTER TABLE `url_mapping`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `url_mapping`
--
ALTER TABLE `url_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
