<?php

include 'baglanti.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['kayit_ol'])) {
        // Kayıt işlemi
        $ad = $_POST['ad'];
        $soyad = $_POST['soyad'];
        $yas = $_POST['yas'];
        $hastalik = isset($_POST['hastalik']) ? $_POST['hastalik'] : '';
        $kullanici_adi = $_POST['kullanici_adi'];
        $sifre = password_hash($_POST['sifre'], PASSWORD_DEFAULT);

        $sql = "INSERT INTO kullanicilar (ad, soyad, yas, hastalik, kullanici_adi, sifre)
                VALUES ('$ad', '$soyad', '$yas', '$hastalik', '$kullanici_adi', '$sifre')";

        if ($conn->query($sql) === TRUE) {
            $kayit_mesaji = "Kayıt başarılı! Giriş yapabilirsiniz.";
        } else {
            $kayit_mesaji = "Hata: " . $conn->error;
        }
    }

    if (isset($_POST['giris_yap'])) {
        // Giriş işlemi
        $kullanici_adi = $_POST['giris_kullanici_adi'];
        $sifre = $_POST['giris_sifre'];

        $sql = "SELECT sifre FROM kullanicilar WHERE kullanici_adi = '$kullanici_adi'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            if (password_verify($sifre, $row['sifre'])) {
                $giris_mesaji = "Giriş başarılı! Hoş geldiniz, $kullanici_adi.";
            } else {
                $giris_mesaji = "Şifre yanlış.";
            }
        } else {
            $giris_mesaji = "Kullanıcı adı bulunamadı.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="tr">
<head>
<title>Kullanıcı Girişi</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
    <style>
        body {
		  body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
         .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
         .fa-anchor,.fa-coffee {font-size:200px}
          background-color:#EAF6FF; 
          color: #4D4D4D;
			
            background-color:#D3D3D3;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
			
		background-image: url('arkaplan11.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
	
        }
        .container {
            display: flex;
            gap: 20px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            width: 50%;
            max-width: 300px;
        }
        .form-container h3 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        .form-container button {
            background: grey;
            color: black;
            border: none;
            padding: 10px;
            border-radius: 8px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
        }
        .form-container button:hover {
            background: #4c00a0;
        }
        .form-container input {
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            width: 100%;
            font-size: 14px;
        }
        .form-container p {
            text-align: center;
            margin-top: 15px;
            color: #555;
        }
        .form-container a {
            text-decoration: none;
            color: #2575fc;
        }
        .form-container a:hover {
            text-decoration: underline;
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

    <div class="container">
        <div class="form-container">
            <h3>Kayıt Ol</h3>
            <form action="kullanicilar.php" method="POST" >
                <input type="text" name="ad" placeholder="Adınız" required>
                <input type="text" name="soyad" placeholder="Soyadınız" required>
                <input type="number" name="yas" placeholder="Yaşınız" required>
                <input type="text" name="hastalik" placeholder="Hastalığınız" required>
                <input type="text" name="kullanici_adi" placeholder="Kullanıcı Adı" pattern="^\S+$" required>
                <input type="password" name="sifre" placeholder="Şifre" pattern="^\S+$" required>
                <button type="submit" name="kayit_ol">Kayıt Ol</button>
            </form>
			<?php if (isset($kayit_mesaji)) echo "<p class='message'>$kayit_mesaji</p>"; ?>
        </div>
        <div class="form-container">
            <h3>Giriş Yap</h3>
            <form action="kullanicilar.php" method="POST" >
                <input type="text" name="giris_kullanici_adi" placeholder="Kullanıcı Adı" pattern="^\S+$" required>
                <input type="password" name="giris_sifre" placeholder="Şifre" pattern="^\S+$" required>
                <button type="submit" name="giris_yap">Giriş Yap</button>
            </form>
			  <?php if (isset($giris_mesaji)) echo "<p class='message'>$giris_mesaji</p>"; ?>  

        </div>
    </div>
</body>
</html>
