-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 27, 2019 at 03:33 AM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imd_aviation_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_type`
--

DROP TABLE IF EXISTS `tb_item_type`;
CREATE TABLE IF NOT EXISTS `tb_item_type` (
  `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_value` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_item_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_item_type`
--

INSERT INTO `tb_item_type` (`fd_item_type_id`, `fd_item_id`, `fd_value`) VALUES
(1, 1, '06'),
(2, 1, '08'),
(3, 1, '10'),
(4, 1, '12'),
(5, 1, '20'),
(6, 2, 'RS422 cable'),
(7, 3, 'new type'),
(8, 4, 'IMD'),
(9, 4, 'Ultra sonic Gill'),
(10, 4, 'Vaisala make'),
(11, 6, '24V'),
(12, 14, '03'),
(13, 14, '04'),
(14, 17, '03'),
(15, 17, '04'),
(16, 18, '03'),
(17, 18, '04'),
(18, 19, 'ENS 505'),
(19, 19, 'ENS 202'),
(20, 32, 'POT'),
(21, 32, 'Hall effect'),
(22, 35, 'Cross'),
(23, 35, 'Straight'),
(24, 40, 'MICM step'),
(25, 40, 'Vaisala make'),
(26, 43, '88A'),
(27, 53, 'Mini'),
(28, 53, 'Mega'),
(29, 57, 'Kamoline co.'),
(30, 57, 'Rotronic');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
