-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2019 at 10:52 AM
-- Server version: 5.7.26
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
-- Table structure for table `tb_items`
--

DROP TABLE IF EXISTS `tb_items`;
CREATE TABLE IF NOT EXISTS `tb_items` (
  `fd_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_name` varchar(128) NOT NULL,
  `fd_specification` varchar(255) NOT NULL,
  PRIMARY KEY (`fd_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_name`, `fd_specification`) VALUES
(1, 'Signal Cable', ''),
(2, 'Mega Display ', ''),
(3, 'Pot Windvane', ''),
(4, 'Wind Sensor', ''),
(5, 'Power Supply box & Accessories', 'Digital Barometer'),
(6, 'Barrel Housing Assembly', ''),
(7, 'Base Plate ', '(3 nuts + bolts)junction box'),
(8, 'Cable Modem', ''),
(9, 'Cat 6 Cable', ''),
(10, 'Complete set of 18 feet Wind Mast-1no', ''),
(11, 'Connectors', ''),
(12, 'CWIS Data Logger', ''),
(13, 'CWIS Data Digitizer ', ''),
(14, 'DIWE Logger', ''),
(15, 'Engenious Modem ', ''),
(16, 'Field Enclosure ', ''),
(17, 'GPRS Module ', 'with antena'),
(18, 'Hand Held Anemometer', ''),
(19, 'Data Logger', ''),
(20, 'Junction Box', ''),
(21, 'Luggs', ''),
(22, 'Slave Display', ''),
(23, 'Mini Stevensons Screen', ''),
(24, 'Opt. Anemometer', ''),
(25, 'Patch Cord ', ''),
(26, 'Pot 10 K Servo Pot', ''),
(27, 'Pressure Sensor', ''),
(28, 'Printer Cartridge ', ''),
(29, 'Radio modem', ''),
(30, 'RS 232 cable', ''),
(31, 'RS 422 cable', ''),
(32, 'Serial to Ethernet Convertor', ''),
(33, 'Sleevs', ''),
(34, 'SMPS', ''),
(35, 'SRRG', ''),
(36, 'Stevensons Screen', ''),
(37, 'Tool Kit', ''),
(38, 'Travelling Kit', ''),
(39, 'Travelling Standard Calibration Kit', ''),
(40, 'TT/RH Sensor', ''),
(41, 'Whirling Psychrometer', ''),
(42, 'Anemometer New Type', ''),
(43, '6 Core Shielded Cable 100 mtr', 'For Opt. Anemometer'),
(44, 'Cartridge 12 A', ''),
(45, 'Gill Sensor (Wind Sonic) with AC Adapter', ''),
(46, '10.1 Graphical Display DCWIS System', ''),
(47, 'Teamlink DL', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
