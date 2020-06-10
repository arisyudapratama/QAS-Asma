-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 03:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qas_asma`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivasi_query`
--

CREATE TABLE `aktivasi_query` (
  `id_aktivasi_query` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aktivasi_query`
--

INSERT INTO `aktivasi_query` (`id_aktivasi_query`, `pertanyaan`) VALUES
(1, 'Napas terengah dada sakit jari kaki dan tangan sulit digerakkan, dan mata juga sulit terbuka. Napas tidak teratur, saya tidak sadar. Apa itu berbahaya untuk saya?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id_api` int(11) NOT NULL,
  `id_query` int(11) NOT NULL,
  `API` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id_api`, `id_query`, `API`) VALUES
(1, 1, 'udara yang diisap melalui hidung atau mulut dan dikeluarkan kembali dari paru-paru'),
(2, 1, 'kuning kemerah-merahan (tentang warna bulu, terutama kuda)'),
(3, 1, 'tahu (sadar atau mengerti)'),
(4, 1, 'engah-engah'),
(5, 1, 'terperengah'),
(6, 1, 'bagian tubuh sebelah depan di antara perut dan leher'),
(7, 1, 'rongga tubuh tempat letak jantung dan paru-paru'),
(8, 1, 'berasa tidak nyaman di tubuh atau bagian tubuh karena menderita sesuatu (demam, sakit perut, dsb)'),
(9, 1, 'ujung tangan atau kaki yang beruas-ruas, lima banyaknya'),
(10, 1, 'nama ukuran, kira-kira sebesar atau selebar jari tangan orang dewasa'),
(11, 1, 'bagian suatu benda yang rupanya seperti jari'),
(12, 1, '-- buaya'),
(13, 1, 'kisi-kisi'),
(14, 1, 'terali'),
(15, 1, 'sengkang roda yang dipasang di titik pusat roda sampai pada lingkaran'),
(16, 1, 'garis lurus dari titik pusat ke keliling bulatan (lingkaran)'),
(17, 1, 'radius'),
(18, 1, 'anggota badan yang menopang tubuh dan dipakai untuk berjalan (dari pangkal paha ke bawah)'),
(19, 1, 'bagian tungkai (kaki) yang paling di bawah'),
(20, 1, 'bagian suatu benda yang menjadi penopang (penyangga) yang berfungsi sebagai kaki'),
(21, 1, 'bagian yang bawah'),
(22, 1, 'kata penggolong bilangan bagi payung'),
(23, 1, 'ukuran panjang, 12 inci (= ? 0.3048 m)'),
(24, 1, 'bagian kaki unggas yang kasar dan bersisik'),
(25, 1, 'kakek'),
(26, 1, 'aki'),
(27, 1, 'kesemek'),
(28, 1, 'menaikkan kedua belah tangan sampai ke atas bahu tanda tidak akan melawan atau tanda menyerah'),
(29, 1, 'sukar sekali'),
(30, 1, 'susah (diselesaikan, dikerjakan, dsb)'),
(31, 1, 'susah dicari'),
(32, 1, 'jarang terdapat'),
(33, 1, 'dirahasiakan (sukar diketahui dsb)'),
(34, 1, 'tersembunyi'),
(35, 1, 'gelap (rahasia, tidak terang-terangan)'),
(36, 1, 'dalam keadaan yang sukar (genting, gawat, dsb)'),
(37, 1, 'peralihan tempat atau kedudukan, baik hanya sekali maupun berkali-kali'),
(38, 1, 'dorongan (batin, perasaan, dsb)'),
(39, 1, 'denyut-denyut atau kedut-kedut (pada mata, bibir, dsb) yang dianggap sebagai firasat atau gelagat'),
(40, 1, 'indra untuk melihat'),
(41, 1, 'indra penglihat'),
(42, 1, 'sesuatu yang menyerupai mata (seperti lubang kecil, jala)'),
(43, 1, 'bagian yang tajam pada alat pemotong (pada pisau, kapak, dsb)'),
(44, 1, 'sela antara dua baris (pada mistar, derajat, dsb)'),
(45, 1, 'tempat tumbuh tunas (pada dahan, ubi, dsb)'),
(46, 1, 'sesuatu yang menjadi pusat'),
(47, 1, 'yang di tengah-tengah benar'),
(48, 1, 'yang terpenting (sumbu, pokok, dsb)'),
(49, 1, 'satuan ukuran berat untuk candu'),
(50, 1, 'insaf'),
(51, 1, 'merasa'),
(52, 1, 'tahu dan mengerti'),
(53, 1, 'ingat kembali (dari pingsan dsb)'),
(54, 1, 'siuman'),
(55, 1, 'bangun (dari tidur)'),
(56, 1, 'dada'),
(57, 1, 'bagian depan'),
(58, 1, 'permulaan'),
(59, 1, 'pendahuluan');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, 'asma', 1, 1, 1.5),
(2, 'kambuh', 1, 1, 1.5),
(3, 'uap', 1, 1, 1.5),
(4, 'obat', 1, 2, 3),
(5, 'minum', 1, 1, 1.5),
(6, 'badan', 1, 2, 3),
(7, 'lemas', 1, 1, 1.5),
(8, 'mual', 1, 1, 1.5),
(9, 'pegal', 1, 1, 1.5),
(10, 'asetilsistein', 1, 1, 1.5),
(11, 'alegi', 1, 1, 1.5),
(12, 'napas', 2, 2, 2.4),
(13, 'engah', 2, 1, 1.5),
(14, 'dada', 2, 1, 1.5),
(15, 'sakit', 2, 1, 1.5),
(16, 'jari', 2, 1, 1.5),
(17, 'kaki', 2, 1, 1.5),
(18, 'tangan', 2, 1, 1.5),
(19, 'sulit', 2, 2, 3),
(20, 'gerak', 2, 1, 1.5),
(21, 'mata', 2, 1, 1.5),
(22, 'sadar', 2, 1, 1.5),
(23, 'bahaya', 2, 1, 1.5),
(24, 'sesak', 3, 1, 1.5),
(25, 'tarik', 3, 2, 3),
(26, 'napas', 3, 2, 2.4),
(27, 'batuk', 3, 1, 1.5),
(28, 'kering', 3, 1, 1.5),
(29, 'bersin', 3, 1, 1.5),
(30, 'telinga', 3, 1, 1.5),
(31, 'tutup', 3, 1, 1.5),
(32, 'air', 3, 1, 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `bobot_query`
--

CREATE TABLE `bobot_query` (
  `id_bobot_query` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_query`
--

INSERT INTO `bobot_query` (`id_bobot_query`, `Term`, `Bobot`) VALUES
(1, 'air', 0),
(2, 'alegi', 0),
(3, 'asetilsistein', 0),
(4, 'asma', 0),
(5, 'badan', 0),
(6, 'bahaya', 1),
(7, 'batuk', 0),
(8, 'bersin', 0),
(9, 'dada', 1),
(10, 'engah', 1),
(11, 'gerak', 1),
(12, 'jari', 1),
(13, 'kaki', 1),
(14, 'kambuh', 0),
(15, 'kering', 0),
(16, 'lemas', 0),
(17, 'mata', 1),
(18, 'minum', 0),
(19, 'mual', 0),
(20, 'napas', 1),
(21, 'obat', 0),
(22, 'pegal', 0),
(23, 'sadar', 1),
(24, 'sakit', 1),
(25, 'sesak', 0),
(26, 'sulit', 1),
(27, 'tangan', 1),
(28, 'tarik', 0),
(29, 'telinga', 0),
(30, 'tutup', 0),
(31, 'uap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_ori`
--

CREATE TABLE `data_ori` (
  `id_data_ori` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL,
  `jawaban` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ori`
--

INSERT INTO `data_ori` (`id_data_ori`, `pertanyaan`, `jawaban`) VALUES
(1, 'Asma saya kambuh dan harus diuap. Begitu selesai saya dikasih resep. Obat saya minum, kok badan saya berasa lemas. Mual dan badan pegal semua. Padahal biasanya saya tidak pernah begitu. Nama obatnya Asetilsistein dan Alegi.', 'Asma dapat kambuh akibat terjadi pajanan terhadap pencetusnya dimana kondisi serangan ini dapat timbul ringan sampai berat. Jika kekambuhan cukup sering maka perlu untuk dilakukan evaluasi baik pengobatan yang diberikan maupun faktor apa yang memicunya agar dapat dihindari dan asma tidak kembali kambuh.\r\n\r\nObat yang digunakan untuk mengelola asma sendiri ada beberapa macam, baik obat yang untuk meredakan ketika serangan sedang timbul maupun obat yang digunakan untuk mengelola agar tidak kembali terjadi serangan. Obat yang diberikan sendiri juga biasanya digunakan untuk mengatasi gejala lain atau gejala yang menjadi pemicu seperti misalnya ketika sedang batuk dan pilek.\r\n\r\nObat yang diberikan untuk Anda adalah acetylcysteine yang merupakan obat antimukolitik yang berfungsi untuk mengencerkan dahak yang mengganggu saluran pernapasan, obat ini memiliki efek samping seperti mual, muntah, sariawan, mengantuk, pilek ataupun demam. Sedangkan obat kedua yaitu obat yang berisi antihistamin dan kotrikosteroid yang berfungsi untuk mengatasi alergi dan juga peradangan dimana pada asma dapat terjadi peradangan dan penyempitan pada saluran pernapasan. Jika timbul gejala seperti yang dirasakan kondisi tersebut dapat mungkin terjadi akibat efek samping obat ataupun kondisi lain yang menjadi penyebabnya seperti misalnya jika terjadi gangguan pencernaan ataupun demam dan infeksi saluran pernapasan.\r\n\r\nUntuk itu perlu diperhatikan jika mengonsumsi obat serupa dan kembali mengalami hal yang sama maka perlu untuk dihindari karena dapat mungkin merupakan efek samping obat. Periksakan kembali kondisi Anda dan terangkan pada dokter mengenai kondisi yang dialami dan obat apa yang dikonsumsi sehingga dapat dipertimbangkan untuk mengganti dengan obat lain yang sesuai dengan kondisi Anda. Jika timbul reaksi alergi yang lebih berat, sesak napas kembali menyerang, dan timbul keluhan lain seperti ruam kulit, bibir, kelopak mata terasa kebas atau membengkak maka segera datang ke fasilitas kesehatan untuk mendapatkan penanganan.  '),
(2, 'Napas terengah dada sakit jari kaki dan tangan sulit digerakkan, dan mata juga sulit terbuka. Napas tidak teratur, saya tidak sadar. Apa itu berbahaya untuk saya?', 'Asma adalah reaksi alergi yang terjadi pada saluran napas. Ditandai dengan sesak napas disertai suara \"ngi\". Terjadi akibat alergen (seperti debu, serbuk bunga, makanan bahan udang dan telur, udara dingin dan lain-lain) menyebabkan saluran napas mengalami konstriksi sehingga menyempit, ditambah lapisan mukosa saluran napas menghasilkan lendir dalam jumlah banyak sehingga menutupi saluran napas yang menyempit. Maka muncullah sesak napas. Pada saat menghembuskan napas, udara keluar diantara saluran napas yang menyempit dan ditutupi lendir, sehingga muncul suara \"ngik\". Hal ini hanya terjadi pada seseorang yang hipersensitif. Terdapat kaitan yang erat dengan faktor keturunan.\r\nSeseorang yang mengalami asma, dapat memiliki reaksi alergi dalam bentuk yang lain, dari yang ringan (seperti bintik kemerahan yang gatal pada kulit akibat berkontak dengan logam jam tangan penyebab reaksi alergi, bersin-bersin pagi hari akibat debu) hingga kondisi yang berat (reaksi anafilaksis dan angioudema) yang ditandai peningkatan denyut nadi, penurunan kesadaran, muka bengkak dan bibir bengkak). Untuk itu, sebaiknya hindarilah kondisi yang dapat memicu reaksi, seperti udara dingin malam hari. Apabila harus mengikuti kegiatan camping, siapkanlah pakaian penghangat lengkap dari kaus kaki hingga topi dan obat-obatan anti alergi. Karena pada penyakit asma pun dapat terjadi serangan asma yang berat, disebut Serangan asmatikus. Dimana dapat hingga menyebabkan penurunan kesadaran dan henti napas sehingga membutuhkan perawatan intensif.\r\nUntuk apa yang telah anda alami. Sebaiknya berkonsultasi dengan dokter paru anda. Agar dokter dapat melakukan pemeriksaan pada paru-paru anda. Agar dokter dapat menilai derajat berat ringannya penyakit asma pada anda. Dan dapat memberikan pengobatan yang sesuai berdasarkan kondisi berat ringannya penyakit anda.\r\nDemikian semoga bermanfaat.    '),
(3, 'Sesak saat saya tarik napas batuk kering dan susah menarik napas, kenapa? Bangun pagi sering bersin tapi sampai telinga saya kadang kayak terasa tertutup seperti kemasukan air, itu kenanapa?', 'Batuk adalah salah satu cara tubuh dalam mencegah atau mengeluarkan “benda asing” atau zat/partikel tertentu ke saluran pernafasan. Batuk yang hanya sekali-sekali masih bisa disebut wajar, namun jika sudah berulang kali, berhari-hari, hingga berdahak, berdarah, sesak nafas, demam, maka batuk tersebut merupakan salah satu tanda dari adanya penyakit tertentu.Batuk dapat disebabkan oleh infeksi (misalnya: infeksi saluran pernafasan atas, pneumonia, TB, dl), asma, bronchitis, konsumsi obat darah tinggi tertentu, dll.\r\n\r\nAsma sendiri merupakan penyakit kronis (jangka panjang) dimana terjadi penyempitan bronchus (saluran/pipa2 pernafasan di paru-paru) karena seseorang tersebut memiliki sistem saluran pernafasan yang lebih “sensitive” terhadap sesuatu. Gejala asma misalnya sesak nafas, nafas berbunyi mengi saat mengeluarkan nafas, dan batuk-batuk. Gejala tersebut muncul secara hilang-timbul, misalnya ketika terpapar hal yang membuat alergi, stress, zat-zat yang membuat iritasi saluran nafas, maka gejala-gejala tersebut dapat muncul. Memiliki keluarga yang memiliki riwayat asma dapat meningkatkan kemungkinan seseorang untuk menderita asma juga.\r\n\r\nBatuk-batuk merupakan salah 1 gejala asma, namun bisa juga karena kondisi penyakit lain seperti yang sudah saya sebutkan di atas. Untuk menentukan penyebabnya, sebaiknya Anda pergi ke dokter untuk dilakukan pemeriksaan fisik dan penunjang yang diperlukan, misalnya tes darah lengkap, foto ronsen, spirometry, dll. Pengobatannya tergantung dari penyebabnya.\r\n\r\nBersin-bersin bisa disebabkan karena rhinitis (radang pada hidung), bisa karena alergi, infeksi, gangguan hormonal, stress, atau vasomotor. Telinga yang terasa penuh bisa disebabkan karena adanya gangguan pada fungsi tuba eustachius (saluran yang menghubungkan antara tenggorokan dengan telinga) karena ada rhinitis, tonsilitis, radang di telinga, dll; atau karena ada penyumbatan di telinga, misalnya karena penumpukan cerumen (kotoran telinga) atau peradangan di telinga luar atau telinga tengah. Untuk menentukan penyebabnya, harus dilakukan pemeriksaan langsung oleh dokter atau dokter spesialis THT.\r\n\r\nJangan tunda untuk ke dokter jika batuk tidak kunjung reda lebih dari 7 hari, batuk terus berulang, batuk disertai dahak, demam, sesak nafas, batuk disertai darah. Jika memiliki alergi, hindari paparan terhadap hal-hal yang dapat mencetuskan alergi tersebut.  ');

-- --------------------------------------------------------

--
-- Table structure for table `data_proses`
--

CREATE TABLE `data_proses` (
  `id_data_proses` int(11) NOT NULL,
  `id_proses` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_proses`
--

INSERT INTO `data_proses` (`id_data_proses`, `id_proses`, `pertanyaan`) VALUES
(1, 1, 'asma kambuh uap obat minum badan lemas mual badan pegal obat asetilsistein alegi'),
(2, 2, 'napas engah dada sakit jari kaki tangan sulit gerak mata sulit napas sadar bahaya'),
(3, 3, 'sesak tarik napas batuk kering tarik napas bersin telinga tutup air');

-- --------------------------------------------------------

--
-- Table structure for table `prakomputasi`
--

CREATE TABLE `prakomputasi` (
  `prakomputasi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prakomputasi`
--

INSERT INTO `prakomputasi` (`prakomputasi`) VALUES
('[[0,56.64,56.64,56.64,115.64,0,0,0,0,0,0,0,0,56.64,0,56.64,0,56.64,56.64,0,115.64,56.64,0,0,0,0,0,0,0,0,56.64],[9.1,0,0,0,0,54.07,9.1,9.1,54.07,54.07,54.07,54.07,54.07,0,9.1,0,54.07,0,0,100.99,0,0,54.07,54.07,9.1,111.07,54.07,16.03,9.1,9.1,0],[46.37,0,0,0,0,8.47,46.37,46.37,8.47,8.47,8.47,8.47,8.47,0,46.37,0,8.47,0,0,86.68,0,0,8.47,8.47,46.37,16.96,8.47,91.44,46.37,46.37,0]]');

-- --------------------------------------------------------

--
-- Table structure for table `propagasi`
--

CREATE TABLE `propagasi` (
  `id_propagasi` int(11) NOT NULL,
  `propagasi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propagasi`
--

INSERT INTO `propagasi` (`id_propagasi`, `propagasi`) VALUES
(1, 636.1),
(2, 182),
(3, 474.1);

-- --------------------------------------------------------

--
-- Table structure for table `propagasi2`
--

CREATE TABLE `propagasi2` (
  `id_propagasi2` int(11) NOT NULL,
  `propagasi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propagasi2`
--

INSERT INTO `propagasi2` (`id_propagasi2`, `propagasi`) VALUES
(1, 0),
(2, 752.76),
(3, 188.34);

-- --------------------------------------------------------

--
-- Table structure for table `query_proses`
--

CREATE TABLE `query_proses` (
  `id_query_proses` int(11) NOT NULL,
  `id_aktivasi` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query_proses`
--

INSERT INTO `query_proses` (`id_query_proses`, `id_aktivasi`, `pertanyaan`) VALUES
(1, 1, 'napas engah dada sakit jari kaki tangan sulit gerak mata sadar bahaya');

-- --------------------------------------------------------

--
-- Table structure for table `svd`
--

CREATE TABLE `svd` (
  `U` longtext NOT NULL,
  `D` longtext NOT NULL,
  `S` longtext NOT NULL,
  `S2` longtext NOT NULL,
  `UT` longtext NOT NULL,
  `Aresult` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svd`
--

INSERT INTO `svd` (`U`, `D`, `S`, `S2`, `UT`, `Aresult`) VALUES
('[[0.12,0,0.25],[0,-0.24,0],[-0,-0.24,-0],[0,-0.24,0],[0,-0.49,0],[0.2,0,-0.14],[0.12,0,0.25],[0.12,0,0.25],[0.2,0,-0.14],[0.2,0,-0.14],[0.2,0,-0.14],[0.2,0,-0.14],[0.2,0,-0.14],[0,-0.24,0],[0.12,0,0.25],[0,-0.24,0],[0.2,0,-0.14],[0,-0.24,0],[0,-0.24,0],[0.51,0,0.17],[0,-0.49,0],[0,-0.24,0],[0.2,0,-0.14],[0.2,0,-0.14],[0.12,0,0.25],[0.41,0,-0.29],[0.2,0,-0.14],[0.23,0,0.5],[0.12,0,0.25],[0.12,0,0.25],[0,-0.24,0]]', '[[6.37,0,0],[0,6.18,0],[0,0,5.22]]', '[[6.37,0,0],[0,6.18,0],[0,0,5.22]]', '[[40.58,0,0],[0,38.19,0],[0,0,27.25]]', '[[0.12,0,-0,0,0,0.2,0.12,0.12,0.2,0.2,0.2,0.2,0.2,0,0.12,0,0.2,0,0,0.51,0,0,0.2,0.2,0.12,0.41,0.2,0.23,0.12,0.12,0],[0,-0.24,-0.24,-0.24,-0.49,0,0,0,0,0,0,0,0,-0.24,0,-0.24,0,-0.24,-0.24,0,-0.49,-0.24,0,0,0,0,0,0,0,0,-0.24],[0.25,0,-0,0,0,-0.14,0.25,0.25,-0.14,-0.14,-0.14,-0.14,-0.14,0,0.25,0,-0.14,0,0,0.17,0,0,-0.14,-0.14,0.25,-0.29,-0.14,0.5,0.25,0.25,0]]', '[[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0,4.49,4.49,4.49,9.17,0,0,0,0,0,0,0,0,4.49,0,4.49,0,4.49,4.49,0,9.17,4.49,0,0,0,0,0,0,0,0,4.49],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[3.64,0,0,0,0,3.49,3.64,3.64,3.49,3.49,3.49,3.49,3.49,0,3.64,0,3.49,0,0,11.34,0,0,3.49,3.49,3.64,7.14,3.49,7.08,3.64,3.64,0],[0,4.49,4.49,4.49,9.17,0,0,0,0,0,0,0,0,4.49,0,4.49,0,4.49,4.49,0,9.17,4.49,0,0,0,0,0,0,0,0,4.49],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[0.02,0,0,0,0,4.43,0.02,0.02,4.43,4.43,4.43,4.43,4.43,0,0.02,0,4.43,0,0,7.14,0,0,4.43,4.43,0.02,9.11,4.43,-0.12,0.02,0.02,0],[0.02,0,0,0,0,2.16,0.02,0.02,2.16,2.16,2.16,2.16,2.16,0,0.02,0,2.16,0,0,3.49,0,0,2.16,2.16,0.02,4.44,2.16,-0.04,0.02,0.02,0],[4.53,0,0,0,0,-0.04,4.53,4.53,-0.04,-0.04,-0.04,-0.04,-0.04,0,4.53,0,-0.04,0,0,7.08,0,0,-0.04,-0.04,4.53,-0.13,-0.04,8.96,4.53,4.53,0],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[2.29,0,0,0,0,0.02,2.29,2.29,0.02,0.02,0.02,0.02,0.02,0,2.29,0,0.02,0,0,3.64,0,0,0.02,0.02,2.29,0.02,0.02,4.53,2.29,2.29,0],[0,2.2,2.2,2.2,4.49,0,0,0,0,0,0,0,0,2.2,0,2.2,0,2.2,2.2,0,4.49,2.2,0,0,0,0,0,0,0,0,2.2]]');

-- --------------------------------------------------------

--
-- Table structure for table `svd_eigen`
--

CREATE TABLE `svd_eigen` (
  `Ueigenvalue` longtext NOT NULL,
  `Ueigenvector` longtext NOT NULL,
  `Deigenvalue` longtext NOT NULL,
  `Deigenvector` longtext NOT NULL,
  `D2` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svd_eigen`
--

INSERT INTO `svd_eigen` (`Ueigenvalue`, `Ueigenvector`, `Deigenvalue`, `Deigenvector`, `D2`) VALUES
('[[40.8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,38.49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,27.46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0.21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0.21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0.01,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0.13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]', '[[0.12,0,-0.25,0.18,0,0.01,-0.19,-0.1,-0.21,-0.14,0.26,0.39,-0.75,-0.04,-0,-0,-0,0,-0,0,0,-0,-0,0,0,-0,0,0,-0,0,0],[0,0.24,0,-0,0.23,0,-0,0.52,0.61,0.4,-0.08,0.14,-0.26,-0.02,-0,-0,-0,0,0,0,0,0,0,0,-0,0,0,-0,0,0,0],[-0,0.24,-0,-0,0.23,0,-0,-0.03,0.03,0.09,0.9,-0.12,0.23,0.01,0,0,0,-0,0,-0,0,0,0,-0,-0,-0,0,0,0,-0,0],[-0,0.24,-0,-0,0.23,0,0,-0.56,-0.21,0.7,-0.2,0.01,-0.06,0.01,0,0,0,-0,-0,-0,-0,-0,-0,-0,0,0,-0,-0,-0,-0,0],[-0,0.48,0,0,-0.52,0,0,0.45,-0.5,0.21,-0,-0.02,0.04,0,-0,-0,0,0,0,-0,0,-0,0,-0,0,0,0,0,-0,0,-0],[0.21,-0,0.14,0.17,0,0,0.1,0.02,0.01,-0.02,-0,-0.69,-0.39,0.52,0,0,0,-0,0,-0,-0,-0,0,-0,-0,0,0,0,0,0,-0],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.01,0.04,0.03,-0.04,0.4,0.33,0.77,-0,0,-0,0,-0,0,-0,-0,-0,0,0,0,-0,0,-0,0,0],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.02,0.03,0.02,-0.04,-0.16,0.08,-0.14,-0.12,-0.05,-0.66,0.53,-0.26,-0,0,-0,0,-0,0,0,0,-0,0,-0,-0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.06,0.93,-0.01,0.02,-0.14,0,0,-0,0,-0,0,0,0,0,0,-0,0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.22,-0.23,0.54,0.42,-0.57,0,0,-0,0,-0,0,0,0,-0,0,0,-0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,-0.92,-0.07,0.12,-0.1,-0.09,0,0,-0,0,-0,0,0,-0,-0,0,0,-0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.2,-0.19,-0.36,-0.66,-0.49,0.02,-0,0,-0,0,-0,-0,0,-0,0,0,-0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.09,-0.09,-0.06,0.08,0.27,0.89,-0,0,-0,0,-0,-0,0,0,0,-0,0],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,0,-0,-0,-0,0,0,0.91,-0,0,-0,0,0,0,0,0,-0,-0],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.02,0.03,0.02,-0.04,-0.16,0.08,-0.14,0.03,0.01,0.17,-0.13,0.06,0,-0,0.47,0.35,-0.63,0.07,0.05,0,-0,-0,0,-0],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,-0,0,0,0,-0,-0,-0.18,-0.74,0.32,-0.38,0.03,0.01,0,0,0,0,-0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.09,-0.09,-0.06,0.06,0.25,-0.23,0,-0.08,-0.72,-0.43,0.21,-0.01,0,-0,0,0,0],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,-0,0,0,0,-0,-0,-0.18,0.18,0.04,0.27,0.77,0.31,0,-0,-0,0,0],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,-0,0,0,0,-0,-0,-0.18,0.21,-0.04,0.06,0.01,-0.87,-0,0,0,0,0],[0.51,-0,-0.17,-0.5,-0,-0.68,0.06,-0,-0,0,0,0,-0,-0,-0,-0,0,-0,-0,-0,-0,0,0,0,0,-0,0,-0,0,0,0],[-0,0.48,0,0,-0.52,-0,0,-0.45,0.5,-0.21,0,0.02,-0.04,-0,-0,0,-0,-0,-0,0,0,0,-0,0,0,-0,0,0,0,-0,0],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,-0,0,0,0,-0,-0,-0.18,0.18,-0.16,0.02,-0.41,0.28,-0.29,-0.6,0.25,0.04,0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.09,-0.09,-0.06,0.06,0.25,-0.23,0,0.03,0.24,0.14,-0.07,0,-0.38,0.42,0.58,-0.03,0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.09,-0.09,-0.06,0.06,0.25,-0.23,0,0.03,0.24,0.14,-0.07,0,0.75,-0.3,0.13,0.01,0],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.02,0.03,0.02,-0.04,-0.16,0.08,-0.14,0.03,0.01,0.17,-0.13,0.06,0,-0,-0.16,-0.12,0.21,-0.02,-0.02,-0.01,-0.05,-0.01,-0.81,-0],[0.41,0,0.28,-0.45,-0,0.52,-0.53,0,0,-0,-0,-0,0,0,-0,-0,-0,0,-0,-0,-0,-0,0,-0,0,-0,-0,-0,-0,-0,0],[0.21,0,0.14,0.17,0,0,0.1,-0,-0,0,0,0.08,0.04,-0.06,0.09,-0.09,-0.06,0.06,0.25,-0.23,0,0.03,0.24,0.14,-0.07,0,-0.37,-0.12,-0.72,0.02,-0],[0.23,0,-0.5,-0.23,-0,0.52,0.62,0,0,-0,-0,-0,0,0,0,0,0,-0,0,0,0,0,0,0,-0,-0,0,0,0,0,0],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.02,0.03,0.02,-0.04,-0.16,0.08,-0.14,0.03,0.01,0.17,-0.13,0.06,0,-0,-0.16,-0.12,0.21,-0.02,-0.02,0,0.03,0.01,0.41,0.71],[0.12,0,-0.25,0.18,0,0.01,-0.19,0.02,0.03,0.02,-0.04,-0.16,0.08,-0.14,0.03,0.01,0.17,-0.13,0.06,0,-0,-0.16,-0.12,0.21,-0.02,-0.02,0,0.03,0.01,0.41,-0.71],[-0,0.24,-0,-0,0.23,0,0,0.01,-0.07,-0.2,-0.1,-0,0.02,0,-0,0,0,0,-0,-0,-0.18,0.18,-0.16,0.02,-0.41,0.28,0.29,0.6,-0.25,-0.04,-0]]', '[[40.62,0,0],[0,38.3,0],[0,0,27.18]]', '[[0,-1,0],[0.87,0,0.5],[0.5,0,-0.87]]', '[[0,0.87,0.5],[-1,0,0],[0,0.5,-0.87]]');

-- --------------------------------------------------------

--
-- Table structure for table `tfidf`
--

CREATE TABLE `tfidf` (
  `A` longtext NOT NULL,
  `AT` longtext NOT NULL,
  `AxAT` longtext NOT NULL,
  `ATxA` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tfidf`
--

INSERT INTO `tfidf` (`A`, `AT`, `AxAT`, `ATxA`) VALUES
('[[0,0,1.5],[1.5,0,0],[1.5,0,0],[1.5,0,0],[3,0,0],[0,1.5,0],[0,0,1.5],[0,0,1.5],[0,1.5,0],[0,1.5,0],[0,1.5,0],[0,1.5,0],[0,1.5,0],[1.5,0,0],[0,0,1.5],[1.5,0,0],[0,1.5,0],[1.5,0,0],[1.5,0,0],[0,2.4,2.4],[3,0,0],[1.5,0,0],[0,1.5,0],[0,1.5,0],[0,0,1.5],[0,3,0],[0,1.5,0],[0,0,3],[0,0,1.5],[0,0,1.5],[1.5,0,0]]', '[[0,1.5,1.5,1.5,3,0,0,0,0,0,0,0,0,1.5,0,1.5,0,1.5,1.5,0,3,1.5,0,0,0,0,0,0,0,0,1.5],[0,0,0,0,0,1.5,0,0,1.5,1.5,1.5,1.5,1.5,0,0,0,1.5,0,0,2.4,0,0,1.5,1.5,0,3,1.5,0,0,0,0],[1.5,0,0,0,0,0,1.5,1.5,0,0,0,0,0,0,1.5,0,0,0,0,2.4,0,0,0,0,1.5,0,0,3,1.5,1.5,0]]', '[[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,4.5,4.5,4.5,9,0,0,0,0,0,0,0,0,4.5,0,4.5,0,4.5,4.5,0,9,4.5,0,0,0,0,0,0,0,0,4.5],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[3.6,0,0,0,0,3.6,3.6,3.6,3.6,3.6,3.6,3.6,3.6,0,3.6,0,3.6,0,0,11.5,0,0,3.6,3.6,3.6,7.2,3.6,7.2,3.6,3.6,0],[0,4.5,4.5,4.5,9,0,0,0,0,0,0,0,0,4.5,0,4.5,0,4.5,4.5,0,9,4.5,0,0,0,0,0,0,0,0,4.5],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[0,0,0,0,0,4.5,0,0,4.5,4.5,4.5,4.5,4.5,0,0,0,4.5,0,0,7.2,0,0,4.5,4.5,0,9,4.5,0,0,0,0],[0,0,0,0,0,2.3,0,0,2.3,2.3,2.3,2.3,2.3,0,0,0,2.3,0,0,3.6,0,0,2.3,2.3,0,4.5,2.3,0,0,0,0],[4.5,0,0,0,0,0,4.5,4.5,0,0,0,0,0,0,4.5,0,0,0,0,7.2,0,0,0,0,4.5,0,0,9,4.5,4.5,0],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[2.3,0,0,0,0,0,2.3,2.3,0,0,0,0,0,0,2.3,0,0,0,0,3.6,0,0,0,0,2.3,0,0,4.5,2.3,2.3,0],[0,2.3,2.3,2.3,4.5,0,0,0,0,0,0,0,0,2.3,0,2.3,0,2.3,2.3,0,4.5,2.3,0,0,0,0,0,0,0,0,2.3]]', '[[38.3,0,0],[0,37.3,5.8],[0,5.8,30.5]]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivasi_query`
--
ALTER TABLE `aktivasi_query`
  ADD PRIMARY KEY (`id_aktivasi_query`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id_api`),
  ADD KEY `id_query` (`id_query`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `DocId` (`DocId`);

--
-- Indexes for table `bobot_query`
--
ALTER TABLE `bobot_query`
  ADD PRIMARY KEY (`id_bobot_query`);

--
-- Indexes for table `data_ori`
--
ALTER TABLE `data_ori`
  ADD PRIMARY KEY (`id_data_ori`);

--
-- Indexes for table `data_proses`
--
ALTER TABLE `data_proses`
  ADD PRIMARY KEY (`id_data_proses`),
  ADD KEY `id_proses` (`id_proses`);

--
-- Indexes for table `propagasi`
--
ALTER TABLE `propagasi`
  ADD PRIMARY KEY (`id_propagasi`);

--
-- Indexes for table `propagasi2`
--
ALTER TABLE `propagasi2`
  ADD PRIMARY KEY (`id_propagasi2`);

--
-- Indexes for table `query_proses`
--
ALTER TABLE `query_proses`
  ADD PRIMARY KEY (`id_query_proses`),
  ADD KEY `id_aktivasi` (`id_aktivasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivasi_query`
--
ALTER TABLE `aktivasi_query`
  MODIFY `id_aktivasi_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id_api` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `bobot_query`
--
ALTER TABLE `bobot_query`
  MODIFY `id_bobot_query` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `data_ori`
--
ALTER TABLE `data_ori`
  MODIFY `id_data_ori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `data_proses`
--
ALTER TABLE `data_proses`
  MODIFY `id_data_proses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `propagasi`
--
ALTER TABLE `propagasi`
  MODIFY `id_propagasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `propagasi2`
--
ALTER TABLE `propagasi2`
  MODIFY `id_propagasi2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `query_proses`
--
ALTER TABLE `query_proses`
  MODIFY `id_query_proses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api`
--
ALTER TABLE `api`
  ADD CONSTRAINT `api_ibfk_1` FOREIGN KEY (`id_query`) REFERENCES `query_proses` (`id_query_proses`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_proses`
--
ALTER TABLE `data_proses`
  ADD CONSTRAINT `data_proses_ibfk_1` FOREIGN KEY (`id_proses`) REFERENCES `data_ori` (`id_data_ori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `query_proses`
--
ALTER TABLE `query_proses`
  ADD CONSTRAINT `query_proses_ibfk_1` FOREIGN KEY (`id_aktivasi`) REFERENCES `aktivasi_query` (`id_aktivasi_query`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
