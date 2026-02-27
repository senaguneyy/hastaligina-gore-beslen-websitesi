<?php
include 'baglanti.php'; //veritabanına bağladık//

if (isset($_GET['hastalik']) && $_GET['hastalik'] !== "bosecim") {
    $hastalik = $conn->real_escape_string($_GET['hastalik']); 
?>
<!DOCTYPE html>
<html lang="tr">
<head>
 <title>Öneriler</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
   body {
    font-family: Arial, sans-serif;
	background-image: url('arkaplan4.jpg')
    margin: 0;
    padding: 20px;
    display: flex;
    gap: 20px;
    flex-wrap: wrap; 
	
	background-image: url('arkaplan16.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
	
}

.section {
    width: 48%;
    margin-top: 40px; 
}

.section:nth-child(2) { 
    margin-left: auto; 
}

.item {
    margin-bottom: 30px;
    text-align: center;
    display: flex;
    flex-direction: column; 
    align-items: center; 
}

.item img {
    width: 100%;
    max-width: 400px; 
    height: auto; 
    object-fit: cover;
    border-radius: 8px;
    margin-bottom: 10px; 
}

h2 {
    text-align: center;
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
}

.section p {
    font-size: 16px;
    line-height: 1.5;
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

   
    <div class="section">
        <h2><b>Yiyecek Önerileri</b></h2>
        <?php
        $sql_yiyecek = "SELECT isim, resim, faydalar FROM yiyecekler WHERE hastalik='$hastalik'";
        $result_yiyecek = $conn->query($sql_yiyecek);

        if ($result_yiyecek->num_rows > 0) {
            while ($row = $result_yiyecek->fetch_assoc()) {
                echo "<div class='item'>";
                echo "<img src='" . $row['resim'] . "' alt='" . $row['isim'] . "'>";
                echo "<strong>Yiyecek İsmi:</strong> " . $row['isim'] . "<br>";
                echo "<strong>Faydalar:</strong> " . $row['faydalar'] . "<br>";
                echo "</div>";
            }
        } else {
            echo "<p>Bu hastalık için önerilen yiyecek bulunamadı.</p>";
        }
        ?>
    </div>

    
    <div class="section">
        <h2><b>İçecek Önerileri</b></h2>
        <?php
        $sql_icecek = "SELECT isim, resim, faydalar FROM icecekler WHERE hastalik='$hastalik'";
        $result_icecek = $conn->query($sql_icecek);

        if ($result_icecek->num_rows > 0) {
            while ($row = $result_icecek->fetch_assoc()) {
                echo "<div class='item'>";
                echo "<img src='" . $row['resim'] . "' alt='" . $row['isim'] . "'>";
                echo "<strong>Yiyecek İsmi:</strong> " . $row['isim'] . "<br>";
                echo "<strong>Faydalar:</strong> " . $row['faydalar'] . "<br>";
                echo "</div>";
            }
        } else {
            echo "<p>Bu hastalık için önerilen içecek bulunamadı.</p>";
        }
        ?>
    </div>
</body>
</html>
<?php
} else {
    echo "<p>Lütfen bir hastalık seçin.</p>";
}
$conn->close();
?>