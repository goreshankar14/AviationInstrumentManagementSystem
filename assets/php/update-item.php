<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_name']) && isset ($_POST['tx_manufacturer']) && ($_POST['tx_description']) && isset ($_POST['item_id'])) {
	$lc_item_id = mysqli_real_escape_string ($conn, trim ($_POST['item_id']));
	$lc_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_name']));
	$lc_manufacturer = mysqli_real_escape_string ($conn, trim ($_POST['tx_manufacturer']));
	$lc_description = mysqli_real_escape_string ($conn, trim ($_POST['tx_description']));
	
	$result = mysqli_query ($conn, "UPDATE tb_items SET fd_name = '".$lc_name."', fd_manufacturer = '".$lc_manufacturer."', fd_description = '".$lc_description."' WHERE fd_item_id = ".$lc_item_id.";");
	
	if ($result) {
		mysqli_query ($conn, "DELETE FROM tb_item_types WHERE fd_item_id = ".$lc_item_id.";");
		$types = array ();
		for ($i = 0; $i < count ($_POST['tx_type']); $i++) {
			$lc_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_type'][$i]));
			$lc_opening_stock = mysqli_real_escape_string ($conn, trim ($_POST['tx_opening_stock'][$i]));
			$lc_opening_stock_date = date ("Y-m-d", strtotime ($_POST['tx_opening_stock_date'][$i]));
			
			mysqli_query ($conn, "INSERT INTO tb_item_types VALUES (NULL, ".$lc_item_id.", '".$lc_type."', ".$lc_opening_stock.", '".$lc_opening_stock_date."');");
			$types[] = array ('type' => $lc_type, 'opening_stock' => $lc_opening_stock, 'opening_stock_date' => $_POST['tx_opening_stock_date'][$i]);
		}
		echo (json_encode (array ('success' => "Item #".$lc_item_id." Updated Successfully.", 'item' => array ('item_id' => $lc_item_id, 'name' => $lc_name, 'manufacturer' => $lc_manufacturer, 'description' => $lc_description, 'types' => $types, 'types_count' => count ($types), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$lc_item_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$lc_item_id.'">Delete</button>'))));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
?>