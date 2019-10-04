<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_SESSION['session_user_id']) && isset ($_POST['inward_id'])) {
	$lc_inward_id = mysqli_real_escape_string ($conn, trim ($_POST['inward_id']));
	$item_details_result = mysqli_query ($conn, "DELETE FROM tb_item_details WHERE fd_transaction_id = ".$lc_inward_id." AND fd_transaction_type = 'I';");
	if ($item_details_result) {
		$result = mysqli_query ($conn, "DELETE FROM tb_inwards WHERE fd_inward_id = ".$lc_inward_id.";");
		if ($result)
			echo (json_encode (array ('success' => "Inward #".$lc_inward_id." Deleted Successfully.")));	
		else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.3")));
	} else
		echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.2")));
} else
	echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.1")));
?>