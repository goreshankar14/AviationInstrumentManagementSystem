<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id'])) {
	$query = "SELECT * FROM tb_items;";
	$result_set = mysqli_query ($conn, $query);
	$response = array ();
	while ($result_row = mysqli_fetch_array ($result_set)) {
		$response[] = array ('item_id' => $result_row['fd_item_id'], 'item_name' => $result_row['fd_item_name'], 'item_number' => $result_row['fd_item_number'], 'item_make' => $result_row['fd_item_make'], 'item_model' => $result_row['fd_item_model'], 'description' => $result_row['fd_description'], 'opening_stock' => $result_row['fd_opening_stock']);	
	}
	echo (json_encode ($response));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>