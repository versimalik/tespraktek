<?php 

error_reporting(E_ALL);
ini_set('display_errors', 'On');

include "db.php";




 ?>

 <!DOCTYPE html>
 <html>
	 <head>
	 	<meta charset="utf-8">
	 	<title>login</title>
	 </head>
	 <body>
	 	<form action="login.php" method="post">	 		
	 		<table border="0">
	 			<tr>
	 				<td>username</td>
	 				<td>:</td>
	 				<td>
	 					<input type="text" name="username" placeholder="Masukkan username">
	 				</td>
	 			</tr>
	 			<tr>
	 				<td>password</td>
	 				<td>:</td>
	 				<td>
	 					<input type="password" name="password" placeholder="Masukkan password">
	 				</td>
	 			</tr>
	 			<tr>
	 				<td colspan="3" >
	 					<input type="submit" name="login" value="Login">
	 				</td>
	 			</tr>
	 		</table>
	 	</form>	 
	 </body>
 </html>