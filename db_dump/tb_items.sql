-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 17, 2019 at 09:02 AM
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
  `fd_item_type` varchar(128) NOT NULL COMMENT '(type/mode)',
  PRIMARY KEY (`fd_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_item_name`, `fd_item_type`) VALUES
(1, '8 core signal cable(10mts)', ' '),
(2, 'Mega Display with Rs422 cable', ''),
(3, 'Pot windvane(new type)', ' '),
(4, 'Wind sensor(Hall effect)', ' '),
(5, '12 core signal cable', ''),
(6, '24V power supply box & accessories(digital barometer)', ''),
(7, '6 core signal cable', ''),
(8, 'Barrel housing assembly', ''),
(9, 'Base plate +(3 nuts + bolts)junction box', ''),
(10, 'Cable modem', ''),
(11, 'Cat 6 cable', ''),
(12, 'Complete set of 18 feet wind mast-1no', ''),
(13, 'Connectors', ''),
(14, 'CWIS data logger', ''),
(15, 'CWIS data logger system(new type)', ''),
(16, 'CWIS digitiser system(new type)', ''),
(17, 'CWIS digitizer ', ''),
(18, 'DIWE logger', ''),
(19, 'Engenius modem ENS 505 ', ''),
(20, 'Engenius modem ENS 202', ''),
(21, 'Field enclosure ', ''),
(22, 'GPRS module with antena', ''),
(23, 'Hand held anemometer', ''),
(24, 'HWSR data logger', ''),
(25, 'Junction box', ''),
(26, 'Luggs', ''),
(27, 'Mast in.box', ''),
(28, 'Mega slave display', ''),
(34, 'Opt. anemometer  module', ''),
(29, 'Met log ditizer', ''),
(30, 'Mini slave display', ''),
(31, 'Mini stevensons screen', ''),
(32, 'Opt.anemometer', ''),
(33, 'Opt. anemometer(new type)', ''),
(53, 'Stevensons screen', ''),
(52, 'SRRG', ''),
(51, 'SMPS', ''),
(50, 'Sleevs', ''),
(49, 'Slave display(old)', ''),
(48, 'Signal cable(100m) bundle', ''),
(47, 'Serial to ethernet convertor', ''),
(46, 'RS 422 cable', ''),
(45, 'RS 232 cable', ''),
(44, 'Radio modem', ''),
(43, 'Printer cartridge 88A', ''),
(42, 'Pressure sensor(Vaisala make)', ''),
(41, 'Pressure sensor(Vaisala make)', ''),
(40, 'Pressure sensor(Micm step)', ''),
(39, 'Power supply', ''),
(38, 'Pot windvane (new type)', ''),
(37, 'Pot 10 k servo pot', ''),
(36, 'Patch cord straight', ''),
(35, 'Patch cord cross', ''),
(54, 'Tool kit', ''),
(55, 'Travelling kit', ''),
(56, 'Travelling standard kit', ''),
(57, 'TT/RH sensor(kamoline co.)', ''),
(58, 'TT/RH sensor(rotronic)', ''),
(59, 'Whirling psychrometer', ''),
(60, 'Wind sensor(ultra sonic gill)', ''),
(61, 'Wind sensor(Vaisala make)', ''),
(62, 'Windvane sensor(Vaisala make)', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
