<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_date']) && isset ($_POST['tx_from']) && isset ($_POST['item_id']) && isset ($_POST['tx_quantity']) && isset ($_POST['tx_serial_number']) && isset ($_POST['tx_rate']) && isset ($_POST['tx_mode_of_receiving']) && isset ($_POST['tx_remarks'])) {
	$lc_date = date ("Y-m-d", strtotime ($_POST['tx_date']));
	$lc_from = mysqli_real_escape_string ($conn, trim ($_POST['tx_from']));
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity']));
	$lc_rate = mysqli_real_escape_string ($conn, trim ($_POST['tx_rate']));
	$lc_mode_of_receiving = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_receiving']));
	$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
	
	$lc_item_type_id = (isset ($_POST['item_type_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'])) : 0;
	$lc_item_manufacturer_id = (isset ($_POST['item_manufacturer_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id'])) : 0;
	
	$result = mysqli_query ($conn, "INSERT INTO tb_inwards VALUES (NULL, '".$lc_date."', '".$lc_from."', ".$lc_item_id.", ".$lc_item_type_id.", ".$lc_item_manufacturer_id.", ".$lc_quantity.", ".$lc_rate.", '".$lc_mode_of_receiving."', '".$lc_remarks."');");
	
	
	if ($result) {
		$lc_inward_id = mysqli_insert_id ($conn); 
		$serial_numbers = array ();
		for ($i = 0; $i < count ($_POST['tx_serial_number']); $i++) {
			$lc_serial_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_serial_number'][$i]));
			mysqli_query ($conn, "INSERT INTO tb_serial_numbers VALUES (NULL, ".$lc_inward_id.", 'I', '".$lc_serial_number."');");
			$serial_numbers [] = $lc_serial_number;
		}

		$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$lc_item_id.";"));
		$lc_item_name = $item_result_row[0];
		$item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$lc_item_type_id.";"));
		$lc_item_type = $item_type_result_row[0];
		$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$lc_item_manufacturer_id.";"));
		$lc_item_manufacturer = $item_manufacturer_result_row[0];
		
		echo (json_encode (array ('success' => "New Inward Created Successfully.", 'inward' => array ('inward_id' => $lc_inward_id, 'date' => $_POST['tx_date'], 'from' => $lc_from,  'item' => $lc_item_name, 'item_type' => $lc_item_type, 'item_manufacturer' => $lc_item_manufacturer, 'quantity' => $lc_quantity, 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'rate' => $lc_rate, 'mode_of_receiving' => $lc_mode_of_receiving, 'remarks' => $lc_remarks, 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-inward_id="'.$lc_inward_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-inward_id="'.$lc_inward_id.'">Delete</button>'))));	
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>