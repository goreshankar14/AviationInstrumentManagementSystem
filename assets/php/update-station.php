<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_rmc']) && isset ($_POST['tx_icao']) && isset ($_POST['tx_station_name']) && isset ($_POST['tx_station_type']) && isset ($_POST['tx_state']) && isset ($_POST['tx_incharge_name']) && isset ($_POST['tx_station_phone']) && isset ($_POST['tx_station_email']) && isset ($_POST['tx_incharge_mobile']) && isset ($_POST['tx_station_address']) && isset ($_POST['station_id'])) {
	$lc_rmc = mysqli_real_escape_string ($conn, trim ($_POST['tx_rmc']));
	$lc_icao = mysqli_real_escape_string ($conn, trim ($_POST['tx_icao']));
	$lc_station_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_station_name']));
	$lc_station_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_station_type']));
	$lc_state = mysqli_real_escape_string ($conn, trim ($_POST['tx_state']));
	$lc_incharge_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_incharge_name']));
	$lc_station_phone = mysqli_real_escape_string ($conn, trim ($_POST['tx_station_phone']));
	$lc_station_email = mysqli_real_escape_string ($conn, trim ($_POST['tx_station_email']));
	$lc_incharge_mobile = mysqli_real_escape_string ($conn, trim ($_POST['tx_incharge_mobile']));
	$lc_station_address = mysqli_real_escape_string ($conn, trim ($_POST['tx_station_address']));
	$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	
	$result = mysqli_query ($conn, "UPDATE tbl_stations SET fd_rmc = '".$lc_rmc."', fd_icao = '".$lc_icao."', fd_station_name = '".$lc_station_name."', fd_station_type = '".$lc_station_type."', fd_state = '".$lc_state."', fd_incharge_name = '".$lc_incharge_name."', fd_station_phone = '".$lc_station_phone."', fd_station_email = '".$lc_station_email."', fd_incharge_mobile = '".$lc_incharge_mobile."', fd_station_address = '".$lc_station_address."' WHERE fd_station_id = ".$lc_station_id.";");
	
	if ($result)
		echo (json_encode (array ('success' => "Station #".$lc_station_id." is Updated Successfully.")));	
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>