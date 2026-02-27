<!DOCTYPE html>
<html lang="tr">
<head>
<title>Hastalık ve Öneriler</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: "Lato", sans-serif;
        margin: 0;
        background-image: url('arkaplan2.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;  
		
    .form-container {
        margin: 50px auto;
        text-align: center;
        padding: 20px;
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        background-color: rgba(255, 255, 255, 0.8); /* Opaklık için arka plan */
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        max-width: 600px;
    }

    .form-container label {
        font-size: 18px;
        font-weight: bold;
        display: block;
        margin-bottom: 10px;
    }

    .form-container select {
        font-size: 16px;
        padding: 10px;
        width: 100%;
        max-width: 400px;
        margin: 10px 0 20px;
        border: 1px solid #CCCCCC;
        border-radius: 4px;
    }

    .form-container button {
        font-size: 16px;
        background-color: #D3D3D3;
        color: black;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .form-container button:hover {
        background-color:#D3D3D3 ;
    }

    .container {
        display: flex;
        justify-content: space-between;
        margin: 50px auto;
        max-width: 1200px;
    }

    .column {
        width: 48%;
    }

    .column img {
        width: 100px;
        height: 100px;
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
</div>

<!-- Hastalık Seçimini Yaparız. -->
<div class="form-container">
    <form action="yiyecek_arama.php" method="GET">
        <label for="hastalik">Hastalığınızı Seçin:</label>
        <select name="hastalik" id="hastalik" required>
            <option value="">Seçim yapınız</option>
            <option value="Kansızlık">Kansızlık</option>
            <option value="Böbrek Taşı">Böbrek Taşı</option>
            <option value="Tiroid Hastalıkları">Tiroid Hastalıkları</option>
            <option value="Tip 2 Diyabet">Tip 2 Diyabet</option>
            <option value="Hipertansiyon">Hipertansiyon</option>
            <option value=" İrritabl Bağırsak Sendromu">İrritabl Bağırsak Sendromu</option>
            <option value="Romatoid Artrit">Romatoid Artrit</option>
            <option value="Migren">Migren</option>
            <option value="Astım">Astım</option>
            <option value="Osteoporoz">Osteoporoz</option>
            <option value=" Karaciğer Yağlanması">Karaciğer Yağlanması</option>
            <option value="Kalp Hastalıkları">Kalp Hastalıkları</option>
            <option value="Kanser">Kanser</option>
            <option value="Sinüzit">Sinüzit</option>
            <option value="Depresyon">Depresyon</option>
            <option value="Reflü">Reflü</option>
            <option value="Kabızlık">Kabızlık</option>
            <option value="Kolesterol">Kolesterol</option>
        </select>
        <button type="submit">Önerileri Gör</button>
    </form>
</div>

<div class="container">
    
    <div class="column" id="yiyecekler"></div>
    <div class="column" id="icecekler"></div>
</div>
</body>
</html>