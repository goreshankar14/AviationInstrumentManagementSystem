-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 20, 2019 at 08:52 AM
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
-- Table structure for table `tb_inwards`
--

DROP TABLE IF EXISTS `tb_inwards`;
CREATE TABLE IF NOT EXISTS `tb_inwards` (
  `fd_serial_no` varchar(128) NOT NULL,
  `fd_inward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_inward_number` int(11) NOT NULL,
  `fd_date` date NOT NULL,
  `fd_shipment_mode_id` int(11) NOT NULL COMMENT '(mode of receiving)',
  `fd_remarks` varchar(128) NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_inward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
  `fd_is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_item_name`, `fd_item_number`, `fd_item_make`, `fd_item_model`, `fd_description`, `fd_opening_stock`, `fd_is_active`) VALUES
(1, '8 core signal cable(10mts)', 0, '0', ' ', '', 0, 0),
(2, 'Mega Display with Rs422 cable', 0, '0', '', '', 0, 0),
(3, 'Pot windvane(new type)', 0, '0', ' ', '', 0, 0),
(4, 'Wind sensor(Hall effect)', 0, '0', ' ', '', 0, 0),
(5, '12 core signal cable', 0, '0', '', '', 0, 0),
(6, '24V power supply box & accessories(digital barometer)', 0, '0', '', '', 0, 0),
(7, '6 core signal cable', 0, '0', '', '', 0, 0),
(8, 'Barrel housing assembly', 0, '0', '', '', 0, 0),
(9, 'Base plate +(3 nuts + bolts)junction box', 0, '0', '', '', 0, 0),
(10, 'Cable modem', 0, '0', '', '', 0, 0),
(11, 'Cat 6 cable', 0, '0', '', '', 0, 0),
(12, 'Complete set of 18 feet wind mast-1no', 0, '0', '', '', 0, 0),
(13, 'Connectors', 0, '0', '', '', 0, 0),
(14, 'CWIS data logger', 0, '0', '', '', 0, 0),
(15, 'CWIS data logger system(new type)', 0, '0', '', '', 0, 0),
(16, 'CWIS digitiser system(new type)', 0, '0', '', '', 0, 0),
(17, 'CWIS digitizer ', 0, '0', '', '', 0, 0),
(18, 'DIWE logger', 0, '0', '', '', 0, 0),
(19, 'Engenius modem ENS 505 ', 0, '0', '', '', 0, 0),
(20, 'Engenius modem ENS 202', 0, '0', '', '', 0, 0),
(21, 'Field enclosure ', 0, '0', '', '', 0, 0),
(22, 'GPRS module with antena', 0, '0', '', '', 0, 0),
(23, 'Hand held anemometer', 0, '0', '', '', 0, 0),
(24, 'HWSR data logger', 0, '0', '', '', 0, 0),
(25, 'Junction box', 0, '0', '', '', 0, 0),
(26, 'Luggs', 0, '0', '', '', 0, 0),
(27, 'Mast in.box', 0, '0', '', '', 0, 0),
(28, 'Mega slave display', 0, '0', '', '', 0, 0),
(29, 'Met log ditizer', 0, '0', '', '', 0, 0),
(30, 'Mini slave display', 0, '0', '', '', 0, 0),
(31, 'Mini stevensons screen', 0, '0', '', '', 0, 0),
(32, 'Opt.anemometer', 0, '0', '', '', 0, 0),
(33, 'Opt. anemometer(new type)', 0, '0', '', '', 0, 0),
(34, 'Opt. anemometer  module', 0, '0', '', '', 0, 0),
(35, 'Patch cord cross', 0, '0', '', '', 0, 0),
(36, 'Patch cord straight', 0, '0', '', '', 0, 0),
(37, 'Pot 10 k servo pot', 0, '0', '', '', 0, 0),
(38, 'Pot windvane (new type)', 0, '0', '', '', 0, 0),
(39, 'Power supply', 0, '0', '', '', 0, 0),
(40, 'Pressure sensor(Micm step)', 0, '0', '', '', 0, 0),
(41, 'Pressure sensor(Vaisala make)', 0, '0', '', '', 0, 0),
(42, 'Pressure sensor(Vaisala make)', 0, '0', '', '', 0, 0),
(43, 'Printer cartridge 88A', 0, '0', '', '', 0, 0),
(44, 'Radio modem', 0, '0', '', '', 0, 0),
(45, 'RS 232 cable', 0, '0', '', '', 0, 0),
(46, 'RS 422 cable', 0, '0', '', '', 0, 0),
(47, 'Serial to ethernet convertor', 0, '0', '', '', 0, 0),
(48, 'Signal cable(100m) bundle', 0, '0', '', '', 0, 0),
(49, 'Slave display(old)', 0, '0', '', '', 0, 0),
(50, 'Sleevs', 0, '0', '', '', 0, 0),
(51, 'SMPS', 0, '0', '', '', 0, 0),
(52, 'SRRG', 0, '0', '', '', 0, 0),
(53, 'Stevensons screen', 0, '0', '', '', 0, 0),
(54, 'Tool kit', 0, '0', '', '', 0, 0),
(55, 'Travelling kit', 0, '0', '', '', 0, 0),
(56, 'Travelling standard kit', 0, '0', '', '', 0, 0),
(57, 'TT/RH sensor(kamoline co.)', 0, '0', '', '', 0, 0),
(58, 'TT/RH sensor(rotronic)', 0, '0', '', '', 0, 0),
(59, 'Whirling psychrometer', 0, '0', '', '', 0, 0),
(60, 'Wind sensor(ultra sonic gill)', 0, '0', '', '', 0, 0),
(61, 'Wind sensor(Vaisala make)', 0, '0', '', '', 0, 0),
(62, 'Windvane sensor(Vaisala make)', 0, '0', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_details`
--

DROP TABLE IF EXISTS `tb_item_details`;
CREATE TABLE IF NOT EXISTS `tb_item_details` (
  `fd_item_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_rate` decimal(10,2) NOT NULL,
  `fd_transaction_id` int(11) NOT NULL COMMENT 'It will store the Inward or Outward ID.',
  `fd_transaction_type` char(1) NOT NULL COMMENT 'Inward (i) or Outward (o)',
  PRIMARY KEY (`fd_item_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_type`
--

DROP TABLE IF EXISTS `tb_item_type`;
CREATE TABLE IF NOT EXISTS `tb_item_type` (
  `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_value` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_item_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_outwards`
--

DROP TABLE IF EXISTS `tb_outwards`;
CREATE TABLE IF NOT EXISTS `tb_outwards` (
  `fd_outward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_date` date NOT NULL,
  `fd_shipment_mode_id` int(11) NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_remarks` varchar(128) NOT NULL,
  `fd_outward_number` int(11) NOT NULL,
  `fd_is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_outward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rmcs`
--

DROP TABLE IF EXISTS `tb_rmcs`;
CREATE TABLE IF NOT EXISTS `tb_rmcs` (
  `fd_rmc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_rmc_value` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_rmc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rmcs`
--

INSERT INTO `tb_rmcs` (`fd_rmc_id`, `fd_rmc_value`) VALUES
(1, 'Kolkata'),
(2, 'Mumbai'),
(3, 'Chennai'),
(4, 'Guwahati'),
(5, 'Nagpur'),
(6, 'New delhi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_serial_numbers`
--

DROP TABLE IF EXISTS `tb_serial_numbers`;
CREATE TABLE IF NOT EXISTS `tb_serial_numbers` (
  `fd_item_detail_id` int(11) NOT NULL,
  `fd_serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_value` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_serial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_stations`
--

DROP TABLE IF EXISTS `tb_stations`;
CREATE TABLE IF NOT EXISTS `tb_stations` (
  `fd_station_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_rmc` varchar(128) NOT NULL,
  `fd_icao` varchar(128) NOT NULL,
  `fd_station_name` varchar(128) NOT NULL,
  `fd_station_type` varchar(128) NOT NULL,
  `fd_state` varchar(128) NOT NULL,
  `fd_incharge_name` varchar(128) NOT NULL,
  `fd_station_phone` varchar(10) NOT NULL,
  `fd_station_email` varchar(128) NOT NULL,
  `fd_incharge_mobile` varchar(10) NOT NULL,
  `fd_station_address` varchar(128) NOT NULL,
  `fd_is_active` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COMMENT='To store details of stations' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_stations`
--

INSERT INTO `tb_stations` (`fd_station_id`, `fd_rmc`, `fd_icao`, `fd_station_name`, `fd_station_type`, `fd_state`, `fd_incharge_name`, `fd_station_phone`, `fd_station_email`, `fd_incharge_mobile`, `fd_station_address`, `fd_is_active`) VALUES
(1, ' ', ' ', 'Dimapur', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(2, ' ', ' ', 'Kishangarh Airport, Ajmer', 'A M O', ' ', '', ' ', ' ', ' ', ' ', 0),
(3, ' ', ' ', ' Lucknow Airport', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(4, '', '', 'Port Blair', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(5, ' ', ' ', 'Ranchi', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(6, ' ', ' ', 'ACCEL SYSTEM', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(7, ' ', ' ', 'Air Force Dhoom Dhuma', '', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(15, ' ', ' ', 'Palam', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(16, ' ', ' ', 'Palam', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(18, ' ', ' ', 'Bangalore(BIAL)', 'A M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(19, ' ', ' ', 'Shirdi', 'A M S', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(20, ' ', ' ', 'Tirupati', 'A M S', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(21, ' ', ' ', 'Krutika Kansara', 'BITS', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(22, ' ', ' ', 'Vishakhapatnam', 'CWC', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(23, ' ', ' ', 'E Lab', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(24, ' ', ' ', 'Daman', 'ICGAS', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(25, ' ', ' ', 'Joshi Engineering', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(26, ' ', ' ', 'Ahmedabad', 'M C', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(28, ' ', ' ', 'Bhubaneshwar', 'M C', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(29, ' ', ' ', 'Bhubaneshwar', 'M C', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(30, ' ', ' ', 'Hyderabad', 'M C', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(31, ' ', ' ', 'Lucknow', 'M C', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(32, ' ', ' ', 'Agati', 'M O ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(33, ' ', ' ', 'Calicut', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(34, ' ', ' ', 'CIAL Kochi', 'M O ', '  ', ' ', ' ', ' ', ' ', ' ', 0),
(35, ' ', ' ', 'CIAL Kochi', 'M O ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(36, ' ', ' ', 'Diu', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(37, ' ', ' ', 'Machilipatnam', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(38, ' ', ' ', 'Pondecherry', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(39, ' ', ' ', 'Taj Agra', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(40, ' ', ' ', 'Thiruvananthapuram', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(41, ' ', ' ', 'Agatti', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(42, ' ', ' ', 'Chennai', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(43, ' ', ' ', 'Dimapur', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(44, ' ', ' ', 'Guwahati', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(45, ' ', ' ', 'Kakinada', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(46, ' ', ' ', 'Kochi', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(47, ' ', ' ', 'Kolkata', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(48, ' ', ' ', 'Nagpur', 'M O', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(49, ' ', ' ', 'Palam', 'M O ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(50, '', '', 'Pashan, Pune', 'MTI ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(51, ' ', ' ', 'SGS Weather', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(52, ' ', ' ', 'Surface Lab for Calibration', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(53, ' ', ' ', 'Sameer Mumbai', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0),
(54, 'Chennai', '', 'Chennai', '  ', ' ', ' ', '  ', ' ', ' ', ' ', 0),
(55, 'Nagpur', ' ', 'Nagpur', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_station_details`
--

DROP TABLE IF EXISTS `tb_station_details`;
CREATE TABLE IF NOT EXISTS `tb_station_details` (
  `fd_icao_id` int(11) NOT NULL,
  `fd_rmc_id` int(11) NOT NULL,
  `fd_station_name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE IF NOT EXISTS `tb_users` (
  `fd_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_first_name` varchar(128) NOT NULL,
  `fd_last_name` varchar(128) NOT NULL,
  `fd_username` varchar(128) NOT NULL,
  `fd_password` char(60) NOT NULL,
  `fd_role` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
