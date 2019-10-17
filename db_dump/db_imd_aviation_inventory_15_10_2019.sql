-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2019 at 10:37 AM
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
-- Table structure for table `tb_inwards`
--

DROP TABLE IF EXISTS `tb_inwards`;
CREATE TABLE IF NOT EXISTS `tb_inwards` (
  `fd_inward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) DEFAULT NULL,
  `fd_item_manufacturer_id` int(11) DEFAULT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_rate` decimal(10,0) NOT NULL,
  `fd_mode_of_receiving` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL,
  PRIMARY KEY (`fd_inward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_inwards`
--

INSERT INTO `tb_inwards` (`fd_inward_id`, `fd_date`, `fd_station_id`, `fd_item_id`, `fd_item_type_id`, `fd_item_manufacturer_id`, `fd_quantity`, `fd_rate`, `fd_mode_of_receiving`, `fd_remarks`) VALUES
(1, '2017-07-12', 79, 10, 7, 0, 10, '0', 'By Hand', 'From Arjit Anjan'),
(2, '2017-07-24', 56, 3, 0, 0, 1, '0', 'By Post', ''),
(3, '2017-07-24', 56, 4, 0, 0, 1, '0', 'By Post', ''),
(4, '2017-07-27', 78, 4, 0, 0, 6, '0', 'By Hand', 'IMD Make from Store'),
(5, '2017-07-31', 8, 4, 0, 0, 1, '0', 'By Hand', 'From Hubli'),
(6, '2017-08-03', 80, 5, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(7, '2017-08-03', 80, 2, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(8, '2017-08-03', 78, 6, 2, 0, 2, '0', 'By Hand', 'From Workshop'),
(9, '2017-08-08', 40, 4, 0, 0, 1, '0', 'By Post', ''),
(10, '2017-08-08', 40, 3, 0, 0, 1, '0', 'By Post', ''),
(11, '2017-08-17', 78, 4, 0, 0, 6, '0', '', 'From Store (IMD Make)'),
(12, '2017-08-22', 81, 4, 0, 0, 1, '0', 'By Post', ''),
(13, '2017-09-06', 79, 7, 0, 0, 6, '0', '', ''),
(14, '2017-09-07', 80, 2, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(15, '2017-09-07', 80, 5, 0, 0, 1, '0', 'By Hand', 'Mr. Gajare'),
(16, '2017-09-07', 78, 4, 3, 0, 5, '0', '', 'For Repair'),
(17, '2017-09-11', 82, 4, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(18, '2017-09-11', 82, 3, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(19, '2017-09-11', 82, 6, 0, 0, 1, '0', 'By Hand', 'For Repair'),
(20, '2017-10-10', 78, 8, 4, 0, 1, '0', '', '100 Mtr For Optical Anemometer'),
(21, '2017-11-16', 80, 3, 0, 0, 1, '0', 'By Hand', 'For changing RTC Cell, Front Flex Cover, On/Off Switch repair'),
(22, '2017-11-14', 78, 4, 0, 0, 1, '0', '', 'For Calicut'),
(23, '2017-11-16', 78, 4, 0, 0, 1, '0', '', 'For Port Blair'),
(24, '2017-11-15', 78, 9, 5, 0, 1, '0', '', 'For Shri Rakesh Kumar'),
(25, '2017-11-21', 80, 3, 0, 0, 1, '0', '', 'For Repair'),
(26, '2017-11-21', 80, 3, 0, 0, 5, '0', '', 'From Gajare'),
(27, '2017-11-24', 83, 3, 0, 0, 1, '0', '', 'Received by Sri SM Pawar Tech.Officer'),
(28, '2017-11-24', 83, 1, 1, 0, 1, '0', '', 'Received by Sri SM Pawar Tech.Officer'),
(29, '2017-11-24', 83, 10, 6, 1, 1, '0', '', 'Received by Sri SM Pawar Tech. Officer'),
(30, '2017-11-24', 19, 4, 0, 0, 2, '0', 'By Post', 'Defective Instrument'),
(31, '2017-11-24', 19, 1, 1, 0, 1, '0', 'By Post', 'Defective Instrument'),
(32, '2017-11-24', 19, 3, 0, 2, 1, '0', 'By Post', 'Defective Instrument'),
(33, '2017-12-12', 13, 3, 0, 2, 1, '0', 'By Post', 'Defective Instrument'),
(34, '2017-12-12', 13, 5, 0, 0, 1, '0', 'By Post', 'Defective Instrument'),
(35, '2017-12-12', 13, 1, 1, 0, 1, '0', 'By Post', 'Defective (with Adapter)'),
(36, '2017-12-12', 13, 1, 1, 0, 2, '0', 'By Post', 'Defective'),
(37, '2018-01-05', 78, 6, 2, 0, 2, '0', '', 'From Workshop'),
(38, '2018-01-09', 62, 4, 0, 0, 1, '0', '', 'Given to workshop for repair'),
(39, '2018-01-09', 12, 5, 0, 0, 2, '0', '', 'Defective'),
(40, '2018-01-09', 12, 1, 1, 0, 1, '0', '', 'Defective'),
(41, '2018-01-09', 12, 11, 0, 3, 2, '0', '', 'Defective'),
(42, '2018-01-09', 5, 4, 0, 0, 3, '0', '', 'Store to workshop for repair'),
(43, '2018-01-09', 5, 6, 2, 0, 4, '0', '', 'Store to workshop for repair'),
(44, '2018-01-09', 5, 11, 0, 3, 2, '0', '', ''),
(45, '2018-01-09', 5, 12, 0, 0, 1, '0', '', ''),
(46, '2018-01-09', 5, 13, 0, 0, 3, '0', '', ''),
(47, '2018-01-09', 62, 4, 0, 0, 1, '0', '', 'Store for repair in workshop'),
(48, '2018-01-09', 62, 3, 0, 0, 1, '0', '', ''),
(49, '2018-01-18', 5, 1, 0, 0, 1, '0', 'By Post', ''),
(50, '2018-01-18', 5, 14, 0, 0, 1, '0', '', ''),
(51, '2018-01-18', 5, 15, 0, 0, 1, '0', '', ''),
(52, '2018-01-18', 5, 16, 0, 0, 2, '0', '', ''),
(54, '2018-01-15', 78, 17, 0, 0, 2, '0', '', 'From store'),
(55, '2018-01-18', 44, 3, 0, 0, 2, '0', 'By Speed Post', ''),
(56, '2018-01-18', 5, 4, 8, 0, 2, '0', 'By Speed Post', 'defective'),
(57, '2018-02-01', 80, 5, 0, 0, 1, '0', 'By Hand', 'by Mr. Gajare'),
(58, '2018-02-01', 80, 3, 0, 0, 2, '0', '', ''),
(59, '2018-02-01', 80, 3, 11, 0, 15, '0', 'By Hand', 'BY Mr. Gajare'),
(60, '2018-02-08', 78, 4, 8, 0, 2, '0', 'By Hand', ''),
(61, '2018-02-08', 63, 12, 0, 0, 2, '0', '', 'receive from Diu airport'),
(62, '2018-02-09', 78, 19, 0, 9, 3, '0', '', ''),
(63, '2018-02-14', 78, 6, 12, 0, 3, '0', '', 'From workshop'),
(64, '2018-02-15', 78, 6, 12, 0, 2, '0', '', 'From workshop'),
(65, '2018-02-15', 84, 1, 1, 0, 1, '0', '', 'From ICGAS daman'),
(66, '2018-02-19', 78, 20, 0, 0, 1, '0', '', 'For kolkata'),
(67, '2018-02-19', 78, 4, 0, 0, 5, '0', '', 'For Agathi port blair'),
(68, '2018-02-21', 5, 21, 0, 0, 1, '0', '', ''),
(69, '2018-02-20', 78, 22, 0, 0, 1, '0', '', 'Defective'),
(70, '2018-02-20', 78, 4, 8, 0, 1, '0', '', 'Defective'),
(71, '2018-02-27', 78, 23, 0, 0, 11, '0', '', 'CC388 AD'),
(72, '2018-02-27', 78, 23, 0, 0, 5, '0', '', 'Q 2612 AF'),
(73, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE360A'),
(74, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE361A'),
(75, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE362A'),
(76, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE363A'),
(77, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE252A'),
(78, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE253A'),
(79, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE250A'),
(80, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE251A'),
(81, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'Q 5949A'),
(82, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE320A'),
(83, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE321A'),
(84, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE322A'),
(85, '2018-02-27', 78, 23, 0, 0, 1, '0', '', 'CE323A'),
(86, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE412AC'),
(87, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE413AC'),
(88, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE411AC'),
(89, '2018-02-27', 78, 23, 0, 0, 2, '0', '', 'CE410XC'),
(90, '2018-02-27', 78, 24, 0, 0, 20, '0', '', 'For ELAB'),
(91, '2018-02-27', 78, 25, 0, 0, 6, '0', '', ''),
(92, '2018-03-05', 78, 4, 0, 0, 5, '0', '', 'From Joshi Engineer'),
(93, '2018-03-12', 78, 26, 13, 0, 1, '0', '', 'Receive from Amit electronics CS & CO'),
(94, '2018-03-12', 78, 29, 14, 0, 1, '0', '', 'From shilpa electronics'),
(95, '2018-03-13', 80, 31, 0, 0, 4, '0', '', 'Mr. Gajare'),
(96, '2018-03-19', 78, 30, 15, 0, 2, '0', '', ''),
(97, '2018-03-19', 78, 30, 16, 0, 4, '0', '', ''),
(98, '2018-03-21', 76, 5, 0, 0, 1, '0', 'By Post', ''),
(99, '2018-03-21', 76, 13, 0, 0, 2, '0', 'By Hand', ''),
(100, '2018-04-17', 78, 4, 8, 0, 1, '0', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_items`
--

INSERT INTO `tb_items` (`fd_item_id`, `fd_name`, `fd_specification`) VALUES
(1, 'Slave Display', ''),
(2, 'CWIS Data Logger', ''),
(3, 'DIWE Data Logger', ''),
(4, 'Opt. Anemometer', ''),
(5, 'CWIS Digitizer', ''),
(6, 'Windwane', ''),
(7, 'Travelling Standard Calibration Kit', ''),
(8, 'Shielded Cable', '100 Mtr'),
(9, 'Cartridge', ''),
(10, 'Sensor', ''),
(11, 'Modem', ''),
(12, 'Cable modem', ''),
(13, 'Ethernet converter', ''),
(14, 'Team link DL', ''),
(15, 'Accel ESR', ''),
(16, 'Metlog', ''),
(17, 'Whirling psychrometer', ''),
(18, 'Opt. Anemometer', ''),
(19, 'Wind speed sensor', ''),
(20, 'Stevenson screen', ''),
(21, 'CGA', ''),
(22, 'Self recording rainguage', ''),
(23, 'HP Toner', ''),
(24, 'Power cord', '230V ,5AMP Indian plug mains'),
(25, 'Araldite', '180 gms'),
(26, 'Connector', ''),
(27, 'Sleeves', '100 mtrs'),
(28, 'Luggs', ''),
(29, 'Servo pot', ''),
(30, 'Core cable', ''),
(31, 'HWSR Data logger', ''),
(32, 'CPU', ''),
(33, 'Monitor', ''),
(34, 'Wifi modem', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_manufacturers`
--

DROP TABLE IF EXISTS `tb_item_manufacturers`;
CREATE TABLE IF NOT EXISTS `tb_item_manufacturers` (
  `fd_item_manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_manufacturer` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_item_manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_manufacturers`
--

INSERT INTO `tb_item_manufacturers` (`fd_item_manufacturer_id`, `fd_item_id`, `fd_manufacturer`, `fd_dirty_bit`) VALUES
(1, 10, 'Gill', 1),
(2, 3, 'ARKS', 1),
(3, 11, 'Engenious', 1),
(4, 12, '', 1),
(5, 13, '', 1),
(6, 14, '', 1),
(7, 15, '', 1),
(8, 16, '', 1),
(9, 19, 'Vaisala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_item_types`
--

DROP TABLE IF EXISTS `tb_item_types`;
CREATE TABLE IF NOT EXISTS `tb_item_types` (
  `fd_item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_item_id` int(11) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_dirty_bit` tinyint(4) NOT NULL,
  PRIMARY KEY (`fd_item_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item_types`
--

INSERT INTO `tb_item_types` (`fd_item_type_id`, `fd_item_id`, `fd_type`, `fd_dirty_bit`) VALUES
(1, 1, 'Mini', 1),
(2, 6, 'Pot', 1),
(3, 4, 'Mini', 1),
(4, 8, '6 Core', 1),
(5, 9, '12 A', 1),
(6, 10, 'Windsonic', 1),
(7, 10, 'TT/RH', 1),
(8, 4, 'New type', 1),
(9, 18, 'Mini', 1),
(10, 18, 'New type', 1),
(11, 3, 'New', 1),
(12, 6, 'Hall Effect', 1),
(13, 26, '6 way', 1),
(14, 29, '10k', 1),
(15, 30, '2', 1),
(16, 30, '4', 1),
(17, 30, '6', 1),
(18, 32, 'I-3', 1),
(19, 32, 'I-7', 1),
(20, 10, 'AT/RH', 1),
(21, 34, 'ENH202', 1);

-- ---------------------------------------------------

--
-- Table structure for table `tb_outwards`
--

DROP TABLE IF EXISTS `tb_outwards`;
CREATE TABLE IF NOT EXISTS `tb_outwards` (
  `fd_outward_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_date` date NOT NULL,
  `fd_station_id` int(11) NOT NULL,
  `fd_item_id` int(11) NOT NULL,
  `fd_item_type_id` int(11) NOT NULL,
  `fd_item_manufacturer_id` int(11) NOT NULL,
  `fd_quantity` int(11) NOT NULL,
  `fd_mode_of_dispatch` varchar(128) NOT NULL,
  `fd_remarks` varchar(256) NOT NULL,
  PRIMARY KEY (`fd_outward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_outwards`
--

INSERT INTO `tb_outwards` (`fd_outward_id`, `fd_date`, `fd_station_id`, `fd_item_id`, `fd_item_type_id`, `fd_item_manufacturer_id`, `fd_quantity`, `fd_mode_of_dispatch`, `fd_remarks`) VALUES
(1, '2017-06-09', 55, 32, 18, 0, 1, 'By Speed Post', ''),
(2, '2017-06-09', 55, 32, 19, 0, 1, 'By Speed Post', ''),
(3, '2017-06-09', 55, 33, 0, 0, 2, '', ''),
(4, '2017-06-09', 85, 10, 20, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(5, '2017-06-09', 85, 1, 1, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(6, '2017-06-09', 85, 29, 14, 0, 1, '', 'On tour by sri.PR Mehetre SA'),
(7, '2017-06-09', 63, 12, 0, 0, 2, 'By Speed Post', ''),
(8, '2017-06-12', 68, 4, 0, 0, 1, 'By Speed Post', ''),
(9, '2017-06-13', 8, 4, 0, 0, 1, 'By Speed Post', ''),
(10, '2017-06-13', 86, 4, 0, 0, 1, 'By Speed Post', ''),
(11, '2017-06-13', 23, 4, 0, 0, 1, 'By Speed Post', ''),
(12, '2017-06-13', 87, 34, 21, 0, 2, 'By Hand', ''),
(13, '2017-06-13', 87, 12, 0, 0, 2, 'By Hand', ''),
(14, '2017-06-16', 88, 4, 0, 0, 1, 'By Speed Post', ''),
(15, '2017-06-15', 85, 5, 0, 0, 1, 'By Hand', ''),
(16, '2017-06-21', 89, 6, 12, 0, 1, '', 'For testing with  RK Gaikwad'),
(17, '2017-06-23', 40, 4, 0, 0, 1, 'By Speed Post', ''),
(18, '2017-06-22', 89, 29, 14, 0, 5, 'By Hand', 'Handed over to Yatin Bhosale'),
(19, '2017-06-27', 51, 2, 0, 0, 1, 'By Speed Post', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_serial_numbers`
--

DROP TABLE IF EXISTS `tb_serial_numbers`;
CREATE TABLE IF NOT EXISTS `tb_serial_numbers` (
  `fd_serial_number_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_transaction_id` int(11) NOT NULL,
  `fd_transaction_type` char(1) NOT NULL,
  `fd_serial_number` varchar(128) NOT NULL,
  PRIMARY KEY (`fd_serial_number_id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_serial_numbers`
--

INSERT INTO `tb_serial_numbers` (`fd_serial_number_id`, `fd_transaction_id`, `fd_transaction_type`, `fd_serial_number`) VALUES
(1, 1, 'I', '02-002489'),
(2, 1, 'I', '02-002298'),
(3, 1, 'I', '02-002229'),
(4, 1, 'I', '02-002301'),
(5, 1, 'I', '02-002497'),
(6, 1, 'I', '02-002490'),
(7, 1, 'I', '02-002483'),
(8, 1, 'I', '02-002299'),
(9, 1, 'I', '02-002488'),
(10, 1, 'I', '02-002302'),
(11, 2, 'I', 'AS/UWL/0310/67'),
(12, 3, 'I', '142/03'),
(13, 4, 'I', '400/16'),
(14, 4, 'I', '399/16'),
(15, 4, 'I', '396/16'),
(16, 4, 'I', '387/16'),
(17, 4, 'I', '391/16'),
(18, 4, 'I', '393/16'),
(19, 5, 'I', '364/16'),
(20, 6, 'I', 'AS/DD/37'),
(21, 7, 'I', 'AS/DAS/37'),
(22, 8, 'I', '208/13'),
(23, 8, 'I', '185/09'),
(24, 9, 'I', '014/17'),
(25, 10, 'I', 'AS/UWL/23'),
(26, 11, 'I', '408/16'),
(27, 11, 'I', '403/16'),
(28, 11, 'I', '409/16'),
(29, 11, 'I', '392/16'),
(30, 11, 'I', '394/16'),
(31, 11, 'I', '401/16'),
(32, 12, 'I', '371/16'),
(33, 13, 'I', 'PDB016RHT992'),
(34, 13, 'I', 'PDB026RHT962'),
(35, 13, 'I', 'PDB023RHT971'),
(36, 13, 'I', 'PDB018RHT1010'),
(37, 13, 'I', 'PDB005RHT972'),
(38, 13, 'I', 'PDB042RHT996'),
(39, 14, 'I', 'AS/DAS/38'),
(40, 15, 'I', 'AS/DD/38'),
(41, 16, 'I', 'Nil'),
(42, 16, 'I', 'Nil'),
(43, 16, 'I', 'Nil'),
(44, 16, 'I', 'Nil'),
(45, 16, 'I', 'Nil'),
(46, 17, 'I', '334/13'),
(47, 18, 'I', 'AS/0712/16'),
(48, 19, 'I', 'Nil'),
(49, 20, 'I', 'Nil'),
(50, 21, 'I', 'AS/UWL/30'),
(51, 22, 'I', '407/16'),
(52, 23, 'I', '398/16'),
(53, 24, 'I', '7616A016/017'),
(54, 25, 'I', 'AS/UWL/30'),
(55, 26, 'I', 'AS/UWL/25'),
(56, 26, 'I', 'AS/UWL/26'),
(57, 26, 'I', 'AS/UWL/27'),
(58, 26, 'I', 'AS/UWL/28'),
(59, 26, 'I', 'AS/UWL/29'),
(60, 27, 'I', 'AS/0712/83'),
(61, 28, 'I', 'AS/MS-03/270'),
(62, 29, 'I', '15070089'),
(63, 30, 'I', '214/06'),
(64, 30, 'I', '322/13'),
(65, 31, 'I', 'AS/0110/114'),
(66, 32, 'I', '050114016'),
(67, 33, 'I', 'AS/1014/153'),
(68, 34, 'I', 'AS/DD/10'),
(69, 35, 'I', 'AS/MS-03/220'),
(70, 36, 'I', 'AS/MS/1012/02'),
(71, 36, 'I', 'AS/MS/06'),
(72, 37, 'I', '320/17'),
(73, 37, 'I', '321/17'),
(74, 38, 'I', '335/13'),
(75, 39, 'I', '0501140009'),
(76, 39, 'I', 'AS/VW/22'),
(77, 40, 'I', 'AS/MS/127'),
(78, 41, 'I', '14B260986'),
(79, 41, 'I', '14B261074'),
(80, 42, 'I', 'Nil'),
(81, 42, 'I', 'Nil'),
(82, 42, 'I', 'Nil'),
(83, 43, 'I', 'Nil'),
(84, 43, 'I', 'Nil'),
(85, 43, 'I', 'Nil'),
(86, 43, 'I', 'Nil'),
(87, 44, 'I', '116237058'),
(88, 44, 'I', '116237055'),
(89, 45, 'I', 'DL002/DDL-0025742/2/DD/12'),
(90, 46, 'I', 'UPG/SE-1000'),
(91, 46, 'I', 'AS/DD/09'),
(92, 46, 'I', 'AS/1E/DD/0813/53'),
(93, 47, 'I', '335/13'),
(94, 48, 'I', '05D114002'),
(95, 49, 'I', 'AS/PCD/01/2015'),
(96, 50, 'I', '04002525'),
(97, 51, 'I', 'ESR0303'),
(98, 52, 'I', 'AS/DAS0813/52'),
(99, 52, 'I', 'AS/DAS0813/53'),
(103, 54, 'I', '743/09'),
(102, 54, 'I', '729/09'),
(104, 55, 'I', 'AS/UWL/04'),
(105, 55, 'I', 'AS/0712/92'),
(106, 56, 'I', '010/17'),
(107, 56, 'I', 'Nil'),
(108, 57, 'I', 'AS/DD/10'),
(109, 58, 'I', 'AS/0112/89'),
(110, 58, 'I', 'AS/0712/81'),
(111, 59, 'I', 'AS/51'),
(112, 59, 'I', 'AS/52'),
(113, 59, 'I', 'AS/53'),
(114, 59, 'I', 'AS/54'),
(115, 59, 'I', 'AS/55'),
(116, 59, 'I', 'AS/56'),
(117, 59, 'I', 'AS/57'),
(118, 59, 'I', 'AS/58'),
(119, 59, 'I', 'AS/59'),
(120, 59, 'I', 'AS/60'),
(121, 59, 'I', 'AS/61'),
(122, 59, 'I', 'AS/62'),
(123, 59, 'I', 'AS/63'),
(124, 59, 'I', 'AS/64'),
(125, 59, 'I', 'AS/65'),
(126, 60, 'I', '26/17'),
(127, 60, 'I', '34/17'),
(128, 61, 'I', ''),
(129, 61, 'I', ''),
(130, 62, 'I', 'N4734009'),
(131, 62, 'I', 'N4734017'),
(132, 62, 'I', 'N4734010'),
(133, 63, 'I', '322/17'),
(134, 63, 'I', '323/17'),
(135, 63, 'I', '324/17'),
(136, 64, 'I', '325/17'),
(137, 64, 'I', '326/17'),
(138, 65, 'I', 'AS/MS3/200'),
(139, 66, 'I', 'Nil'),
(140, 67, 'I', '330/13'),
(141, 67, 'I', '318/13'),
(142, 67, 'I', '350/13'),
(143, 67, 'I', '107/03'),
(144, 67, 'I', '17/93'),
(145, 68, 'I', '66-01'),
(146, 69, 'I', '66-01'),
(147, 70, 'I', '06/16'),
(148, 71, 'I', 'Nil'),
(149, 71, 'I', 'Nil'),
(150, 71, 'I', 'Nil'),
(151, 71, 'I', 'Nil'),
(152, 71, 'I', 'Nil'),
(153, 71, 'I', 'Nil'),
(154, 71, 'I', 'Nil'),
(155, 71, 'I', 'Nil'),
(156, 71, 'I', 'Nil'),
(157, 71, 'I', 'Nil'),
(158, 71, 'I', 'Nil'),
(159, 72, 'I', 'Nil'),
(160, 72, 'I', 'Nil'),
(161, 72, 'I', 'Nil'),
(162, 72, 'I', 'Nil'),
(163, 72, 'I', 'Nil'),
(164, 73, 'I', 'Nil'),
(165, 74, 'I', 'Nil'),
(166, 75, 'I', 'Nil'),
(167, 76, 'I', 'Nil'),
(168, 77, 'I', 'Nil'),
(169, 77, 'I', 'Nil'),
(170, 78, 'I', 'Nil'),
(171, 78, 'I', 'Nil'),
(172, 79, 'I', 'Nil'),
(173, 79, 'I', 'Nil'),
(174, 80, 'I', 'Nil'),
(175, 80, 'I', 'Nil'),
(176, 81, 'I', 'Nil'),
(177, 81, 'I', 'Nil'),
(178, 82, 'I', 'Nil'),
(179, 83, 'I', 'Nil'),
(180, 84, 'I', 'Nil'),
(181, 85, 'I', 'Nil'),
(182, 86, 'I', 'Nil'),
(183, 86, 'I', 'Nil'),
(184, 87, 'I', 'Nil'),
(185, 87, 'I', 'Nil'),
(186, 88, 'I', 'Nil'),
(187, 88, 'I', 'Nil'),
(188, 89, 'I', 'Nil'),
(189, 89, 'I', 'Nil'),
(190, 90, 'I', 'Nil'),
(191, 90, 'I', 'Nil'),
(192, 90, 'I', 'Nil'),
(193, 90, 'I', 'Nil'),
(194, 90, 'I', 'Nil'),
(195, 90, 'I', 'Nil'),
(196, 90, 'I', 'Nil'),
(197, 90, 'I', 'Nil'),
(198, 90, 'I', 'Nil'),
(199, 90, 'I', 'Nil'),
(200, 90, 'I', 'Nil'),
(201, 90, 'I', 'Nil'),
(202, 90, 'I', 'Nil'),
(203, 90, 'I', 'Nil'),
(204, 90, 'I', 'Nil'),
(205, 90, 'I', 'Nil'),
(206, 90, 'I', 'Nil'),
(207, 90, 'I', 'Nil'),
(208, 90, 'I', 'Nil'),
(209, 90, 'I', 'Nil'),
(210, 91, 'I', 'Nil'),
(211, 91, 'I', 'Nil'),
(212, 91, 'I', 'Nil'),
(213, 91, 'I', 'Nil'),
(214, 91, 'I', 'Nil'),
(215, 91, 'I', 'Nil'),
(216, 92, 'I', '024/17'),
(217, 92, 'I', '032/17'),
(218, 92, 'I', '033/17'),
(219, 92, 'I', '036/17'),
(220, 92, 'I', '043/17'),
(221, 93, 'I', ''),
(222, 94, 'I', ''),
(223, 95, 'I', 'AS/HWSR/01'),
(224, 95, 'I', 'AS/HWSR/02'),
(225, 95, 'I', 'AS/HWSR/03'),
(226, 95, 'I', 'AS/HWSR/04'),
(227, 96, 'I', ''),
(228, 96, 'I', ''),
(229, 97, 'I', ''),
(230, 97, 'I', ''),
(231, 97, 'I', ''),
(232, 97, 'I', ''),
(233, 98, 'I', 'AS/DD/08'),
(234, 99, 'I', 'AS/DD/10'),
(235, 99, 'I', 'AS/DAS/10'),
(236, 100, 'I', '04517'),
(237, 1, 'O', '1NA449XVDX'),
(238, 2, 'O', '1NA504P32T'),
(239, 3, 'O', '6CM4511152'),
(240, 3, 'O', '6CM4511158'),
(241, 4, 'O', '02-002503'),
(242, 5, 'O', 'AS/MS/-03/299'),
(243, 6, 'O', '090916'),
(244, 7, 'O', 'LDR2239B16'),
(245, 7, 'O', 'LDR2284B16'),
(246, 8, 'O', '381/16'),
(247, 9, 'O', '385/16'),
(248, 10, 'O', '380/16'),
(249, 11, 'O', '383/16'),
(250, 12, 'O', '165207952'),
(251, 12, 'O', '165201533'),
(252, 13, 'O', 'LDR2292B16'),
(253, 13, 'O', 'LDR2253B16'),
(254, 14, 'O', '386/16'),
(255, 15, 'O', 'AS/DD/ANT/19'),
(256, 16, 'O', 'AS/HW/V/12'),
(257, 17, 'O', '384/17'),
(258, 18, 'O', '480916'),
(259, 18, 'O', '931016'),
(260, 18, 'O', '941016'),
(261, 18, 'O', '999016'),
(262, 18, 'O', '1001016'),
(263, 19, 'O', 'AS/DAS/02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_stations`
--

DROP TABLE IF EXISTS `tb_stations`;
CREATE TABLE IF NOT EXISTS `tb_stations` (
  `fd_station_id` int(11) NOT NULL AUTO_INCREMENT,
  `fd_rmc` varchar(128) NOT NULL,
  `fd_state` varchar(128) NOT NULL,
  `fd_type` varchar(128) NOT NULL,
  `fd_icao` varchar(128) NOT NULL,
  `fd_name` varchar(128) NOT NULL,
  `fd_email` varchar(128) NOT NULL,
  `fd_phone` varchar(10) NOT NULL,
  `fd_address` varchar(256) NOT NULL,
  `fd_incharge_name` varchar(128) NOT NULL,
  `fd_incharge_mobile` varchar(10) NOT NULL,
  PRIMARY KEY (`fd_station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 COMMENT='To store details of stations';

--
-- Dumping data for table `tb_stations`
--

INSERT INTO `tb_stations` (`fd_station_id`, `fd_rmc`, `fd_state`, `fd_type`, `fd_icao`, `fd_name`, `fd_email`, `fd_phone`, `fd_address`, `fd_incharge_name`, `fd_incharge_mobile`) VALUES
(1, 'Chennai', 'Lakshadweep Islands', 'AMS', 'VOAT', 'Agathi', '', '', '', '', ''),
(2, 'Chennai', 'Karnataka', 'AMS', 'VODM', 'Belgaum', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE BELGAUM AIRPORT, SAMBRE BELGAUM PIN: 591 124 KARNATAKA', '', ''),
(3, 'Chennai', 'Karnataka', 'AMO', 'VOBL', 'Bengaluru (Devanahalli)', '', '', 'SCIENTIST D MET. OBSERVATORY (IMD), KEMPE GOWDA INTERNATIONAL AIRPORT LTD., DEVANAHALI, BENGALURU KARNATAKA PIN: 562 110', '', ''),
(4, 'Chennai', 'Karnataka', 'AMS', 'VOBG', 'Bengaluru (HAL)', '', '', 'SCIENTIST D MET. OBSERVATORY (IMD), KEMPE GOWDA INTERNATIONAL AIRPORT LTD., DEVANAHALI, BENGALURU KARNATAKA PIN : 562 110', '', ''),
(5, 'Chennai', 'Tamil Nadu', 'AMO/MWO', 'VONN', 'Chennai', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. : CHENNAI AIRPORT PIN : 600 027', '', ''),
(6, 'Chennai', 'Tamil Nadu', 'AMS', 'VOCB', 'Coimbatore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME PEELAMEDU COIMBATORE DIST. : COIMBATORE PIN : 641 014 TAMIL NADU', '', ''),
(7, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOBZ', 'Ganavaram', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. CHENNAI AIRPORT PIN : 600 027', '', ''),
(8, 'Chennai', 'Karnataka', 'AMS', 'VOHB', 'Hubli', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE AIRPORT GOKUL ROAD HUBLI PIN : 580 030 KARNATAKA', '', ''),
(9, 'Chennai', 'Telangana', 'AMS', 'VOHY', 'Hyderabad (Begumpet)', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH', '', ''),
(10, 'Chennai', 'Telangana', 'AMO', 'VOHS', 'Hyderabad (Shamshabad)', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH', '', ''),
(11, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOCP', 'Cuddapah Airport', '', '', ' THE PROF. DEPT. OF PHYSICS & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY YOGI VEMANA UNIVERSITY CUDDAPAH DIST. : CUDDAPA', '', ''),
(12, 'Chennai', 'Kerala', 'AMS', 'VOCI', 'Kochi', '', '', 'THE SENIOR METEOROLOGICAL OFFICER METEOROLOGICAL OFFICE, I.N.S. GARUDA, NAVAL BASE, KOCHI PIN : 682 004 KERALA', '', ''),
(13, 'Chennai', 'Kerala', 'AMS', 'VOCL', 'Kozhikode', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY KOZHIKODE AIRPORT P.O. : KARIPUR DIST. : MALAPPURAM PIN : 673 647 KERALA', '', ''),
(14, 'Chennai', 'Tamil Nadu', 'AMS', 'VOMD', 'Madhurai', '', '', 'THE OFFICER IN-CHARGE AERODROME METEOROLOGICAL STATION(AMS) MADURAI AIRPORT PERUGUDI MADURAI-625022 TAMIL NADU', '', ''),
(15, 'Chennai', 'Karnataka', 'AMS', 'VOML', 'Mangalore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AIRPORT BAJPE P.O. MANGALORE DAKSHINA KANNADA PIN- 574 142 KARNATAKA', '', ''),
(16, 'Chennai', 'Karnataka', 'AMS', 'VOMY', 'Mysore', '', '', 'THE OFFICER INCHARGE AERODROME MET STATION MANDAKALLI AIRPORT MYSORE PIN: 571313 KARNATAKA ', '', ''),
(17, 'Chennai', 'Puducherry', 'AMS', 'VOPC', 'Pondicherry', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY AIRPORT ROAD LAWSPET PONDICHERRY-605008 TAMIL NADU', '', ''),
(18, 'Chennai', 'Andhra Pradesh', 'AMS', 'VORY', 'Rajahmundry', '', '', 'ON INDIA GOVERNMENT SERVICE', '', ''),
(19, 'Chennai', 'Tamil Nadu', 'AMS', 'VOSM', 'Salem', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY COLLECTOR OFFICE COMPOUND SALEM-636001 TAMIL NADU', '', ''),
(20, 'Chennai', 'Kerala', 'AMO', 'VOTV', 'Thiruvananthapuram', '', '', 'TO THE DIRECTOR IN CHARGE METEOROLOGICAL CENTRE OBSERVATORY HILL VIKAS BHAVAN PIN : 695 033', '', ''),
(21, 'Chennai', 'Tamil Nadu', 'AMS', 'VOTK', 'Tooticorin', '', '', 'THE MARINE SURVEYOUR & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY MARINE SURVEY DEPARTMENT TUTICORIN NEW PORT (V O CHIDA', '', ''),
(22, 'Chennai', 'Tamil Nadu', 'AMS', 'VOTR', 'Tiruchirapalli', '', '', 'THE OFFICER IN CHARGE AERODROME METEOROLOGICAL STATION CIVIL AERODROME TIRUCHIRAPALLI-620007 TAMIL NADU', '', ''),
(23, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOTP', 'Tirupathi', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE TIRUPATHI AERODROME P.O. : RENIGUNTA TIRUPATHI DIST. : CHITTOOR PIN : 517 520 ANDHRA', '', ''),
(24, 'Chennai', 'Andhra Pradesh', 'AMS', 'VOVZ', 'Visakhapatnam', '', '', 'THE COMMANDING OFFICER INS DEGA NAD POST VISAKHAPATNAM-09 ANDHRA PRADESH', '', ''),
(25, 'Delhi', 'Punjab', 'AMS', 'VIAR', 'Amritsar', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE SHRI GURU RAMDASJI INTERNATIONAL AIRPORT RAJASANSI AERODROME P.O. AMRITSAR P', '', ''),
(26, 'Delhi', 'Himachal Pradesh', 'AMS', 'VIBR', 'Bhuntar', '', '', '', '', ''),
(27, 'Delhi', 'Uttarakhand', 'AMS', 'VIDN', 'Dehradun', '', '', 'DIRECTOR METEOROLOGICAL CENTRE DEHRADUN SURVEY OF INDIA COMPOUND  17, E.C. ROAD - KARANPURA DEHRADUN – 248 001 UTTARAKHAND', '', ''),
(28, 'Delhi', 'Delhi', 'AMO/MWO', 'VIDD', 'New Delhi (Palam)', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE NEW TECHNICAL AIR TRAFFIC INFORMATIONS SERVICES COMPLEX, NEAR TERMINAL II INDIRA GANDHI INTER', '', ''),
(29, 'Delhi', 'Uttar Pradesh', 'AMS', 'VIRB', 'Furstaganj', '', '', '', '', ''),
(30, 'Delhi', 'Rajasthan', 'AMO', 'VIJP', 'Jaipur', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE MAUSAM BHAWAN BUDHSINGHPURA SANGANER AIRPORT JAIPUR – 302 011 RAJASTHAN', '', ''),
(31, 'Delhi', 'Himachal Pradesh', 'AMS', 'VIGG', 'Kangra', '', '', 'THE OFFICER IN CHARGE AERONAUTICAL METEOROLOGICAL STATION KANGRA AIRPORT (GAGGAL AIRPORT) DIST.: KANGRA PIN: 178 209 HIMACHAL PR', '', ''),
(32, 'Delhi', 'Rajasthan', 'AMS', 'VIKO', 'Kota', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI', '', ''),
(33, 'Delhi', 'Uttar Pradesh', 'AMO', 'VILK', 'Lucknow', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE PILOT BALLOON OBSERVATORY AMAUSIE AIRPORT - LUCKNOW LUCKNOW – 226 009 UTTAR PRADESH', '', ''),
(34, 'Delhi', ' Punjab', 'AMS', 'VILD', 'Ludhiyana', '', '', '', '', ''),
(35, 'Delhi', 'Delhi', 'MWO', 'VIDP', 'New Delhi (Safdarjung)', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI', '', ''),
(36, 'Delhi', 'Uttarakhand', 'AMS', 'VIPT', 'Pantnagar', '', '', 'THE OFFICER IN CHARGE, AERODROME METEOROLOGICAL STATION, CIVIL AERODROME PANTNAGAR, DIST: UDHAM SINGH NAGAR, UTTARAKHAND, PIN: 2', '', ''),
(37, 'Delhi', 'Himachal Pradesh', 'AMS', 'VISN', 'Shimla', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL CENTRE INDIA METEOROLOGICAL DEPARTMENT BIBRA HOUSE CLIFFEND ESTATE P.O. SHIMLA PIN : 171 00', '', ''),
(38, 'Delhi', 'Rajasthan', 'AMS', 'VAUD', 'Udaipur', '', '', '', '', ''),
(39, 'Delhi', 'Uttar Pradesh', 'AMS', 'VIBN', 'Varanasi', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE BABATPUR AERODROME PIN : 221 006 VARANASI UTTAR PRADESH', '', ''),
(40, 'Guwahati', 'Tripura', 'AMO', 'VEAT', 'Agartala', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, AGARTALA AERODROME, P.O. AGARTALA, PIN - 799 009, TRIPURA', '', ''),
(41, 'Guwahati', 'Mizoram', 'AMS', 'VEAZ', 'Aizwal (Lengpui)', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, LENGPUI AIRPORT, P.O. LENGPUI VIA AIZAWL, DIST – AIZAWL, MIZORAM', '', ''),
(42, 'Guwahati', 'Nagaland', 'AMS', 'VEMR', 'Dimapur', '', '', '', '', ''),
(43, 'Guwahati', 'Assam', 'AMO', 'VEGT', 'Guwahati', '', '', 'REGIONAL METEOROLOGICAL CENTRE, CIVIL AIRPORT – GUWAHATI, P.O. GUWAHATI AIRPORT, PIN – 781015, ASSAM', '', ''),
(44, 'Guwahati', 'Manipur', 'AMS', 'VEIM', 'Imphal', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME IMPHAL, P.O. IMPHAL (TULIHAL), PIN  795140, MANIPUR ', '', ''),
(45, 'Guwahati', 'Assam', 'AMO', 'VEMN', 'Mohanbari', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, MOHANBARI AIRPORT, P.O. MOHANBARI, PIN : 786012, UPPER ASSAM', '', ''),
(46, 'Guwahati', 'Assam', 'AMS', 'VELR', 'North Lakhimpur', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME – LILABARI, P.O. NORTH LAKHIMPUR, DIST – LAKHIMPUR, ASSAM', '', ''),
(47, 'Guwahati', 'Meghalaya', 'AMS', 'VEBI', 'Shillong (Barapan)', '', '', 'THE METEOROLOGIST IN CHARGE, CENRAL SEISMOLOGICAL OBSERVATORY, MEATH HOME SHILLONG, P.O. SHILLONG, PIN – 793001, MEGHALAYA', '', ''),
(48, 'Guwahati', 'Tripura', 'AMS', 'VEKR', 'Kailashar', '', '', '', '', ''),
(49, 'Guwahati', 'Assam', 'AMS', 'VERE', 'Rupsi (Dubri)', '', '', '', '', ''),
(50, 'Kolkata', 'West Bengal', 'AMS', 'VEBD', 'Bagdongara', '', '', '', '', ''),
(51, 'Kolkata', 'Odisha', 'AMO', 'VEBS', 'Bhubaneshwar', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE CIVIL AERODROME P.O. BHUBANESWAR PIN : 751020 ODISHA', '', ''),
(52, 'Kolkata', 'West Bengal', 'AMS', 'VECO', 'Cooch Behar', '', '', '', '', ''),
(53, 'Kolkata', 'Bihar', 'AMS', 'VEGY', 'Gaya', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - GAYA P.O. & DIST. - GAYA PIN : 823 004 BIHAR.', '', ''),
(54, 'Kolkata', 'Jharkhand', 'AMS', 'VEJS', 'Jamshedpur', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY JAMSHEDPUR AIRPORT(SONARI) JAMSHEDPUR – 831 011 JHARKHAND', '', ''),
(55, 'Kolkata', 'West Bengal', 'MWO', 'VECC', 'Kolkata', '', '', 'REGIONAL TRAINING CENTRE REGIONAL METEOROLOGICAL CENTRE KOLKATA, AQ-8, MAHISH BATHAN, SECTOR-V, SALT LAKE, KOLKATA- 700091', '', ''),
(56, 'Kolkata', 'Bihar', 'AMO', 'VEPT', 'Patna', '', '', 'THE DIRECTOR,METEOROLOGICAL CENTRE CIVIL AERODROME PATNA – 800 014 BIHAR.', '', ''),
(57, 'Kolkata', 'Jharkhand', 'AMS', 'VERC', 'Ranchi', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL OFFICE B.M. AIRPORT RANCHI – 834 002 JHARKHAND', '', ''),
(58, 'Kolkata', 'Odisha', 'AMS', 'VEJH', 'Jharsuguda', '', '', '', '', ''),
(59, 'Mumbai', 'Gujarat', 'AMO', 'VAAH', 'Ahmedabad', '', '', 'THE DIRECTOR I/C, PILOT BALLOON OBSERVATORY, RS/RW BUILDING, METEOROLOGICAL OFFICE, CIVIL AERODROME, AHMEDABAD - 380 012, GUJARA', '', ''),
(60, 'Mumbai', 'Maharashtra', 'AMS', 'VAAU', 'Aurangabad (Chikalthana)', '', '', 'THE OFFICER-IN-CHARGE, PILOT BALLOON OBSERVATORY, CIVIL AERODROME, CHIKALTHANA-431 007, AURANGABAD, MAHARASHTRA', '', ''),
(61, 'Mumbai', 'Gujarat', 'AMS', 'VOBO', 'Vadodra', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, VADODARA - 390 022, GUJARAT', '', ''),
(62, 'Mumbai', 'Gujarat', 'AMS', 'VABV', 'Bhavnagar', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, BHAVNAGAR – 364 001, DIST. – BHAVNAGAR, GUJARAT', '', ''),
(63, 'Mumbai', 'Diu and Daman', 'AMS', 'VADU', 'Diu', '', '', 'THE HEALTH OFFICER, HEALTH CENTRE & HONORARY SUPERINTENDENT, METEOROLOGICAL OBSERVATORY, P.O.DIU - 362 520, DIST. : JUNAGADH, GU', '', ''),
(64, 'Mumbai', 'Maharashtra', 'MWO', 'VABB', 'Mumbai', '', '', 'THE REGIONAL METEOROLOGICAL CENTRE, NEAR R.C. CHURCH, COLABA, MUMBAI- 400 005, MAHARASHTRA', '', ''),
(65, 'Mumbai', 'Maharashtra', 'AMS', 'VAJJ', 'Mumbai (Juhu)', '', '', '', '', ''),
(66, 'Mumbai', 'Maharashtra', 'AMS', 'VAND', 'Nanded', '', '', '', '', ''),
(67, 'Mumbai', 'Gujarat', 'AMS', 'VAPR', 'Porbandar', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, PORBANDAR – 360 575, DIST. – PORBANDAR, GUJARAT', '', ''),
(68, 'Mumbai', 'Gujarat', 'AMS', 'VARK', 'Rajkot', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, RAJKOT -360 001, DIST – RAJKOT, GUJARAT', '', ''),
(69, 'Mumbai', 'Gujarat', 'AMS', 'VASU', 'Surat', '', '', 'THE OFFICER IN CHARGE, PILOT BALLOON OBSERVATORY, P.W.D. STORES CAMPUS, NEW MAGADALLA, SURAT-– 395 007, GUJARAT', '', ''),
(70, 'Mumbai', 'Gujarat', 'AMS', 'VAKE', 'Kandla', '', '', 'THE OFFICER IN CHARGE, AIRPORT METEOROLOGICAL STATION, KANDLA AIRPORT, VIA GOPALPURI, P.O.: GALPADAR, GANDHIDHAM, DIST.: KUTCH, ', '', ''),
(71, 'Nagpur', 'Maharashtra', 'AMS', 'VAGD', 'Gondia', '', '', '', '', ''),
(72, 'Nagpur', 'Madhya Pradesh', 'AMO', 'VABP', 'Bhopal (Bairagarh)', '', '', 'THE OFFICER  IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - BAIRAGARH DIST. BHOPAL PIN : 462 030 MADHYA PRADESH', '', ''),
(73, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAID', 'Indore', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE DEVI AHILYABAI HOLKAR AIRPORT, INDORE, CIVIL AERODROME INDORE PIN : 452 005 MADHYA PRADESH', '', ''),
(74, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAJV', 'Jabalpur', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY ANAND NAGAR, ADHARTAL, KATNI ROAD, JABALPUR PIN : 482 004 MADHYA PRADESH', '', ''),
(75, 'Nagpur', 'Madhya Pradesh', 'AMS', 'VAKJ', 'Khajuraho', '', '', '', '', ''),
(76, 'Nagpur', 'Maharashtra', 'AMO', 'VANP', 'Nagpur', '', '', 'THE D.D.G.M. REGIONAL METEOROLOGICAL CENTRE SONEGAON AIRPORT NAGPUR PIN : 440 005 MAHARASHTRA', '', ''),
(77, 'Nagpur', 'Chattisgarh', 'AMS', 'VERP', 'Raipur', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL CENTRE BEHIND MMI HOSPITAL VILLAGE – LALPUR POST : DEVPURI DIST. : RAIPUR PIN : 492 001', '', ''),
(78, '', '', '', '', 'Store', '', '', '', '', ''),
(79, '', '', '', '', 'AWS', '', '', '', '', ''),
(80, '', '', '', '', 'Accel Systems', '', '', '', '', ''),
(81, '', '', '', '', 'Tuticorin', '', '', '', '', ''),
(82, '', '', '', '', 'INS HANSA C TO A', '', '', '', '', ''),
(83, '', '', '', '', 'R & D E (E) Kalas', '', '', 'Pune - 15', '', ''),
(84, 'Mumbai', 'Diu and Daman', '', '', 'Daman', '', '', '', '', ''),
(85, 'New Delhi', '', '', '', 'New Delhi', '', '', '', '', ''),
(86, '', '', '', '', 'Trichi', '', '', '', '', ''),
(87, '', '', '', '', 'Ahemdabad', '', '', '', '', ''),
(88, '', '', '', '', 'Port blair', '', '', '', '', ''),
(89, '', '', '', '', 'Workshop', '', '', '', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`fd_user_id`, `fd_first_name`, `fd_last_name`, `fd_username`, `fd_password`, `fd_role`) VALUES
(1, 'Admin', 'Admin', 'admin', '$2y$10$YhFDxAv/cZHNrtYHoi2vvuCzmV/1WUmloRIc.H0bG7EKeD2QvnJ.K', 'Administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
