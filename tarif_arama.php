<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Tarifler</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        
        body {
            font-family: Arial, sans-serif;
			
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start; 
            height: 100vh;
            padding-top: 50px;
			
		background-image: url('arkaplan33.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        }

        .recipe-container {
            width: 80%;
            max-width: 1000px;
            background-color:#fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: flex-start;
        }

        .recipe-image-container {
            width: 40%; 
            padding-right: 20px; 
        }

        .recipe-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .recipe-details {
            width: 60%; /
        }

        .recipe-image-container p {
            text-align: center;
            font-weight: bold;
            font-size: 22px;
            margin-top: 10px;
        }

        h2 {
            font-size: 28px;
            color: #333;
            font-weight: bold;
            margin-top: 15px;
        }

        .details p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        .details p strong {
            font-weight: bold;
        }

        .recipe-box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 10px;
        }

        .w3-bar {
            background-color: #333;
        }

        .w3-bar-item {
            color: white !important;
        }

        .w3-bar-item:hover {
            background-color: grey !important;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="w3-top">
    <div class="w3-bar w3-lighter w3-card w3-left-align w3-large">
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
        <a href="anasayfa.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Ana Sayfa</a>
        <a href="filtrele.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Yiyecek-İçecek Önerisi</a>
        <a href="tarifler.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Tarifler</a>
        <a href="kullanicilar.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Kayıt Ol</a>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
        <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
        <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
    </div>
</div>

<?php
include 'baglanti.php'; // Veritabanını bağladık.

if (isset($_GET['hastalik']) && $_GET['hastalik'] !== "") {
    $hastalik = $conn->real_escape_string($_GET['hastalik']);

    $sql_tarif = "SELECT isim, resim, faydası, yemekismi, malzemeler, yapılısı FROM tarifler WHERE hastalik='$hastalik'";
    $result_tarif = $conn->query($sql_tarif);

    if ($result_tarif->num_rows > 0) {
        while ($row = $result_tarif->fetch_assoc()) {
            echo "<div class='recipe-container'>";
            echo "<div class='recipe-image-container'>";
            echo "<img src='" . $row['resim'] . "' alt='" . $row['yemekismi'] . "' class='recipe-image'>";
            echo "<p>Ana Ürün: " . $row['isim'] . "</p>";  
            echo "</div>";

            echo "<div class='recipe-details'>";
            echo "<h2>" . $row['yemekismi'] . "</h2>";  
            echo "<p><strong>Malzemeler:</strong><br>" . nl2br($row['malzemeler']) . "</p>";
            echo "<p><strong>Yapılışı:</strong><br>" . nl2br($row['yapılısı']) . "</p>";
            echo "<p><strong>Faydası:</strong><br>" . nl2br($row['faydası']) . "</p>";
            echo "</div>";
            echo "</div>";
        }
    } else {
        echo "<p style='text-align: center;'>Bu hastalık için uygun tarif bulunamadı.</p>";
    }
}

$conn->close();
?>

</body>
</html>