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
			$data = $row[1];
			$user = $row[2];
		}

		if ($data="siswa") {
			$sqlsiswa = "SELECT * FROM siswa WHERE username='$user'";
			$resultsiswa = $mysqli->query($sqlsiswa);
			if ($resultsiswa) {
				while ($rowsiswa = $resultsiswa -> fetch_row()){
					$namasiswa = $rowsiswa[2];
					$cabangsiswa = $rowsiswa[1];
					$jk = $rowsiswa[3];
					$ttl = $rowsiswa[4];
					$telp = $rowsiswa[5];
					$alamat = $rowsiswa[6];
				}
				?>
				<table>
					<tr>
						<td>Nama</td>
						<td>:</td>
						<td><?php echo $namasiswa;?></td>
					</tr>
					<tr>
						<td>Cabang</td>
						<td>:</td>
						<td><?php echo $cabangsiswa;?></td>
					</tr>
					<tr>
						<td>Jenis Kelamin</td>
						<td>:</td>
						<td><?php echo $jk;?></td>
					</tr>
					<tr>
						<td>Tempat, Tanggal Lahir</td>
						<td>:</td>
						<td><?php echo $ttl;?></td>
					</tr>
					<tr>
						<td>Alamat</td>
						<td>:</td>
						<td><?php echo $alamat;?></td>
					</tr>
				</table>
				<?php
			}
		}
		else {
			echo "bukan siswa";
		}
	}
	else {
		echo "no data";
	}

}



 ?>