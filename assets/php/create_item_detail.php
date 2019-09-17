<?php
require_once ("connect-database.php");

if (isset ($_POST['item_id']) && isset ($_POST['txt_quantity']) && isset ($_POST['txt_rate']) && isset ($_POST['transaction_id']) && isset ($_POST['txt_transaction_type'])) {
	$item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$loc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['txt_quantity']));
	$loc_rate = mysqli_real_escape_string ($conn, trim ($_POST['txt_rate']));
	$transaction_id = mysqli_real_escape_string ($conn, trim ($_POST['transaction_id']));
	$txt_transaction_type = mysqli_real_escape_string ($conn, trim ($_POST['txt_transaction_type']));
	
	$result = mysqli_query ($conn, "INSERT INTO tbl_item_details VALUES (NULL, ".$item_id.", ".$loc_quantity.", ".$loc_rate.", ".transaction_id.", '".$txt_transaction_type."');");
	if ($result)
		echo (json_encode (array ('success' => "New Item Detail Created Successfully.")));
	else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>