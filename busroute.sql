-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 03:37 PM
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
-- Table structure for table `busroute`
--

CREATE TABLE `busroute` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `busroute`
--

INSERT INTO `busroute` (`id`, `name`, `lat`, `lng`, `type`) VALUES
(197, '', '3.167333', '101.606871', 'busroute'),
(196, '', '3.167314', '101.606828', 'busroute'),
(195, '', '3.167261', '101.606863', 'busroute'),
(194, '', '3.167199', '101.606908', 'busroute'),
(193, '', '3.167146', '101.606962', 'busroute'),
(192, '', '3.167087', '101.607018', 'busroute'),
(191, '', '3.167028', '101.60708', 'busroute'),
(190, '', '3.166972', '101.607128', 'busroute'),
(189, '', '3.166907', '101.607187', 'busroute'),
(188, '', '3.16684', '101.607249', 'busroute'),
(187, '', '3.166787', '101.607302', 'busroute'),
(186, '', '3.166723', '101.607351', 'busroute'),
(185, '', '3.166661', '101.607407', 'busroute'),
(184, '', '3.166599', '101.60745', 'busroute'),
(183, '', '3.16657', '101.60748', 'busroute'),
(182, '', '3.166505', '101.607511', 'busroute'),
(181, '', '3.166452', '101.607541', 'busroute'),
(180, '', '3.166387', '101.607568', 'busroute'),
(179, '', '3.166219', '101.607685', 'busroute'),
(178, '', '3.166151', '101.607721', 'busroute'),
(177, '', '3.166094', '101.607759', 'busroute'),
(176, '', '3.166031', '101.607815', 'busroute'),
(175, '', '3.165913', '101.607892', 'busroute'),
(174, '', '3.165859', '101.60794', 'busroute'),
(173, '', '3.165801', '101.607992', 'busroute'),
(172, '', '3.165756', '101.608035', 'busroute'),
(171, '', '3.165697', '101.608084', 'busroute'),
(170, '', '3.165644', '101.608119', 'busroute'),
(169, '', '3.165594', '101.608206', 'busroute'),
(168, '', '3.16553', '101.608276', 'busroute'),
(167, '', '3.165471', '101.608361', 'busroute'),
(166, '', '3.165369', '101.608504', 'busroute'),
(165, '', '3.165324', '101.608584', 'busroute'),
(164, '', '3.165262', '101.608673', 'busroute'),
(163, '', '3.165224', '101.608733', 'busroute'),
(162, '', '3.16517', '101.608829', 'busroute'),
(161, '', '3.16511', '101.608925', 'busroute'),
(160, '', '3.165049', '101.609023', 'busroute'),
(159, '', '3.165001', '101.609119', 'busroute'),
(158, '', '3.16495', '101.609215', 'busroute'),
(157, '', '3.164918', '101.609304', 'busroute'),
(156, '', '3.164871', '101.609409', 'busroute'),
(155, '', '3.164832', '101.609505', 'busroute'),
(154, '', '3.164804', '101.609601', 'busroute'),
(153, '', '3.164769', '101.609696', 'busroute'),
(152, '', '3.16474', '101.609808', 'busroute'),
(151, '', '3.164711', '101.609904', 'busroute'),
(150, '', '3.164686', '101.610025', 'busroute'),
(149, '', '3.164673', '101.61007', 'busroute'),
(148, '', '3.164651', '101.610213', 'busroute'),
(147, '', '3.164625', '101.610312', 'busroute'),
(146, '', '3.164606', '101.61042', 'busroute'),
(145, '', '3.164597', '101.610526', 'busroute'),
(144, '', '3.164594', '101.610583', 'busroute'),
(143, '', '3.164587', '101.610701', 'busroute'),
(142, '', '3.164575', '101.610806', 'busroute'),
(141, '', '3.164589', '101.610951', 'busroute'),
(140, '', '3.164579', '101.611117', 'busroute'),
(139, '', '3.164573', '101.611294', 'busroute'),
(138, '', '3.164573', '101.61146', 'busroute');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busroute`
--
ALTER TABLE `busroute`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
