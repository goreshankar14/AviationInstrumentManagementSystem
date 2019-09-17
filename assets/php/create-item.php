<?php
require_once ("connect-database.php");

if (isset ($_POST['txt_item_name']) && isset ($_POST['txt_item_number']) && ($_POST['txt_item_type_make']) && ($_POST['txt_item_description']) && isset ($_POST['txt_opening_stock']) && isset ($_POST['txt_reorder_level'])) {
	$loc_item_name = mysqli_real_escape_string ($conn, trim ($_POST['txt_item_name']));
	$loc_item_number = mysqli_real_escape_string ($conn, trim ($_POST['txt_item_number']));
	$loc_item_type_make = mysqli_real_escape_string ($conn, trim ($_POST['txt_item_type_make']));
	$loc_item_description = mysqli_real_escape_string ($conn, trim ($_POST['txt_item_description']));
	$loc_opening_stock = mysqli_real_escape_string ($conn, trim ($_POST['txt_opening_stock']));
	$loc_reorder_level = mysqli_real_escape_string ($conn, trim ($_POST['txt_reoder_level']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_item_details VALUES (NULL, '".$loc_item_name."', '".$loc_item_number."', '".$loc_item_type_make."', '".$loc_item_description."', ".$loc_opening_stock.", ".$loc_reorder_level.");");
	if ($result)
		echo (json_encode (array ('success' => "New Item Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>