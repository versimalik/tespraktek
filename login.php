<?php
error_reporting(E_ALL);
ini_set('display_errors', 'On');

include "db.php";

$user = $_POST['username'];
$password = md5($_POST['password']);
$login = $_POST['login'];


if ($login="login") {
	$sql = "SELECT * FROM user WHERE username='$user' AND password='$password'";
	$result = $mysqli->query($sql);

	if ($result) {
		while ($row = $result -> fetch_row()){
			$uRole = $row[1];
		}

		echo $uRole;

		// if
	}
	else {
		echo "no data";
	}

}



 ?>