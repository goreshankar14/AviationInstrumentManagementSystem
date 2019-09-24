-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 24, 2019 at 10:32 AM
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
  `fd_station_address` varchar(255) NOT NULL,
  PRIMARY KEY (`fd_station_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 COMMENT='To store details of stations' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_stations`
--

INSERT INTO `tb_stations` (`fd_station_id`, `fd_rmc`, `fd_icao`, `fd_station_name`, `fd_station_type`, `fd_state`, `fd_incharge_name`, `fd_station_phone`, `fd_station_email`, `fd_incharge_mobile`, `fd_station_address`) VALUES
(1, 'Chennai', 'VOAT', 'Agathi', 'AMS', 'Lakshadweep island', '', '', '', '', ''),
(2, 'Chennai', 'VODM', 'Belgaum', 'AMS', 'Karnataka', '', '', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE BELGAUM AIRPORT, SAMBRE BELGAUM – 591 124 KARNATAKA'),
(3, 'Chennai', 'VOBL', 'Bengaluru(Devanahally)', 'AMO', 'Karanataka', '', '', '', '', 'SCIENTIST D MET. OBSERVATORY(IMD),KEMPE GOWDA INTERNATIONAL AIRPORT LTD.,DEVANAHALI, BENGALURU KARNATAKA PIN: 562110'),
(4, 'Chennai', 'VOBG', 'Bengaluru(hal)', 'AMS', 'Karnataka', '', '', '', '', 'SCIENTIST D MET. OBSERVATORY(IMD),KEMPE GOWDA INTERNATIONAL AIRPORT LTD.,DEVANAHALI, BENGALURU KARNATAKA PIN: 562110'),
(5, 'Chennai', 'VONN', 'Chennai', 'AMO/MWO', 'Tamilnadu', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. CHENNAI AIRPORT PIN : 600 027'),
(6, 'Chennai', 'VOCB', 'coimbtor', 'AMS', 'Tamilnadu', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME PEELAMEDU COIMBATORE DIST - COIMBATORE PIN - 641 014 TAMIL NADU'),
(7, 'Chennai', 'VOBZ', 'Ganavaram', 'AMS', 'Andhra pradesh', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE MEENAMBAKKA P.O. CHENNAI AIRPORT PIN : 600 027'),
(8, 'Chennai', 'VOHB', 'Hubli', 'AMS', 'Karanataka', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE AIRPORT GOKUL ROAD HUBLI- 580 030 KARNATAKA'),
(9, 'Chennai', 'VOHY', 'Hyderabad(Begumpet)', 'AMS', 'Telanagana', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH'),
(10, 'Chennai', 'VOHS', 'Hyderabad(shamshabad)', 'AMO', 'Telangana', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE AIRPORT COLONY, BEGUMPET P.O. HYDERABAD PIN : 500 016 ANDHRA PRADESH'),
(11, 'Chennai', 'VOCP', 'Cuddapah airport', 'AMS', 'Andhra pradesh', '', '', '', '', ' THE PROF. DEPT. OF PHYSICS & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY YOGI VEMANA UNIVERSITY CUDDAPAH DIST. : CUDDAPAH PIN  : 516 003 ANDHRA PRADESH'),
(12, 'Chennai', 'VOCI', 'Kochi', 'AMS', 'Kerala', '', '', '', '', 'THE SENIOR METEOROLOGICAL OFFICER METEOROLOGICAL OFFICE, I.N.S. GARUDA,NAVAL BASE, KOCHI - 682 004 KERALA'),
(13, 'Chennai', 'VOCL', 'Kozhikode', 'AMS', 'Kerala', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY KOZHIKODE AIRPORT P.O. : KARIPUR DIST. : MALAPPURAM PIN : 673 647 KERALA'),
(14, 'Chennai', 'VOMD', 'Madhurai', 'AMS', 'Tamilnadu', '', '', '', '', 'THE OFFICER IN-CHARGE AERODROME METEOROLOGICAL STATION(AMS) MADURAI AIRPORT PERUGUDI MADURAI-625022 TAMIL NADU'),
(15, 'Chennai', 'VOML', 'Mangalore', 'AMS', 'Karnataka', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AIRPORT BAJPE P.O. MANGALORE DAKSHINA KANNADA PIN- 574 142 KARNATAKA'),
(16, 'Chennai', 'VOMY', 'Mysore', 'AMS', 'Karnataka', '', '', '', '', 'THE OFFICER INCHARGE AERODROME MET STATION MANDAKALLI AIRPORT MYSORE PIN: 571313 KARNATAKA '),
(17, 'Chennai', 'VOPC', 'Pondicherry', 'AMS', 'Puducherry', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY AIRPORT ROAD LAWSPET PONDICHERRY-605008 TAMIL NADU'),
(18, 'Chennai', 'VORY', 'Rajahmundry', 'AMS', 'Andhra pradesh', '', '', '', '', 'ON INDIA GOVERNMENT SERVICE'),
(19, 'Chennai', 'VOSM', 'Salem', 'AMS', 'Tamilnadu', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OBSERVATORY COLLECTOR OFFICE COMPOUND SALEM-636001 TAMIL NADU'),
(20, 'Chennai', 'VOTV', 'Thiruvanthapuram', 'AMO', 'Kerala', '', '', '', '', 'TO THE DIRECTOR IN CHARGE METEOROLOGICAL CENTRE OBSERVATORY HILL VIKAS BHAVAN PIN : 695 033'),
(21, 'Chennai', 'VOTK', 'Tooticorin', 'AMS', 'Tamilnadu', '', '', '', '', 'THE MARINE SURVEYOUR & HONORARY SUPERINTENDENT METEOROLOGICAL OBSERVATORY MARINE SURVEY DEPARTMENT TUTICORIN NEW PORT (V O CHIDAMBARANAR PORT TRUST) TUTICORIN- 628 004 TAMILNADU'),
(22, 'Chennai', 'VOTR', 'Tiruchirapalli', 'AMS', 'Tamilnadu', '', '', '', '', 'THE OFFICER IN CHARGE AERODROME METEOROLOGICAL STATION CIVIL AERODROME TIRUCHIRAPALLI-620007 TAMIL NADU'),
(23, 'Chennai', 'VOTP', 'Tirupathi', 'AMS', 'Andhra pradesh', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE TIRUPATHI AERODROME P.O. : RENIGUNTA TIRUPATHI DIST. : CHITTOOR PIN : 517 520 ANDHRA PRADESH'),
(24, 'Chennai', 'VOVZ', 'Visakhapatnam', 'AMS', 'Andhra pradesh', '', '', '', '', 'THE COMMANDING OFFICER INS DEGA NAD POST VISAKHAPATNAM-09 ANDHRA PRADESH'),
(25, 'Delhi', 'VIAR', 'Amritsar', 'AMS', 'Punjab', '', '', '', '', 'THE OFFICER IN CHARGE AIRPORT METEOROLOGICAL OFFICE SHRI GURU RAMDASJI INTERNATIONAL AIRPORT RAJASANSI AERODROME P.O. AMRITSAR PIN – 143101 PUNJAB'),
(26, 'Delhi', 'VIBR', 'Bhuntar', 'AMS', 'Himachal Pradesh', '', '', '', '', ''),
(27, 'Delhi', 'VIDN', 'Dehradun', 'AMS', 'Uttarakhand', '', '', '', '', 'DIRECTOR METEOROLOGICAL CENTRE DEHRADUN SURVEY OF INDIA COMPOUND  17, E.C. ROAD - KARANPURA DEHRADUN – 248 001 UTTARAKHAND'),
(28, 'Delhi', 'VIDD', 'New Delhi(palam)', 'AMO/MWO', 'Delhi', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE NEW TECHNICAL AIR TRAFFIC INFORMATIONS SERVICES COMPLEX, NEAR TERMINAL II INDIRA GANDHI INTERNATIONAL AIRPORT PALAM  PIN : 110 037  NEW DELHI'),
(29, 'Delhi', 'VIRB', 'Furstaganj', 'AMS', 'Uttar pradesh', '', '', '', '', ''),
(30, 'Delhi', 'VIJP', 'Jaipur', 'AMO', 'Rajasthan', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE MAUSAM BHAWAN BUDHSINGHPURA SANGANER AIRPORT JAIPUR – 302 011 RAJASTHAN'),
(31, 'Delhi', 'VIGG', 'Kangra', 'AMS', 'Himachal pradesh', '', '', '', '', 'THE OFFICER IN CHARGE AERONAUTICAL METEOROLOGICAL STATION KANGRA AIRPORT (GAGGAL AIRPORT) DIST.: KANGRA PIN: 178 209 HIMACHAL PRADESH'),
(32, 'Delhi', 'VIKO', 'Kota', 'AMS', 'Rajasthan', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI'),
(33, 'Delhi', 'VILK', 'Lucknow', 'AMO', 'Uttar pradesh', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE PILOT BALLOON OBSERVATORY AMAUSIE AIRPORT - LUCKNOW LUCKNOW – 226 009 UTTAR PRADESH'),
(34, 'Delhi', 'VILD', 'Ludhiyana', 'AMS', ' Punjab', '', '', '', '', ''),
(35, 'Delhi', 'VIDP', 'New Delhi(saftadarjung)', 'MWO', 'Delhi', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL OFFICE SAFDARJUNG AIRPORT P.O. NEW DELHI PIN : 110 003 NEW DELHI'),
(36, 'Delhi', 'VIPT', 'Pantnagar', 'AMS', 'Uttarakhand', '', '', '', '', 'THE OFFICER IN CHARGE, AERODROME METEOROLOGICAL STATION, CIVIL AERODROME PANTNAGAR, DIST: UDHAM SINGH NAGAR, UTTARAKHAND, PIN: 263 145'),
(37, 'Delhi', 'VISN', 'Simala', 'AMS', 'Himachal pradesh', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL CENTRE INDIA METEOROLOGICAL DEPARTMENT BIBRA HOUSE CLIFFEND ESTATE P.O. SHIMLA PIN : 171 001 HIMACHAL PRADESH'),
(38, 'Delhi', 'VAUD', 'Udaipur', 'AMS', 'Rajasthan', '', '', '', '', ''),
(39, 'Delhi', 'VIBN', 'Varanasi', 'AMS', 'Uttar pradesh', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE BABATPUR AERODROME PIN : 221 006 VARANASI UTTAR PRADESH'),
(40, 'Guwahati', 'VEAT', 'Agartala', 'AMO', 'Tripura', '', '', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, AGARTALA AERODROME, P.O. AGARTALA, PIN - 799 009, TRIPURA'),
(41, 'Guwahati', 'VEAZ', 'Aizwal(lengpui)', 'AMS', 'Mizoram', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, LENGPUI AIRPORT, P.O. LENGPUI VIA AIZAWL, DIST – AIZAWL, MIZORAM'),
(42, 'Guwahati', 'VEMR', 'Dimapur', 'AMS', 'Nagaland', '', '', '', '', ''),
(43, 'Guwahati', 'VEGT', 'Guwahati', 'AMO', 'Asam', '', '', '', '', 'REGIONAL METEOROLOGICAL CENTRE, CIVIL AIRPORT – GUWAHATI, P.O. GUWAHATI AIRPORT, PIN – 781015, ASSAM'),
(44, 'Guwahati', 'VEIM', 'Imphal', 'AMS', 'Mnipur', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME IMPHAL, P.O. IMPHAL (TULIHAL), PIN  795140, MANIPUR '),
(45, 'Guwahati', 'VEMN', 'Mohanbari', 'AMO', 'Asam', '', '', '', '', 'THE METEOROLOGIST IN CHARGE, METEOROLOGICAL OFFICE, MOHANBARI AIRPORT, P.O. MOHANBARI, PIN : 786012, UPPER ASSAM'),
(46, 'Guwahati', 'VELR', 'North lakhimpur', 'AMS', 'Asam', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME – LILABARI, P.O. NORTH LAKHIMPUR, DIST – LAKHIMPUR, ASSAM'),
(47, 'Guwahati', 'VEBI', 'Shillong (Barapan)', 'AMS', 'Meghalaya', '', '', '', '', 'THE METEOROLOGIST IN CHARGE, CENRAL SEISMOLOGICAL OBSERVATORY, MEATH HOME SHILLONG, P.O. SHILLONG, PIN – 793001, MEGHALAYA'),
(48, 'Guwahati', 'VEKR', 'Kailashar', 'AMS', 'Tripura', '', '', '', '', ''),
(49, 'Guwahati', 'VERE', 'Rupsi (Dubri)', 'AMS', 'ASAM', '', '', '', '', ''),
(50, 'Kolkata', 'VEBD', 'Bagdongara', 'AMS', 'West bengal', '', '', '', '', ''),
(51, 'Kolkata', 'VEBS', 'Bhubaneshwar', 'AMO', 'Odisha', '', '', '', '', 'THE DIRECTOR METEOROLOGICAL CENTRE CIVIL AERODROME P.O. BHUBANESWAR PIN : 751020 ODISHA'),
(52, 'Kolkata', 'VECO', 'cooch behar', 'AMS', 'West bengal', '', '', '', '', ''),
(53, 'Kolkata', 'VEGY', 'Gaya', 'AMS', 'Bihar', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - GAYA P.O. & DIST. - GAYA PIN : 823 004 BIHAR.'),
(54, 'Kolkata', 'VEJS', 'Jamshedpur', 'AMS', 'Jharkhand', '', '', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY JAMSHEDPUR AIRPORT(SONARI) JAMSHEDPUR – 831 011 JHARKHAND'),
(55, 'Kolkata', 'VECC', 'Kolkata', 'MWO', 'West bengal', '', '', '', '', 'REGIONAL TRAINING CENTRE REGIONAL METEOROLOGICAL CENTRE KOLKATA, AQ-8, MAHISH BATHAN, SECTOR-V, SALT LAKE, KOLKATA- 700091'),
(56, 'Kolkata', 'VEPT', 'patana', 'AMO', 'Bihar', '', '', '', '', 'THE DIRECTOR,METEOROLOGICAL CENTRE CIVIL AERODROME PATNA – 800 014 BIHAR.'),
(57, 'Kolkata', 'VERC', 'Ranchi', 'AMS', 'Zharkhand', '', '', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL OFFICE B.M. AIRPORT RANCHI – 834 002 JHARKHAND'),
(58, 'Kolkata', 'VEJH', 'Jharsugudu', 'AMS', 'Orissa', '', '', '', '', ''),
(59, 'Mumbai', 'VAAH', 'Ahmedabad', 'AMO', 'Gujarat', '', '', '', '', 'THE DIRECTOR I/C, PILOT BALLOON OBSERVATORY, RS/RW BUILDING, METEOROLOGICAL OFFICE, CIVIL AERODROME, AHMEDABAD - 380 012, GUJARAT'),
(60, 'Mumbai', 'VAAU', 'Aurangabad(chikalthana)', 'AMS', 'Maharashta', '', '', '', '', 'THE OFFICER-IN-CHARGE, PILOT BALLOON OBSERVATORY, CIVIL AERODROME, CHIKALTHANA-431 007, AURANGABAD, MAHARASHTRA'),
(61, 'Mumbai', 'VOBO', 'Vadodra', 'AMS', 'Gujrat', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, VADODARA - 390 022, GUJARAT'),
(62, 'Mumbai', 'VABV', 'Bhavnagar', 'AMS', 'Gujarat', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, BHAVNAGAR – 364 001, DIST. – BHAVNAGAR, GUJARAT'),
(63, 'Mumbai', 'VADU', 'Diu', 'AMS', 'Diu and Daman', '', '', '', '', 'THE HEALTH OFFICER, HEALTH CENTRE & HONORARY SUPERINTENDENT, METEOROLOGICAL OBSERVATORY, P.O.DIU - 362 520, DIST. : JUNAGADH, GUJARAT'),
(64, 'Mumbai', 'VABB', 'Mumbai', 'MWO', 'Maharastra', '', '', '', '', 'THE REGIONAL METEOROLOGICAL CENTRE, NEAR R.C. CHURCH, COLABA, MUMBAI-400 005, MAHARASHTRA'),
(65, 'Mumbai', 'VAJJ', 'Mumbai(JUHU)', 'AMS', 'Maharashtra', '', '', '', '', ''),
(66, 'Mumbai', 'VAND', 'Nanded', 'AMS', 'Maharashtra', '', '', '', '', ''),
(67, 'Mumbai', 'VAPR', 'Porbander', 'AMS', 'Gujrat', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, PORBANDAR – 360 575, DIST. – PORBANDAR, GUJARAT'),
(68, 'Mumbai', 'VARK', 'Rajkot', 'AMS', 'Gujrat', '', '', '', '', 'THE OFFICER IN CHARGE, METEOROLOGICAL OFFICE, CIVIL AERODROME, RAJKOT -360 001, DIST – RAJKOT, GUJARAT'),
(69, 'Mumbai', 'VASU', 'Surat', 'AMS', 'Gujrat', '', '', '', '', 'THE OFFICER IN CHARGE, PILOT BALLOON OBSERVATORY, P.W.D. STORES CAMPUS, NEW MAGADALLA, SURAT-– 395 007, GUJARAT'),
(70, 'Mumbai', 'VAKE', 'Kandala', 'AMS', 'Gujrat', '', '', '', '', 'THE OFFICER IN CHARGE, AIRPORT METEOROLOGICAL STATION, KANDLA AIRPORT, VIA GOPALPURI, P.O.: GALPADAR, GANDHIDHAM, DIST.: KUTCH, PIN - 370 240, GUJARAT'),
(71, 'Nagpur', 'VAGD', 'Gondla', 'AMS', 'Maharashtra', '', '', '', '', ''),
(72, 'Nagpur', 'VABP', 'Bhopal(Bairagarh)', 'AMO', 'Madhya pradesh', '', '', '', '', 'THE OFFICER  IN CHARGE METEOROLOGICAL OFFICE CIVIL AERODROME - BAIRAGARH DIST. BHOPAL - 462 030 MADHYA PRADESH'),
(73, 'Nagpur', 'VAID', 'Indore', 'AMS', 'Madhya pradesh', '', '', '', '', 'THE OFFICER IN CHARGE METEOROLOGICAL OFFICE DEVI AHILYABAI HOLKAR AIRPORT, INDORE,CIVIL AERODROME INDORE   - 452005 MADHYA PRADESH'),
(74, 'Nagpur', 'VAJV', 'Jabalpur', 'AMS', 'Madhya pradesh', '', '', '', '', 'THE OFFICER IN CHARGE PILOT BALLOON OBSERVATORY ANAND NAGAR, ADHARTAL, KATNI ROAD, JABALPUR   - 482004 MADHYA PRADESH'),
(75, 'Nagpur', 'VAKJ', 'Khajuraho', 'AMS', 'Madhya pradesh', '', '', '', '', ''),
(76, 'Nagpur', 'VANP', 'Nagpur', 'AMO', 'Maharashtra', '', '', '', '', 'THE D.D.G.M. REGIONAL METEOROLOGICAL CENTRE SONEGAON AIRPORT NAGPUR PIN : 440 005 MAHARASHTRA'),
(77, 'Nagpur', 'VERP', 'Raipur', 'AMS', 'Chattisgarh', '', '', '', '', 'THE METEOROLOGIST IN CHARGE METEOROLOGICAL CENTRE BEHIND MMI HOSPITAL VILLAGE – LALPUR POST : DEVPURI DIST. : RAIPUR PIN : 492 001 CHHATTISGARH');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
