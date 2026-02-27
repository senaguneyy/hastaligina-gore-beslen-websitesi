<!DOCTYPE html>
<html lang="tr">
<head>
<title>Tarif Önerileri</title>
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
        background-image: url('arkaplan17.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
    }

    .form-container {
        margin: 50px auto;
        text-align: center;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8);
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
        background-color:#D3D3D3;
        color: black;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .form-container button:hover {
        background-color: #C0C0C0;
    }

    .recipe-container {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 20px;
        margin: 50px auto;
        max-width: 1200px;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    .recipe-container .image {
        flex: 1;
        text-align: center;
    }

    .recipe-container .image img {
        max-width: 100%;
        border-radius: 8px;
    }

    .recipe-container .image p {
        font-size: 16px;
        font-weight: bold;
        margin-top: 10px;
    }

    .recipe-container .details {
        flex: 2;
        padding: 10px;
    }

    .recipe-container .details h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .recipe-container .details p {
        font-size: 16px;
        line-height: 1.5;
    }
</style>
</head>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-lighter w3-card w3-left-align w3-large">
    <a href="anasayfa.html" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Ana Sayfa</a>
    <a href="filtrele.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Yiyecek-İçecek Önerisi</a>
    <a href="tarifler.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Tarifler</a>
    <a href="kullanicilar.php" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Kayıt Ol</a>
  </div>
</div>

<div class="form-container">
    <form action="tarif_arama.php" method="GET">
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
        <button type="submit">Tarifleri Gör</button>
    </form>
</div>
</body>
</html>