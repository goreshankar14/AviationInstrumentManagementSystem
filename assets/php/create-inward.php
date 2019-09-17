<?php
require_once ("connect-database.php");

if (isset ($_POST['tx_inward_number']) && isset ($_POST['tx_date']) && isset ($_POST['shipment_mode_id']) && isset ($_POST['tx_remarks']) && isset ($_POST['station_id'])) {
	$lc_inward_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_inward_number']));
	$lc_date = mysqli_real_escape_string ($conn, trim ($_POST['tx_date']));
	$shipment_mode_id = mysqli_real_escape_string ($conn, trim ($_POST['shipment_mode_id']));
	$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
	$station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_inwards VALUES (NULL, '".$lc_inward_number."', '".$lc_date."', ".$shipment_mode_id.", '".$lc_remarks."', ".$station_id.");");
	if ($result)
		echo (json_encode (array ('success' => "New Inward Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>