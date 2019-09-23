<?php
require_once ("connect-database.php");

if (isset ($_POST['tx_rmc']) && isset ($_POST['tx_icao']) && isset ($_POST['tx_station_name']) && isset ($_POST['tx_station_type']) && isset ($_POST['tx_state']) && isset ($_POST['tx_incharge_name']) && isset ($_POST['tx_station_phone']) && isset ($_POST['tx_station_email']) && isset ($_POST['tx_incharge_mobile'])) && isset ($_POST['tx_station_address']) {
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
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_stations VALUES (NULL, '".$lc_rmc."', '".$lc_icao."', '".$lc_station_name."', '".$lc_station_type."', '".$lc_state."', '".$lc_incharge_name."', '".$lc_station_phone."', '".$lc_station_email."', '".$lc_incharge_mobile."', '".$lc_station_address."');");
	if ($result)
		echo (json_encode (array ('success' => "New Station Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>