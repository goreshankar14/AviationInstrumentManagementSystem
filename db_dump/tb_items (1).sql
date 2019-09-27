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
-- Table structure for table `tb_items`
--

DROP TABLE IF EXISTS `tb_items`;
CREATE TABLE IF NOT EXISTS `tb_items` (
  `fd_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_name` varchar(128) NOT NULL,
  `fd_item_number` int(11) NOT NULL,
  `fd_item_make` varchar(128) NOT NULL,
  `fd_item_model` varchar(128) NOT NULL,
  `fd_description` varchar(255) NOT NULL,
  `fd_opening_stock` int(11) NOT NULL,
  PRIMARY KEY (`fd_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_item_name`, `fd_item_number`, `fd_item_make`, `fd_item_model`, `fd_description`, `fd_opening_stock`) VALUES
(1, 'signal cable', 0, '0', ' 06,08,10,12,20', '', 0),
(2, 'Mega Display ', 0, '0', ' Rs422 cable', '', 0),
(3, 'Pot windvane', 0, '0', '(new type)', '', 0),
(4, 'Wind sensor', 0, '0', ' IMD, Ultra sonic Gill, Vaisala make', '', 0),
(6, ' power supply box & accessories', 0, '0', '24V', '(digital barometer)', 0),
(8, 'Barrel housing assembly', 0, '0', '', '', 0),
(9, 'Base plate ', 0, '0', '', '(3 nuts + bolts)junction box', 0),
(10, 'Cable modem', 0, '0', '', '', 0),
(11, 'Cat 6 cable', 0, '0', '', '', 0),
(12, 'Complete set of 18 feet wind mast-1no', 0, '0', '', '', 0),
(13, 'Connectors', 0, '0', '', '', 0),
(14, 'CWIS data logger', 0, '0', '03,04', '', 0),
(17, 'CWIS digitizer ', 0, '0', '03,04', '', 0),
(18, 'DIWE logger', 0, '0', '03,04', '', 0),
(19, ' modem ', 0, '0', 'ENS 505 ,ENS 202', 'Engenius', 0),
(21, 'Field enclosure ', 0, '0', '', '', 0),
(22, 'GPRS module ', 0, '0', '', 'with antena', 0),
(23, 'Hand held anemometer', 0, '0', '', '', 0),
(24, 'HWSR data logger', 0, '0', '', '', 0),
(25, 'Junction box', 0, '', '', '', 0),
(26, 'Luggs', 0, '0', '', '', 0),
(30, 'Mini slave display', 0, '0', '', '', 0),
(31, 'Mini stevensons screen', 0, '0', '', '', 0),
(32, 'Opt.anemometer', 0, '0', 'Pot, Hall effect', '', 0),
(33, 'Opt. anemometer(new type)', 0, '0', '', '', 0),
(34, 'Opt. anemometer  module', 0, '0', '', '', 0),
(35, 'Patch cord ', 0, '0', 'Cross ,straight', '', 0),
(37, 'Pot 10 k servo pot', 0, '0', '', '', 0),
(40, 'Pressure sensor', 0, '0', 'Micm step , Vaisala make', '', 0),
(43, 'Printer cartridge ', 0, '0', '88A', '', 0),
(44, 'Radio modem', 0, '0', '', '', 0),
(45, 'RS 232 cable', 0, '0', '', '', 0),
(46, 'RS 422 cable', 0, '0', '', '', 0),
(47, 'Serial to ethernet convertor', 0, '0', '', '', 0),
(50, 'Sleevs', 0, '0', '', '', 0),
(51, 'SMPS', 0, '0', '', '', 0),
(52, 'SRRG', 0, '0', '', '', 0),
(53, 'Stevensons screen', 0, '0', 'Mini, Mega', '', 0),
(54, 'Tool kit', 0, '0', '', '', 0),
(55, 'Travelling kit', 0, '0', '', '', 0),
(56, 'Travelling standard kit', 0, '0', '', '', 0),
(57, 'TT/RH sensor', 0, '0', 'kamoline co. , Rotronics', '', 0),
(59, 'Whirling psychrometer', 0, '0', '', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
