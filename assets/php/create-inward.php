<?php
require_once ("connect-database.php");

if (isset ($_POST['txt_inward_number']) && isset ($_POST['txt_date']) && isset ($_POST['shipment_mode_id']) && isset ($_POST['txt_remarks']) && isset ($_POST['station_id'])) {
	$loc_inward_number = mysqli_real_escape_string ($conn, trim ($_POST['txt_inward_number']));
	$loc_date = mysqli_real_escape_string ($conn, trim ($_POST['txt_date']));
	$shipment_mode_id = mysqli_real_escape_string ($conn, trim ($_POST['shipment_mode_id']));
	$loc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['txt_remarks']));
	$station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_inwards VALUES (NULL, '".$loc_inward_number."', '".$loc_date."', ".$shipment_mode_id.", '".$loc_remarks."', ".$station_id.");");
	if ($result)
		echo (json_encode (array ('success' => "New Inward Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>