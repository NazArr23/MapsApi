-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 03:38 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `busstand`
--

CREATE TABLE `busstand` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `busstand`
--

INSERT INTO `busstand` (`id`, `name`, `lat`, `lng`, `type`) VALUES
(1, 'metropolitan', '3.1660170\r\n', '101.6079460', 'busstand'),
(2, 'empire', '3.1670160\r\n', '101.6115290', 'busstand'),
(3, 'ispace', '3.1675730\r\n', '101.6129720', 'busstand'),
(4, 'obyu', '3.1655740\r\n', '101.6123320', 'busstand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busstand`
--
ALTER TABLE `busstand`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
