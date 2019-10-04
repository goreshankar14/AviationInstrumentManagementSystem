<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['type_id'])) {
	$item_type_manufacturers_query = "SELECT * FROM tb_item_type_manufacturers WHERE fd_item_type_id = ".$_POST['type_id'].";";
	$item_type_manufacturers_result_set = mysqli_query ($conn, $item_type_manufacturers_query);
	$manufacturers = array ();
	while ($item_type_manufacturers_result_row = mysqli_fetch_array ($item_type_manufacturers_result_set)) {
		$manufacturers[] = array ('manufacturer' => $item_type_manufacturers_result_row['fd_manufacturer'], 'manufacturer_id' => $item_type_manufacturers_result_row['fd_item_type_manufacturer_id']);
	}
	echo (json_encode (array ('manufacturers' => $manufacturers, 'count' => count ($manufacturers))));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>