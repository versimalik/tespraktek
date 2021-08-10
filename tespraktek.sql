-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2021 at 01:01 PM
-- Server version: 10.3.29-MariaDB-0+deb10u1
-- PHP Version: 7.3.29-1+0~20210701.86+debian10~1.gbp7ad6eb

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tespraktek`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `idCabang` int(11) NOT NULL,
  `namaCabang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`idCabang`, `namaCabang`) VALUES
(1, 'Jakarta'),
(2, 'Bandung'),
(3, 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idSiswa` int(11) NOT NULL,
  `cabang` int(11) NOT NULL,
  `namaSiswa` varchar(32) NOT NULL,
  `jk` int(11) NOT NULL,
  `ttl` text NOT NULL,
  `noTelp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idSiswa`, `cabang`, `namaSiswa`, `jk`, `ttl`, `noTelp`, `alamat`, `username`) VALUES
(1, 2, 'Abdurrahman', 1, 'Jakarta, 10 Desember 2000', '08123456789', '\'Jl. Kemarin No.1\'', 'abd30'),
(2478, 3, 'Akbar', 1, 'Pemalang, 28 Desember 2000', '081384549516', '\'Kembangan Utara\'', 'akb19'),
(2479, 3, 'Akbir', 1, 'Jakarta, 10 Oktober 2002', '081384549446', '\'Kembangan Utara\'', 'akb23'),
(2480, 1, 'Alfie Mubarak', 1, 'Jakarta, 16 November 2000', '081384549436', '\'Kejayaan Dalam\'', 'alf12'),
(2481, 2, 'Alia Erwina', 0, 'Jakarta, 11 September 2000', '081384549449', '\'Jl. Jembatan Besi IX\'', 'ali22'),
(2482, 2, 'Amelia Nur Anggraini', 0, 'Jakarta, 20 Desember 2000', '081384549517', '\'Jl. Lodan Dalam I\'', 'ame17'),
(2483, 2, 'Anugrah Agustina', 0, 'Jakarta, 10 Maret 2000', '081384549518', '\'Jl. Mangga Besar IV K / 23\'', 'anu11'),
(2484, 1, 'Ardian Tri Putra', 1, 'Jakarta, 24 Juli 2003', '081384549491', '\'Jl. Cideng Barat Dalam 12\'', 'ard30'),
(2485, 3, 'Auralia Jacinta', 0, 'Jakarta, 20 Juni 2000', '081384549519', '\'Jl. Petojo Selatan II/36 A\'', 'aur14'),
(2486, 2, 'Bima Dwiansyah Hanazar', 1, 'JAKARTA, 05 Februari 2005', '081384549495', '\'Jl. Ketapang Utara I RT. 002/07 Jakbar\'', 'bim16'),
(2487, 3, 'Chay Syah Nuraeni', 0, 'JAKARTA, 15 NOVEMBER 2000', '081384549502', '\'Jl. Mangga Besar XIII\'', 'cha16'),
(2488, 2, 'Dede Saputra', 1, 'Jakarta, 15 September 2000', '081384549430', '\'Jl. Taman Sari 1C/26\'', 'ded21'),
(2489, 2, 'Delagustina', 0, 'Jakarta, 18 Februari 2000', '081384549496', '\'Dk. Kalikemong\'', 'del13'),
(2490, 2, 'Denis Ferdian', 1, 'Jakarta, 22 Mei 2000', '081384549439', '\'Jl.Kngkit IV/20\'', 'den25'),
(2491, 3, 'Eka Febrian', 1, 'JAKARTA, 12 Februari 2005', '081384549455', '\'Jl.Petojo Enclek\'', 'eka25'),
(2492, 1, 'Fadiya Nurul Fatin', 0, 'Magelang, 06 November 2000', '0', '\'Jl Terate IV No 14 C\'', 'fad27'),
(2493, 1, 'Fahmi Riyandinata', 1, 'Jakarta, 15 September 2000', '081384549521', '\'Jl Duri Raya No.25\'', 'fah25'),
(2494, 2, 'Fajri Dwi Maulana', 1, 'Bogor, 12 Juli 2003', '081384549522', '\'Jl Cideng Timur 22\'', 'faj21'),
(2495, 2, 'Jihan', 0, 'Jakarta, 28 Desember 2001', '081384549442', '\'-\'', 'jih11'),
(2496, 3, 'Kafka Nabil Islami', 1, 'Jakarta, 19 November 2000', '081384549505', '\'Jl. Budi Rahayu III\'', 'kaf20'),
(2497, 3, 'Kaysa Aura Shakila', 0, 'Pemalang, 21 Juni 2000', '081384549450', '\'Jl. Raya Duri Gg. Y No.19\'', 'kay14'),
(2498, 3, 'Lulu Wahyudi', 1, 'Jakarta, 26 Mei 2000', '081384549489', '\'Krendang Pulo No. 8\'', 'lul19'),
(2499, 2, 'Marsha Nursyifa', 0, 'Jakarta, 29 Februari 2000', '081384549445', '\'Jl. Petojo Selatan IV No 28\'', 'mar21'),
(2501, 1, 'Mohamad Ihsan', 1, 'Jakarta, 29 Februari 2000', '081384549488', '\'Jl. Kebun Jeruk XIV\'', 'moh22'),
(2502, 3, 'Muhamad Rival Al Fahri', 1, 'Jakarta, 11 Oktober 2000', '081384549529', '\'-\'', 'muh13'),
(2503, 1, 'Muhammad Athfal Asmara Dhany', 1, 'Jakarta, 11 Oktober 2000', '081384549451', '\'Dusun III\'', 'muh12'),
(2504, 2, 'Muhammad Fathir', 1, 'Jakarta, 15 Desember 2001 ', '081384549501', '\'Jl.Mangga Besar IVu\'', 'muh22'),
(2505, 1, 'Muhammad Hafiz Muharrom', 1, 'Jakarta, 08 November 2000', '081384549528', '\'Jln. Terate VII No. 14\'', 'muh23'),
(2507, 1, 'Mutiara Dewi', 0, 'Jakarta, 14 Maret 2003', '081384549421', '\'Jl. A Gg III RT 001 RW. 004 Karang Anyar\'', 'mut11'),
(2508, 1, 'Nabila Natasya', 0, 'Jakarta, 2 November 2001', '081384549456', '\'Jl. Kesederhanaan\'', 'nab13'),
(2509, 2, 'Nelson Gerald Wijaya', 1, 'Jakarta, 28 Juli 2002', '081384549429', '\'Jl.Kebun Jeruk XVII Dlm\'', 'nel26'),
(2510, 2, 'Nuri Zahra Firdausi', 0, 'Jakarta, 4 Desember 2001', '081384549473', '\'Sijuk Gang Bhineka\'', 'nur24'),
(2511, 3, 'Raisyah Zahra', 0, 'Jakarta, 26 November 2001', '081384549487', '\'Jl Hanura Raya No.22\'', 'rai26'),
(2512, 3, 'Rama Bagus Prakasa', 1, 'Jakarta, 23 Desember 2001', '081384549462', '\'Jl.Mangga Besar IV.P/41\'', 'ram25'),
(2513, 1, 'Renata Elfitria', 0, 'Jakarta, 19 Desember 2001', '081384549426', '\'Jl. Angke Barat\'', 'ren25'),
(2514, 2, 'Reyfall Hanzalah Rolandsyah', 1, 'Jakarta, 07 Juli 2002', '081384549477', '\'Jl. Keagungan\'', 'rey29'),
(2515, 1, 'Rivana Larasati', 0, 'Jakarta, 31 Desember 2013', '081384549461', '\'Jl. Kp. Jawa Keb. Sayur Gg. V No. 6\'', 'riv21'),
(2516, 1, 'Romario Hambali', 1, 'Jakarta, 11 November 2001', '081384549530', '\'Jl. Ir H Juanda I/8.A\'', 'rom12'),
(2517, 1, 'Saskia Hanifah', 0, 'Jakarta, 15 Oktober 2001', '081384549485', '\'Jl.Lautze Dalam / 9\'', 'sas26'),
(2518, 2, 'Sheeza Aura Chanda', 0, 'Depok, 01 November 2001', '081384549531', '\'Jl. Petojo Enclek IV / 16\'', 'she20'),
(2519, 3, 'Syabila Marizky', 0, 'Jakarta, 06 Agustus 2001', '081384549468', '\'Jl Petojo Selatan I No.4 Blk\'', 'sya19'),
(2520, 1, 'Syauqi Akifur Rahman', 1, 'Jakarta, 02 April 2001 ', '081384549420', '\'Jl Pembangunan V No.9\'', 'sya20'),
(2521, 3, 'Tina Apriana', 0, 'Jakarta, 22 Juli 2001', '081384549535', '\'Jl. Kerajinan Dalam 15\'', 'tin19'),
(2522, 2, 'Tirza Aurellia', 0, 'Jakarta, 18 Januari 2001', '081384549469', '\'Tanah Sereal XVI\'', 'tir11'),
(2523, 2, 'Tsyabilla Nahda Chealsea', 0, 'Jakarta, 08 Januari 2001', '081384549428', '\'Jln Laksana B IV No 259\'', 'tsy17'),
(2524, 3, 'Tubagus Satria Pratama', 1, 'Jakarta, 05 April 2001', '081384549423', '\'Jl. Petojo Selatan III/21\'', 'tub18'),
(2525, 1, 'Umi Nayla Hidayah', 0, 'Tanggerang, 18 Desember 2001', '081384549537', '\'Jl.Mangga Besar\'', 'umi28'),
(2526, 2, 'Uswatun Hasanah', 0, 'Jakarta, 29 Desember 2001', '081384549482', '\'-\'', 'usw29'),
(2527, 2, 'Zafira Alfiah Rachman', 0, 'Palu, 19 Januari 2001', '081384549486', '\'Jl. Duri Baru\'', 'zaf27'),
(2528, 2, 'Adam Ahmad Fatihah', 1, 'Jakarta, 12 Oktober 2001', '081384554284', '\'Jl.Gudang Areng\'', 'ada14'),
(2530, 2, 'Aji Budiawan', 1, 'Jakarta, 12 April 2003', '081384554287', '\'Jlduri B Gg.III/15\'', 'aji20'),
(2531, 2, 'Al Ikhlas Halim', 1, 'Jakarta, 9 Maret 2002', '081384554289', '\'Kp Duri Dalam No 11\'', 'al 27'),
(2532, 3, 'Alviansyah', 1, 'Jakarta, 29 September 2001', '081384554290', '\'Rsb Karang Anyar Blok C IV\'', 'alv28'),
(2533, 1, 'Arum Kusumandari', 0, 'Purbalingga, 03 Januari 2001', '081384554291', '\'Jl. Petojo Sebangan I / 34\'', 'aru16'),
(2534, 3, 'Bunga Gita Nasuha', 0, 'Jakarta, 28 Oktober 2001', '081384554293', '\'Jl. Kesederhanaan Dalam\'', 'bun28'),
(2535, 3, 'Chelsea Laudya Sandra', 0, 'Jakarta, 23 Oktober 2001', '081384554294', '\'Jl. A Gang:A-III No:16\'', 'che15'),
(2536, 3, 'Daffa Al Yanhar', 1, 'Jakarta, 13 November 2001', '081384554295', '\'Jl. Petojo VIy II Dlm No.31\'', 'daf12'),
(2537, 2, 'Dalia Sharliz Raihana', 0, 'Jakarta, 03 Juli 2001', '081384554296', '\'Jl. Ketentraman\'', 'dal27'),
(2538, 3, 'Destia Nur Anggraini', 0, 'Jakarta, 9 Juli 2001', '081384554298', '\'Kebon Jeruk XVI / 200\'', 'des18'),
(2539, 1, 'Dirgantara', 1, 'Jakarta, 02 Oktober 2001', '081384554299', '\'Krendang Timur III\'', 'dir28'),
(2540, 1, 'Dizky Arya Saputra', 1, 'JAKARTA, 19 OKTOBER 2002', '081384554301', '\'Keutamaan Dalam No.26\'', 'diz28'),
(2541, 2, 'Fahri Alhasan Ramadani', 1, 'Jakarta, 16 September 2001', '081384554304', '\'Jembatan Besi\'', 'fah21'),
(2542, 1, 'Fahri Khairul Zahran', 1, 'Jakarta, 26 Februari 2001', '081384554306', '\'Jl. Batu III\'', 'fah22'),
(2543, 2, 'Ilham Putra Ramadhan', 1, 'Pekanbaru, 19 Mei 2001', '081384554307', '\'Jl. Kp. Jawa Malang No. 10\'', 'ilh14'),
(2544, 1, 'Jenni Febriola Kossoh', 0, 'Jakarta, 9 Maret 2001', '081384554308', '\'Jl. D Gg III No. 7B\'', 'jen21'),
(2545, 2, 'Khaluna Amira', 0, 'Jakarta, 9 November 2001', '081384554310', '\'Jalan Angke Barat\'', 'kha14'),
(2546, 3, 'Meisya Aurora Malika', 0, 'Jakarta, 16 November 2001', '081384554311', '\'Jl. Keadilan Dalam II\'', 'mei25'),
(2547, 3, 'Melati Septianti', 0, 'Jakarta, 06 Januari 2002', '081384554312', '\'Jl. Petojo Enclek XIV/39 B\'', 'mel19'),
(2548, 3, 'Moh. Rian Dwi Ardiansyah', 1, 'Jakarta, 03 September 2001', '081384554313', '\'Balaradin\'', 'moh26'),
(2549, 1, 'Mohammad Danu Fakhar Fahmi', 1, 'Jakarta, 5 Agustus 2001', '081384554314', '\'Gg Gerindo V\'', 'moh12'),
(2550, 1, 'Muammar Arsyilah', 0, 'Cirebon, 24 November 2001', '081384554317', '\'Jl Tanah Sereal Gg D II / 25\'', 'mua21'),
(2551, 1, 'Muhammad Agus Adidtya', 1, 'Jakarta, 3 Januari 2001', '081384554318', '\'Pembangunan I Dalam No. 48 A\'', 'muh12'),
(2552, 2, 'Muhammad Javier Afadilah', 1, 'Jakarta, 09 Oktober 2001', '081384554319', '\'Jl. A Gg. VIII Karang Anyar\'', 'muh24'),
(2553, 1, 'Muhammad Rafif', 1, 'Jakarta, 30 Oktober 2001', '081384554321', '\'Jl. Kesederhanaan Dalam\'', 'muh12'),
(2554, 2, 'Muhammad Rino Subastian', 1, 'Jakarta, 13 November 2001', '081384554323', '\'Jl.A. Ujung Gg.XII. Kr.Anyar\'', 'muh17'),
(2555, 3, 'Muhammad Solahuddin', 1, 'Jakarta, 5 Desember 2001', '081384554324', '\'Jl. Luar Batang 1 No7\'', 'muh14'),
(2556, 3, 'Nabil Faiz Athallah', 1, 'Jakarta, 22 November 2002', '081384554325', '\'-\'', 'nab29'),
(2557, 2, 'Nabilla Putri', 0, 'Jakarta, 1 Desember 2001', '081384554326', '\'Jln. Kp. Duri Barat No.13\'', 'nab11'),
(2558, 1, 'Nadya Natasya Salsabilah', 0, 'Ciamis, 20 April 2001', '081384554327', '\'-\'', 'nad12'),
(2559, 2, 'Najwa Meylina Putri', 0, 'Jakarta, 20 September 2001', '081384554329', '\'Jl Jamblng III/A.3\'', 'naj14'),
(2560, 3, 'Naura Putri Syahrani', 0, 'Jakarta, 10 Desember 2001', '081384554330', '\'-\'', 'nau15'),
(2561, 2, 'Nazwa Zahratul Ismi', 0, 'Jakarta, 24 Februari 2001', '081384554331', '\'Jl. Kesederhanaan Dalam\'', 'naz19'),
(2562, 3, 'Nur Aini', 0, 'Jakarta, 5 September 2001', '081384554332', '\'Jl. Kerajinan Dalam No. 15\'', 'nur23'),
(2563, 1, 'Nuriel Akbar Putra', 1, 'Jakarta, 23 Maret 2001 ', '081384554335', '\'Jl. Petojo Utara II No. 175\'', 'nur17'),
(2565, 2, 'Raden Ghanesa Satria Wardaya', 1, 'Jakarta, 9 Juni 2001', '081384554339', '\'-\'', 'rad29'),
(2566, 2, 'Raka Nur Ardiansyah', 1, 'Jakarta, 09 Juni 2001', '081384554340', '\'Jembatan Balok II\'', 'rak25'),
(2567, 1, 'Regina Cahyani Ayunaswar', 0, 'Jakarta, 21 Desember 2001', '081384554341', '\'Jembatan Besi\'', 'reg26'),
(2568, 2, 'Rendi Aryanto', 1, 'Jakarta, 26 Oktober 2000', '081384554344', '\'Jl. Krukut Lio No. 17 RT 001 RW 003\'', 'ren17'),
(2569, 1, 'Rizki Pratama', 1, 'Jakarta, 21 April 2001', '081384554345', '\'Sawah Lio Raya\'', 'riz12'),
(2570, 3, 'Rizky Fahrezi Chandrawinata', 1, 'Jakarta, 17 Juni 2002', '081384554349', '\'Jl. A Gg II\'', 'riz25'),
(2571, 1, 'Satria Mahardika Sukendar', 1, 'Jakarta, 18 Desember 2001', '081384554350', '\'Jl Thalib II No.10 B\'', 'sat27'),
(2572, 3, 'Sayyida Nafissa', 0, 'Jakarta, 29 Agustus 2001', '081384554352', '\'-\'', 'say15'),
(2573, 2, 'Siti Syalima', 0, 'JAKARTA, 14 MARET 2002', '081384554354', '\'Jl. Pembangunan V No 44\'', 'sit12'),
(2574, 1, 'Stefany Octaviola', 0, 'Jakarta, 13 Agustus 2001', '081384554356', '\'Jl. Tanah Sereal\'', 'ste23'),
(2575, 2, 'Syifa Ramadhani', 0, 'Banyumas, 30 Juli 2001', '081384554358', '\'Jl Krendang Timur\'', 'syi17'),
(2576, 1, 'Viona Citra Santika', 0, 'Jakarta, 09 September 2001', '081384554359', '\'Jln Lautze Dalam No 5\'', 'vio27'),
(2577, 3, 'Viona Putri Yanwar', 0, 'Jakarta, 9 Oktober 2001', '081384554360', '\'Jl.Petojo Selatan III/I4 Blk\'', 'vio18'),
(2578, 1, 'Yuda Kurniawan Karim', 1, 'Jakarta, 19 Oktober 2001', '081384554361', '\'Tomang Banjir Kanal No.29\'', 'yud24'),
(2579, 2, 'Yudistira Januar Wahyuni', 1, 'Jakarta, 28 Desember 2001', '081384554362', '\'Jl Bengawan No 21\'', 'yud16'),
(2580, 2, 'Adrian Satria', 1, 'Jakarta, 08 Januari 2002', '081384554366', '\'Ketapang Utara I No.7\'', 'adr18'),
(2581, 3, 'Aisyah Meidina Darman', 0, 'Pemalang, 23 Juli 2001', '081384554371', '\'Jl. Tanah Abang I No 19\'', 'ais15'),
(2582, 2, 'Ananda Khairul Dafa', 1, 'Jakarta, 21 Agustus 2001', '081384554375', '\'Lodan Dalam II C\'', 'ana17'),
(2583, 3, 'Arsya Saqinah Dearmawan', 0, 'Jakarta, 03 Januari 2002', '081384554376', '\'Betet Dalam\'', 'ars17'),
(2584, 1, 'Brilianno Mulyo', 1, 'Jakarta, 20 November 2001', '081384554378', '\'Jl. Mangga Besar IV P\'', 'bri28'),
(2585, 2, 'Chika Nur Aprilliana', 0, 'Jakarta, 14 Oktober 2002', '081384554379', '\'Jl. A Gg III No 10 B\'', 'chi17'),
(2586, 1, 'Danu Ega Irwanto', 1, 'Jakarta, 31 Januari 2014', '081384554380', '\'Kerajinan Dalam\'', 'dan14'),
(2587, 2, 'Delly Farel Muhammad', 1, 'Jakarta, 7 Desember 2001', '081384554381', '\'Jl. Kartini X-B Dalam\'', 'del28'),
(2588, 1, 'Deriel Akmal A. G', 1, 'Jakarta, 12 September 2002 ', '081384554382', '\'-\'', 'der21'),
(2589, 1, 'Desy Kurnia Hilmayanti', 0, 'Jakarta, 07 Desember 2001', '081384554383', '\'Jl Petojo Barat VII No.37\'', 'des21'),
(2590, 1, 'Dimas Saputra', 1, 'Tegal, 28 Maret 2001', '081384554384', '\'Jl. Mangga Besar XIII\'', 'dim20'),
(2591, 3, 'Elsya Diana Putri', 0, 'Tegal, 05 November 2001', '081384554386', '\'Pembangunan V/44 Blk\'', 'els26'),
(2592, 2, 'Fahra Maulidya', 0, 'Jakarta, 19 Juli 2001', '081384554387', '\'Jl. A Gg. XII\'', 'fah23'),
(2593, 1, 'Georgean Frenianda Pasumain', 1, 'Jakarta, 07 Desember 2001', '081384554391', '\'Pembangunan IV/22 D\'', 'geo20'),
(2594, 1, 'Gita Damayanti', 0, 'Jakarta, 14 September 2002', '081384554393', '\'Jl.Mangga Besar\'', 'git28'),
(2595, 2, 'Guntur Sadewo', 1, 'Jakarta, 16 Agustus 2001', '081384554394', '\'Kamp Muka\'', 'gun29'),
(2596, 2, 'Haickal Putra Pratama', 1, 'Semangus, 18 Juni 2003', '081384554395', '\'Jln Lautze Dalam No 5\'', 'hai30'),
(2597, 3, 'Ibnu Aqdam Awaluddin', 1, 'Bandung, 15 Februari 2001', '081384554396', '\'Jl.Kebon.Jeruk\'', 'ibn20'),
(2598, 3, 'Intan Nur Amelia', 0, 'JAKARTA, 17 DESEMBER 2001', '081384554397', '\'Jl.Thalib II Dalam No.16\'', 'int13'),
(2599, 2, 'Jimadul Bilad', 1, 'Bogor, 24 September 2001', '081384554399', '\'Jl. Kingkit VIII/1\'', 'jim29'),
(2600, 3, 'Khairunnisa Salsabila', 0, 'Jakarta, 30 Juni 2001', '081384554404', '\'Jln. Kp. Duri Barat\'', 'kha30'),
(2601, 3, 'Marini Daisy Liawaty', 0, 'Jakarta, 25 April 2001', '081384554406', '\'Jl Petojo Utara II No.127\'', 'mar26'),
(2602, 2, 'Muhamad Ikmal', 1, 'Jakarta, 3 Juli 2001', '081384554407', '\'Jln A Gg III No 10 C\'', 'muh29'),
(2603, 3, 'Muhammad Akhdan Kusuma', 1, 'Jakarta, 24 Mei 2001', '081384554409', '\'Jl. Lodan Dalam IIb\'', 'muh16'),
(2604, 1, 'Muhammad Farel Pratama', 1, 'Jakarta, 2 Oktober 2001', '081384554413', '\'Pembangunan III Dalam No. 28\'', 'muh11'),
(2605, 3, 'Muhammad Rudiansyah Pratama', 1, 'Jakarta, 18 November 2001', '081384554415', '\'Jl. Rsb Karang Anyar A3/3 RT 003/012 Karang Anyar\'', 'muh28'),
(2606, 3, 'Nabil Rivaldi', 1, 'Jakarta, 12 Agustus 2001', '081384554419', '\'Jl. Batu Ceper VII/23.C\'', 'nab14'),
(2607, 2, 'Nayla Cahya Putri', 0, 'Jakarta, 11 Mei 2001', '081384554426', '\'Jl Petojo Selatan V/8\'', 'nay21'),
(2608, 3, 'Novia Purnavira', 0, 'Jakarta, 07 Februari 2002', '081384554427', '\'Kesederhanaan\'', 'nov17'),
(2640, 3, 'Aulia Putri Felizianty', 0, 'Jakarta, 05 Agustus 2001', '081384554507', '\'Jl. Kebon Jahe Kober VI / 46\'', 'aul20'),
(2641, 3, 'Azzura Meisya Wahyudi', 0, 'Jakarta, 13 Agustus 2001', '081384554509', '\'Jl. Gg Betet Dalam\'', 'azz29'),
(2642, 1, 'Banyu Prasetyo Setiadi', 1, 'Jakarta, 15 Agustus 2001', '081384554510', '\'Jl. A Gg VI No. 2A\'', 'ban17'),
(2643, 1, 'Dafa Darmawan', 1, 'Jakarta, 18 Juli 2001', '081384554512', '\'Jl. Kingkit V/16\'', 'daf26'),
(2644, 2, 'Daka Aisyah', 0, 'Jakarta, 4 November 2001', '081384554513', '\'Jl. P JayakaRTa\'', 'dak18'),
(2645, 3, 'Daris Adi Wardana', 1, 'Jakarta, 16 Juli 2001', '081384554515', '\'Jl. Mangga Besar IV S\'', 'dar26'),
(2646, 1, 'Dede Prihartini', 0, 'Jakarta, 09 Juli 2002', '081384554517', '\'Jl. Mangga Besar IV U/33\'', 'ded17'),
(2647, 2, 'Dzaky Buya Caesar', 1, 'JAKARTA, 10 MARET 2003', '081384554518', '\'Tomang Banjir Kanal\'', 'dza27'),
(2648, 3, 'Emilia Clara Putri', 0, 'Jakarta, 27 November 2002', '081384554519', '\'Jl. Setia Kawan V A/18\'', 'emi26'),
(2649, 1, 'Hafifa Maysuri', 0, 'Jakarta, 24 Oktober 2003', '081384554521', '\'Jl. Kebon Jahe Kober Gg V / 14\'', 'haf11'),
(2650, 3, 'Hanafiah Prestiany', 0, 'Jakarta, 14 Juni 2002', '081384554526', '\'Ketapang Utara I\'', 'han19'),
(2651, 1, 'Jasmin Nayla Putri', 0, 'Lembah Subur, 05 Juli 2002', '081384554527', '\'Jl. Mangga Besar IV P\'', 'jas27'),
(2652, 1, 'Jihan Atika Zahra', 0, 'Jakarta, 10 Desember 2002', '081384554528', '\'Kp Duri Dalam\'', 'jih13'),
(2653, 3, 'Keisya Amalia Amanda', 0, 'Jakarta, 10 Desember 2000', '081384554531', '\'Jln.Kebon Jeruk Xv Dlm No.5\'', 'kei18'),
(2654, 3, 'Kirana Anjani Lintang Saxti', 0, 'Pemalang, 28 Desember 2000', '081384554533', '\'Jl. Duri B-II No.17\'', 'kir26'),
(2655, 2, 'Lana Naviska', 0, 'Jakarta, 10 Oktober 2002', '081384554535', '\'Petojo Utara I No. 15G\'', 'lan22'),
(2656, 3, 'Marsella Anjelina Putri', 0, 'Jakarta, 16 November 2000', '081384554537', '\'Jl. D VIII No.10\'', 'mar11'),
(2657, 1, 'Maya Estianti', 0, 'Jakarta, 11 September 2000', '081384554540', '\'Jl.Mangga Besar\'', 'may15'),
(2658, 1, 'Muhamad Fauzi', 1, 'Jakarta, 20 Desember 2000', '081384554541', '\'Jl. Mangga Besar IV S\'', 'muh26'),
(2659, 1, 'Muhammad Fahlevi', 1, 'Jakarta, 10 Maret 2000', '081384554543', '\'Jl. Mangga Besar IV P No.11 F\'', 'muh21'),
(2660, 1, 'Muhammad Ghaza Elgifazi', 1, 'Jakarta, 24 Juli 2003', '081384554544', '\'Jl.Duri Barat Mesjid No.1\'', 'muh21'),
(2661, 3, 'Muhammad Hafiz Alhafidl', 1, 'Jakarta, 20 Juni 2000', '081384554549', '\'Jl. Krukut Lio\'', 'muh30'),
(2662, 2, 'Muhammad Nabil Mufawwidh Ilallah', 1, 'JAKARTA, 05 Februari 2005', '081384554550', '\'Jl Lautze Dalam\'', 'muh25'),
(2663, 2, 'Muhammad Raihan Kurniawan', 1, 'JAKARTA, 15 NOVEMBER 2000', '081384554551', '\'Pembangunan I Dalam\'', 'muh27'),
(2664, 3, 'Muhammad Renza Ramdani', 1, 'Jakarta, 15 September 2000', '081384554552', '\'Jl Kebon Jeruk Xv Dlm\'', 'muh17'),
(2665, 1, 'Muhammad Revand Fahrezi', 1, 'Jakarta, 18 Februari 2000', '081384554556', '\'Kp. Duri Dalam No. 27\'', 'muh24'),
(2666, 2, 'Najwa Alya', 0, 'Jakarta, 22 Mei 2000', '081384554557', '\'Jln. Setia Kawan V-A\'', 'naj26'),
(2667, 3, 'Nasya Novianti', 0, 'JAKARTA, 12 Februari 2005', '081384554558', '\'Jl. Jembatan V Gg Cahaya No 51\'', 'nas23'),
(2668, 2, 'Noval Febriyan', 1, 'Magelang, 06 November 2000', '081384554562', '\'-\'', 'nov14'),
(2669, 2, 'Nur Fadillah Ramadhan', 1, 'Jakarta, 15 September 2000', '081384554563', '\'Jl. Kesederhanaan Dlm\'', 'nur26'),
(2670, 2, 'Putri Zaqiah Darmawan', 0, 'Bogor, 12 Juli 2003', '081384554564', '\'Jalan Angke Barat, No. 9\'', 'put22'),
(2671, 1, 'Rabil Putra Hardiansyah', 1, 'Jakarta, 28 Desember 2001', '081384554568', '\'Jl. Mangga Besar IV K\'', 'rab22'),
(2672, 3, 'Raisyah Ayudia', 0, 'Jakarta, 19 November 2000', '081384554569', '\'Jl. Kebon Jeruk XII No. 27\'', 'rai16'),
(2673, 2, 'Rakha Islami Pramuda', 1, 'Pemalang, 21 Juni 2000', '081384554570', '\'Jl. Tanah Abang IV Dalam No. 4\'', 'rak12'),
(2674, 3, 'Rama Budi Syafutra', 1, 'Jakarta, 26 Mei 2000', '081384554571', '\'Jl. Mangga Besar II / 29\'', 'ram20'),
(2675, 1, 'Reytia Asmaniar', 0, 'Jakarta, 29 Februari 2000', '081384554573', '\'Jl.Keamanan Dlm II\'', 'rey16'),
(2676, 3, 'Rifky Mulyadi', 1, 'Jakarta, 27 Agustus 2000', '081384554574', '\'Jl.Mangga Besar IVa No.25H\'', 'rif20'),
(2677, 2, 'Riviera Ashley Vinardi Kafin', 0, 'Jakarta, 29 Februari 2000', '081384554576', '\'Jl. Kaji No. 8\'', 'riv26'),
(2678, 1, 'Sagita Adhania Zahra', 0, 'Jakarta, 11 Oktober 2000', '081384554578', '\'Jalan Tambora Masjid\'', 'sag11'),
(2679, 1, 'Syarifah Syahrotus Sita', 0, 'Jakarta, 11 Oktober 2000', '081384554580', '\'Jl.Mangga Besar IV K\'', 'sya22'),
(2680, 2, 'Tsani Agung Darojatun', 1, 'Jakarta, 15 Desember 2001 ', '081384554581', '\'Jl. Duri Baru\'', 'tsa20'),
(2681, 1, 'Zazkia Varis', 0, 'Jakarta, 08 November 2000', '081384554582', '\'Jl. Durian Dalam No. 12\'', 'zaz14'),
(2682, 1, 'Afi Ati Kania', 0, 'SAMPANG, 01 MARET 2000', '081384554586', '\'Jl.Tambora III Gg. IV\'', 'afi28'),
(2683, 3, 'Albani Fathir Syah', 1, 'Jakarta, 14 Maret 2003', '0021 93340363', '\'Jl. Gunung Sahari 9 No.10\'', 'alb23'),
(2684, 2, 'Alex Sonnath Hammamainth', 0, 'Jakarta, 2 November 2001', '081384554593', '\'Jl. Kartini IX Dalam No.35\'', 'ale15'),
(2685, 1, 'Annisha Putri Hadiana', 0, 'Jakarta, 28 Juli 2002', '081384554594', '\'Jl. Petojo VIy II No. 28D\'', 'ann21');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `idStaff` int(11) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `jabatan` varchar(32) NOT NULL,
  `idCabang` int(11) NOT NULL,
  `username` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`idStaff`, `nama`, `jabatan`, `idCabang`, `username`) VALUES
(176, 'Iskandar', 'kcabang', 1, 'isk123'),
(317, 'Sulaiman', 'panitia', 1, 'sul123'),
(374, 'Aditya', 'panitia', 2, 'adi123'),
(396, 'Daud', 'panitia', 3, 'dau123'),
(399, 'Asih', 'panitia', 1, 'asi123'),
(443, 'Ratu', 'kcabang', 3, 'rat123'),
(463, 'Mahmud', 'panitia', 2, 'mah123'),
(533, 'Agung', 'kcabang', 2, 'agu123'),
(654, 'Abdullah', 'panitia', 2, 'abd123'),
(731, 'Latifah', 'panitia', 1, 'lat123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role`, `username`, `password`) VALUES
(1, 'siswa', 'abd30', '161d10de5a655878b79af055d533dc4b'),
(2, 'siswa', 'akb19', '161d10de5a655878b79af055d533dc4b'),
(3, 'siswa', 'akb23', '161d10de5a655878b79af055d533dc4b'),
(4, 'siswa', 'alf12', '161d10de5a655878b79af055d533dc4b'),
(5, 'siswa', 'ali22', '161d10de5a655878b79af055d533dc4b'),
(6, 'siswa', 'ame17', '161d10de5a655878b79af055d533dc4b'),
(7, 'siswa', 'anu11', '161d10de5a655878b79af055d533dc4b'),
(8, 'siswa', 'ard30', '161d10de5a655878b79af055d533dc4b'),
(9, 'siswa', 'aur14', '161d10de5a655878b79af055d533dc4b'),
(10, 'siswa', 'bim16', '161d10de5a655878b79af055d533dc4b'),
(11, 'siswa', 'cha16', '161d10de5a655878b79af055d533dc4b'),
(12, 'siswa', 'ded21', '161d10de5a655878b79af055d533dc4b'),
(13, 'siswa', 'del13', '161d10de5a655878b79af055d533dc4b'),
(14, 'siswa', 'den25', '161d10de5a655878b79af055d533dc4b'),
(15, 'siswa', 'eka25', '161d10de5a655878b79af055d533dc4b'),
(16, 'siswa', 'fad27', '161d10de5a655878b79af055d533dc4b'),
(17, 'siswa', 'fah25', '161d10de5a655878b79af055d533dc4b'),
(18, 'siswa', 'faj21', '161d10de5a655878b79af055d533dc4b'),
(19, 'siswa', 'jih11', '161d10de5a655878b79af055d533dc4b'),
(20, 'siswa', 'kaf20', '161d10de5a655878b79af055d533dc4b'),
(21, 'siswa', 'kay14', '161d10de5a655878b79af055d533dc4b'),
(22, 'siswa', 'lul19', '161d10de5a655878b79af055d533dc4b'),
(23, 'siswa', 'mar21', '161d10de5a655878b79af055d533dc4b'),
(24, 'siswa', 'mas17', '161d10de5a655878b79af055d533dc4b'),
(25, 'siswa', 'moh22', '161d10de5a655878b79af055d533dc4b'),
(26, 'siswa', 'muh13', '161d10de5a655878b79af055d533dc4b'),
(27, 'siswa', 'muh12', '161d10de5a655878b79af055d533dc4b'),
(28, 'siswa', 'muh22', '161d10de5a655878b79af055d533dc4b'),
(29, 'siswa', 'muh23', '161d10de5a655878b79af055d533dc4b'),
(30, 'siswa', 'muh13', '161d10de5a655878b79af055d533dc4b'),
(31, 'siswa', 'mut11', '161d10de5a655878b79af055d533dc4b'),
(32, 'siswa', 'nab13', '161d10de5a655878b79af055d533dc4b'),
(33, 'siswa', 'nel26', '161d10de5a655878b79af055d533dc4b'),
(34, 'siswa', 'nur24', '161d10de5a655878b79af055d533dc4b'),
(35, 'siswa', 'rai26', '161d10de5a655878b79af055d533dc4b'),
(36, 'siswa', 'ram25', '161d10de5a655878b79af055d533dc4b'),
(37, 'siswa', 'ren25', '161d10de5a655878b79af055d533dc4b'),
(38, 'siswa', 'rey29', '161d10de5a655878b79af055d533dc4b'),
(39, 'siswa', 'riv21', '161d10de5a655878b79af055d533dc4b'),
(40, 'siswa', 'rom12', '161d10de5a655878b79af055d533dc4b'),
(41, 'siswa', 'sas26', '161d10de5a655878b79af055d533dc4b'),
(42, 'siswa', 'she20', '161d10de5a655878b79af055d533dc4b'),
(43, 'siswa', 'sya19', '161d10de5a655878b79af055d533dc4b'),
(44, 'siswa', 'sya20', '161d10de5a655878b79af055d533dc4b'),
(45, 'siswa', 'tin19', '161d10de5a655878b79af055d533dc4b'),
(46, 'siswa', 'tir11', '161d10de5a655878b79af055d533dc4b'),
(47, 'siswa', 'tsy17', '161d10de5a655878b79af055d533dc4b'),
(48, 'siswa', 'tub18', '161d10de5a655878b79af055d533dc4b'),
(49, 'siswa', 'umi28', '161d10de5a655878b79af055d533dc4b'),
(50, 'siswa', 'usw29', '161d10de5a655878b79af055d533dc4b'),
(51, 'siswa', 'zaf27', '161d10de5a655878b79af055d533dc4b'),
(52, 'siswa', 'ada14', '161d10de5a655878b79af055d533dc4b'),
(53, 'siswa', 'aga13', '161d10de5a655878b79af055d533dc4b'),
(54, 'siswa', 'aji20', '161d10de5a655878b79af055d533dc4b'),
(55, 'siswa', 'al 27', '161d10de5a655878b79af055d533dc4b'),
(56, 'siswa', 'alv28', '161d10de5a655878b79af055d533dc4b'),
(57, 'siswa', 'aru16', '161d10de5a655878b79af055d533dc4b'),
(58, 'siswa', 'bun28', '161d10de5a655878b79af055d533dc4b'),
(59, 'siswa', 'che15', '161d10de5a655878b79af055d533dc4b'),
(60, 'siswa', 'daf12', '161d10de5a655878b79af055d533dc4b'),
(61, 'siswa', 'dal27', '161d10de5a655878b79af055d533dc4b'),
(62, 'siswa', 'des18', '161d10de5a655878b79af055d533dc4b'),
(63, 'siswa', 'dir28', '161d10de5a655878b79af055d533dc4b'),
(64, 'siswa', 'diz28', '161d10de5a655878b79af055d533dc4b'),
(65, 'siswa', 'fah21', '161d10de5a655878b79af055d533dc4b'),
(66, 'siswa', 'fah22', '161d10de5a655878b79af055d533dc4b'),
(67, 'siswa', 'ilh14', '161d10de5a655878b79af055d533dc4b'),
(68, 'siswa', 'jen21', '161d10de5a655878b79af055d533dc4b'),
(69, 'siswa', 'kha14', '161d10de5a655878b79af055d533dc4b'),
(70, 'siswa', 'mei25', '161d10de5a655878b79af055d533dc4b'),
(71, 'siswa', 'mel19', '161d10de5a655878b79af055d533dc4b'),
(72, 'siswa', 'moh26', '161d10de5a655878b79af055d533dc4b'),
(73, 'siswa', 'moh12', '161d10de5a655878b79af055d533dc4b'),
(74, 'siswa', 'mua21', '161d10de5a655878b79af055d533dc4b'),
(75, 'siswa', 'muh12', '161d10de5a655878b79af055d533dc4b'),
(76, 'siswa', 'muh24', '161d10de5a655878b79af055d533dc4b'),
(77, 'siswa', 'muh12', '161d10de5a655878b79af055d533dc4b'),
(78, 'siswa', 'muh17', '161d10de5a655878b79af055d533dc4b'),
(79, 'siswa', 'muh14', '161d10de5a655878b79af055d533dc4b'),
(80, 'siswa', 'nab29', '161d10de5a655878b79af055d533dc4b'),
(81, 'siswa', 'nab11', '161d10de5a655878b79af055d533dc4b'),
(82, 'siswa', 'nad12', '161d10de5a655878b79af055d533dc4b'),
(83, 'siswa', 'naj14', '161d10de5a655878b79af055d533dc4b'),
(84, 'siswa', 'nau15', '161d10de5a655878b79af055d533dc4b'),
(85, 'siswa', 'naz19', '161d10de5a655878b79af055d533dc4b'),
(86, 'siswa', 'nur23', '161d10de5a655878b79af055d533dc4b'),
(87, 'siswa', 'nur17', '161d10de5a655878b79af055d533dc4b'),
(88, 'siswa', 'okt20', '161d10de5a655878b79af055d533dc4b'),
(89, 'siswa', 'rad29', '161d10de5a655878b79af055d533dc4b'),
(90, 'siswa', 'rak25', '161d10de5a655878b79af055d533dc4b'),
(91, 'siswa', 'reg26', '161d10de5a655878b79af055d533dc4b'),
(92, 'siswa', 'ren17', '161d10de5a655878b79af055d533dc4b'),
(93, 'siswa', 'riz12', '161d10de5a655878b79af055d533dc4b'),
(94, 'siswa', 'riz25', '161d10de5a655878b79af055d533dc4b'),
(95, 'siswa', 'sat27', '161d10de5a655878b79af055d533dc4b'),
(96, 'siswa', 'say15', '161d10de5a655878b79af055d533dc4b'),
(97, 'siswa', 'sit12', '161d10de5a655878b79af055d533dc4b'),
(98, 'siswa', 'ste23', '161d10de5a655878b79af055d533dc4b'),
(99, 'siswa', 'syi17', '161d10de5a655878b79af055d533dc4b'),
(100, 'siswa', 'vio27', '161d10de5a655878b79af055d533dc4b'),
(101, 'siswa', 'vio18', '161d10de5a655878b79af055d533dc4b'),
(102, 'siswa', 'yud24', '161d10de5a655878b79af055d533dc4b'),
(103, 'siswa', 'yud16', '161d10de5a655878b79af055d533dc4b'),
(104, 'siswa', 'adr18', '161d10de5a655878b79af055d533dc4b'),
(105, 'siswa', 'ais15', '161d10de5a655878b79af055d533dc4b'),
(106, 'siswa', 'ana17', '161d10de5a655878b79af055d533dc4b'),
(107, 'siswa', 'ars17', '161d10de5a655878b79af055d533dc4b'),
(108, 'siswa', 'bri28', '161d10de5a655878b79af055d533dc4b'),
(109, 'siswa', 'chi17', '161d10de5a655878b79af055d533dc4b'),
(110, 'siswa', 'dan14', '161d10de5a655878b79af055d533dc4b'),
(111, 'siswa', 'del28', '161d10de5a655878b79af055d533dc4b'),
(112, 'siswa', 'der21', '161d10de5a655878b79af055d533dc4b'),
(113, 'siswa', 'des21', '161d10de5a655878b79af055d533dc4b'),
(114, 'siswa', 'dim20', '161d10de5a655878b79af055d533dc4b'),
(115, 'siswa', 'els26', '161d10de5a655878b79af055d533dc4b'),
(116, 'siswa', 'fah23', '161d10de5a655878b79af055d533dc4b'),
(117, 'siswa', 'geo20', '161d10de5a655878b79af055d533dc4b'),
(118, 'siswa', 'git28', '161d10de5a655878b79af055d533dc4b'),
(119, 'siswa', 'gun29', '161d10de5a655878b79af055d533dc4b'),
(120, 'siswa', 'hai30', '161d10de5a655878b79af055d533dc4b'),
(121, 'siswa', 'ibn20', '161d10de5a655878b79af055d533dc4b'),
(122, 'siswa', 'int13', '161d10de5a655878b79af055d533dc4b'),
(123, 'siswa', 'jim29', '161d10de5a655878b79af055d533dc4b'),
(124, 'siswa', 'kha30', '161d10de5a655878b79af055d533dc4b'),
(125, 'siswa', 'mar26', '161d10de5a655878b79af055d533dc4b'),
(126, 'siswa', 'muh29', '161d10de5a655878b79af055d533dc4b'),
(127, 'siswa', 'muh16', '161d10de5a655878b79af055d533dc4b'),
(128, 'siswa', 'muh11', '161d10de5a655878b79af055d533dc4b'),
(129, 'siswa', 'muh28', '161d10de5a655878b79af055d533dc4b'),
(130, 'siswa', 'nab14', '161d10de5a655878b79af055d533dc4b'),
(131, 'siswa', 'nay21', '161d10de5a655878b79af055d533dc4b'),
(132, 'siswa', 'nov17', '161d10de5a655878b79af055d533dc4b'),
(133, 'siswa', 'aul20', '161d10de5a655878b79af055d533dc4b'),
(134, 'siswa', 'azz29', '161d10de5a655878b79af055d533dc4b'),
(135, 'siswa', 'ban17', '161d10de5a655878b79af055d533dc4b'),
(136, 'siswa', 'daf26', '161d10de5a655878b79af055d533dc4b'),
(137, 'siswa', 'dak18', '161d10de5a655878b79af055d533dc4b'),
(138, 'siswa', 'dar26', '161d10de5a655878b79af055d533dc4b'),
(139, 'siswa', 'ded17', '161d10de5a655878b79af055d533dc4b'),
(140, 'siswa', 'dza27', '161d10de5a655878b79af055d533dc4b'),
(141, 'siswa', 'emi26', '161d10de5a655878b79af055d533dc4b'),
(142, 'siswa', 'haf11', '161d10de5a655878b79af055d533dc4b'),
(143, 'siswa', 'han19', '161d10de5a655878b79af055d533dc4b'),
(144, 'siswa', 'jas27', '161d10de5a655878b79af055d533dc4b'),
(145, 'siswa', 'jih13', '161d10de5a655878b79af055d533dc4b'),
(146, 'siswa', 'kei18', '161d10de5a655878b79af055d533dc4b'),
(147, 'siswa', 'kir26', '161d10de5a655878b79af055d533dc4b'),
(148, 'siswa', 'lan22', '161d10de5a655878b79af055d533dc4b'),
(149, 'siswa', 'mar11', '161d10de5a655878b79af055d533dc4b'),
(150, 'siswa', 'may15', '161d10de5a655878b79af055d533dc4b'),
(151, 'siswa', 'muh26', '161d10de5a655878b79af055d533dc4b'),
(152, 'siswa', 'muh21', '161d10de5a655878b79af055d533dc4b'),
(153, 'siswa', 'muh21', '161d10de5a655878b79af055d533dc4b'),
(154, 'siswa', 'muh30', '161d10de5a655878b79af055d533dc4b'),
(155, 'siswa', 'muh25', '161d10de5a655878b79af055d533dc4b'),
(156, 'siswa', 'muh27', '161d10de5a655878b79af055d533dc4b'),
(157, 'siswa', 'muh17', '161d10de5a655878b79af055d533dc4b'),
(158, 'siswa', 'muh24', '161d10de5a655878b79af055d533dc4b'),
(159, 'siswa', 'naj26', '161d10de5a655878b79af055d533dc4b'),
(160, 'siswa', 'nas23', '161d10de5a655878b79af055d533dc4b'),
(161, 'siswa', 'nov14', '161d10de5a655878b79af055d533dc4b'),
(162, 'siswa', 'nur26', '161d10de5a655878b79af055d533dc4b'),
(163, 'siswa', 'put22', '161d10de5a655878b79af055d533dc4b'),
(164, 'siswa', 'rab22', '161d10de5a655878b79af055d533dc4b'),
(165, 'siswa', 'rai16', '161d10de5a655878b79af055d533dc4b'),
(166, 'siswa', 'rak12', '161d10de5a655878b79af055d533dc4b'),
(167, 'siswa', 'ram20', '161d10de5a655878b79af055d533dc4b'),
(168, 'siswa', 'rey16', '161d10de5a655878b79af055d533dc4b'),
(169, 'siswa', 'rif20', '161d10de5a655878b79af055d533dc4b'),
(170, 'siswa', 'riv26', '161d10de5a655878b79af055d533dc4b'),
(171, 'siswa', 'sag11', '161d10de5a655878b79af055d533dc4b'),
(172, 'siswa', 'sya22', '161d10de5a655878b79af055d533dc4b'),
(173, 'siswa', 'tsa20', '161d10de5a655878b79af055d533dc4b'),
(174, 'siswa', 'zaz14', '161d10de5a655878b79af055d533dc4b'),
(175, 'siswa', 'afi28', '161d10de5a655878b79af055d533dc4b'),
(176, 'siswa', 'alb23', '161d10de5a655878b79af055d533dc4b'),
(177, 'siswa', 'ale15', '161d10de5a655878b79af055d533dc4b'),
(178, 'siswa', 'ann21', '161d10de5a655878b79af055d533dc4b'),
(179, 'kcabang', 'agu123', '161d10de5a655878b79af055d533dc4b'),
(180, 'kcabang', 'rat123', '161d10de5a655878b79af055d533dc4b'),
(181, 'panitia', 'abd123', '161d10de5a655878b79af055d533dc4b'),
(182, 'panitia', 'lat123', '161d10de5a655878b79af055d533dc4b'),
(183, 'panitia', 'mah123', '161d10de5a655878b79af055d533dc4b'),
(184, 'kcabang', 'isk123', '161d10de5a655878b79af055d533dc4b'),
(185, 'panitia', 'dau123', '161d10de5a655878b79af055d533dc4b'),
(186, 'panitia', 'adi123', '161d10de5a655878b79af055d533dc4b'),
(187, 'panitia', 'sul123', '161d10de5a655878b79af055d533dc4b'),
(188, 'panitia', 'asi123', '161d10de5a655878b79af055d533dc4b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idSiswa`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`idStaff`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
