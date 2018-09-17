-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Eyl 2016, 12:35:26
-- Sunucu sürümü: 10.1.9-MariaDB
-- PHP Sürümü: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `veteranz`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `arac_id` int(11) NOT NULL,
  `arac_player` int(11) NOT NULL,
  `arac_model` int(11) NOT NULL,
  `arac_renk` int(11) NOT NULL,
  `arac_renk2` int(11) NOT NULL,
  `arac_teker` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `ID` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(129) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `registered_at` varchar(30) NOT NULL,
  `last_login` varchar(30) NOT NULL,
  `admin_level` int(11) NOT NULL,
  `anim_level` int(11) NOT NULL,
  `dj_level` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `Orgut` int(11) NOT NULL,
  `ORutbe` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `kills` int(11) NOT NULL,
  `deaths` int(11) NOT NULL,
  `ratio` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `muted` int(11) NOT NULL,
  `mute_time` int(11) NOT NULL,
  `jailed` int(11) NOT NULL,
  `jail_time` int(11) NOT NULL,
  `banned` int(11) NOT NULL,
  `userskin` int(11) NOT NULL,
  `usercolor` int(11) NOT NULL,
  `speed_control` int(11) NOT NULL,
  `jump_control` int(11) NOT NULL,
  `userx` float NOT NULL,
  `usery` float NOT NULL,
  `userz` float NOT NULL,
  `userint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orgutler`
--

CREATE TABLE `orgutler` (
  `ID` int(11) NOT NULL,
  `Isim` varchar(100) NOT NULL,
  `Tag` varchar(4) NOT NULL,
  `Renk` int(11) NOT NULL,
  `Kasa` int(11) NOT NULL,
  `Skin` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `EXP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `turflar`
--

CREATE TABLE `turflar` (
  `ID` int(11) NOT NULL,
  `Isim` varchar(100) NOT NULL,
  `Gelir` int(11) NOT NULL,
  `Sahip` int(11) NOT NULL,
  `MinX` float NOT NULL,
  `MinY` float NOT NULL,
  `MaxX` float NOT NULL,
  `MaxY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`arac_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `orgutler`
--
ALTER TABLE `orgutler`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `turflar`
--
ALTER TABLE `turflar`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `arac_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
