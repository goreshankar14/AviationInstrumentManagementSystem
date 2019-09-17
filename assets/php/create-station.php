<?php
require_once ("connect-database.php");

if (isset ($_POST['txt_rmc']) && isset ($_POST['txt_icao']) && isset ($_POST['txt_station_name']) && isset ($_POST['txt_station_type']) && isset ($_POST['txt_state']) && isset ($_POST['txt_incharge_name']) && isset ($_POST['txt_station_phone']) && isset ($_POST['txt_station_email']) && isset ($_POST['txt_incharge_mobile'])) && isset ($_POST['txt_station_address']) {
	$loc_rmc = mysqli_real_escape_string ($conn, trim ($_POST['txt_rmc']));
	$loc_icao = mysqli_real_escape_string ($conn, trim ($_POST['txt_icao']));
	$loc_station_name = mysqli_real_escape_string ($conn, trim ($_POST['txt_station_name']));
	$loc_station_type = mysqli_real_escape_string ($conn, trim ($_POST['txt_station_type']));
	$loc_state = mysqli_real_escape_string ($conn, trim ($_POST['txt_state']));
	$loc_incharge_name = mysqli_real_escape_string ($conn, trim ($_POST['txt_incharge_name']));
	$loc_station_phone = mysqli_real_escape_string ($conn, trim ($_POST['txt_station_phone']));
	$loc_station_email = mysqli_real_escape_string ($conn, trim ($_POST['txt_station_email']));
	$loc_incharge_mobile = mysqli_real_escape_string ($conn, trim ($_POST['txt_incharge_mobile']));
	$loc_station_address = mysqli_real_escape_string ($conn, trim ($_POST['txt_station_address']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_stations VALUES (NULL, '".$loc_rmc."', '".$loc_icao."', '".$loc_station_name."', '".$loc_station_type."', '".$loc_state."', '".$loc_incharge_name."', '".$loc_station_phone."', '".$loc_station_email."', '".$loc_incharge_mobile."', '".$loc_station_address."');");
	if ($result)
		echo (json_encode (array ('success' => "New Station Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>