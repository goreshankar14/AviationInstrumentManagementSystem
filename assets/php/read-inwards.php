<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	if (isset ($_POST['inward_id'])) {
		$query = "SELECT * FROM tb_inwards WHERE fd_inward_id = ".$_POST['inward_id'].";";
	} else {
		$query = "SELECT * FROM tb_inwards ";
		if (isset ($_POST['limit']))
			$query .= "ORDER BY fd_inward_id DESC LIMIT ".$_POST['limit'].";";
	}
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$serial_numbers_query = "SELECT * FROM tb_serial_numbers WHERE fd_inward_id = ".$result_row['fd_inward_id'].";";
		$serial_numbers_result_set = mysqli_query ($conn, $serial_numbers_query);
		$serial_numbers = array ();
		while ($serial_numbers_result_row = mysqli_fetch_array ($serial_numbers_result_set)) {
			$serial_numbers[] = array ('serial_number_id' => $serial_numbers_result_row['fd_serial_number_id'], 'serial_number' => $serial_numbers_result_row['fd_serial_number']);
		}
		$item_query = "SELECT i.fd_name, it.fd_type, itm.fd_manufacturer FROM tb_items as i, tb_item_types as it, tb_item_type_manufacturers as itm WHERE i.fd_item_id = it.fd_item_id AND it.fd_item_type_id = itm.fd_item_type_id AND itm.fd_item_type_manufacturer_id = ".$result_row['fd_item_type_manufacturer_id'].";";
		$item_result_set = mysqli_query ($conn, $item_query);
		$item_result_row = mysqli_fetch_array ($item_result_set);
		$response[] = array ('inward_id' => $result_row['fd_inward_id'], 'date' => date ('m/d/Y', strtotime ($result_row['fd_date'])), 'from' => $result_row['fd_from'], 'item' => $item_result_row['fd_name'], 'item_type' => $item_result_row['fd_type'], 'item_type_manufacturer' => $item_result_row['fd_manufacturer'], 'quantity' => $result_row['fd_quantity'], 'serial_numbers' => $serial_numbers, 'serial_numbers_count' => count ($serial_numbers), 'rate' => $result_row['fd_rate'], 'mode_of_receiving' => $result_row['fd_mode_of_receiving'], 'remarks' =>  $result_row['fd_remarks'], 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-inward_id="'.$result_row['fd_inward_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-inward_id="'.$result_row['fd_inward_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('inwards' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>