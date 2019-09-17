<?php
require_once ("connect-database.php");

if (isset ($_POST['tx_item_name']) && isset ($_POST['tx_item_number']) && ($_POST['tx_item_make']) && ($_POST['tx_item_model']) && ($_POST['tx_item_description']) && isset ($_POST['tx_opening_stock'])) {
	$lc_item_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_name']));
	$lc_item_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_number']));
	$lc_item_make = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_make']));
	$lc_item_model = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_model']));
	$lc_item_description = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_description']));
	$lc_opening_stock = mysqli_real_escape_string ($conn, trim ($_POST['tx_opening_stock']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_item_details VALUES (NULL, '".$lc_item_name."', '".$lc_item_number."', '".$lc_item_make."', '".$lc_item_model."', '".$lc_item_description."', ".$lc_opening_stock.");");
	if ($result)
		echo (json_encode (array ('success' => "New Item Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>