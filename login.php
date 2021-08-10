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

		if ($data==="siswa") {
			$sqlsiswa = "SELECT * FROM siswa WHERE username='$user'";
			$resultsiswa = $mysqli->query($sqlsiswa);
			while ($row = $resultsiswa->fetch_row()) {
				$nama = $row[2];
				$jk = ($row[3] = 1) ? "Laki - laki" : "Perempuan";
				$ttl = $row[4];
				$telp = $row[5];
				$alamat = str_replace("'", "", $row[6]);
			}
			?>
			<table>
				<tr>
					<td>Nama</td>
					<td>:</td>
					<td><?= $nama;?></td>
				</tr>
				<tr>
					<td>Jenis Kelamin</td>
					<td>:</td>
					<td><?= $jk;?></td>
				</tr>
				<tr>
					<td>Tempat, Tanggal Lahir</td>
					<td>:</td>
					<td><?= $ttl;?></td>
				</tr>
				<tr>
					<td>Nomor Telepon</td>
					<td>:</td>
					<td><?= $telp;?></td>
				</tr>
				<tr>
					<td>Alamat</td>
					<td>:</td>
					<td><?= $alamat;?></td>
				</tr>
			</table>
			<?php
		}
		else{
			$sqlstaff= "SELECT * FROM staff WHERE username='$user'";
			$resultstaff = $mysqli->query($sqlstaff);

			while ($row = $resultstaff->fetch_row()) {
				// echo "staff";
				$jab = $row[2];
				$cab=$row[3];
			}

			if ($jab==="kcabang") {
				echo "tampil sesuai cabang";
				$sqlsiswacabang= "SELECT * FROM siswa WHERE cabang=$cab";
				$resultsiscabang = $mysqli->query($sqlsiswacabang);
				?>
				<table>
					<tr>
						<td>Nama</td>
						<td>Jenis Kelamin</td>
						<td>Tempat, Tanggal Lahir</td>
						<td>No Telp</td>
						<td>Alamat</td>
					</tr>
				<?php
				while ($row = $resultsiscabang->fetch_row()){
					?>

					<tr>
						<td><?= $row[2]?></td>
						<td><?= ($row[3]==1)? "Laki - laki" : "Perempuan"?></td>
						<td><?= $row[4]?></td>
						<td><?= $row[5]?></td>
						<td><?= $row[6]?></td>
					</tr>

					<?php
				}
				?>
				</table>
				<?php
			}
			elseif ($jab==="panitia") {
				$sqlseluruhsiswa= "SELECT * FROM siswa";
				$resultseluruhsiswa= $mysqli->query($sqlseluruhsiswa);
				?>
				<table>
					<tr>
						<td>Nama</td>
						<td>Jenis Kelamin</td>
						<td>Tempat, Tanggal Lahir</td>
						<td>No Telp</td>
						<td>Alamat</td>
					</tr>
				<?php
				while ($row = $resultseluruhsiswa->fetch_row()){
					?>

					<tr>
						<td><?= $row[2]?></td>
						<td><?= ($row[3]==1)? "Laki - laki" : "Perempuan"?></td>
						<td><?= $row[4]?></td>
						<td><?= $row[5]?></td>
						<td><?= $row[6]?></td>
					</tr>

					<?php
				}
				?>
				</table>
				<?php
			}
		}
	}
	else {
		echo "no data";
	}

}



 ?>