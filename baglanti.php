<?php
$servername = "localhost";
$username = "sena";
$password = "senanur34.";
$database = "giris_ekranı";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}
//echo "MySQL bağlantısı başarılı!";
?>
