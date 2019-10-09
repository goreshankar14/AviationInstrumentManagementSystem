<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['item_id'])) {
	$item_types_query = "SELECT * FROM tb_item_types WHERE fd_item_id = ".$_POST['item_id'].";";
	$item_types_result_set = mysqli_query ($conn, $item_types_query);
	$types = array ();
	while ($item_types_result_row = mysqli_fetch_array ($item_types_result_set)) {
		$types[] = array ('type_id' => $item_types_result_row['fd_item_type_id'], 'type' => $item_types_result_row['fd_type']);
	}
	echo (json_encode (array ('types' => $types, 'count' => count ($types))));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>