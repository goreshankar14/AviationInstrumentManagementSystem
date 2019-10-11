<?php
session_start ();
require_once ("connect-database.php");
if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_name']) && isset ($_POST['tx_specification'])) {
	$lc_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_name']));
	$lc_specification = mysqli_real_escape_string ($conn, trim ($_POST['tx_specification']));
	
	$result = mysqli_query ($conn, "INSERT INTO tb_items VALUES (NULL, '".$lc_name."', '".$lc_specification."');");
	if ($result) {
		$lc_item_id = mysqli_insert_id ($conn);
		
		$types = array ();
		if (isset ($_POST['tx_type'])) {		
			for ($i = 0; $i < count ($_POST['tx_type']); $i++) {
				$lc_type = mysqli_real_escape_string ($conn, trim ($_POST['tx_type'][$i]));
				mysqli_query ($conn, "INSERT INTO tb_item_types VALUES (NULL, ".$lc_item_id.", '".$lc_type."');");
				$types[] = $lc_type;
			}
		}
		
		$manufacturers = array ();
		if (isset ($_POST['tx_manufacturer'])) {
			for ($i = 0; $i < count ($_POST['tx_manufacturer']); $i++) {
				$lc_manufacturer = mysqli_real_escape_string ($conn, trim ($_POST['tx_manufacturer'][$i]));
				mysqli_query ($conn, "INSERT INTO tb_item_manufacturers VALUES (NULL, ".$lc_item_id.", '".$lc_manufacturer."');");
					$manufacturers[] = $lc_manufacturer;
			}
		}
		
		echo (json_encode (array ('success' => "New Item Created Successfully.", 'item' => array ('item_id' => $lc_item_id, 'name' => $lc_name, 'specification' => $lc_specification, 'types' => $types, 'types_count' => count ($types), 'manufacturers' => $manufacturers, 'manufacturers_count' => count ($manufacturers), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-item_id="'.$lc_item_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-item_id="'.$lc_item_id.'">Delete</button>'))));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>