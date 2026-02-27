-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Şub 2026, 13:35:11
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `giris_ekranı`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icecekler`
--

CREATE TABLE `icecekler` (
  `hastalik` varchar(100) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `isim` varchar(100) NOT NULL,
  `faydalar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `icecekler`
--

INSERT INTO `icecekler` (`hastalik`, `resim`, `isim`, `faydalar`) VALUES
('Kansızlık', 'Ispanaklısmoothie.jpg', 'Ispanaklı Smoothie', 'Demir emilimini artırır.'),
('Kansızlık', 'portakallıpancar.jpg', 'Portakallı Pancarlı Smoothie', 'C vitamini ve demir emilimi için ideal bir kombinasyondur.'),
('Kansızlık', 'isirganotucayi.jpg', 'Isırgan Otu Çayı', 'Kan dolaşımını destekler.'),
('Tiroid Hastalıkları', 'kabakcekirdekli.jpg', 'Kabak Çekirdekli Smoothie', 'Tiroid fonksiyonlarını destekler.'),
('Tiroid Hastalıkları', 'denizyosunucayı.jpg', 'Deniz Yosunu Çayı', 'Tiroid bezini uyarır.'),
('Tiroid Hastalıkları', 'limonlusu.jpg', 'Limonlu Su', 'Metabolizmayı düzenler.'),
(' Tip 2 Diyabet', 'tarcınlıyogurt.jpg', 'Tarçınlı Yoğurt İçeceği', 'Glikoz seviyelerini dengeler.'),
(' Tip 2 Diyabet', 'bademsütü.jpg', 'Badem Sütü', 'Düşük karbonhidrat içeriğiyle kan şekerini artırmaz.'),
(' Tip 2 Diyabet', 'limonlusu.jpg', 'Limonlu Su', 'Sindirimi kolaylaştırır ve kan şekerini dengelemeye yardımcı olur.'),
('Tip 2 Diyabet', 'tarcınlıyogurt.jpg', 'Tarçınlı Yoğurt İçeceği', ' Glikoz seviyelerini dengeler.'),
('Tip 2 Diyabet', 'bademsütü.jpg', 'Badem Sütü', 'Düşük karbonhidrat içeriğiyle kan şekerini artırmaz.'),
('Tip 2 Diyabet', 'limonlusu.jpg', 'Limonlu Su', 'Sindirimi kolaylaştırır ve kan şekerini dengelemeye yardımcı olur.'),
('Böbrek Taşı', 'limonsuyu.jpg', ' Limon Suyu', 'Taş oluşumunu engeller ve böbrekleri temizler.'),
('Böbrek Taşı', 'maydanozcayı.jpg', 'Maydanoz Çayı', 'İdrar söktürür ve böbrek fonksiyonlarını destekler.'),
('Böbrek Taşı', 'karpuzsuyu.jpg', ' Karpuz Suyu', 'Böbreklerdeki toksinleri temizler.'),
('Hipertansiyon', 'pancarsuyu.jpg', 'Pancar Suyu', 'Damar sağlığını destekler, tansiyonu düşürür.'),
('Hipertansiyon', 'sarımsakcayı.jpg', 'Sarımsak Çayı', 'Kan dolaşımını iyileştirir.'),
('Hipertansiyon', 'avokadosmoothie.jpg', 'Avokado Smoothie', 'Kalp sağlığını korur ve kan basıncını dengeler.'),
(' İrritabl Bağırsak Sendromu', 'nanelizencefil.jpg', 'Naneli Zencefil Çayı', 'Bağırsak kramplarını azaltır.'),
(' İrritabl Bağırsak Sendromu', 'probiyotikcay.jpg', 'Probiyotik Çay', 'Sindirimi iyileştirir.'),
(' İrritabl Bağırsak Sendromu', 'rezenecayı.jpg', 'Rezene Çayı', 'Gaz giderici etkisi vardır.'),
('Romatoid Artrit', 'zerdacallısüt.jpg', 'Zerdaçallı Süt', 'Eklem iltihabını hafifletir.'),
('Romatoid Artrit', 'somoncorbası.jpg', 'Somon Çorbası', 'Omega-3 içeriğiyle eklem ağrılarını azaltır.'),
('Romatoid Artrit', 'cevizsütü.jpg', 'Ceviz Sütü', 'Sağlıklı yağlar sağlar.'),
('Migren', 'zencefillilimonlu.jpg', 'Zencefilli Limonlu Çay', 'Baş ağrısını hafifletir ve mideyi rahatlatır.'),
('Migren', 'avokadosmoothie.jpg', 'Avokado Smothie', 'Kan dolaşımını destekler.'),
('Migren', 'papatyacayı.jpg', 'Papatya Çayı', 'Sakinleştirici etkisiyle baş ağrısını azaltır.'),
('Astım', 'elmalızencefil.jpg', 'Elmalı Zencefil Suyu', 'Solunum yollarını açar.'),
('Astım', 'balimon.jpg', 'Bal Limon Karışımı', 'Hava yollarını rahatlatır.'),
('Astım', 'yesilcay.jpg', 'Yeşil Çay', 'Antioksidanlarla iltihabı hafifletir.'),
('Osteoporoz', 'yogurtlusmoothie.jpg', 'Yoğurtlu Smoothie', ' Kalsiyum alımını artırır.'),
('Osteoporoz', 'bademsütü.jpg', 'Badem Sütü', 'Kemik sağlığını destekler.'),
('Osteoporoz', 'yesilsmoothie.jpg', 'Yeşil Smoothie', 'Vitamin ve minerallerle kemikleri güçlendirir.'),
(' Karaciğer Yağlanması', 'enginarcayı.jpg', 'Enginar Çayı', 'Karaciğeri destekler, yağlanmayı azaltır.'),
(' Karaciğer Yağlanması', 'limonlusu.jpg', 'Limonlu Su', ' Vücudu temizler, karaciğer fonksiyonlarını iyileştirir.'),
(' Karaciğer Yağlanması', 'zerdacallıayran.jpg', 'Zerdaçallı Ayran', ' Karaciğeri yeniler ve enflamasyonu azaltır.'),
('Kalp Hastalıkları', 'zerdacallılimonlu.jpg', 'Zerdeçallı Limonlu Su', 'Enflamasyonu azaltır, kan dolaşımını destekler.'),
('Kalp Hastalıkları', 'cevizsütü.jpg', 'Ceviz Sütü', 'Kalp sağlığını güçlendiren sağlıklı yağlar içerir.'),
('Kalp Hastalıkları', 'yesilsmoothie.jpg', 'Yeşil Smoothie', 'Vitamin ve minerallerle kalp sağlığını destekler.'),
('Kanser', 'yabanmersinli.jpg', 'Yaban Mersinli Smoothie', 'Bağışıklık güçlendirici etkisi vardır.'),
('Kanser', 'ketentohumlu.jpg', 'Keten Tohumlu Yoğurt İçeceği', 'Omega-3 ve lif içeriğiyle hücre yenilenmesini destekler.'),
('Kanser', 'yesilcay.jpg', 'Yeşil Çay', 'Antioksidan etkisiyle serbest radikalleri azaltır.'),
('Sinüzit', 'zencefillilimonlu.jpg', 'Zencefilli Limonlu Çay', 'Sinüslerin açılmasına yardımcı olur.'),
('Sinüzit', 'ballısu.jpg', 'Ballı Sıcak Su', 'Sinüslerdeki iltihabı hafifletir ve boğazı rahatlatır.'),
('Sinüzit', 'sarımsaklıcorba.jpg', 'Sarımsaklı Çorba', ' Solunum yollarını temizler ve sinüs basıncını azaltır.'),
('Depresyon', 'cevizsütü.jpg', 'Ceviz Sütü', 'Beyin sağlığını destekler.'),
('Depresyon', 'bittercikolatalı.jpg', 'Bitter Çikolatalı Sıcak İçecek', 'Serotonin üretimini destekler.'),
('Depresyon', 'yabanmersinli.jpg', 'Yaban Mersinli Smoothie', 'Stres azaltıcı etkisi vardır.'),
('Reflü', 'zencefilsuyu.jpg', 'Zencefil Çayı', 'Mide asidini dengeler ve mide bulantısını hafifletir.'),
('Reflü', 'limonlusu.jpg', 'Alkali Su', ' Mide asidini nötralize eder.'),
('Reflü', 'papatyacayı.jpg', 'Papatya Çayı', ' Mideyi sakinleştirir ve reflü belirtilerini hafifletir.'),
('Kabızlık', 'kurueriksuyu.jpg', 'Kuru Erik Suyu', 'Doğal laksatif etkisiyle bağırsakları temizler.'),
('Kabızlık', 'limonlusu.jpg', 'Limonlu Su', 'Sindirimi hızlandırır ve bağırsak hareketlerini destekler.'),
('Kabızlık', 'yesilsmoothie.jpg', 'Yeşil Smoothie', 'Lif açısından zengindir, sindirimi kolaylaştırır.'),
('Kolesterol', 'yesilcay.jpg', 'Yeşil Çay', 'LDL kolesterolü düşürür ve antioksidan sağlar.'),
('Kolesterol', 'avokadosmoothie.jpg', 'Avokado Smoothie', 'Sağlıklı yağlarla kolesterol seviyelerini iyileştirir.'),
('Kolesterol', 'zencefilsuyu.jpg', 'Zencefil Suyu', 'Kolesterolün düşmesine yardımcı olur.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `yas` int(11) NOT NULL,
  `hastalik` varchar(100) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`ad`, `soyad`, `yas`, `hastalik`, `kullanici_adi`, `sifre`) VALUES
('Ela', 'Güngör', 21, 'kansızlık', 'elagungor', 0),
('Ela', 'Güngör', 21, 'kansızlık', 'elagungor', 0),
('Ela', 'Güngör', 21, 'kansızlık', 'elagungor', 0),
('mert', 'doğan', 45, 'Reflü', 'mertdogn', 0),
('mert', 'doğan', 45, 'Reflü', 'mertdogn', 0),
('adem', 'solmaz', 25, 'kanser', 'ademslmz', 0),
('murat', 'çelik', 45, 'kansızlık', 'muratcelk', 0),
('ali', 'yılmaz', 45, 'Reflü', 'aliylmz', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tarifler`
--

CREATE TABLE `tarifler` (
  `hastalik` varchar(100) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `isim` varchar(100) NOT NULL,
  `faydası` text NOT NULL,
  `yemekismi` varchar(100) NOT NULL,
  `malzemeler` text NOT NULL,
  `yapılısı` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tarifler`
--

INSERT INTO `tarifler` (`hastalik`, `resim`, `isim`, `faydası`, `yemekismi`, `malzemeler`, `yapılısı`) VALUES
('Kansızlık', 'ıspanaklıköfte.jpg', 'Ispanak', 'Demir açısından zengin olduğu için kansızlık tedavisinde etkilidir.', 'Ispanaklı Köfte', '500 gr ıspanak\r\n250 gr kıyma\r\n1 adet soğan\r\n1 yumurta\r\n1 su bardağı galeta unu\r\n1 çay kaşığı tuz\r\n1 çay kaşığı karabiber\r\n1 çay kaşığı pul biber\r\n2 yemek kaşığı zeytinyağı (kızartmak için)', 'spanakları kaynar suda haşlayıp doğrayın.\r\nSoğanı rendeleyin.\r\nKıyma, yumurta, galeta unu, tuz, karabiber, ıspanak ve soğanı yoğurun.\r\nKarışımdan ceviz büyüklüğünde köfteler yapıp zeytinyağında kızartın.'),
('Böbrek Taşı', 'zerdecallısebzeli.jpg', 'Zerdeçal', 'Böbrek taşı oluşumunu engellemeye yardımcı olur.', 'Zerdeçallı Sebzeli Pilav', '1 su bardağı pirinç\r\n1 çay kaşığı zerdeçal\r\n1 adet havuç\r\n1 adet kabak\r\n2 yemek kaşığı zeytinyağı\r\n2 su bardağı sıcak su\r\nTuz ve karabiber', 'Pirinci yıkayıp süzün.\r\nHavuç ve kabağı doğrayıp zeytinyağında soteleyin.\r\nZerdeçalı ekleyip karıştırın, pirinci ilave edin.\r\nSıcak suyu ekleyip pilavı pişirin.\r\n'),
('Tiroid Hastalıkları', 'cevizlibrokoli.jpg', 'Ceviz', 'Tiroid fonksiyonlarını düzenler, sağlığı destekler.', 'Cevizli Brokoli Salatası', '1 küçük baş brokoli\r\n1/2 su bardağı ceviz içi\r\n1/2 su bardağı yoğurt\r\n1 diş sarımsak\r\n1 yemek kaşığı zeytinyağı\r\n1 tatlı kaşığı tuz\r\n1 tatlı kaşığı limon suyu', 'Brokoliyi buharda haşlayın.\r\nYoğurdu sarımsak, zeytinyağı, tuz ve limon suyu ile karıştırın.\r\nBrokoliyi bir kaseye alıp cevizleri serpin, yoğurtlu karışımla karıştırarak servis edin.\r\n'),
('Tip 2 Diyabet', 'knioalıdolmaa.jpg', 'Knioa', ' Kan şekerini düzenler, glisemik indeksi düşüktür.', 'Sebzeli Kinoa Dolması', '1 su bardağı kinoa\r\n3 adet kırmızı biber\r\n1 adet havuç\r\n1/2 su bardağı bezelye\r\n2 yemek kaşığı zeytinyağı\r\n1 tatlı kaşığı tuz\r\n1/2 çay kaşığı karabiber\r\n1 çay kaşığı kimyon', '1 çay bardağı pirinçYıkayıp süzdüğünüz kinoayı yoğurma kabına alın. İçine ince ince doğranmış soğan ve domatesi, kıymayı, salçayı ve baharatları ekleyip elinizle güzelce yoğurun. Son olarak kuş üzümünü de ekleyin.\r\nKapaklarını açıp yıkadığınız dolmalık biberlere harcı doldurun. Üstlerinde çok az boşluk kalmalı ve harcı çok fazla bastırmamalısınız. \r\nDoldurduğunuz biberleri tencereye dizin. \r\nBir kasede salça, sıcak su ve tuzu iyice çözeltin. Hazırladığınız sosu biberlerin üstüne dökün. Sosu dökerken biberlerin üstünü geçmemesine dikkat edin.\r\nSon olarak tohumundan ayrılmış biber saplarını biberlerin üstüne kapatın. Arzu ederseniz domatesle da kapatabilirsiniz. \r\nKapağınızı kapattığınız tencereyi ocağa alın. Su kaynayana kadar orta ateşte, ardından kısık ateşte biberler yumuşayıncaya kadar pişirin.'),
('Hipertansiyon', 'fırındasebzeli.jpg', 'Patates ve Havuç', 'Potasyum içerir, kan basıncını dengeler.', 'Fırında Sebzeli Tavuk', '4 adet tavuk but\r\n2 adet patates\r\n2 adet havuç\r\n2 yemek kaşığı zeytinyağı\r\n1 tatlı kaşığı kekik\r\n1 tatlı kaşığı tuz\r\n1 çay kaşığı karabiber\r\n1 çay kaşığı pul biber', ' Tavuk butları baharatlarla marine edin.\r\nPatates ve havuçları doğrayıp zeytinyağı ile karıştırın.\r\nTavukları sebzelerle fırın tepsisine yerleştirin.\r\n190°C fırında 40-45 dakika pişirin.'),
(' İrritabl Bağırsak Sendromu', 'muzlupirinc.jpg', 'Muz', 'Sindirimi düzenler, bağırsakları rahatlatır.', 'Muzlu Pirinç Puding', '1 su bardağı pirinç\r\n3 su bardağı süt\r\n1 adet muz\r\n2 yemek kaşığı bal\r\n1 çay kaşığı vanilya', 'Pirinci sütle pişirin.\r\nMuzları dilimleyin ve pudinge ekleyin.\r\nBal ve vanilyayı karıştırıp kaselere dökün.\r\nBuzdolabında soğutun, soğuk servis edin.\r\n'),
('Romatoid Artrit', 'mercimekcorbası.jpg', 'Zerdeçal', 'Anti-enflamatuar özellikleriyle ağrıları hafifletir.', 'Zerdeçallı Mercimek Çorbası', '1 su bardağı mercimek\r\n1 adet soğan\r\n1 çay kaşığı zerdeçal\r\n1 diş sarımsak\r\n2 yemek kaşığı zeytinyağı\r\n5 su bardağı su\r\nTuz ve karabiber', 'Soğanı doğrayıp zeytinyağında kavurun.\r\nMercimekleri, zerdeçalı ve sarımsağı ekleyin.\r\nSu ekleyip mercimekler yumuşayana kadar pişirin.\r\nBlenderdan geçirip sıcak servis edin.\r\n'),
('Migren', 'bademlitoplar.jpg', 'Badem', 'Badem, magnezyum bakımından zengindir ve migreni tetikleyen sinir gerilimini azaltmaya yardımcı olur.', 'Badem ve Muzlu Atıştırmalık Toplar', '1 su bardağı badem (öğütülmüş)\r\n1 adet olgun muz\r\n1 yemek kaşığı bal\r\n1 çay kaşığı vanilya özütü', 'Muzları bir çatal yardımıyla ezin.\r\nBadem, bal ve vanilya özütünü ekleyip yoğurun.\r\nKarışımdan küçük toplar yaparak buzdolabında 1 saat dinlendirin.\r\nAra öğün olarak tüketin.'),
('Astım', 'ballızencefil.jpg', 'Zencefil', 'Zencefil, hava yollarındaki enflamasyonu azaltabilir ve nefes almayı kolaylaştırabilir.', 'Ballı Zencefil Çayı', '1 tatlı kaşığı taze zencefil rendesi\r\n1 tatlı kaşığı bal\r\n1 su bardağı sıcak su\r\n1 dilim limon', 'Zencefili sıcak suya ekleyip 5 dakika demleyin.\r\nBal ve limon ekleyerek servis yapın.\r\nGünde bir kez tüketebilirsiniz.'),
('Osteoporoz', 'cup.jpg', 'Yoğurt', ' Yoğurt, kalsiyum ve D vitamini bakımından zengindir, kemik yoğunluğunu artırmaya yardımcı olur.', 'Meyveli Yoğurtlu Kup', '1 su bardağı yoğurt\r\n1/2 su bardağı yaban mersini\r\n1 yemek kaşığı bal\r\n1 yemek kaşığı ceviz içi', 'oğurdu bir kaseye alın.\r\nÜzerine yaban mersini, bal ve ceviz ekleyerek karıştırın.\r\nKemik sağlığını destekleyen bu tatlıyı ara öğünde tüketin.'),
(' Karaciğer Yağlanması', 'avokadosalatası.jpg', 'Avokado', 'Avokado, sağlıklı yağlar ve glutatyon içerir, karaciğerin toksinlerden arınmasına destek olur.', 'Avokado Salatası', '1 adet avokado (olgun)\r\n1 adet domates\r\n1/4 limon suyu\r\n1 yemek kaşığı zeytinyağı\r\nTuz ve karabiber', 'Avokadoyu dilimleyip domatesle karıştırın.\r\nÜzerine zeytinyağı, limon suyu, tuz ve karabiber ekleyip servis yapın.'),
('Kalp Hastalıkları', 'yulafkasesi.jpg', 'Yulaf', 'Yulaf, kötü kolesterolü (LDL) düşürmeye yardımcı olan beta-glukan içerir.', 'Yulaflı Meyve Kasesi', '1/2 su bardağı yulaf\r\n1/2 su bardağı badem sütü\r\n1/4 su bardağı çilek\r\n1 tatlı kaşığı bal', 'Yulafı badem sütünde pişirin.\r\nÜzerine çilek ve bal ekleyerek servis yapın.\r\n'),
('Kanser', 'brokolicorbası.jpg', 'Brokoli', 'Brokoli, güçlü antioksidanlar ve kanserle savaşan sulforafan içerir.', 'Brokoli Çorbası', '1 su bardağı brokoli\r\n1 küçük soğan\r\n1 diş sarımsak\r\n1 su bardağı sebze suyu\r\n1 tatlı kaşığı zeytinyağı', 'Soğan ve sarımsağı zeytinyağında soteleyin.\r\nBrokoli ve sebze suyunu ekleyip pişirin.\r\nBlender ile pürüzsüz hale getirip servis yapın.\r\n'),
('Sinüzit', 'nanelilimonata.jpg', 'Nane', 'Nane, sinüslerin açılmasını destekleyen mentol içerir.', 'Naneli Limonata', '1/2 demet taze nane\r\n2 adet limon suyu\r\n1 yemek kaşığı bal\r\n1 litre su', 'Nane yapraklarını ezerek suya ekleyin.\r\nLimon suyu ve balı karıştırarak soğuk servis yapın.'),
('Depresyon', 'bar.jpg', 'Ceviz', 'Ceviz, beyin sağlığı için önemli omega-3 yağ asitleri içerir.', 'Cevizli Enerji Barı', '1 su bardağı ceviz\r\n1 su bardağı hurma\r\n1/2 su bardağı yulaf\r\n1 tatlı kaşığı kakao', 'Malzemeleri blenderda karıştırın.\r\nKarışımı bir kaba yayıp buzdolabında sertleşene kadar bekletin.\r\nDilimleyerek tüketin.\r\n'),
('Reflü', 'havuclupilav.jpg', 'Pirinç', 'Pirinç, mideyi rahatlatıcı özelliğiyle reflü semptomlarını azaltabilir. Hafif ve düşük asitli bir besindir, sindirimi kolaydır.', 'Sebzeli Pirinç Pilavı', '1 su bardağı pirinç\r\n1,5 su bardağı su\r\n1 yemek kaşığı zeytinyağı\r\n1 küçük havuç (rendelenmiş)\r\n1 küçük kabak (rendelenmiş)\r\nBir tutam tuz', 'Pirinci iyice yıkayın ve süzün.\r\nZeytinyağını bir tencerede ısıtın, havuç ve kabağı birkaç dakika soteleyin.\r\nPirinci ekleyip birkaç dakika kavurun.\r\nSuyu ve tuzu ekleyip kaynamaya bırakın.\r\nSuyu çekene kadar kısık ateşte pişirin.\r\nPilavı demlendirdikten sonra servis yapın.'),
('Kabızlık', 'ketentohumlusmoothie.jpg', 'Keten Tohumu', 'Keten tohumu, bağırsakları düzenlemeye yardımcı olan yüksek lif içerir.', 'Keten Tohumlu Smoothie', '1 tatlı kaşığı keten tohumu\r\n1/2 su bardağı yoğurt\r\n1/2 su bardağı armut püresi\r\n1 çay kaşığı bal', 'Tüm malzemeleri blenderda karıştırın.\r\nAra öğün olarak tüketebilirsiniz.\r\n'),
('Kolesterol', 'enginarzeytinyagı.jpg', 'Sarımsak', 'Sarımsak, kötü kolesterol seviyelerini düşürmeye ve damar sağlığını desteklemeye yardımcı olur.', 'Sarımsaklı Zeytinyağlı Enginar', '4 adet enginar\r\n2 diş sarımsak\r\n2 yemek kaşığı zeytinyağı\r\n1/2 limon suyu', 'Sebzeleri doğrayıp hazırlayın.\r\nLimon suyu, un ve suyu karıştırarak sos yapın.\r\nTencerede sarımsağı zeytinyağında soteleyin. Sebzeleri ekleyip enginarları yerleştirin.\r\nSosu, tuz ve şekeri ekleyip orta ateşte 25-30 dakika pişirin.\r\nSoğuk veya ılık servis edin.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yiyecekler`
--

CREATE TABLE `yiyecekler` (
  `hastalik` varchar(100) NOT NULL,
  `resim` varchar(255) NOT NULL,
  `isim` varchar(100) NOT NULL,
  `faydalar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yiyecekler`
--

INSERT INTO `yiyecekler` (`hastalik`, `resim`, `isim`, `faydalar`) VALUES
('kansızlık', 'ıspanak.jpg', 'ıspanak', 'Demir içeriği yüksektir kan üretimini destekler.'),
('kansızlık', 'kurukayısı.jpg', 'Kuru Kayısı', 'Demir ve C vitamini içerir, kansızlığa iyi gelir.'),
('kansızlık', 'kırmızıet.jpg', 'Kırmızı Et', 'B12 vitamini ve yüksek biyoyararlanımlı demir kaynağıdır.'),
('Böbrek Taşı', 'limon.jpg', 'Limon', 'Böbrek taşlarının oluşumunu engelleyebilir.'),
('Böbrek Taşı', 'maydanoz.jpg', 'Maydanoz', 'Böbrek sağlığını destekler, idrar söktürücüdür.'),
('Böbrek Taşı', 'karpuz.jpg', 'Karpuz', 'Su oranı yüksek olup böbrekleri temizler.'),
('Tiroid Hastalıkları', 'iyotlutuz.jpg', 'İyotlu Tuz', 'Tiroid bezinin sağlıklı çalışmasını destekler.'),
('Tiroid Hastalıkları', 'denizyosunu.jpg', 'Deniz Yosunu', 'Zengin bir iyot kaynağıdır.'),
('Tiroid Hastalıkları', 'kabakcekirdegi.jpg', 'Kabak Çekirdegi', 'Tiroid fonksiyonlarını destekleyen çinko içerir.'),
('Tip 2 Diyabet', 'tarcın.jpg', 'Tarçın', 'Kan şekerini düzenler ve insülin duyarlılığını artırır.'),
('Tip 2 Diyabet', 'yulaf.jpg', 'Yulaf', ' Yavaş sindirilen karbonhidrat içerir, kan şekerini dengeler.'),
('Tip 2 Diyabet', 'badem.jpg', 'Badem', 'Sağlıklı yağlar ve düşük karbonhidrat içeriğiyle kan şekeri dalgalanmalarını önler. '),
('Hipertansiyon', 'pancar.jpg', 'Pancar', 'Kan damarlarını genişletir, tansiyonu düşürür.'),
('Hipertansiyon', 'sarmısak.jpg', 'Sarımsak', 'Kan basıncını düzenleyici allicin maddesi içerir.'),
('Hipertansiyon', 'avokado.jpg', 'Avokado', 'Potasyum açısından zengin olup tansiyonu dengeleyebilir.'),
(' İrritabl Bağırsak Sendromu', 'nane.jpg', 'Nane', 'Sindirim sistemini rahatlatır, gaz ve şişkinliği azaltır.'),
(' İrritabl Bağırsak Sendromu', 'zencefil.jpg', 'Zencefil', 'Bağırsak hareketlerini düzenler, mide bulantısını hafifletir. '),
(' İrritabl Bağırsak Sendromu', 'yogurt.jpg', 'Yoğurt', 'Bağırsak florasını düzenler.'),
('Romatoid Artrit', 'zerdacal.jpg', 'Zerdaçal', 'Güçlü anti-enflamatuar etkisiyle eklem ağrılarını azaltır.'),
('Romatoid Artrit', 'somon.jpg', 'Somon', 'Omega-3 yağ asitleriyle iltihabı önler. '),
('Romatoid Artrit', 'ceviz.jpg', 'Ceviz', 'Eklem sağlığını destekleyen sağlıklı yağlar içerir.'),
('Migren', 'badem.jpg', 'Badem', 'Magnezyum içerir, migren ataklarını önleyebilir.'),
('Migren', 'zencefil.jpg', 'Zencefil', 'Baş ağrısını ve mide bulantısını hafifletir.'),
('Migren', 'avokado.jpg', 'Avokado', 'Magnezyum ve potasyum açısından zengindir.'),
('Astım', 'elma.jpg', 'Elma', 'Solunum yollarını koruyan antioksidanlar içerir.'),
('Astım', 'balıkyagı.jpg', 'Balık Yağı', ' Omega-3 ile iltihaplanmayı azaltır, hava yollarını rahatlatır.'),
('Astım', 'bal.jpg', 'Bal', 'Boğazı yumuşatır ve öksürüğü hafifletir.'),
('Osteoporoz ', 'yogurt.jpg', 'Yoğurt', 'Kalsiyum ve probiyotik kaynağıdır.'),
('Osteoporoz ', 'brokoli.jpg', 'Brokoli', 'Kalsiyum ve K vitamini içerir, kemik sağlığını destekler.'),
('Osteoporoz ', 'sardalya.jpg', 'Sardalya', 'Kemik yoğunluğunu artıran D vitamini içerir.'),
(' Karaciğer Yağlanması', 'enginar.jpg', 'Enginar', 'Karaciğeri temizler ve yenilenmesini destekler.'),
(' Karaciğer Yağlanması', 'zerdacal.jpg', 'Zerdeçal', ' Karaciğer fonksiyonlarını iyileştirir.'),
(' Karaciğer Yağlanması', 'limon.jpg', 'Limon', ' Karaciğeri toksinlerden arındırır.'),
('Kalp Hastalıkları', 'somon.jpg', 'Somon', 'Omega-3 yağ asitleri kalp sağlığını korur.'),
('Kalp Hastalıkları', 'ceviz.jpg', 'Ceviz', 'Omega-3 yağ asitleri kalp sağlığını korur.'),
('Kalp Hastalıkları', 'yulaf.jpg', 'Yulaf', 'Omega-3 yağ asitleri kalp sağlığını korur.'),
('Kanser', 'brokoli.jpg', 'Brokoli', 'Güçlü antioksidanlar içerir, kanser hücrelerinin büyümesini engelleyebilir.'),
('Kanser', 'yabanmersini.jpg', 'Yaban Mersini', ' Hücre yenilenmesini destekler, bağışıklığı artırır.'),
('Kanser', 'ketentohumu.jpg', 'Keten Tohumu', 'Omega-3 yağ asitleriyle kansere karşı koruyucu etki gösterebilir.'),
('Sinüzit', 'zencefil.jpg', 'Zencefil', 'İltihaplanmayı azaltır ve sinüsleri rahatlatır.'),
('Sinüzit', 'bal.jpg', 'Bal', 'Antibakteriyel özellikleriyle enfeksiyonları hafifletir.'),
('Sinüzit', 'sarmısak.jpg', 'Sarmısak', 'Güçlü bir doğal antibiyotiktir, enfeksiyonları önler ve iyileştirir.'),
('Depresyon', 'ceviz.jpg', 'Ceviz', 'Omega-3 yağ asitleriyle beyin fonksiyonlarını destekler.'),
('Depresyon', 'bittercikolata.jpg', 'Bitter Çikolata', 'Serotonin seviyesini artırır.'),
('Depresyon', 'yabanmersini.jpg', 'Yaban Mersini', 'Antioksidanlarla sinir sistemini rahatlatır.'),
('Reflü', 'yulaf.jpg', 'Yulaf', 'Mide asidini emerek reflü belirtilerini azaltır.'),
('Reflü', 'muz.jpg', 'Muz', 'Asit nötralize edici özelliği ile mideyi rahatlatır.'),
('Reflü', 'zencefil.jpg', 'Zencefil', 'Antiinflamatuar etkisiyle mideyi korur ve sindirimi düzenler.'),
('Kabızlık', 'kuruerik.jpg', 'Kuru Erik', 'Yüksek lif içeriği ve doğal laksatif etkisiyle bağırsak hareketlerini artırır.'),
('Kabızlık', 'chiatohumu.jpg', 'Chia Tohumu', 'Suyla birleştiğinde jel kıvamına gelir, bağırsakları rahatlatır.'),
('Kabızlık', 'ıspanak.jpg', 'Ispanak', 'Sindirim sistemini çalıştıran lifler içerir.'),
('Kolesterol ', 'yulaf.jpg', 'Yulaf', 'Beta-glukan içerir, kolesterol seviyelerini düşürür.'),
('Kolesterol ', 'avokado.jpg', 'Avokado', 'Sağlıklı yağlar içerir, kötü kolesterolü azaltır.'),
('Kolesterol ', 'ceviz.jpg', 'Ceviz', 'Omega-3 yağ asitleriyle kolesterol seviyesini dengeler.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
