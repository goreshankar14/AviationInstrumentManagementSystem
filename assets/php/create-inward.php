<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_date']) && isset ($_POST['tx_from']) && isset ($_POST['item_type_manufacturer_id']) && isset ($_POST['tx_quantity']) && isset ($_POST['tx_serial_number']) && isset ($_POST['tx_rate']) && isset ($_POST['tx_mode_of_receiving']) && isset ($_POST['tx_remarks'])) {
	$lc_date = date ("Y-m-d", strtotime ($_POST['tx_date']));
	$lc_from = mysqli_real_escape_string ($conn, trim ($_POST['tx_from']));
	$lc_item_type_manufacturer_id = mysqli_real_escape_string ($conn, trim ($_POST['item_type_manufacturer_id']));
	$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity']));
	$lc_rate = mysqli_real_escape_string ($conn, trim ($_POST['tx_rate']));
	$lc_mode_of_receiving = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_receiving']));
	$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
	
	$result = mysqli_query ($conn, "INSERT INTO tb_inwards VALUES (NULL, '".$lc_date."', '".$lc_from."', ".$lc_item_type_manufacturer_id.", ".$lc_quantity.", ".$lc_rate.", '".$lc_mode_of_receiving."', '".$lc_remarks."');");
	
	if ($result) {
		$lc_inward_id = mysqli_insert_id ($conn); 
		$serial_numbers = array ();
		for ($i = 0; $i < count ($_POST['tx_serial_number']); $i++) {
			$lc_serial_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_serial_number'][$i]));
			mysqli_query ($conn, "INSERT INTO tb_serial_numbers VALUES (NULL, ".$lc_inward_id.", '".$lc_serial_number."');");
			$serial_numbers [] = $lc_serial_number;
		}
		
		$query = "SELECT i.fd_name, it.fd_type, itm.fd_manufacturer FROM tb_items as i, tb_item_types as it, tb_item_type_manufacturers as itm WHERE i.fd_item_id = it.fd_item_id AND it.fd_item_type_id = itm.fd_item_type_id AND itm.fd_item_type_manufacturer_id = ".$lc_item_type_manufacturer_id.";";
		$result_set = mysqli_query ($conn, $query);
		$result_row = mysqli_fetch_array ($result_set);
		
		echo (json_encode (array ('success' => "New Inward Created Successfully.", 'inward' => array ('inward_id' => $lc_inward_id, 'date' => $_POST['tx_date'], 'from' => $lc_from,  'item' => $result_row['fd_name'], 'item_type' => $result_row['fd_type'], 'item_type_manufacturer' => $result_row['fd_manufacturer'], 'quantity' => $lc_quantity, 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'rate' => $lc_rate, 'mode_of_receiving' => $lc_mode_of_receiving, 'remarks' => $lc_remarks, 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-inward_id="'.$lc_inward_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-inward_id="'.$lc_inward_id.'">Delete</button>'))));	
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>