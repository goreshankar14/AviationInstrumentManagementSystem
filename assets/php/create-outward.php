<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_date']) && isset ($_POST['station_id']) && isset ($_POST['item_id']) && isset ($_POST['tx_quantity']) && isset ($_POST['tx_serial_number']) && isset ($_POST['tx_mode_of_dispatch']) && isset ($_POST['tx_remarks'])) {
	$lc_date = date ("Y-m-d", strtotime ($_POST['tx_date']));
	$lc_station_id = mysqli_real_escape_string ($conn, trim ($_POST['station_id']));
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity']));
	$lc_mode_of_dispatch = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_dispatch']));
	$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
	
	$lc_item_type_id = (isset ($_POST['item_type_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'])) : 0;
	$lc_item_manufacturer_id = (isset ($_POST['item_manufacturer_id'])) ? mysqli_real_escape_string ($conn, trim ($_POST['item_manufacturer_id'])) : 0;
	
	$result = mysqli_query ($conn, "INSERT INTO tb_outwards VALUES (NULL, '".$lc_date."', ".$lc_station_id.", ".$lc_item_id.", ".$lc_item_type_id.", ".$lc_item_manufacturer_id.", ".$lc_quantity.", '".$lc_mode_of_dispatch."', '".$lc_remarks."');");	
	
	if ($result) {
		$lc_outward_id = mysqli_insert_id ($conn); 
		$serial_numbers = array ();
		
		$multi_query = "INSERT INTO tb_serial_numbers (fd_serial_number_id, fd_transaction_id, fd_transaction_type, fd_serial_number) VALUES";
		for ($i = 0; $i < count ($_POST['tx_serial_number']); $i++) {
			$lc_serial_number = mysqli_real_escape_string ($conn, trim ($_POST['tx_serial_number'][$i]));
			$multi_query .= "(NULL, ".$lc_outward_id.", 'O', '".$lc_serial_number."'),";
			$serial_numbers [] = $lc_serial_number;
		}
		$multi_query = substr_replace ($multi_query, ";", -1);
		mysqli_query ($conn, $multi_query);

		$item_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_name FROM tb_items WHERE fd_item_id = ".$lc_item_id.";"));
		$lc_item_name = $item_result_row[0];
		$item_type_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_type FROM tb_item_types WHERE fd_item_type_id = ".$lc_item_type_id.";"));
		$lc_item_type = $item_type_result_row[0];
		$item_manufacturer_result_row = mysqli_fetch_row (mysqli_query ($conn, "SELECT fd_manufacturer FROM tb_item_manufacturers WHERE fd_item_manufacturer_id = ".$lc_item_manufacturer_id.";"));
		$lc_item_manufacturer = $item_manufacturer_result_row[0];
		$station_result_array = mysqli_fetch_array (mysqli_query ($conn, "SELECT fd_station_id, fd_name FROM tb_stations WHERE fd_station_id = ".$lc_station_id.";"));
		
		echo (json_encode (array ('success' => "New Outward Created Successfully.", 'outward' => array ('outward_id' => $lc_outward_id, 'date' => $_POST['tx_date'], 'station_id' => $lc_station_id, 'station' => $station_result_array['fd_name'], 'item' => $lc_item_name, 'item_type' => $lc_item_type, 'item_manufacturer' => $lc_item_manufacturer, 'quantity' => $lc_quantity, 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'mode_of_dispatch' => $lc_mode_of_dispatch, 'remarks' => $lc_remarks, 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-outward_id="'.$lc_outward_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-outward_id="'.$lc_outward_id.'">Delete</button>'))));	
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>