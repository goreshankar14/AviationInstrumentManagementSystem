<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_POST['tx_first_name']) && isset ($_POST['tx_last_name']) && isset ($_POST['tx_username']) && isset ($_POST['tx_password']) && isset ($_POST['tx_role']) ) {
	$lc_first_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_first_name']));
	$lc_last_name = mysqli_real_escape_string ($conn, trim ($_POST['tx_last_name']));
	$lc_username = mysqli_real_escape_string ($conn, trim ($_POST['tx_username']));
	$lc_password = mysqli_real_escape_string ($conn, trim ($_POST['tx_password']));
	$lc_role = mysqli_real_escape_string ($conn, trim ($_POST['tx_role']));
	
	$result_set = mysqli_query ($conn, "SELECT count (fd_username) FROM tb_users WHERE fd_username = '".$lc_username."';");
	$result_row = mysqli_fetch_row ($result_set);
	if ($result_row[0] > 0)
		echo (json_encode (array ('error' => "This Username already exists.")));
	else {
		$result = mysqli_query ($conn, "INSERT INTO tb_users VALUES ('".$lc_first_name."', '".$lc_last_name."', '".$lc_username."', '".password_hash ($lc_password, PASSWORD_BCRYPT)."', '".loc_role."');");
		if ($result) {
			$_SESSION['session_user_id'] = mysqli_insert_id ($conn);
			echo (json_encode (array ('success' => "Welcome to IMD Aviation Inventory.")));
		} else
			echo (json_encode (array ('error' => "Something went wrong. Please, try again in a little bit.")));
	}
} else {
	echo "Something went wrong. Please, try again in a little bit.";
}
?>