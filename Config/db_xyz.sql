-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 10:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country` varchar(45) NOT NULL,
  `exchange_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country`, `exchange_id`) VALUES
(1, 'USA', 1),
(2, 'UK', 2),
(3, 'France', 3),
(4, 'UAE', 4),
(5, 'Australia', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `education` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `monthly_income` decimal(10,2) NOT NULL,
  `credit_score` int(11) NOT NULL,
  `marital_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `gender`, `email`, `phone_number`, `address`, `education`, `occupation`, `date_of_birth`, `monthly_income`, `credit_score`, `marital_status`) VALUES
(1, 'Amelia', 'Safitri', 'Perempuan', 'nugrohosiska@example.com', '+62 (002) 907-4693', 'Jalan Cihampelas No. 182, Kediri, BB 85639', 'Magister', 'TNI', '0000-00-00', 4928760.00, 658, 'Kawin Mati'),
(2, 'Cici', 'Hassanah', 'Perempuan', 'kambali93@example.org', '+62 (314) 675-6147', 'Jalan Cikutra Barat No. 418, Mojokerto, Sulawesi Selatan 81338', 'Sarjana', 'PNS', '0000-00-00', 8506800.00, 731, 'Belum Kawin'),
(3, 'Luwar', 'Waskita', 'Laki-laki', 'suryonopardi@example.com', '-6566', 'Gg. Surapati No. 01, Jambi, KI 58197', 'Magister', 'Polri', '0000-00-00', 4774901.00, 435, 'Belum Kawin'),
(4, 'Bajragin', 'Hutagalung', 'Laki-laki', 'hutapeacaturangga@example.com', '-9734', 'Jl. Raya Setiabudhi No. 815, Sukabumi, Kepulauan Riau 38565', 'SMA', 'Polri', '0000-00-00', 2337107.00, 674, 'Kawin Mati'),
(5, 'Aswani', 'Suwarno', 'Laki-laki', 'yuni63@example.net', '+62 (640) 301 5520', 'Gg. Siliwangi No. 3, Kota Administrasi Jakarta Selatan, KB 32867', 'SMA', 'PNS', '0000-00-00', 5102171.00, 490, 'Belum Kawin'),
(6, 'Genta', 'Handayani', 'Perempuan', 'ymahendra@example.org', '-8307', 'Gg. Cikutra Barat No. 4, Bengkulu, JI 07314', 'Doktor', 'Pegawai Swasta', '0000-00-00', 8587841.00, 302, 'Kawin'),
(7, 'Erik', 'Saptono', 'Laki-laki', 'darunayulianti@example.com', '+62 (482) 597 2680', 'Gang Medokan Ayu No. 8, Bukittinggi, SN 06333', 'SMA', 'Pegawai Swasta', '0000-00-00', 2093380.00, 631, 'Kawin Cerai'),
(8, 'Estiawan', 'Mahendra', 'Laki-laki', 'daliono90@example.com', '+62 (097) 287-6314', 'Jalan Jend. Sudirman No. 11, Gorontalo, BA 47920', 'Doktor', 'TNI', '0000-00-00', 6280488.00, 712, 'Belum Kawin'),
(9, 'Belinda', 'Lestari', 'Perempuan', 'mansurayu@example.com', '+62 (036) 913 3134', 'Gang Gedebage Selatan No. 2, Ternate, LA 04171', 'Magister', 'Pegawai Swasta', '0000-00-00', 3440405.00, 848, 'Kawin Mati'),
(10, 'Raden', 'Tarihoran', 'Laki-laki', 'mwasita@example.com', '+62 (097) 743-1827', 'Gang Setiabudhi No. 22, Pontianak, Sumatera Utara 44532', 'Sarjana', 'Polri', '0000-00-00', 8844336.00, 560, 'Kawin Mati'),
(11, 'Wisnu', 'Kuswoyo', 'Laki-laki', 'banawayolanda@example.com', '+62 (006) 810 1016', 'Gg. Rajawali Timur No. 4, Kupang, Kalimantan Barat 42286', 'Magister', 'Wiraswasta', '0000-00-00', 1518886.00, 496, 'Belum Kawin'),
(12, 'Kurnia', 'Saefullah', 'Laki-laki', 'keisha97@example.net', '-3747', 'Gang Jayawijaya No. 411, Tanjungpinang, Banten 38369', 'Diploma 3', 'Wiraswasta', '0000-00-00', 8869461.00, 503, 'Kawin Cerai'),
(13, 'Kasiyah', 'Fujiati', 'Perempuan', 'oktolatupono@example.org', '+62 (035) 140-0516', 'Jl. Tubagus Ismail No. 5, Palangkaraya, Sulawesi Barat 33386', 'Sarjana', 'TNI', '0000-00-00', 1900465.00, 653, 'Belum Kawin'),
(14, 'Raden', 'Situmorang', 'Laki-laki', 'dmaulana@example.org', '+62 (050) 932 6186', 'Jalan Tebet Barat Dalam No. 4, Mataram, Kepulauan Riau 74402', 'Diploma 3', 'Pegawai Lepas', '0000-00-00', 6943730.00, 503, 'Belum Kawin'),
(15, 'Dimas', 'Irawan', 'Laki-laki', 'heryantoputra@example.com', '081 857 3392', 'Jl. Kutai No. 976, Banjarbaru, JT 87956', 'Doktor', 'Wiraswasta', '0000-00-00', 3353326.00, 582, 'Kawin'),
(16, 'Cinthia', 'Safitri', 'Perempuan', 'harjo43@example.org', '(040) 514-1013', 'Jl. Stasiun Wonokromo No. 23, Banjar, SU 21720', 'SMA', 'TNI', '0000-00-00', 1367679.00, 564, 'Belum Kawin'),
(17, 'Vanesa', 'Prastuti', 'Perempuan', 'prasastazizi@example.org', '(059) 732 3414', 'Jalan Gedebage Selatan No. 309, Padang Sidempuan, SN 89727', 'Magister', 'Polri', '0000-00-00', 8305405.00, 742, 'Belum Kawin'),
(18, 'Ciaobella', 'Mardhiyah', 'Perempuan', 'perkasawastuti@example.net', '+62 (447) 585-2065', 'Gang Cihampelas No. 06, Solok, Aceh 47196', 'SMA', 'Pegawai Lepas', '0000-00-00', 6431039.00, 716, 'Kawin Mati'),
(19, 'Ganep', 'Permadi', 'Laki-laki', 'hamzah51@example.org', '+62 (762) 737 4880', 'Gang W.R. Supratman No. 11, Langsa, Papua 23686', 'Diploma 3', 'Polri', '0000-00-00', 2748693.00, 622, 'Kawin Cerai'),
(20, 'Irma', 'Mardhiyah', 'Perempuan', 'mardhiyahclara@example.org', '+62 (0879) 900-3603', 'Jalan Soekarno Hatta No. 13, Gorontalo, Banten 41209', 'Diploma 3', 'Polri', '0000-00-00', 3734918.00, 697, 'Kawin Mati'),
(21, 'Sakura', 'Kuswandari', 'Perempuan', 'mitramahendra@example.org', '+62 (0796) 403-9086', 'Gang Kutai No. 5, Pekanbaru, LA 06666', 'Doktor', 'Polri', '0000-00-00', 4204101.00, 521, 'Kawin'),
(22, 'Gaman', 'Maheswara', 'Laki-laki', 'hutapeagaran@example.org', '-3840', 'Jalan Kendalsari No. 174, Kota Administrasi Jakarta Utara, Papua Barat 36089', 'Magister', 'Polri', '0000-00-00', 4829058.00, 640, 'Belum Kawin'),
(23, 'Gantar', 'Situmorang', 'Laki-laki', 'siraitbagiya@example.org', '+62 (54) 997-8611', 'Jalan Surapati No. 42, Pematangsiantar, Sumatera Selatan 22672', 'Sarjana', 'Pegawai Swasta', '0000-00-00', 1847696.00, 841, 'Belum Kawin'),
(24, 'Dirja', 'Haryanto', 'Laki-laki', 'teguhwinarno@example.net', '(0143) 250 2113', 'Jl. Lembong No. 38, Mojokerto, KB 82883', 'SMA', 'Wiraswasta', '0000-00-00', 6793878.00, 681, 'Kawin Cerai'),
(25, 'Umi', 'Hastuti', 'Perempuan', 'sidiqhandayani@example.com', '+62 (0502) 699-3119', 'Gang Tebet Barat Dalam No. 4, Padang, JK 73242', 'Diploma 3', 'PNS', '0000-00-00', 3344307.00, 565, 'Belum Kawin'),
(26, 'Hesti', 'Laksita', 'Perempuan', 'owinarno@example.org', '+62 (385) 969-3822', 'Jalan BKR No. 374, Bengkulu, Bengkulu 59873', 'Sarjana', 'PNS', '0000-00-00', 9481635.00, 712, 'Kawin'),
(27, 'Farah', 'Melani', 'Perempuan', 'maryantodongoran@example.org', '+62 (069) 410 4693', 'Jl. Dipenogoro No. 748, Salatiga, YO 56332', 'Doktor', 'Pegawai Lepas', '0000-00-00', 7504616.00, 411, 'Kawin'),
(28, 'Unggul', 'Nashiruddin', 'Laki-laki', 'gangsa49@example.org', '(024) 152 0023', 'Jl. Suniaraja No. 5, Palopo, Riau 65450', 'Sarjana', 'Pegawai Swasta', '0000-00-00', 5123959.00, 523, 'Kawin'),
(29, 'Mila', 'Haryanti', 'Perempuan', 'dimas19@example.org', '081 219 3009', 'Jl. Jayawijaya No. 16, Cilegon, Papua 21348', 'Diploma 3', 'PNS', '0000-00-00', 4307616.00, 804, 'Kawin Cerai'),
(30, 'Ratna', 'Laksita', 'Perempuan', 'winarsihdevi@example.net', '+62 (079) 204 7874', 'Jl. Ir. H. Djuanda No. 45, Denpasar, Kalimantan Timur 66994', 'Doktor', 'Wiraswasta', '0000-00-00', 6566979.00, 394, 'Kawin Mati'),
(31, 'Ulva', 'Winarsih', 'Perempuan', 'dadidabukke@example.org', '+62 (64) 756-4159', 'Gg. Setiabudhi No. 441, Lubuklinggau, Kalimantan Timur 21258', 'Diploma 3', 'Pegawai Lepas', '0000-00-00', 1565021.00, 376, 'Kawin'),
(32, 'Nardi', 'Natsir', 'Laki-laki', 'karman95@example.org', '(029) 259 0733', 'Jl. Gegerkalong Hilir No. 618, Lubuklinggau, Maluku 28725', 'SMA', 'Pegawai Swasta', '0000-00-00', 7062552.00, 350, 'Belum Kawin'),
(33, 'Hartana', 'Adriansyah', 'Laki-laki', 'vsalahudin@example.net', '+62 (036) 085-5747', 'Jl. Ir. H. Djuanda No. 58, Pekalongan, JI 63349', 'Doktor', 'Polri', '0000-00-00', 3525439.00, 787, 'Kawin'),
(34, 'Ida', 'Mayasari', 'Perempuan', 'permadidian@example.net', '-10169', 'Jl. Waringin No. 9, Tebingtinggi, Bali 03079', 'Diploma 3', 'Wiraswasta', '0000-00-00', 7541725.00, 384, 'Belum Kawin'),
(35, 'Yunita', 'Usamah', 'Perempuan', 'nyuniar@example.org', '-3643', 'Gang Ciwastra No. 5, Kendari, NT 97303', 'Diploma 3', 'Pegawai Lepas', '0000-00-00', 3940270.00, 511, 'Belum Kawin'),
(36, 'Kayla', 'Mulyani', 'Perempuan', 'umay22@example.com', '+62 (74) 355 9791', 'Jalan Dipenogoro No. 53, Padang Sidempuan, Nusa Tenggara Timur 19616', 'SMA', 'TNI', '0000-00-00', 8664024.00, 576, 'Kawin Cerai'),
(37, 'Reza', 'Uwais', 'Laki-laki', 'mitralestari@example.com', '+62 (57) 474 8609', 'Jl. Bangka Raya No. 44, Sibolga, Lampung 15617', 'SMA', 'PNS', '0000-00-00', 2195910.00, 758, 'Belum Kawin'),
(38, 'Laila', 'Prastuti', 'Perempuan', 'kunthara67@example.net', '+62 (59) 751 4480', 'Gang Ciumbuleuit No. 553, Pematangsiantar, Kalimantan Tengah 49184', 'Diploma 3', 'Pegawai Swasta', '0000-00-00', 5613569.00, 437, 'Belum Kawin'),
(39, 'Parman', 'Mustofa', 'Laki-laki', 'gandirahayu@example.net', '+62 (907) 281-8852', 'Gang Gegerkalong Hilir No. 244, Blitar, Aceh 21811', 'Doktor', 'Wiraswasta', '0000-00-00', 1395420.00, 639, 'Kawin Mati'),
(40, 'Harjasa', 'Pangestu', 'Laki-laki', 'zamiraramadan@example.net', '+62 (657) 558 8256', 'Gang Ciwastra No. 9, Metro, JK 95697', 'SMA', 'Wiraswasta', '0000-00-00', 7002361.00, 513, 'Belum Kawin'),
(41, 'Najib', 'Sihotang', 'Laki-laki', 'handayanilantar@example.com', '(0731) 549-5541', 'Jalan Jend. Sudirman No. 464, Batu, BB 85310', 'Magister', 'Pegawai Lepas', '0000-00-00', 9937120.00, 573, 'Kawin Mati'),
(42, 'Bella', 'Nasyiah', 'Perempuan', 'saka85@example.com', '+62 (45) 853 3603', 'Jl. PHH. Mustofa No. 183, Sibolga, BB 93187', 'Doktor', 'PNS', '0000-00-00', 8478374.00, 597, 'Kawin'),
(43, 'Wani', 'Lailasari', 'Perempuan', 'raharja74@example.org', '+62 (096) 655 9780', 'Jalan Cikutra Timur No. 9, Manado, Banten 57141', 'Sarjana', 'Wiraswasta', '0000-00-00', 1433453.00, 567, 'Kawin'),
(44, 'Nurul', 'Halimah', 'Perempuan', 'wahyudinciaobella@example.org', '+62 (0961) 595 0091', 'Gg. Ciumbuleuit No. 94, Payakumbuh, SS 15821', 'Sarjana', 'Pegawai Swasta', '0000-00-00', 3057271.00, 482, 'Belum Kawin'),
(45, 'Paris', 'Wahyuni', 'Perempuan', 'azaleapurnawati@example.com', '+62 (021) 717-1150', 'Gg. W.R. Supratman No. 5, Denpasar, Jawa Tengah 99578', 'Sarjana', 'Pegawai Swasta', '0000-00-00', 6820626.00, 677, 'Kawin'),
(46, 'Estiawan', 'Maulana', 'Laki-laki', 'bmarpaung@example.org', '+62 (069) 027 2287', 'Gg. Suryakencana No. 798, Pematangsiantar, KI 60804', 'Sarjana', 'PNS', '0000-00-00', 3170750.00, 772, 'Kawin Cerai'),
(47, 'Marwata', 'Siregar', 'Laki-laki', 'lintangnasyidah@example.net', '+62 (099) 736-4043', 'Gang Sadang Serang No. 7, Jambi, PA 27819', 'Doktor', 'Polri', '0000-00-00', 5504529.00, 754, 'Belum Kawin'),
(48, 'Gandi', 'Tarihoran', 'Laki-laki', 'keziawibowo@example.com', '-8648', 'Jl. Asia Afrika No. 43, Blitar, Lampung 84669', 'Diploma 3', 'Pegawai Lepas', '0000-00-00', 5672147.00, 825, 'Kawin Mati'),
(49, 'Tantri', 'Mulyani', 'Perempuan', 'yoga92@example.net', '(0403) 748-9316', 'Gg. Rawamangun No. 2, Sawahlunto, KB 92507', 'Magister', 'PNS', '0000-00-00', 9681053.00, 730, 'Belum Kawin'),
(50, 'Eli', 'Rahayu', 'Perempuan', 'dabukkevicky@example.com', '+62 (0815) 683-4475', 'Gang M.H Thamrin No. 622, Kota Administrasi Jakarta Pusat, Banten 80646', 'Magister', 'PNS', '0000-00-00', 8927766.00, 380, 'Kawin Mati'),
(51, 'Wardaya', 'Hidayanto', 'Laki-laki', 'ibunnatsir@example.com', '+62 (022) 523-7623', 'Jalan Raya Ujungberung No. 718, Pekalongan, Maluku Utara 25554', 'Sarjana', 'Wiraswasta', '0000-00-00', 6349103.00, 807, 'Kawin'),
(52, 'Kasiyah', 'Lailasari', 'Perempuan', 'umahendra@example.org', '+62 (009) 565 5967', 'Gang Kutisari Selatan No. 01, Binjai, Kalimantan Timur 57837', 'Magister', 'TNI', '0000-00-00', 9273488.00, 687, 'Kawin Cerai'),
(53, 'Cahyadi', 'Nainggolan', 'Laki-laki', 'sarijanuar@example.net', '+62 (0772) 009 2825', 'Jl. Ciwastra No. 39, Kendari, Jambi 83727', 'Sarjana', 'TNI', '0000-00-00', 1756022.00, 305, 'Kawin Cerai'),
(54, 'Tira', 'Nasyidah', 'Perempuan', 'bagiya68@example.org', '+62 (022) 995-8679', 'Gg. Joyoboyo No. 75, Bandar Lampung, SR 06382', 'SMA', 'Polri', '0000-00-00', 5113310.00, 462, 'Belum Kawin');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `last_visited` date NOT NULL,
  `return_status` varchar(45) NOT NULL,
  `warranty` int(4) NOT NULL,
  `purchase_date` date NOT NULL,
  `return_policy` varchar(45) NOT NULL,
  `feedback` varchar(45) NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `supplier`, `last_visited`, `return_status`, `warranty`, `purchase_date`, `return_policy`, `feedback`, `order_id`) VALUES
(1, 'Smith Tools Inc.', '0000-00-00', 'Not Returned', 6, '0000-00-00', '30', 'Wont Recommend', 1024),
(2, 'BrightLife Co.', '0000-00-00', 'Returned', 12, '0000-00-00', '45', 'Neutral', 1025),
(3, 'TimberCraft Suppliers', '0000-00-00', 'Not Returned', 24, '0000-00-00', '60', 'Will Recommend', 1026),
(4, 'BuildMaster Tools', '0000-00-00', 'Returned', 36, '0000-00-00', '30', 'Neutral', 1027),
(5, 'GreenThumb Essentials', '0000-00-00', 'Not Returned', 18, '0000-00-00', '15', 'Will Recommend', 1028),
(6, 'BuildRight Supplies', '0000-00-00', 'Not Returned', 12, '0000-00-00', '20', 'Wont Recommend', 1029),
(7, 'ColorDreams Paints', '0000-00-00', 'Not Returned', 6, '0000-00-00', '25', 'Neutral', 1030),
(8, 'AquaFlow Suppliers', '0000-00-00', 'Returned', 24, '0000-00-00', '30', 'Wont Recommend', 1031),
(9, 'ToolTech Incorporated', '0000-00-00', 'Not Returned', 6, '0000-00-00', '20', 'Will Recommend', 1032),
(10, 'DecorDelight Co.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '40', 'Neutral', 1033),
(11, 'ElegantEntry Inc.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '15', 'Wont Recommend', 1034),
(12, 'LightUp Creations', '0000-00-00', 'Returned', 24, '0000-00-00', '25', 'Will Recommend', 1035),
(13, 'EcoGarden Supplies', '0000-00-00', 'Not Returned', 36, '0000-00-00', '40', 'Neutral', 1036),
(14, 'ArtisticPottery Inc.', '0000-00-00', 'Not Returned', 18, '0000-00-00', '20', 'Wont Recommend', 1037),
(15, 'ComfortZone Furniture', '0000-00-00', 'Not Returned', 48, '0000-00-00', '60', 'Will Recommend', 1038),
(16, 'GardenTech Co.', '0000-00-00', 'Returned', 12, '0000-00-00', '10', 'Neutral', 1039),
(17, 'AquaDesigns Ltd.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '30', 'Wont Recommend', 1040),
(18, 'Timeless Decor', '0000-00-00', 'Not Returned', 36, '0000-00-00', '15', 'Neutral', 1041),
(19, 'StoneCrafters Inc.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '25', 'Will Recommend', 1042),
(20, 'TimberCraft Suppliers', '0000-00-00', 'Returned', 12, '0000-00-00', '30', 'Neutral', 1043),
(21, 'StoneMarvel Inc.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '10', 'Will Recommend', 1044),
(22, 'SunLight Creations', '0000-00-00', 'Returned', 6, '0000-00-00', '15', 'Wont Recommend', 1045),
(23, 'AquaLux Suppliers', '0000-00-00', 'Not Returned', 24, '0000-00-00', '40', 'Neutral', 1046),
(24, 'BuildElite Tools', '0000-00-00', 'Not Returned', 12, '0000-00-00', '20', 'Wont Recommend', 1047),
(25, 'PlantBoost Co.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '10', 'Will Recommend', 1048),
(26, 'Reflective Designs Inc.', '0000-00-00', 'Returned', 12, '0000-00-00', '25', 'Neutral', 1049),
(27, 'TechComfort Solutions', '0000-00-00', 'Not Returned', 36, '0000-00-00', '30', 'Wont Recommend', 1050),
(28, 'NatureFurnish Co.', '0000-00-00', 'Not Returned', 18, '0000-00-00', '15', 'Will Recommend', 1052),
(29, 'GrillMasters Ltd.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '30', 'Neutral', 1053),
(30, 'ToolPro Innovations', '0000-00-00', 'Returned', 12, '0000-00-00', '20', 'Wont Recommend', 1054),
(31, 'CozyNest Textiles', '0000-00-00', 'Not Returned', 6, '0000-00-00', '10', 'Will Recommend', 1055),
(32, 'GreenCraft Supplies', '0000-00-00', 'Not Returned', 12, '0000-00-00', '15', 'Neutral', 1056),
(33, 'HeightRight Equipment', '0000-00-00', 'Not Returned', 24, '0000-00-00', '25', 'Wont Recommend', 1057),
(34, 'EarthyPottery Inc.', '0000-00-00', 'Returned', 24, '0000-00-00', '20', 'Will Recommend', 1058),
(35, 'Luminaire Designs', '0000-00-00', 'Not Returned', 36, '0000-00-00', '30', 'Neutral', 1059),
(36, 'FlameFront Co.', '0000-00-00', 'Not Returned', 18, '0000-00-00', '15', 'Wont Recommend', 1060),
(37, 'TimberLine Furniture', '0000-00-00', 'Not Returned', 24, '0000-00-00', '15', 'Will Recommend', 1061),
(38, 'SafeGuard Tech', '0000-00-00', 'Returned', 18, '0000-00-00', '10', 'Neutral', 1062),
(39, 'WindowWonders Ltd.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '14', 'Wont Recommend', 1063),
(40, 'PlushThreads Textiles', '0000-00-00', 'Not Returned', 18, '0000-00-00', '20', 'Will Recommend', 1064),
(41, 'Botanica Ltd.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '30', 'Neutral', 1065),
(42, 'Illumina Designs', '0000-00-00', 'Returned', 18, '0000-00-00', '25', 'Wont Recommend', 1066),
(43, 'CulinaryCraft Co.', '0000-00-00', 'Not Returned', 36, '0000-00-00', '30', 'Neutral', 1067),
(44, 'WeaveWorks Ltd.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '15', 'Will Recommend', 1068),
(45, 'GardenGizmos Inc.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '20', 'Neutral', 1069),
(46, 'StoneScape Creations', '0000-00-00', 'Returned', 24, '0000-00-00', '14', 'Will Recommend', 1070),
(47, 'CleanTech Innovations', '0000-00-00', 'Not Returned', 12, '0000-00-00', '10', 'Wont Recommend', 1071),
(48, 'FurnishFinely Co.', '0000-00-00', 'Not Returned', 12, '0000-00-00', '15', 'Neutral', 1072),
(49, 'AquaHeat Solutions', '0000-00-00', 'Not Returned', 18, '0000-00-00', '10', 'Will Recommend', 1073),
(50, 'DiningDeluxe Ltd.', '0000-00-00', 'Returned', 12, '0000-00-00', '14', 'Wont Recommend', 1074),
(51, 'FabricFocus Textiles', '0000-00-00', 'Not Returned', 12, '0000-00-00', '30', 'Will Recommend', 1075),
(52, 'EarthyGrow Co.', '0000-00-00', 'Not Returned', 24, '0000-00-00', '25', 'Neutral', 1076),
(53, 'ComfortCraft Furniture', '0000-00-00', 'Not Returned', 18, '0000-00-00', '20', 'Wont Recommend', 1077),
(54, 'TerraTile Suppliers', '0000-00-00', 'Returned', 12, '0000-00-00', '15', 'Neutral', 1078);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `order_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_description` varchar(45) NOT NULL,
  `gross_product_price` decimal(10,2) NOT NULL,
  `tax_per_product` decimal(10,2) NOT NULL,
  `quantity_purchased` int(11) NOT NULL,
  `gross_revenue` decimal(10,2) NOT NULL,
  `total_tax` decimal(10,2) NOT NULL,
  `net_revenue` decimal(10,2) NOT NULL,
  `product_category` varchar(45) NOT NULL,
  `sku_number` varchar(45) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `color` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales_rep` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `loyalty_points` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`order_id`, `product_name`, `product_description`, `gross_product_price`, `tax_per_product`, `quantity_purchased`, `gross_revenue`, `total_tax`, `net_revenue`, `product_category`, `sku_number`, `weight`, `color`, `size`, `rating`, `stock`, `sales_rep`, `address`, `zipcode`, `phone`, `email`, `loyalty_points`, `customer_id`, `country_id`) VALUES
(1024, 'UltraGrip Hammer', 'A sturdy hammer with an ergonomic grip for ca', 60.00, 8.40, 2, 120.00, 16.80, 103.20, 'Tools', 'TWH-024', 0.10, 'Red', 'Small', 4.50, 320, 'Alice', '121 Blvd', '46575', '1112222', 'jsmith@mail.com', 7, 42, 1),
(1025, 'Luminous Bulb 60W', 'Energy-saving 60W bulb with a bright luminous', 35.00, 2.45, 3, 105.00, 7.35, 97.65, 'Lighting', 'TWF-025', 0.20, 'Blue', 'Medium', 4.80, 150, 'Bob', '45 Royal Ln', 'B2M 3N5', '2223333', 'dwhite@mail.com', 25, 50, 5),
(1026, 'Oakwood Shelf', 'A durable oakwood shelf for home and office u', 250.00, 17.50, 1, 250.00, 17.50, 232.50, 'Furniture', 'TWK-026', 2.50, 'Green', 'Large', 5.00, 85, 'Alice', '23 Paris St', '75008', '3334444', 'lucyR@mail.com', 30, 17, 1),
(1027, 'ProTile Cutter', 'High precision tile cutter for professional u', 15.00, 1.05, 5, 75.00, 5.25, 69.75, 'Tools', 'TWF-027', 8.00, 'Red', 'XL', 4.40, 190, 'Charlie', '67 Berlin Rd', '10178', '4445555', 'markL@mail.com', 20, 6, 2),
(1028, 'Garden Glove Set', 'Comfortable gloves for gardening tasks.', 55.00, 3.85, 4, 220.00, 15.40, 204.60, 'Gardening', 'TWT-028', 1.20, 'Black', 'Small', 4.90, 310, 'Alice', '99 Madrid Ln', '28014', '5556666', 'oliviaG@mail.com', 10, 19, 1),
(1029, 'Steel Nails (1inch)', 'Rust-resistant steel nails for construction.', 75.00, 5.25, 2, 150.00, 10.50, 139.50, 'Hardware', 'TWH-029', 1.50, 'White', 'Medium', 4.20, 210, 'David', '45 Rome Blvd', '185', '6667777', 'jackT@mail.com', 15, 32, 2),
(1030, 'Luxury Paint (Blue)', 'Premium quality blue paint for interior walls', 50.00, 14.70, 1, 50.00, 14.70, 35.30, 'Paint & Decor', 'TWS-030', 0.80, 'Red', 'Large', 4.70, 255, 'Charlie', '11 Delhi Ave', '110001', '7778888', 'miaH@mail.com', 5, 2, 3),
(1031, 'Kitchen Sink (Steel)', 'Stainless steel kitchen sink with a modern de', 90.00, 6.30, 3, 270.00, 18.90, 251.10, 'Plumbing', 'TWF-031', 0.10, 'Blue', 'Small', 4.60, 265, 'Alice', '23 Tokyo St', '100-0004', '8889999', 'aaronW@mail.com', 20, 8, 2),
(1032, 'Power Drill Set', 'A complete drill set with multiple bits for v', 180.00, 12.60, 2, 360.00, 25.20, 334.80, 'Tools', 'TWG-032', 0.50, 'Green', 'XL', 4.00, 330, 'Bob', '33 Sydney Rd', '2000', '9990000', 'lilyP@mail.com', 3, 13, 1),
(1033, 'Floral Wallpaper', 'Beautiful floral design wallpaper for home de', 3.00, 1.40, 6, 18.00, 8.40, 9.60, 'Paint & Decor', 'TWT-033', 0.20, 'Yellow', 'Small', 4.80, 500, 'David', '56 Ontario St', 'K1A 0A6', '1497911', 'benF@mail.com', 12, 29, 1),
(1034, 'Brass Door Knob', 'Elegant brass doorknob for interior doors.', 300.00, 21.00, 1, 300.00, 21.00, 279.00, 'Hardware', 'TWS-034', 0.10, 'Black', 'Medium', 4.70, 220, 'Alice', '42 Sun Blvd', '67890', '1122334', 'owenG@mail.com', 18, 51, 2),
(1035, 'LED Garden Lights', 'Set of 6 LED lights for garden or pathway ill', 50.00, 3.50, 4, 200.00, 14.00, 186.00, 'Lighting', 'TWH-035', 2.00, 'White', 'Large', 4.90, 150, 'Charlie', '65 Nordic Ave', '12345', '2233445', 'ameliaC@mail.com', 25, 26, 4),
(1036, 'Compost Bin', 'Durable compost bin for organic waste.', 60.00, 4.20, 5, 300.00, 21.00, 279.00, 'Gardening', 'TWK-036', 4.00, 'Yellow', 'XL', 5.00, 90, 'Bob', '89 Coffee St', '34567', '3344556', 'liamC@mail.com', 45, 25, 1),
(1037, 'Ceramic Vase (Red)', 'Red ceramic vase for home decor and floral ar', 40.00, 2.80, 3, 120.00, 8.40, 111.60, 'Home Decor', 'TWT-037', 0.10, 'Red', 'Medium', 4.80, 320, 'David', '33 Health Blvd', '45678', '4455667', 'sophiaT@mail.com', 12, 37, 5),
(1038, 'Patio Chair Set', 'Set of 2 chairs for patio or balcony seating.', 45.00, 3.15, 4, 180.00, 12.60, 167.40, 'Furniture', 'TWO-038', 6.00, 'Blue', 'XL', 4.60, 185, 'Alice', '99 Grill Ave', '56789', '5566778', 'jacobM@mail.com', 35, 5, 5),
(1039, 'Electric Lawnmower', 'Efficient electric lawnmower for medium-sized', 80.00, 5.60, 2, 160.00, 11.20, 148.80, 'Gardening', 'TWB-039', 0.30, 'Green', 'Small', 4.50, 215, 'Charlie', '12 Aroma Blvd', '67890', '6677889', 'avaL@mail.com', 22, 31, 1),
(1040, 'Kitchen Faucet', 'Modern kitchen faucet with a chrome finish.', 200.00, 14.00, 1, 200.00, 14.00, 186.00, 'Plumbing', 'TWT-040', 0.20, 'Red', 'Small', 4.70, 240, 'David', '44 Music Rd', '78901', '7788990', 'ethanW@mail.com', 20, 39, 5),
(1041, 'Designer Wall Clock', 'Stylish wall clock with quartz movement.', 65.00, 4.55, 3, 195.00, 13.65, 181.35, 'Home Decor', 'TWF-041', 1.00, 'Blue', 'Medium', 4.80, 165, 'Bob', '55 Fashion Ave', '89012', '8899001', 'charA@mail.com', 28, 52, 5),
(1042, 'Granite Countertop', 'Durable granite countertop for kitchens and b', 110.00, 7.70, 2, 220.00, 15.40, 204.60, 'Furniture', 'TWB-042', 0.30, 'Green', 'Large', 4.90, 300, 'David', '66 Shine St', '90123', '9900112', 'lucasT@mail.com', 10, 1, 1),
(1043, 'Teakwood Desk', 'Spacious teakwood desk for office and study a', 95.00, 6.65, 1, 95.00, 6.65, 88.35, 'Furniture', 'TWH-043', 1.50, 'Red', 'XL', 4.40, 270, 'Alice', '77 Time Rd', '12378', '10121314', 'miaR@mail.com', 15, 11, 2),
(1044, 'Marble Floor Tile', 'Elegant marble tiles for luxurious flooring s', 130.00, 9.10, 3, 390.00, 27.30, 362.70, 'Flooring', 'TWT-044', 0.20, 'Black', 'Small', 4.60, 315, 'Bob', '33 Charge Ln', '23489', '12131415', 'noahW@mail.com', 8, 7, 3),
(1045, 'Solar Outdoor Lantern', 'Solar-powered lantern for garden or patio lig', 40.00, 2.80, 4, 160.00, 11.20, 148.80, 'Lighting', 'TWS-045', 1.00, 'White', 'Medium', 4.70, 340, 'Charlie', '44 Flex St', '34590', '13141516', 'harperS@mail.com', 10, 10, 2),
(1046, 'Platinum Shower Head', 'High-pressure shower head with a sleek platin', 270.00, 18.90, 1, 270.00, 18.90, 251.10, 'Plumbing', 'TWT-046', 0.50, 'Red', 'Large', 4.80, 165, 'David', '88 Snap Rd', '45601', '14151617', 'masonD@mail.com', 50, 18, 3),
(1047, 'ProCarpenter Toolkit', 'Comprehensive toolset for advanced carpentry ', 18.00, 1.26, 6, 108.00, 7.56, 100.44, 'Tools', 'TWH-047', 1.20, 'Blue', 'Small', 4.50, 225, 'Alice', '22 Decor Blvd', '56712', '15161718', 'evelynW@mail.com', 14, 46, 2),
(1048, 'Rose Garden Fertilizer', 'Specially formulated fertilizer for rose plan', 58.00, 4.06, 5, 290.00, 20.30, 269.70, 'Gardening', 'TWF-048', 0.10, 'Green', 'XL', 4.70, 310, 'Bob', '55 Pockets Rd', '67823', '17181920', 'jamesJ@mail.com', 16, 15, 5),
(1049, 'Vintage Wall Mirror', 'Decorative wall mirror with a vintage bronze ', 85.00, 5.95, 2, 170.00, 11.90, 158.10, 'Home Decor', 'TWK-049', 1.00, 'Yellow', 'Small', 4.60, 275, 'Charlie', '11 Vine St', '78934', '19202122', 'emmaM@mail.com', 20, 24, 4),
(1050, 'Digital Thermostat', 'Energy-saving digital thermostat with touch c', 220.00, 15.40, 1, 220.00, 15.40, 204.60, 'Electronics', 'TWK-050', 2.50, 'Black', 'Medium', 4.80, 190, 'Alice', '99 Bake Blvd', '89045', '21222324', 'benC@mail.com', 28, 8, 2),
(1052, 'Oakwood Coffee Table', 'Sturdy coffee table made from premium oakwood', 100.00, 7.00, 3, 300.00, 21.00, 279.00, 'Furniture', 'TWT-052', 0.80, 'White', 'Large', 4.70, 255, 'David', '11 Sound St', '91267', '25262728', 'oliviaH@email.com', 22, 35, 3),
(1053, 'Charcoal Grill Set', 'Portable charcoal grill set for barbecues and', 195.00, 13.65, 2, 390.00, 27.30, 362.70, 'Outdoor', 'TWG-053', 1.60, 'Yellow', 'XL', 4.80, 205, 'Bob', '52 Kings Rd', '10278', '27282930', 'lucasG@email.com', 15, 21, 1),
(1054, 'Electric Screwdriver', 'Cordless electric screwdriver with variable s', 24.00, 1.68, 5, 120.00, 8.40, 111.60, 'Tools', 'TWH-054', 0.90, 'Red', 'Medium', 4.60, 320, 'Charlie', '23 Bright Ln', '21389', '29303132', 'avaR@email.com', 12, 48, 4),
(1055, 'Velvet Cushion Cover', 'Soft velvet cushion cover in a rich burgundy ', 310.00, 21.70, 1, 310.00, 21.70, 288.30, 'Home Decor', 'TWK-055', 0.40, 'Blue', 'XL', 4.90, 375, 'Alice', '92 Coffee Blvd', '32490', '31323334', 'liamT@email.com', 18, 14, 5),
(1056, 'Bamboo Plant Pot', 'Biodegradable plant pot made from bamboo fibe', 52.00, 3.64, 4, 208.00, 14.56, 193.44, 'Gardening', 'TWA-056', 1.00, 'Green', 'Small', 4.70, 295, 'Bob', '48 Artistry Rd', '43501', '33343536', 'sophiaC@email.com', 10, 40, 4),
(1057, 'Steel Ladder (6ft)', 'Durable 6-foot steel ladder for household and', 62.00, 4.34, 5, 310.00, 21.70, 288.30, 'Tools', 'TWF-057', 0.70, 'Black', 'Large', 4.60, 310, 'Alice', '39 Winter St', '54612', '35363738', 'isabellaC@email.com', 26, 53, 3),
(1058, 'Terracotta Floor Vase', 'Handcrafted floor vase made from terracotta c', 44.00, 3.08, 3, 132.00, 9.24, 122.76, 'Home Decor', 'TWT-058', 0.50, 'White', 'Small', 4.90, 210, 'Charlie', '44 Future Ln', '65723', '37383940', 'ethanY@email.com', 50, 4, 3),
(1059, 'Modern Pendant Light', 'Contemporary pendant light with a matte black', 48.00, 3.36, 4, 192.00, 13.44, 178.56, 'Lighting', 'TWM-059', 0.60, 'Yellow', 'Medium', 4.80, 170, 'Alice', '67 Melody Blvd', '76834', '39404142', 'ameliaP@email.com', 45, 8, 2),
(1060, 'Outdoor Fire Pit', 'Rustic fire pit for outdoor heating and ambia', 88.00, 6.16, 2, 176.00, 12.32, 163.68, 'Outdoor', 'TWK-060', 1.30, 'Red', 'XL', 4.60, 265, 'David', '79 Cook St', '87945', '41424344', 'charlotteP@email.com', 18, 15, 3),
(1061, 'Cedar Wardrobe Closet', 'Spacious wardrobe made from aromatic cedar wo', 210.00, 14.70, 1, 210.00, 14.70, 195.30, 'Furniture', 'TWF-061', 0.20, 'Green', 'Medium', 4.50, 220, 'Charlie', '45 Luxury Blvd', '89016', '43454748', 'jamesW@email.com', 30, 18, 1),
(1062, 'Motion Sensor Alarm', 'Wireless motion sensor alarm for home securit', 70.00, 4.90, 3, 210.00, 14.70, 195.30, 'Security', 'TWH-062', 0.50, 'Black', 'Small', 4.90, 390, 'Alice', '17 Greenery Ln', '90127', '49505152', 'miaS@email.com', 8, 10, 4),
(1063, 'Fabric Window Blinds', 'Adjustable window blinds made from durable fa', 120.00, 8.40, 2, 240.00, 16.80, 223.20, 'Home Decor', 'TWT-063', 0.10, 'Blue', 'Large', 4.70, 310, 'Bob', '62 Tech Rd', '91238', '51535754', 'masonB@email.com', 15, 7, 1),
(1064, 'Luxury Bath Towel Set', 'Soft and absorbent bath towel set in a light ', 105.00, 7.35, 1, 105.00, 7.35, 97.65, 'Home Essentials', 'TWS-064', 0.80, 'Yellow', 'Small', 4.80, 215, 'David', '91 Balance St', '92349', '57596162', 'harperL@email.com', 20, 19, 5),
(1065, 'Tropical Plant Mix', 'A selection of tropical plants for indoor gar', 115.00, 8.05, 2, 230.00, 16.10, 213.90, 'Gardening', 'TWT-065', 0.10, 'White', 'XL', 4.60, 295, 'Alice', '34 Health Rd', '93450', '63677172', 'jacksonC@email.com', 28, 21, 2),
(1066, 'Luxury Chandelier', 'Crystal chandelier with gold accents for eleg', 46.00, 3.22, 3, 138.00, 9.66, 128.34, 'Lighting', 'TWK-066', 0.90, 'Red', 'Small', 4.70, 240, 'Charlie', '47 Brew Blvd', '94561', '73758182', 'evelynJ@email.com', 22, 25, 4),
(1067, 'Cast Iron Skillet', 'Durable cast iron skillet perfect for even co', 290.00, 20.30, 1, 290.00, 20.30, 269.70, 'Kitchenware', 'TWS-067', 12.00, 'Blue', 'Medium', 4.80, 120, 'Bob', '82 Adventure Rd', '95672', '79819292', 'wyattB@email.com', 60, 1, 1),
(1068, 'Woven Storage Basket', 'Hand-woven basket for storage and organizatio', 22.00, 1.54, 5, 110.00, 7.70, 102.30, 'Home Decor', 'TWO-068', 0.00, 'Green', 'Large', 4.90, 180, 'David', '56 Write St', '96783', '81831002', 'lilyT@email.com', 35, 22, 5),
(1069, 'Cordless Leaf Blower', 'High-power leaf blower for garden maintenance', 63.00, 4.41, 4, 252.00, 17.64, 234.36, 'Gardening', 'TWFO-069', 0.70, 'Red', 'XL', 4.70, 260, 'Alice', '74 Tasty Ln', '97894', '83841112', 'leoA@email.com', 18, 13, 3),
(1070, 'Quartz Kitchen Counter', 'Premium quartz counter for modern kitchens.', 92.00, 6.44, 2, 184.00, 12.88, 171.12, 'Furniture', 'TWT-070', 0.30, 'Black', 'Small', 4.50, 300, 'Charlie', '88 Audio Ave', '98905', '84851222', 'ariaT@email.com', 40, 23, 2),
(1071, 'Handheld Vacuum Cleaner', 'Compact and powerful vacuum cleaner for quick', 235.00, 16.45, 1, 235.00, 16.45, 218.55, 'Electronics', 'TWH-071', 1.50, 'White', 'Medium', 4.70, 250, 'David', '23 Comfort Ct', '99016', '85861332', 'benG@email.com', 42, 35, 2),
(1072, 'Brass Coat Rack', 'Sturdy coat rack with a polished brass finish', 110.00, 7.70, 3, 330.00, 23.10, 306.90, 'Furniture', 'TWFO-072', 0.20, 'Blue', 'Large', 4.90, 320, 'Bob', '99 Brew Pl', '90127', '86871442', 'zoeM@email.com', 25, 41, 5),
(1073, 'Electric Water Heater', 'Energy-efficient water heater with a 50-gallo', 205.00, 14.35, 2, 410.00, 28.70, 381.30, 'Plumbing', 'TWO-073', 0.70, 'Green', 'Small', 4.80, 290, 'David', '76 Bright Ln', '91238', '87881552', 'eliR@email.com', 20, 42, 2),
(1074, 'Porcelain Dinner Set', 'Elegant dinner set made of fine porcelain.', 29.00, 2.03, 6, 174.00, 12.18, 161.82, 'Kitchenware', 'TWK-074', 0.30, 'Yellow', 'Medium', 4.70, 350, 'Alice', '57 Morning Blvd', '92349', '88891662', 'sophiaP@email.com', 18, 51, 1),
(1075, 'Linen Curtain Panels', 'Soft linen curtains in a neutral beige color.', 325.00, 22.75, 1, 325.00, 22.75, 302.25, 'Home Decor', 'TWF-075', 1.20, 'Red', 'Large', 4.60, 210, 'Bob', '69 Style St', '93450', '89901772', 'oliverR@email.com', 28, 5, 1),
(1076, 'Organic Potting Soil', 'Nutrient-rich potting soil for healthy plants', 57.00, 3.99, 3, 171.00, 11.97, 159.03, 'Gardening', 'TWK-076', 1.10, 'Black', 'Medium', 4.50, 280, 'Charlie', '22 Brew Ave', '94561', '90911882', 'lucyG@email.com', 24, 1, 4),
(1077, 'Modular Sofa Set', 'Modern modular sofa set with adjustable confi', 68.00, 4.76, 4, 272.00, 19.04, 252.96, 'Furniture', 'TWS-077', 5.00, 'White', 'Small', 4.70, 180, 'David', '81 Fitness Rd', '95672', '91921992', 'leviD@email.com', 30, 2, 4),
(1078, 'Slate Tile Pack', 'Natural slate tiles for rustic flooring desig', 49.00, 3.43, 2, 98.00, 6.86, 91.14, 'Flooring', 'TWH-078', 0.30, 'Green', 'XL', 4.60, 230, 'Alice', '32 Smile Ln', '96783', '92932002', 'avaS@email.com', 28, 36, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`) VALUES
(1, 'John', 'Doe', 'johndoe', 'john@example.com'),
(2, 'Jane', 'Doe', 'janedoe', 'jane@example.com'),
(3, 'Mike', 'Smith', 'mikesmith', 'mike@example.com'),
(4, 'Lisa', 'Jones', 'lisajones', 'lisa@example.com'),
(5, 'Steve', 'Brown', 'stevebrown', 'steve@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `orderid_sales` (`order_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customers_customerid` (`customer_id`),
  ADD KEY `countryid_countries` (`country_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `orderid_sales` FOREIGN KEY (`order_id`) REFERENCES `sales` (`order_id`),
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `sales` (`order_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `countryid_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`),
  ADD CONSTRAINT `customers_customerid` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
