<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "giris_ekranı";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}
//echo "MySQL bağlantısı başarılı!";
?>

