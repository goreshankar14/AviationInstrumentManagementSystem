<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['tx_date']) && isset ($_POST['tx_from']) && isset ($_POST['item_type_manufacturer_id']) && isset ($_POST['tx_quantity']) && isset ($_POST['tx_serial_number']) && isset ($_POST['tx_rate']) && isset ($_POST['tx_mode_of_receiving']) && isset ($_POST['tx_remarks']) && isset ($_POST['inward_id'])) {
	$lc_inward_id = mysqli_real_escape_string ($conn, trim ($_POST['inward_id']));
	$lc_date = date ("Y-m-d", strtotime ($_POST['tx_date']));
	$lc_from = mysqli_real_escape_string ($conn, trim ($_POST['tx_from']));
	$lc_item_type_manufacturer_id = mysqli_real_escape_string ($conn, trim ($_POST['item_type_manufacturer_id']));
	$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity']));
	$lc_rate = mysqli_real_escape_string ($conn, trim ($_POST['tx_rate']));
	$lc_mode_of_receiving = mysqli_real_escape_string ($conn, trim ($_POST['tx_mode_of_receiving']));
	$lc_remarks = mysqli_real_escape_string ($conn, trim ($_POST['tx_remarks']));
	
	$result = mysqli_query ($conn, "UPDATE tb_inwards SET fd_date = '".$lc_date."', fd_from = '".$lc_from."', fd_item_type_manufacturer_id = ".$lc_item_type_manufacturer_id.", fd_quantity = ".$lc_quantity.", fd_rate = ".$lc_rate.", fd_mode_of_receiving = '".$lc_mode_of_receiving."', fd_remarks = '".$lc_remarks."' WHERE fd_inward_id = ".$lc_inward_id.";");
	
	if ($result) {
		mysqli_query ($conn, "DELETE FROM tb_item_details WHERE fd_transaction_id = ".$lc_inward_id." AND fd_transaction_type = 'I';");
		$item_details = array ();
		for ($i = 0; $i < count ($_POST['item_type_id']); $i++) {
			$lc_item_type_id = mysqli_real_escape_string ($conn, trim ($_POST['item_type_id'][$i]));
			$lc_quantity = mysqli_real_escape_string ($conn, trim ($_POST['tx_quantity'][$i]));
			$lc_rate = mysqli_real_escape_string ($conn, trim ($_POST['tx_rate'][$i]));
			
			mysqli_query ($conn, "INSERT INTO tb_item_details VALUES (NULL, ".$lc_item_type_id.", ".$lc_quantity.", ".$lc_rate.", ".$lc_inward_id.", 'I');");
			$item_details[] = array ('item_type_id' => $lc_item_type_id, 'quantity' => $lc_quantity, 'rate' => $lc_rate);
		}
				
		echo (json_encode (array ('success' => "Inward #".$lc_inward_id." Updated Successfully.", 'inward' => array ('inward_id' => $lc_inward_id, 'station_id' => $lc_station_id, 'date' => $_POST['tx_date'], 'shipment_mode' => $lc_shipment_mode, 'remarks' => $lc_remarks, 'item_details' => $item_details, 'item_details_count' => count ($item_details), 'action' => '<button class="btn btn-warning bt_edit btn-xs" data-inward_id="'.$lc_inward_id.'">Edit</button> <button class="btn btn-danger bt_delete btn-xs" data-inward_id="'.$lc_inward_id.'">Delete</button>'))));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>