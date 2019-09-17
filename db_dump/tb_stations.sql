-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 17, 2019 at 07:41 AM
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
  PRIMARY KEY (`fd_station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COMMENT='To store details of stations';

--
-- Dumping data for table `tb_stations`
--

INSERT INTO `tb_stations` (`fd_station_id`, `fd_rmc`, `fd_icao`, `fd_station_name`, `fd_station_type`, `fd_state`, `fd_incharge_name`, `fd_station_phone`, `fd_station_email`, `fd_incharge_mobile`, `fd_station_address`) VALUES
(1, ' ', ' ', 'Dimapur', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(2, ' ', ' ', 'Kishangarh Airport, Ajmer', 'A M O', ' ', '', ' ', ' ', ' ', ' '),
(3, ' ', ' ', ' Lucknow Airport', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(16, ' ', ' ', 'Palam', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(4, '', '', 'Port Blair', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(35, ' ', ' ', 'CIAL Kochi', 'M O ', ' ', ' ', ' ', ' ', ' ', ' '),
(18, ' ', ' ', 'Bangalore(BIAL)', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(5, ' ', ' ', 'Ranchi', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(6, ' ', ' ', 'ACCEL SYSTEM', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(15, ' ', ' ', 'Palam', 'A M O', ' ', ' ', ' ', ' ', ' ', ' '),
(7, ' ', ' ', 'Air Force Dhoom Dhuma', '', ' ', ' ', ' ', ' ', ' ', ' '),
(19, ' ', ' ', 'Shirdi', 'A M S', ' ', ' ', ' ', ' ', ' ', ' '),
(20, ' ', ' ', 'Tirupati', 'A M S', ' ', ' ', ' ', ' ', ' ', ' '),
(21, ' ', ' ', 'Krutika Kansara', 'BITS', ' ', ' ', ' ', ' ', ' ', ' '),
(22, ' ', ' ', 'Vishakhapatnam', 'CWC', ' ', ' ', ' ', ' ', ' ', ' '),
(23, ' ', ' ', 'E Lab', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(24, ' ', ' ', 'Daman', 'ICGAS', ' ', ' ', ' ', ' ', ' ', ' '),
(25, ' ', ' ', 'Joshi Engineering', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(26, ' ', ' ', 'Ahmedabad', 'M C', ' ', ' ', ' ', ' ', ' ', ' '),
(28, ' ', ' ', 'Bhubaneshwar', 'M C', ' ', ' ', ' ', ' ', ' ', ' '),
(29, ' ', ' ', 'Bhubaneshwar', 'M C', ' ', ' ', ' ', ' ', ' ', ' '),
(30, ' ', ' ', 'Hyderabad', 'M C', ' ', ' ', ' ', ' ', ' ', ' '),
(31, ' ', ' ', 'Lucknow', 'M C', ' ', ' ', ' ', ' ', ' ', ' '),
(32, ' ', ' ', 'Agati', 'M O ', ' ', ' ', ' ', ' ', ' ', ' '),
(33, ' ', ' ', 'Calicut', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(34, ' ', ' ', 'CIAL Kochi', 'M O ', '  ', ' ', ' ', ' ', ' ', ' '),
(36, ' ', ' ', 'Diu', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(37, ' ', ' ', 'Machilipatnam', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(38, ' ', ' ', 'Pondecherry', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(39, ' ', ' ', 'Taj Agra', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(40, ' ', ' ', 'Thiruvananthapuram', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(41, ' ', ' ', 'Agatti', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(42, ' ', ' ', 'Chennai', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(43, ' ', ' ', 'Dimapur', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(44, ' ', ' ', 'Guwahati', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(45, ' ', ' ', 'Kakinada', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(46, ' ', ' ', 'Kochi', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(47, ' ', ' ', 'Kolkata', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(48, ' ', ' ', 'Nagpur', 'M O', ' ', ' ', ' ', ' ', ' ', ' '),
(49, ' ', ' ', 'Palam', 'M O ', ' ', ' ', ' ', ' ', ' ', ' '),
(50, '', '', 'Pashan, Pune', 'MTI ', ' ', ' ', ' ', ' ', ' ', ' '),
(51, ' ', ' ', 'SGS Weather', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(52, ' ', ' ', 'Surface Lab for Calibration', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(53, ' ', ' ', 'Sameer Mumbai', ' ', ' ', ' ', ' ', ' ', ' ', ' '),
(54, 'Chennai', '', 'Chennai', '  ', ' ', ' ', '  ', ' ', ' ', ' '),
(55, 'Nagpur', ' ', 'Nagpur', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
