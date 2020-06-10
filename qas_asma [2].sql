-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2019 pada 17.46
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qas_asma2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ori`
--

CREATE TABLE `data_ori` (
  `id_data_ori` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL,
  `jawaban` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_ori`
--

INSERT INTO `data_ori` (`id_data_ori`, `pertanyaan`, `jawaban`) VALUES
(1, 'Dok saya kan punya asma kemarin waktu kambuh dikasih resep obat macamnya 4 Tapi yang saya minum 2 macam saja yaitu ambroxol dan teosal apakah bahaya dok ? ', '1 '),
(2, 'Dok saya mau tanya obat untuk orang yang mempunyai riwayat asma, hipertensi tidak pernah diobati, tekanan darah 180/110 umur 75 tahun apa ya dok tolong tugas sekolah nih dok   ', '2   '),
(3, 'Malam dok\' melanjutkan pertanyaan-pertanyaan saya kemarin tentang asma bronkial yang dialami anak saya 2 tahun yang tidak kunjung sembuh sudah hampir 3 bulan setiap bangun pagi selalu sesak nafas\' apakakah perlu pemeriksaan ke spesialis dalam? Mohon pendapatnya dok\' selama ini di SPA dikasih obat jalan & setiap pagi rajin nebu bahkan sediaan O2\' kemarin habis rontgen normal\' tes darah juga normal hanya saja belum melakukan tes alergi.    ', '3    '),
(4, 'Dok, mau tanya. Kemarin saya kan berobat di sebuah RS. Karena asma saya kambuh dan harus diuap disana. Begitu selesai diuap saya dikasih resep obat. Tapi kok obatnya beda dari biasanya yang saya minum?? Begitu saya minum, kok badan saya berasa lemas. Mual dan badan pegal semua. Padahal biasanya saya tidak pernah begitu. Nama obatnya Asetilsistein dan Alegi. Mohon dijawab. Terimakasih    ', '4    '),
(5, 'Halo dok, umur saya 17 tahun. Akhir pekan kemarin saya camping, saat malam hari suhu di sana bisa sampai 10°C. Saat itu pukul 4 pagi, saya terbangun dengan nafas yang terengah, dada yang sakit, jari-jari kaki dan tangan mulai sulit digerakkan, dan mata juga sulit untuk terbuka. Makin lama nafas saya makin tidak teratur, lalu setelah itu saya tidak sadar. Apa itu berbahaya untuk saya?     ', '5     '),
(6, 'Dok saya mau tanya saya biasa rasa sesak saat saya tarik napas dok lalu kalau kalau saya batuk itu kayak batuk kering tuh dok dan setelah saya batuk terus menerus lalu saya akan susah menarik napas dok itu kenapa ya dok? Asma juga itu katanya turunan dari keluarga ya dok? Karena keluarga saya memang ada yang asma jadi saya takut itu gejala asma dok? Lalu saya kalau bangun pagi sering bersin bersin tapi sampai telinga saya kadang kayak terasa tertutup seperti kemasukan air, itu kenanapa ya dok? Saya minta solusinya dong dok..    ', '6    '),
(7, 'Sejak tahun 2012 saya selalu punya stock ventolin inhaler karena memiliki asma. Sebenarnya awalnya jarang pakai, namun 2 tahun terakhir intensitasnya agak sering karena gejala sesak sering muncul saat beraktivitas penting. Cuma minggu lalu untuk pertama kalinya saya kena efek yang berbeda, selesai menggunakan inhaler hidung saya dua duanya tersumbat, bibir saya kebas, dan kelopak mata saya bengkak. Menurut teman, saya alergi terhadap ventolin inhaler dan akhirnya saya minum CTM. Sampai hari ini saya belum pernah pakai ventolin lagi karena khawatir kena lagi. Tapi apa betul kalau keseringan pakai ventolin malah berbalik jadi alergi? Dan kalau betul begitu, bagaimana saya mengatasi asma/sesak saya yang sering muncul?  ', '7  '),
(8, 'Dok saya mengkonsumsi obat ledomer sebanyak 3 biji dan akhirnya saya kejang-kejang apa yang harus dilakukan. apakah ada obat yang bisa menyembuhkannya. ?   ', '8   '),
(9, 'halo dokter\r\n\r\nsaya ingin bertanya saya mempunyai pimpinan yang punya penyakit asma. pekerjaan kami hampir 12 jam bekerja dalam ruangan. beliau terkena asma sejak dari kecil mungkin umur 4 tahun dan ketika 15-16 tahun tidak kumat lagi. ketika 35 umur 35 tahun dan setelah menikah beliau mengalami asma kembali sampai sekarang. yang jadi permasalahan beliau mengalami asma ketika hidungnya lega dan beliau selalu berkata bahwa jika hidungnya lega asmanya akan kambuh sehingga dia harus menyumbat salah satu lubang hidungnya dengan tissu bersih. beliau juga mengalami alergi debu dan sinus mohon dokter panduannya semoga dokter dapat membantu untuk solve problem. ', '9 '),
(10, 'Selamat pagi dok. Bagaimana cara mengatasi penyakit asma pada bayi umur 5 bulan..?. Terima kasih ', '10 '),
(11, 'dok assalamualaikum saya beberapa hari ini jadi sering bernafas manual dan dangkal terus kepikiran kalau tidur suka susah karna harus ngatur nafas dulu, keesokan harinya seperti itu lagi terus berulang-ulang dan bikin mood saya jelek terus kejadiannya sehabis demam, kira” apakah saya harus cek kesehatan atau tidak?  ', '11  '),
(12, 'Selamat siang dok, saya perempuan 20 tahun. Sudah 4-5 hari ini asma saya kambuh disertai dengan batuk dan hiding berair. Saya juga rutin mengonsumsi obat teosal, dexamethasone, dan ambroxol untuk mengurangi nyeri serta gejala. Tetapi setelah minum obat saya selalu merasakan tremor halus dan pegal di lengan hingga telapak tangan kiri. Apakah hal ini wajar dari efek obat terutama teosal dan dexamethasone atau justru berbahaya? Terima kasih.  ', '12  '),
(13, 'Dokter mengapa saya setiap pagi mengalami sesak batuk pilek (batuk pilek sesek ringan) tetapi setiap siang maupun sore malam saya sehat-sehat saja ??.. Dan pagi itu membuat tidur saya tidak bisa nyenyak  ', '13  '),
(14, 'Pemijatan area punggung pada penderita asma apakah dapat menyembuhkan?  ', '14  '),
(15, 'Malam dokter? Saya penderita asma dan jika kambuh saya pasti sampai kejang dan tangan saya digenggam susah dilepas.... Saya binggung saya alergi karena apa? Makanan, minuman, debu, asap bakaran atau bau menyengat cat... Saya minum. Obat pertama minum obaT bronsolvan dengan kandungan Teofilin 150mg. Tetapi saya minum ini lambung saya diiris... Tetapi dalam masa kambuh jarang ada... Terus saya hentikan minum bronsolvan dan saya lanjutkan dengan salbutamol.... Tapi bersifat sangat sementara jadi saya harus minum salbutamol 2x1 hari 1 tablet yang 4mg. Pertanyaan saya... Amankah jika salbutamol 4mg diminumkan sama dengan ceteme? Karena yang saya tahu ceteme adalah obat anti alergi. Mohon jawabannya dokter? ', '15      '),
(16, 'Hi dok. Saya mau bertanya. Saya berumur 23 tahun saya penderita asma sejak saya smp tapi masih ringan tidak pernah kambuh, sekarang saya sudah berkeluarga memiliki 2 anak di 2 tahun terakhir ini asma saya makin parah dok hampir tiap malam kambuh. Dan saya diberi obat Dr (salbutamol) yang saya minum tiap saya kambuh. Saya mau tanya dok apakah asma bisa sembuh? bagaimana caranya dok? Terimakasih  ', '16  '),
(17, 'Selamat malam dokter. Saya mau tanya dok? saya mengidap penyakit asma keturunan saya juga susah bernafas lewat hidung. Jika mulut di tutup nafas saya bunyi dan susah bernafas. Saya minta saran untuk pengobatannya bagaimana dan saya harus ke dokter apa dok. Terima kasih sebelumnya dokter. ', '17 '),
(18, 'Hallo dok. Saya mau bertanya tentang penggunaan Inhaler Asma, dengar dengar ada beberapa jenis inhaler\r\n\r\nApakah saya harus konsultasi terlebih dahulu dengan dokter? ', '18 '),
(19, 'Halo dok, saya mau tanya. Suami saya punya penyakit asma mungkin keturunan dari kakeknya, tapi dia sering kumat, kalau pagi selalu pilek dan batuk berdahak. Kadang dalam 1 minggu ada aja kumatnya. Saya selalu sedia ventolin inhaler dan salbutamol. Tapi karena keseringan menggunakan inhaler efeknya ke tenggorokan menjadi panas dan seperti terbakar, nelan makanan pun sakit. Akhirnya di stop inhaler dan kadang konsumsi salbutamol saja kalau kumat. Tapi makin lama gara-gara sering konsumsi salbutamol juga bikin tenggorokannya panas seperti terbakar. Sedangkan suami saya sering banget kumat kalau malam. Jadi saya kasihan dok, badan juga sampai kurus banget padahal makan banyak. Bagaimana ya dok solusinya. Obat apa yang aman untuk penyakit asma dan apakah suami saya bisa sembuh total?    ', '19    '),
(20, 'Pagi dok, saya ingin bertanya apakah normal jika seorang perokok saat bangun tidur di pagi hari akan mengalami sedikit asma dan batuk? ', '20 '),
(21, 'Dok anak saya memakai Seretide untuk pileknya. Anjuran dokter 1 kali semprot, tapi kakaknya lupa dan dia semprot kan sebanyak 3 kali pada adiknya. Kira-kira itu berbahaya tidak dok? Anak saya umur 4 tahun lebih.    ', '21    '),
(22, 'Methylprednisolone bisa untuk asma dok? Soalnya selama ini saya tahunya cuma salbutamol...itu pun efeknya detak jantung cepat dan tubuh menggigil.... kami tunggu jawabannya ya dok.... terimakasih ', '22 '),
(23, 'assalamualaikum, mohon jawabannya dok. Orang tua saya penderita asma. lalu saya saat kecil menderita paru-paru basah. tapi saat masuk sekolah penyakit itu sudah sembuh. kemudian saat kelas 6, saya sakit batuk dan saat diperiksa. katanya paru-paru kiri saya bermasalah. lalu saat smp, saya divonis asma. asma saya jarang kambuh dok, kecuali saat musim hujan dan saat sakit batuk, pilek. namun, sekarang saat usia saya 21 tahun saat sesak nafasnya kambuh, terasa lebih sakit dok. kalau dulu mungkin hanya sesak dibagian dada dan kesulitan bernafas. tapi, sekarang diikuti nyeri pada tulang dada, nyeri pada tulang punggung dan terasa pegal. saya memang sudah lama tidak periksa. apa kemungkinan asma saya semakin parah dok?? karena orang tua saya penderita asma, apakah berarti saya penderita asma keturunan?? apakah penderita asma keturunan itu lebih sulit pengobatannya dok?? ', '23 '),
(24, 'Halo dok, saya mengalami batuk, tetapi ketika nafas terdengar bunyi \'ngik\', dan batuknya kering, saya sudah ke puskesmas terdekat, dan dikasih obat. Tapi saya rasa obatnya kurang bereaksi, apakah ada obat alternatif untuk mengurangi sesak nafas ini dok? ', '24 '),
(25, 'Dok saya Sri punya anak umur 1 bulan lebih nah akhir-akhir ini sudah beberapa Minggu anak saya suara nafasnya ngrok kadang terdengar seperti sesak nafas saat tidur, apa umur 1 bulan bisa disedot lagi masalahnya kasian tiap tidur suaranya nyaring. apa harus bagaimana?? Sudah berbagai cara saya lakukan tapi belum keluar-keluar, sudah mau keluar lendirnya keluar mulut eh ketarik lagi sama bayinya kedalam. bagaimana dok solusinya?? apa masih bisa disedot pakai alat penyedot dahak. Mohon solusinya dok', '25    '),
(26, 'Dok, anak saya laki-laki umur 11 tahun, menderita sesak nafas (asma). Saya mohon petunjuk tentang nebuliser mulai dari jenisnya (karena saya mau membeli) hingga penggunaannya sehubungan dengan penyakit yang diderita. Terimakasih ', '26 '),
(27, 'Dok. Mau tanya., Semisal penderita asma dipaksa untuk terus melakukan olahraga fisik (misal lari), bahaya tidak? Apalagi kalau kambuh di tengah aktivitas tersebut. ', '27 '),
(28, 'hallo dok, umur saya 25 tahun sekarang saya sedang hamil kurang lebih 11 minggu. dulu saya sering sekali sesak nafas jadi sering di uap, apakah saat hamil muda aman untuk di uap? terima kasih ', '28 '),
(29, 'Dok, saya mau bertanya. Ayah saya sudah sekitar beberapa bulan ini nafasnya berbunyi, dan terus menerus mengeluarkan dahak. Sebelumnya sempat ada pembengkakan kelenjar dekat lehernya. Dahak yang dihasilkan cenderung encer, bukan bukan seperti saat kita batuk berdahak biasa. Mohon penjelasannya dok. Terima kasih ', '29  '),
(30, 'Asalammualaikum dok... dok saya mau tanya kata ibu saya saya dulu lahir prematur...(paru paru yang belum sempurna) Dari kecil saya suka sesak nafas kalau kelelahan... (asma kambuh) sampai sekarang saya masih suka kambuh dok... Pertanyaan saya.. apakah benar jika anak lahir prematur pasti punya penyakit asma?? Dan bagaimana cara mencegahnya.. Terima kasih dok.. ', '30  '),
(31, 'Dok usia kandungan saya masuk 8 bulan saya mempunyai riwayat asma tapi asma saya kambuh hanyalah saat batuk pilek saja ketika tidak batuk pilek tidak kambuh apakah bisa lahiran normal  ', '31  '),
(32, 'Dok, saya ada masalah kesehatan di waktu belakangan ini. Tiap malam, sering sekali saya merasakan sesak napas dan batuk. Dulu ketika berumur dibawah 15 tahun, saya memang sering mengalami asma. Namun, setelah itu sudah jarang kambuh lagi. Tapi akhir akhir ini tiap waktu malam saya merasakan gejala sesak napas itu lagi.Saya ada beberapa pertanyaan dok:\r\n1. Apakah kemungkinan asma yang sering terjadi di waktu dulu kembali lagi?\r\n2. Mungkinkah pengaruh ruangan berdebu dan suhu lingkungan yang dingin dapat menjadi faktor yang membuat sesak napas dan batuk itu sering kambuh lagi?\r\n3. Atau mungkinkah pola hidup saya yang kurang sehat (sehari hari saya menghabiskan waktu dikantor dengan pekerjaan yang minim aktifitas) yang membuat fisik saya menjadi lemah dan membuat gejala asma tersebut kembali lagi?\r\n\r\nMohon jawabannya dok terimakasih.  ', '32  '),
(33, 'Dok saya mau tanya. Amankah saya menyusui saat asma saya sedang kambuh.. ', '33 '),
(34, 'Dok, saya punya penyakit gejala asma ketika saya SD, sewaktu saya SMP gelaja itu tidak ada lagi. Sewaktu saya di SMA seperti sekarang, saya malah lebih sering sesak nafas kalau sedang melakukan sesuatu aktivitas yang terlalu berat atau ketika saya berhadapan dengan \"Debu\". Apakah ada gejala asma / asma nya sedang kambuh seperti sekarang dok? ', '34 '),
(35, 'Selamat malam dok, umur saya 16 tahun saya mempunyai keturunan asma oleh orang tua saya. Setiap hari saya merasakan pusing di kepala dan juga rasa sesak nafas kadang juga disertai sakit dada. Apakah itu bagian dari asma atau yang lain ya? Cari obat pereda nyeri tapi tidak tahu nama obatnya apa ): ada lagi dok ini maag atau apalagi ya tiap beres makan kadang perut saya perih seperti ada luka gitu ', '35 '),
(36, 'Selamat siang dok, saya mau bertanya mengenai penyakit yang di derita saya ya itu asma batuk suka mengeluarkan lendir kayak jely dan setiap asma saya kambuh saya suka pakai obat ventolin inhaler apakah obat itu bila dikonsumsi setiap hari tidak apa-apa dan apakah penyakit saya bisa sembuh ?? Makasih ', '36 '),
(37, 'Selamat sore dok nama saya indah saya menderita asma sudah 6 bulan terakhir ini saya periksa ke dokter dan diberi obat teosal dan obat batuk, setiap saya meminum teosal tersebut asma saya sembuh tapi selang berapa jam jantung saya berdetak kencang, saya lemas, mulut saya pahit dan lambung saya terasa nyeri, itu kenapa ya dok,? Terus kira-kira obat apa yang bagus untuk penyakit asma dok. Sekian terimakasih. ', '37 '),
(38, 'Hallo dok, saya mau tanya apa boleh obat atrovent bisa dicampur obat sesak seperti: Salbutamol sulfate, colorpheniramine maleate, meprofarm, ambroxol hci 30, soalnya saya takut dok kalau salah-salah malah overdosis, dan setiap saya sesak kepala saya juga pusing banget dan jantung berdebar-debar  ', '38    '),
(39, 'Hallo dokter , Anak saya batuk dan flu umur 6 bulan Nafas sampai payah bunyi ngik ngik ngik gitu dok. Tapi sudah 2 minggu ne belum juga baik. Sudah berobat sana sini juga .. Apa solusi penanganannya ya dok.. Obat apakah yang paling ampuh buat batuk asma pada bayi ', '39 '),
(40, 'Hallo dok.. saya penderita asma...saya terapi inhaler dengan symbicort... tapi semenjak saya pakai inhaler ini mulut saya ruam dok terus tenggorokan saya perih... apa itu efek samping symbicort karena saya tidak cocok? ', '40 '),
(41, 'Kenapa istri pada saat malam pertama mendadak terkena asma ketika saya berhubungan intim ? ', '41 '),
(42, 'Pagi dok, mau tanya.. Kenapa pada pasien asma, fase ekspirasinya lebih panjang dari fase inspirasi.. terimakasih dok dan ditunggu jawabannya ', '42 '),
(43, 'Malam dok,, saya mau tanya? saya kan punya penyakit asma, hampir setiap malam asma saya kabuh,, dan setiap asma saya kabuh, saya selalu minum obat neo napacin, sehari saya bisa minum neo napacin sampai 2 atau 3 kali,, dan ini sudah berlangsung kurang lebih 4 bulan,, yang saya tanyakan apakah ada efek samping dalam jangka panjang, kalau kita mengkonsumsi neo napacin dalam jangka panjang, misal bisa menyebabkan kerusakan organ tubuh? atau yang lainnya?terima kasih dok? dan untuk solusi penyakit asma saya sebaiknya bagaimana dok? ', '43 '),
(44, 'Selamat sore dok, saya mau bertanya tentang asma. Orang tua saya asma dok, beliau sudah berumur 50 ke atas sehingga lebih sering kambuh. Asma ini dikarenakan terlalu banyak lendir yang diproduksi sehingga menjadi sesak nafas, menurut dokter obat apa yang tepat untuk menangani produksi lendir yang berlebih tersebut ya dok? Karena sudah minum ambroxol tidak mempan dok. Apakah bisa dengan obat herbal seperti jahe? Terus ketika serangan, lebih baik mana memakan obat salbutamol dengan di nebules? Terima kasih dok.. ', '44 '),
(45, 'Assalamu\'alaikum wr wb.. selamat sore dok, saya mau tanya.. orang tua saya kan menderita asma, di usia dibawah 50 itu jarang terjadi serangan, tapi setelah di atas umur 50 itu jadi semakin sering.. akhir-akhir ini juga seperti itu.. hampir setiap hari makan obat salbutamol.. dan kadang setelah minum obat salbutamol yang 2mg masih sesak nafas dok.. bisa sehari 2 kali makan obat tersebut.. kadang harus di nebules juga karena punya alat dirumah.. tapi kadang beliau itu menunda makan obat atau di nebules jika beliau merasa belum sesak sekali, jadi beliau akan makan obat atau di nebules jika nafasnya sudah terengah-engah.. yang mau saya tanyakan, apakah kebiasaan menunda memakan obat atau dinebules itu akan mempengaruhi elastisitas saluran pernafasan dok? Soalnya saya pernah baca jika asma tidak kunjung diobati maka akan membuat saluran pernafasan menjadi kaku.. mohon penjelasannya tentang pertanyaan saya serta saran untuk orang tua saya yang setiap hari harus makan obat atau dinebules.. terima kasih ', '45 '),
(46, 'Hallo dok, nama saya farida, umur saya 23 tahun, mau tannya anak saya yang baru umur 12 hari sampai sekarang umur 43 hari kalau nafas susah kayak ada dahak, dan baru 3 hari kayak batuk tapi kadang-kadang, terimakasih dok ', '46 '),
(47, 'Sore Dok ,,, saya ingin bertanya, suami saya saat ini usia 37 tahun, punya riwayat asma, keseharian biasa menggunakan obat ventolin semprot, dan obat minum (dexamethason, salbutamol 4mg, ambroxol), kemudian saat ini saya baru membeli alat OMRON NEC 803 Compact Compressor Nebulizer, yang ingin saya tanyakan bagaimana dosis obat dan campuran nya untuk menggunakan alat ini? apakah dengan ventolin nebules 2,5mg (ampul), mohon penjelasannya dok, terima kasih banyak sebelumnya  ', '47  '),
(48, 'Permisi dok, saya punya kucing liar tapi saya pelihara. Saya suka mengelus kucing itu dok, dan kemungkinan besar saya telah menghirup bulu kucing tersebut. Apakah bulu kucing yang saya hirup bisa dikeluarkan? Apa langkah berikut agar saya tidak kena penyakit? Saya tidak mau terkena penyakit yang macam macam. Tolong sarannya ', '48 '),
(49, 'assalamualaikum, dok boleh tidak penggunaan isosorbid dan salbutamol secara bersamaan ? terimakasih. ', '49 '),
(50, 'Halo dokter, saya ingin bertanya saya dulu pernah batuk pilek dan bersin-bersin hampir satu bulan tidak sembuh. Setiap periksa ke dokter lalu diberi obat nanti sembuh tapi kalau obatnya habis, batuk pileknya balik lagi. apalagi kalau pagi kadang itu batuknya parah dok sampai tenggorokan saya sakit dan suara habis. Klimaksnya sampai saya demam tinggi 39-40 derajat lalu opname di RS diagnosa sakit tipes, di RS juga diberi obat untuk batuk pilek juga. Sembuh dari tipes, batuk pilek saya juga sembuh tapi setelah itu sekarang TIAP saya minum es walaupun sedikit saja langsung batuk tapi cuman sebentar seperti misal siang saya minum es teh cuman segelas nanti sore atau malam batuk pilek lagi tapi pagi sudah sembuh batuk pileknya, selalu seperti itu. Lagi, hidung saya jadi sensitif banget sekarang, setiap ada debu sedikit saja atau saat pileknya balik atau ngelus kucing sebentar langsung hidung gatel bersin-bersin parah sampai kadang mata ikut gatel juga lalu saya kucek-kucek gitu sampai jadi merah (pas dulu saya megang, ngelus, gendong kucing itu baik-baik saja) Kenapa ya dok? Saya belum sempat ke dokter lagi karena saya pikir pilek saya yang dulu belum sembuh total belum stabil makanya kadang masih balik batuk pileknya. Mohon penjelasannya ya dok. ', '50  ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_proses`
--

CREATE TABLE `data_proses` (
  `id_data_proses` int(11) NOT NULL,
  `pertanyaan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_proses`
--

INSERT INTO `data_proses` (`id_data_proses`, `pertanyaan`) VALUES
(1, 'asma  kambuh resep obat minum ambroxol teosal bahaya'),
(2, 'obat  orang riwayat asma hipertensi tekan darah'),
(3, 'asma bronkial  alami anak bangun sesak nafas periksa spesialis spa obat jalan rajin nebu rontgen normal tes darah alergi'),
(4, 'asma  kambuh uap resep obat minum badan rasa lemas mual pegal asetilsistein alegi'),
(5, 'camping  bangun nafas engah dada sakit jari kaki tangan sulit gerak mata buka atur sadar bahaya'),
(6, 'sesak  tarik napas batuk kering susah asma turun keluarga takut gejala bangun bersin telinga kadang tutup masuk air solusi'),
(7, 'stock ventolin inhaler  milik asma jarang pakai intensitas gejala sesak muncul aktivitas minggu efek beda hidung dua sumbat bibir kebas kelopak mata bengkak alergi minum ctm khawatir sering balik atas'),
(8, 'konsumsi obat ledomer  biji kejang sembuh'),
(9, 'pimpin  sakit asma kerja jam ruang kena kumat menikah alam masalah hidung lega asmanya kambuh sumbat salah lubang tissu bersih alergi debu sinus panduan'),
(10, 'atas sakit asma  bayi'),
(11, 'nafas manual  dangkal pikir tidur susah karna ngatur esok hari ulang mood jelek jadi habis demam cek sehat'),
(12, 'siang  perempuan asma kambuh batuk hiding berair rutin konsumsi obat teosal dexamethasone ambroxol kurang nyeri gejala minum rasa tremor halus pegal lengan telapak tangan kiri wajar efek bahaya'),
(13, 'alam sesak batuk pilek sesek ringan  siang sore sehat tidur nyenyak'),
(14, 'pijat area punggung  derita asma sembuh'),
(15, 'derita asma  kambuh kejang tangan genggam susah lepas binggung alergi makan minum debu asap bakar bau sengat cat obat bronsolvan kandung teofilin lambung iris jarang henti lanjut salbutamol sifat tablet aman ceteme anti jawab'),
(16, 'umur  derita asma smp ringan kambuh keluarga milik anak parah obat salbutamol minum'),
(17, 'idap sakit asma turun  susah nafas hidung mulut tutup bunyi saran obat'),
(18, 'guna inhaler asma dengar  jenis konsultasi'),
(19, 'suami  sakit asma turun kakek kumat pilek batuk dahak minggu sedia ventolin inhaler salbutamol sering efek tenggorok panas bakar nelan makan stop konsumsi banget kasihan badan kurus solusi obat aman total'),
(20, 'normal  rokok bangun tidur alam asma batuk'),
(21, 'anak  pakai seretide pilek kali semprot kakak lupa adik bahaya'),
(22, 'methylprednisolone  asma tahu salbutamol efek detak jantung cepat tubuh menggigil tunggu jawab'),
(23, 'jawab  orang tua derita asma paru basah masuk sakit kelas batuk periksa kiri masalah smp vonis jarang kambuh kecuali musim hujan pilek usia sesak nafas bagian dada sulit ikut nyeri tulang punggung pegal parah turun obat'),
(24, 'alam batuk  nafas dengar bunyi ngik kering puskesmas dekat obat reaksi alternatif kurang sesak'),
(25, 'anak  minggu suara nafas ngrok dengar sesak tidur sedot kasian nyaring laku lendir mulut tarik bayi dalam solusi pakai alat dahak'),
(26, 'anak  laki derita sesak nafas asma tunjuk nebuliser jenis beli guna hubung sakit'),
(27, 'derita asma paksa  olahraga fisik lari bahaya kambuh aktivitas'),
(28, 'hamil  minggu sesak nafas uap muda aman'),
(29, 'ayah  nafas bunyi keluar dahak bengkak kelenjar leher hasil cenderung encer batuk jelas'),
(30, 'lahir prematur paru  sempurna sesak nafas lelah asma kambuh anak sakit cegah'),
(31, 'usia kandung  masuk riwayat asma kambuh batuk pilek lahir normal'),
(32, 'sehat  rasa sesak napas batuk umur bawah alam asma jarang kambuh gejala pengaruh ruang debu lingkung dingin faktor pola hidup hari habis kantor kerja minim aktivitas fisik lemah jawab'),
(33, 'aman  susu asma kambuh'),
(34, 'sakit gejala asma  sd smp gelaja sma sesak nafas aktivitas berat hadap debu kambuh'),
(35, 'turun asma  orang tua rasa pusing kepala sesak nafas sakit dada cari obat pereda nyeri maag makan perut perih luka'),
(36, 'sakit  derita asma batuk keluar lendir jely kambuh pakai obat ventolin inhaler konsumsi'),
(37, 'indah  derita asma periksa obat teosal batuk minum selang jam jantung detak kencang lemas mulut pahit lambung nyeri bagus sakit'),
(38, 'obat atrovent  campur sesak salbutamol sulfate colorpheniramine maleate meprofarm ambroxol hci takut salah overdosis kepala pusing banget jantung debar'),
(39, 'anak  batuk flu nafas payah bunyi ngik minggu solusi penanganan obat ampuh asma bayi'),
(40, 'derita asma  terapi inhaler symbicort semenjak pakai mulut ruam tenggorok perih efek samping cocok'),
(41, 'istri  dadak kena asma hubung intim'),
(42, 'pasien asma fase ekspirasi  inspirasi tunggu jawab'),
(43, 'sakit asma  kabuh minum obat neo napacin hari kali efek samping jangka konsumsi sebab rusak organ tubuh solusi'),
(44, 'asma orang tua  umur kambuh lendir produksi sesak nafas obat menangani lebih minum ambroxol mempan herbal jahe serang makan salbutamol nebules'),
(45, 'orang tua  derita asma usia bawah jarang serang makan obat salbutamol minum sesak nafas hari kali nebules alat rumah tunda engah biasa elastisitas salur napas baca kaku jelas saran'),
(46, 'anak  nafas susah dahak batuk'),
(47, 'suami  usia riwayat asma hari obat ventolin semprot minum dexamethason salbutamol ambroxol beli alat omron nec compact compressor nebulizer dosis campur nebules ampul jelas'),
(48, 'kucing  pelihara ngelus hirup bulu keluar langkah sakit kena saran'),
(49, 'guna isosorbid  salbutamol sama'),
(50, 'batuk pilek  bersin periksa obat parah tenggorok sakit suara klimaks demam derajat opname diagnosa tipes minum es langsung cuman sebentar teh segelas hidung sensitif banget debu ngelus kucing gatel mata kucek merah megang gendong pikir total stabil jelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `representasi_kasus`
--

CREATE TABLE `representasi_kasus` (
  `id_kata` int(11) NOT NULL,
  `kata` varchar(26) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_ori`
--
ALTER TABLE `data_ori`
  ADD PRIMARY KEY (`id_data_ori`);

--
-- Indeks untuk tabel `data_proses`
--
ALTER TABLE `data_proses`
  ADD PRIMARY KEY (`id_data_proses`);

--
-- Indeks untuk tabel `representasi_kasus`
--
ALTER TABLE `representasi_kasus`
  ADD PRIMARY KEY (`id_kata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_ori`
--
ALTER TABLE `data_ori`
  MODIFY `id_data_ori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `data_proses`
--
ALTER TABLE `data_proses`
  MODIFY `id_data_proses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `representasi_kasus`
--
ALTER TABLE `representasi_kasus`
  MODIFY `id_kata` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
