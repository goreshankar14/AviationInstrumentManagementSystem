<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	$query = "SELECT * FROM tb_stations;";
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$response[] = array ('station_id' => $result_row['fd_station_id'], 'rmc' => $result_row['fd_rmc'], 'icao' => $result_row['fd_icao'], 'station_name' => $result_row['fd_station_name'], 'station_type' => $result_row['fd_station_type'], 'state' => $result_row['fd_state'], 'incharge_name' => $result_row['fd_incharge_name'], 'station_phone' => $result_row['fd_station_phone'], 'station_email' => $result_row['fd_station_email'], 'incharge_mobile' => $result_row['fd_incharge_mobile'], 'station_address' => $result_row['fd_station_address']);	
	}
	echo (json_encode ($response));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>