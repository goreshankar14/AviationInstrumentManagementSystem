<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	if (isset ($_POST['item_id'])) {
		$query = "SELECT * FROM tb_items WHERE fd_item_id = ".$_POST['item_id'].";";
	} else {
		$query = "SELECT * FROM tb_items ";
		if (isset ($_POST['limit']))
			$query .= "ORDER BY fd_item_id DESC LIMIT ".$_POST['limit'].";";
	}
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$item_types_query = "SELECT * FROM tb_item_types WHERE fd_item_id = ".$result_row['fd_item_id']." ORDER BY fd_item_type_id;";
		$item_types_result_set = mysqli_query ($conn, $item_types_query);
		$types = array ();
		while ($item_types_result_row = mysqli_fetch_array ($item_types_result_set)) {
			$types[] = array ('type' => $item_types_result_row['fd_type'], 'opening_stock' => $item_types_result_row['fd_opening_stock'], 'opening_stock_date' => $item_types_result_row['fd_opening_stock_date']);
		}
		$response[] = array ('item_id' => $result_row['fd_item_id'], 'name' => $result_row['fd_name'], 'manufacturer' => $result_row['fd_manufacturer'], 'description' => $result_row['fd_description'], 'types' => $types, 'types_count' => count ($types), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$result_row['fd_item_id'].'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$result_row['fd_item_id'].'">Delete</button>');	
	}
	echo (json_encode (array ('items' => $response, 'count' => count ($response))));	
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>