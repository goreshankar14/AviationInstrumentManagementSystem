<?php
session_start ();
require_once ("connect-database.php");

if (isset ($_POST['txt_first_name']) && isset ($_POST['txt_last_name']) && isset ($_POST['txt_username']) && isset ($_POST['txt_password']) && isset ($_POST['txt_role']) ) {
	$loc_first_name = mysqli_real_escape_string ($conn, trim ($_POST['txt_first_name']));
	$loc_last_name = mysqli_real_escape_string ($conn, trim ($_POST['txt_last_name']));
	$loc_username = mysqli_real_escape_string ($conn, trim ($_POST['txt_username']));
	$loc_password = mysqli_real_escape_string ($conn, trim ($_POST['txt_password']));
	$loc_role = mysqli_real_escape_string ($conn, trim ($_POST['txt_role']));
	
	$result_set = mysqli_query ($conn, "SELECT count (fd_username) FROM tb_users WHERE fd_username = '".$loc_username."';");
	$result_row = mysqli_fetch_row ($result_set);
	if ($result_row[0] > 0)
		echo (json_encode (array ('error' => "This Username already exists.")));
	else {
		$result = mysqli_query ($conn, "INSERT INTO tbl_users VALUES ('".$loc_first_name."', '".$loc_last_name."', '".$loc_username."', '".password_hash ($loc_password, PASSWORD_BCRYPT)."', '".loc_role."');");
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