<?php
session_start ();
if (isset ($_SESSION['session_user_id'])) {
	echo (json_encode (array ('target' => "dashboard.html")));
} else {
	echo (json_encode (array ('target' => "login.html")));
}
?>