 <?php
$mysqli = new mysqli("localhost","root","root021","tespraktek");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
?> 