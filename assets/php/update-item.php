<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_item_name']) && isset ($_POST['tx_item_number']) && ($_POST['tx_item_make']) && ($_POST['tx_item_model']) && ($_POST['tx_item_description']) && isset ($_POST['tx_opening_stock']) && isset ($_POST['item_id'])) {
	$lc_item_id = $lc_item_name = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$lc_item_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_name']));
	$lc_item_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_number']));
	$lc_item_make = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_make']));
	$lc_item_model = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_model']));
	$lc_item_description = mysqli_real_escape_string ($conn, trim ($_POST['tx_item_description']));
	$lc_opening_stock = mysqli_real_escape_string ($conn, trim ($_POST['tx_opening_stock']));
	
	$result = mysqli_query ($conn, "UPDATE tbl_items SET fd_item_name = '".$lc_item_name."', fd_item_number = '".$lc_item_number."', fd_item_model = '".$lc_item_model."', fd_item_make = '".$lc_item_make."', fd_item_description = '".$lc_item_description."', fd_opening_stock = '".$lc_opening_stock."' WHERE fd_item_id = ".$lc_item_id.";");
	
	if ($result)
		echo (json_encode (array ('success' => "Item #".$lc_item_id." is Updated Successfully.")));	
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>