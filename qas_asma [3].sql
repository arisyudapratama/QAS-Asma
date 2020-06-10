-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2019 pada 16.38
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
(1, 'Dok saya kan punya asma kemarin waktu kambuh dikasih resep obat macamnya 4 Tapi yang saya minum 2 macam saja yaitu ambroxol dan teosal apakah bahaya dok ? ', '1   '),
(2, 'Dok saya mau tanya obat untuk orang yang mempunyai riwayat asma, hipertensi tidak pernah diobati, tekanan darah 180/110 umur 75 tahun apa ya dok tolong tugas sekolah nih dok   ', '2   '),
(3, 'Malam dok\' melanjutkan pertanyaan-pertanyaan saya kemarin tentang asma bronkial yang dialami anak saya 2 tahun yang tidak kunjung sembuh sudah hampir 3 bulan setiap bangun pagi selalu sesak nafas\' apakakah perlu pemeriksaan ke spesialis dalam? Mohon pendapatnya dok\' selama ini di SPA dikasih obat jalan & setiap pagi rajin nebu bahkan sediaan O2\' kemarin habis rontgen normal\' tes darah juga normal hanya saja belum melakukan tes alergi.    ', '3    '),
(4, 'Dok, mau tanya. Kemarin saya kan berobat di sebuah RS. Karena asma saya kambuh dan harus diuap disana. Begitu selesai diuap saya dikasih resep obat. Tapi kok obatnya beda dari biasanya yang saya minum?? Begitu saya minum, kok badan saya berasa lemas. Mual dan badan pegal semua. Padahal biasanya saya tidak pernah begitu. Nama obatnya Asetilsistein dan Alegi. Mohon dijawab. Terimakasih    ', '4    '),
(5, 'Halo dok, umur saya 17 tahun. Akhir pekan kemarin saya camping, saat malam hari suhu di sana bisa sampai 10°C. Saat itu pukul 4 pagi, saya terbangun dengan nafas yang terengah, dada yang sakit, jari-jari kaki dan tangan mulai sulit digerakkan, dan mata juga sulit untuk terbuka. Makin lama nafas saya makin tidak teratur, lalu setelah itu saya tidak sadar. Apa itu berbahaya untuk saya?     ', '5     '),
(6, 'Dok saya mau tanya saya biasa rasa sesak saat saya tarik napas dok lalu kalau kalau saya batuk itu kayak batuk kering tuh dok dan setelah saya batuk terus menerus lalu saya akan susah menarik napas dok itu kenapa ya dok? Asma juga itu katanya turunan dari keluarga ya dok? Karena keluarga saya memang ada yang asma jadi saya takut itu gejala asma dok? Lalu saya kalau bangun pagi sering bersin bersin tapi sampai telinga saya kadang kayak terasa tertutup seperti kemasukan air, itu kenanapa ya dok? Saya minta solusinya dong dok..    ', '6    '),
(7, 'Sejak tahun 2012 saya selalu punya stock ventolin inhaler karena memiliki asma. Sebenarnya awalnya jarang pakai, namun 2 tahun terakhir intensitasnya agak sering karena gejala sesak sering muncul saat beraktivitas penting. Cuma minggu lalu untuk pertama kalinya saya kena efek yang berbeda, selesai menggunakan inhaler hidung saya dua duanya tersumbat, bibir saya kebas, dan kelopak mata saya bengkak. Menurut teman, saya alergi terhadap ventolin inhaler dan akhirnya saya minum CTM. Sampai hari ini saya belum pernah pakai ventolin lagi karena khawatir kena lagi. Tapi apa betul kalau keseringan pakai ventolin malah berbalik jadi alergi? Dan kalau betul begitu, bagaimana saya mengatasi asma/sesak saya yang sering muncul?   ', '7   '),
(8, 'Dok saya mengkonsumsi obat ledomer sebanyak 3 biji dan akhirnya saya kejang-kejang apa yang harus dilakukan. apakah ada obat yang bisa menyembuhkannya. ?   ', '8   '),
(9, 'halo dokter\r\n\r\nsaya ingin bertanya saya mempunyai pimpinan yang punya penyakit asma. pekerjaan kami hampir 12 jam bekerja dalam ruangan. beliau terkena asma sejak dari kecil mungkin umur 4 tahun dan ketika 15-16 tahun tidak kumat lagi. ketika 35 umur 35 tahun dan setelah menikah beliau mengalami asma kembali sampai sekarang. yang jadi permasalahan beliau mengalami asma ketika hidungnya lega dan beliau selalu berkata bahwa jika hidungnya lega asmanya akan kambuh sehingga dia harus menyumbat salah satu lubang hidungnya dengan tissu bersih. beliau juga mengalami alergi debu dan sinus mohon dokter panduannya semoga dokter dapat membantu untuk solve problem.  ', '9  '),
(10, 'Selamat pagi dok. Bagaimana cara mengatasi penyakit asma pada bayi umur 5 bulan..?. Terima kasih  ', '10  '),
(11, 'dok assalamualaikum saya beberapa hari ini jadi sering bernafas manual dan dangkal terus kepikiran kalau tidur suka susah karna harus ngatur nafas dulu, keesokan harinya seperti itu lagi terus berulang-ulang dan bikin mood saya jelek terus kejadiannya sehabis demam, kira” apakah saya harus cek kesehatan atau tidak?  ', '11  '),
(12, 'Selamat siang dok, saya perempuan 20 tahun. Sudah 4-5 hari ini asma saya kambuh disertai dengan batuk dan hiding berair. Saya juga rutin mengonsumsi obat teosal, dexamethasone, dan ambroxol untuk mengurangi nyeri serta gejala. Tetapi setelah minum obat saya selalu merasakan tremor halus dan pegal di lengan hingga telapak tangan kiri. Apakah hal ini wajar dari efek obat terutama teosal dan dexamethasone atau justru berbahaya? Terima kasih.  ', '12  '),
(13, 'Dokter mengapa saya setiap pagi mengalami sesak batuk pilek (batuk pilek sesek ringan) tetapi setiap siang maupun sore malam saya sehat-sehat saja ??.. Dan pagi itu membuat tidur saya tidak bisa nyenyak   ', '13   '),
(14, 'Pemijatan area punggung pada penderita asma apakah dapat menyembuhkan?  ', '14  '),
(15, 'Malam dokter? Saya penderita asma dan jika kambuh saya pasti sampai kejang dan tangan saya digenggam susah dilepas.... Saya binggung saya alergi karena apa? Makanan, minuman, debu, asap bakaran atau bau menyengat cat... Saya minum. Obat pertama minum obaT bronsolvan dengan kandungan Teofilin 150mg. Tetapi saya minum ini lambung saya diiris... Tetapi dalam masa kambuh jarang ada... Terus saya hentikan minum bronsolvan dan saya lanjutkan dengan salbutamol.... Tapi bersifat sangat sementara jadi saya harus minum salbutamol 2x1 hari 1 tablet yang 4mg. Pertanyaan saya... Amankah jika salbutamol 4mg diminumkan sama dengan ceteme? Karena yang saya tahu ceteme adalah obat anti alergi. Mohon jawabannya dokter? ', '15      '),
(16, 'Hi dok. Saya mau bertanya. Saya berumur 23 tahun saya penderita asma sejak saya smp tapi masih ringan tidak pernah kambuh, sekarang saya sudah berkeluarga memiliki 2 anak di 2 tahun terakhir ini asma saya makin parah dok hampir tiap malam kambuh. Dan saya diberi obat Dr (salbutamol) yang saya minum tiap saya kambuh. Saya mau tanya dok apakah asma bisa sembuh? bagaimana caranya dok? Terimakasih  ', '16  '),
(17, 'Selamat malam dokter. Saya mau tanya dok? saya mengidap penyakit asma keturunan saya juga susah bernafas lewat hidung. Jika mulut di tutup nafas saya bunyi dan susah bernafas. Saya minta saran untuk pengobatannya bagaimana dan saya harus ke dokter apa dok. Terima kasih sebelumnya dokter. ', '17 '),
(18, 'Hallo dok. Saya mau bertanya tentang penggunaan Inhaler Asma, dengar dengar ada beberapa jenis inhaler\r\n\r\nApakah saya harus konsultasi terlebih dahulu dengan dokter? ', '18 '),
(19, 'Halo dok, saya mau tanya. Suami saya punya penyakit asma mungkin keturunan dari kakeknya, tapi dia sering kumat, kalau pagi selalu pilek dan batuk berdahak. Kadang dalam 1 minggu ada aja kumatnya. Saya selalu sedia ventolin inhaler dan salbutamol. Tapi karena keseringan menggunakan inhaler efeknya ke tenggorokan menjadi panas dan seperti terbakar, nelan makanan pun sakit. Akhirnya di stop inhaler dan kadang konsumsi salbutamol saja kalau kumat. Tapi makin lama gara-gara sering konsumsi salbutamol juga bikin tenggorokannya panas seperti terbakar. Sedangkan suami saya sering banget kumat kalau malam. Jadi saya kasihan dok, badan juga sampai kurus banget padahal makan banyak. Bagaimana ya dok solusinya. Obat apa yang aman untuk penyakit asma dan apakah suami saya bisa sembuh total?    ', '19    '),
(20, 'Pagi dok, saya ingin bertanya apakah normal jika seorang perokok saat bangun tidur di pagi hari akan mengalami sedikit asma dan batuk?  ', '20  '),
(21, 'Dok anak saya memakai Seretide untuk pileknya. Anjuran dokter 1 kali semprot, tapi kakaknya lupa dan dia semprot kan sebanyak 3 kali pada adiknya. Kira-kira itu berbahaya tidak dok? Anak saya umur 4 tahun lebih.    ', '21    '),
(22, 'Methylprednisolone bisa untuk asma dok? Soalnya selama ini saya tahunya cuma salbutamol...itu pun efeknya detak jantung cepat dan tubuh menggigil.... kami tunggu jawabannya ya dok.... terimakasih ', '22 '),
(23, 'assalamualaikum, mohon jawabannya dok. Orang tua saya penderita asma. lalu saya saat kecil menderita paru-paru basah. tapi saat masuk sekolah penyakit itu sudah sembuh. kemudian saat kelas 6, saya sakit batuk dan saat diperiksa. katanya paru-paru kiri saya bermasalah. lalu saat smp, saya divonis asma. asma saya jarang kambuh dok, kecuali saat musim hujan dan saat sakit batuk, pilek. namun, sekarang saat usia saya 21 tahun saat sesak nafasnya kambuh, terasa lebih sakit dok. kalau dulu mungkin hanya sesak dibagian dada dan kesulitan bernafas. tapi, sekarang diikuti nyeri pada tulang dada, nyeri pada tulang punggung dan terasa pegal. saya memang sudah lama tidak periksa. apa kemungkinan asma saya semakin parah dok?? karena orang tua saya penderita asma, apakah berarti saya penderita asma keturunan?? apakah penderita asma keturunan itu lebih sulit pengobatannya dok?? ', '23 '),
(24, 'Halo dok, saya mengalami batuk, tetapi ketika nafas terdengar bunyi \'ngik\', dan batuknya kering, saya sudah ke puskesmas terdekat, dan dikasih obat. Tapi saya rasa obatnya kurang bereaksi, apakah ada obat alternatif untuk mengurangi sesak nafas ini dok?  ', '24  '),
(25, 'Dok saya Sri punya anak umur 1 bulan lebih nah akhir-akhir ini sudah beberapa Minggu anak saya suara nafasnya ngrok kadang terdengar seperti sesak nafas saat tidur, apa umur 1 bulan bisa disedot lagi masalahnya kasian tiap tidur suaranya nyaring. apa harus bagaimana?? Sudah berbagai cara saya lakukan tapi belum keluar-keluar, sudah mau keluar lendirnya keluar mulut eh ketarik lagi sama bayinya kedalam. bagaimana dok solusinya?? apa masih bisa disedot pakai alat penyedot dahak. Mohon solusinya dok', '25    '),
(26, 'Dok, anak saya laki-laki umur 11 tahun, menderita sesak nafas (asma). Saya mohon petunjuk tentang nebuliser mulai dari jenisnya (karena saya mau membeli) hingga penggunaannya sehubungan dengan penyakit yang diderita. Terimakasih ', '26 '),
(27, 'Dok. Mau tanya., Semisal penderita asma dipaksa untuk terus melakukan olahraga fisik (misal lari), bahaya tidak? Apalagi kalau kambuh di tengah aktivitas tersebut. ', '27 '),
(28, 'hallo dok, umur saya 25 tahun sekarang saya sedang hamil kurang lebih 11 minggu. dulu saya sering sekali sesak nafas jadi sering di uap, apakah saat hamil muda aman untuk di uap? terima kasih ', '28 '),
(29, 'Dok, saya mau bertanya. Ayah saya sudah sekitar beberapa bulan ini nafasnya berbunyi, dan terus menerus mengeluarkan dahak. Sebelumnya sempat ada pembengkakan kelenjar dekat lehernya. Dahak yang dihasilkan cenderung encer, bukan bukan seperti saat kita batuk berdahak biasa. Mohon penjelasannya dok. Terima kasih ', '29  '),
(30, 'Asalammualaikum dok... dok saya mau tanya kata ibu saya saya dulu lahir prematur...(paru paru yang belum sempurna) Dari kecil saya suka sesak nafas kalau kelelahan... (asma kambuh) sampai sekarang saya masih suka kambuh dok... Pertanyaan saya.. apakah benar jika anak lahir prematur pasti punya penyakit asma?? Dan bagaimana cara mencegahnya.. Terima kasih dok.. ', '30  '),
(31, 'Dok usia kandungan saya masuk 8 bulan saya mempunyai riwayat asma tapi asma saya kambuh hanyalah saat batuk pilek saja ketika tidak batuk pilek tidak kambuh apakah bisa lahiran normal  ', '31  '),
(32, 'Dok, saya ada masalah kesehatan di waktu belakangan ini. Tiap malam, sering sekali saya merasakan sesak napas dan batuk. Dulu ketika berumur dibawah 15 tahun, saya memang sering mengalami asma. Namun, setelah itu sudah jarang kambuh lagi. Tapi akhir akhir ini tiap waktu malam saya merasakan gejala sesak napas itu lagi.Saya ada beberapa pertanyaan dok:\r\n1. Apakah kemungkinan asma yang sering terjadi di waktu dulu kembali lagi?\r\n2. Mungkinkah pengaruh ruangan berdebu dan suhu lingkungan yang dingin dapat menjadi faktor yang membuat sesak napas dan batuk itu sering kambuh lagi?\r\n3. Atau mungkinkah pola hidup saya yang kurang sehat (sehari hari saya menghabiskan waktu dikantor dengan pekerjaan yang minim aktifitas) yang membuat fisik saya menjadi lemah dan membuat gejala asma tersebut kembali lagi?\r\n\r\nMohon jawabannya dok terimakasih.    ', '32    '),
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
(50, 'Halo dokter, saya ingin bertanya saya dulu pernah batuk pilek dan bersin-bersin hampir satu bulan tidak sembuh. Setiap periksa ke dokter lalu diberi obat nanti sembuh tapi kalau obatnya habis, batuk pileknya balik lagi. apalagi kalau pagi kadang itu batuknya parah dok sampai tenggorokan saya sakit dan suara habis. Klimaksnya sampai saya demam tinggi 39-40 derajat lalu opname di RS diagnosa sakit tipes, di RS juga diberi obat untuk batuk pilek juga. Sembuh dari tipes, batuk pilek saya juga sembuh tapi setelah itu sekarang TIAP saya minum es walaupun sedikit saja langsung batuk tapi cuman sebentar seperti misal siang saya minum es teh cuman segelas nanti sore atau malam batuk pilek lagi tapi pagi sudah sembuh batuk pileknya, selalu seperti itu. Lagi, hidung saya jadi sensitif banget sekarang, setiap ada debu sedikit saja atau saat pileknya balik atau ngelus kucing sebentar langsung hidung gatel bersin-bersin parah sampai kadang mata ikut gatel juga lalu saya kucek-kucek gitu sampai jadi merah (pas dulu saya megang, ngelus, gendong kucing itu baik-baik saja) Kenapa ya dok? Saya belum sempat ke dokter lagi karena saya pikir pilek saya yang dulu belum sembuh total belum stabil makanya kadang masih balik batuk pileknya. Mohon penjelasannya ya dok. ', '50  '),
(51, 'Dok, mau tanya kalau mau buat surat keterangan sehat, punya asma bisa lolos tidak? ', '51 '),
(52, 'Halo dok saya mau tanya, dari 3 bulan lalu saya Sering tiba tiba sesak , apalagi ketika saya stress dan ketika menangis lama saya sering sesak nafas sampai sangat sulit untuk menarik nafas , terdengar suara hink hink ketika saya sulit mengambil nafas setelah ditenangkan oleh orang sekitar barulah saya bisa bernafas perlahan. Selain itu dari kecil saya sering batuk ketika hidung saya tertutup boneka atau setelah memeluk kucing yang sedikit berdebu dan sebelum batuk saya sering mengalami seperti bengek hingga sekarang, apakah saya mengalami asma ?   ', '52    '),
(53, 'Halo dok... saya sudah lama mengalami sesak napas. kurang lebih 3 tahunan. saya kira selama ini saya kena penyakit paru-paru tapi saya mikir kok aku di ronsen tidak kenapa-napa (medical cek up saat melamar di beberapa perusahaan) selalu lolos dan terakhir bulan kemarin waktu di kampung (kebetulan udara di kampung dingin) dada saya sesak lagi apalagi kalau mencium asap rokok langsung terasa sakit. dan aku langsung disuruh cek up dan di ronsen. terus konsultasi sama dokter yang ini ronsenya tidak apa-apa katanya. mungkin kamu alergi asap atau debu kata dokternya. Dan saya mikir masa saya cuma alergi asap sama debu??? Dan saya cari tahu di google karena ada yang bilang kalau asma itu tidak bisa kedinginan. dan kebetulan saya juga kalau kedinginan terasa sesak. Saya telusuri di google tentang asma sama seperti yang saya alami. Jadi dok... saya mau tanya apa memang saya positif asma. secara saya belum konsultasi ke dokter?   ', '53   '),
(54, 'Saya usia 21 tahun, dari kecil saya sudah kena asma, sering banget sesak nafas dan batuk mangi kalau cuaca dingin. Sampai usia saya 21 tahun kok belum juga sembuh. apa obat penyembuh sakit saya dok. Saya merasa kalau sesak dada saya sakit sekali  ', '54  '),
(55, 'Nama saya atik saya memiliki asma dan sekarang saya sedang hamil 2 minggu apakah aman jika menggunakan ventolin nebulizer, karena di kehamilan ke-2 ini asma saya sering kambuh  ', '55   '),
(56, 'Dok mau tanya kenapa ya sudah 2 hari ini saya setiap mau tidur selalu sesak nafas akhirnya saya tidak tidur sampai pagi dan pikiran kemana mana sampai saya berpikir untuk menembak kepala saya sendiri. Solusinya dok. ', '56   '),
(57, 'Umur saya 16 tahun, selama sudah kecelakaan 3 tahun yang lalu saya sering merasakan sakit bagian dada sampai belakang, sakitnya itu tidak terlalu sakit tapi membuat saya susah untuk atur nafas saya, saat saya merasakan sesak itu kepala bagian belakang saya bersama leher bagian belakang itu tegang. Apakah itu termasuk gejala asma atau ada penyakit lain ', '57 '),
(58, 'Saya hamil anak ketiga 16, dan tiba-tiba mengalami sesak napas, ketika di ugd ternyata divonis asma padahal tidak ada riwayat secara genetik atau tidak pernah seumur hidup mengalami serangan asma, yang saya tanyakan bolehkah saya memiliki alat uap sendiri sehingga tidak perlu bolak balik ugd setiap kali sesak napas, dan obat apakah untuk uap yang dijual bebas dan aman bagi janin   ', '58   '),
(59, 'Assalamualaikum Dok saya pria umur 22 tahun ada keluhan nih dok kenapa ya saya kalau nafas terasa susah kalau narik nafas rasanya harus dalam-dalam dan kalau tidak sampai rasanya mau mati dok... Pas periksa ke puskesmas dokternya bilang tidak ada masalah sama pernapasan saya... Bagaimana nih dok Terimakasih sebelumnya ', '59  '),
(60, 'Assalamualaikum dok.. saya ibu berusia 39 tahun, saya punya penyakit asma yang sudah lama saya derita, setiap hari saya konsumsi obat asma ventolin inhaler, seminggu lalu saya kena serangan jantung dan masuk ICU, dan katanya itu aritmia... yang mau saya tanyakan, masih bolehkah saya menggunakan ventolin inhaler jika saya juga menderita aritmia..??..terima kasih dok ', '60 '),
(61, 'Malam dok, saya mau tanya, tadi pagi saya sempat flu berat karena terpapar angin kencang , setelah itu saya minum semacam susu diet (serat tinggi) , sehabis itu dada saya terasa sangat sakit dan kering , bernapas pun terbatas dan bengek bengek saat bernapas. Apakah flu tersebut berpengaruh dengan asma saya dok? atau itu bukan penyakit asma? ', '61 '),
(62, 'Dok saya mau tanya. Saya berusia 28 tahun dan mengalami sesak sejak 2 tahun lalu. Dokter saya bilang saya terkena asma. Saya di anjurkan menggunakan obat nebulizer... Akan tetapi saya seorang guru jadi aktivitas saya banyak di luar rumah. Jadi saya beli inhaler.... Apakah berbahaya apabila saya menggunakan nebulizer jika di rumah dan menggunakan inhaler jika di luar rumah... Karena kadang saya sebelum berangkat mengajar nebulizer dulu dan jika di sekolah terasa sesak saya menggunakan inhaler.... mohon pencerahannya dok...  ', '62  '),
(63, 'Saya Usia 39 tahun, dan sudah dari kecil 5 tahun mengidap asma turunan. saya seorang karyawan dan ibu rumah tangga, yang setiap hari full aktifitas dari pagi sampai malam. harus cari Nafkah dan mengurus 2 anak. \r\nAkhir-akhir ini hampir setiap hari asma-disertai batuk hampir setiap setiap hari kambuh, dan kalau saya berobat bpjs saya hanya dikasih obat salbutamol 4ml, dexamethasone 0.5 dan Ambroxol Hcl . karena resepnya dari Dokter selalu itu,  saya jadi beli sendiri dan stok di rumah.\r\nApakah berbahaya Dok kalau saya setiap hari konsumsi obat ini terus menerus?\r\nApakah saya perlu konsultasi ke dokter paru, mengingat sekarang hampir setiap hari saya kambuh? ', '63 '),
(64, 'ibu saya asma sudah 20 tahun lebih karena faktor keturunan, akhir-akhir kambuhnya parah ditambah batuk dan sesak luar biasa, dibawa ke dokter spesialis jantung hasil echo nya detak jantung lemah dan dirujuk ke spesialis paru-paru setelah sebelumnya harus ronsen karena dokter spesialis jantung mendiagnosa ibu saya terkena infeksi paru-paru. apakah ibu saya kena gagal jantung dok? lalu bagaimana dengan paru-parunya? apakah semua itu karena asma?\r\nterima kasih ', '64 '),
(65, 'Boleh kah penderita asma akut minum coq10. berapa dosis nya kalau boleh? ', '65 '),
(66, 'dok saya sering mengalami sesak nafas, saya selalu minum obat, setelah minum obat jadi menimbulkan dahak dan sesak nya baru reda, apa itu yang disebut asma?  ', '66  '),
(67, 'dok saya punya riwayat asma sekarang lagi kambuh saya setiap minum obat asma selalu tremor dok walaupun dosisnya sudah dikurangin tapi tetap tremor kira kira kenapa ya dok terus obat apa yang cocok untuk kasus seperti saya. saya biasa minum obat salbutamol yang 1mg aja masih tremor. terimakasih ', '67 '),
(68, 'Selamat pagi dokter, nama saya illa saya menderita penyakit asma dari balita, sejak berusia 5 tahun penyakit asma saya tidak kambuh akan tetapi kambuh kembali setelah saya berusia 19 tahun dan waktu itu tepatnya saya sedang diperiksa dokter THT karena pilek yang tidak kunjung sembuh dari saya SMP sampai dengan waktu itu ternyata kata dokter ada polip yang membesar serta rinitis alergi .. apakah ada hubungannya dengan kambuhnya asma saya? Dan bagaimana tindakan yang harus saya lakukan.. kalau malam hari terlalu dingin saya tidak bisa tidur semalaman bagaimana posisi yang baik untuk yang mengidap asma? ', '68 '),
(69, 'selamat pagi dok, apakah obat antibiotik amoxan 500mg aman buat penderita penyakit asma dok ', '69 '),
(70, 'Hallo dok, saya Devita kebetulan saya penderita asma, apakah asma bisa menjalar kekulit? kalau ya apakah tanda-tandanya? ', '70 '),
(71, 'Halo, dok. saya memiliki asma, tetapi biasanya asma saya jarang kambuh, kalau kambuh saat sedang batuk pilek saja. Namun tiga hari ini, nafas saya selalu berbunyi. padahal saya tidak sedang batuk pilek. apakah saya harus memakai inhaler dok ? karena sebagai pengidap asma, saya tidak pernah pakai inhaler, saya hanya mengkonsumsi obat salbutamol saat asma kambuh.  ', '71  '),
(72, 'Dok saya penderita asma keturunan, tapi asma ini baru muncul disaat umur saya 17 tahun, dan setelah saya berhenti merokok asma lebih sering kambuh, sekarang usia saya sudah 30 tahun, akhir-akhir ini setiap saya batuk pasti timbul asma, sampai benar-benar sesak, apalagi disaat mau haid, tolong jelasin solusinya dok, karena saya ingin hamil, Apakah sabutamol obat keras, yang akhirnya menghambat kehamilan?? makasih ', '72 '),
(73, 'Malam dok.., saya mau tanya anak saya berumur 2 setengah tahun waktu saya periksakan ke dokter dengan keluhan batuk pilek, ternyata setelah diperiksa dokter mendiagnosa gejala asma. Mengingat waktu itu pernah batuk pilek seminggu kemudian sudah sembuh kemudian batuk pilek lagi begitu seterusnya dalam jangka waktu 1 bulan. Dan ternyata ada riwayat asma dari kakeknya. Bagaimana ya dok caranya mengurangi/mengantisipasinya? kemudian apakah anak dibawah 5 tahun belum boleh diberikan obat asma?? karena waktu periksa hanya dikasih obat pengencer dahak saja. Sebelumnya terima kasih dok ', '73 '),
(74, 'Dokter, saya mau tanya sampai berapa penggunaan avamys? Apakah bisa dipakai berbulan-bulan setiap hari? ', '74 '),
(75, 'Siang dok, mau tanya kalau penggunaan fluimucil untuk bronkitis apa bagus? Tetapi saya juga punya penyakit asma dok. Setelah saya baca di leaflet ternyata ada hati-hatu untuk pengguna asma apakah sebaiknya saya berhenti penggunaan fluimucil nya dok? ', '75 '),
(76, 'Selamat sore dok, saya mau tanya tentang penggunaan obat. Ibu saya punya penyakit asma, akhir-akhir ini sering kambuh, pernah sampai opname terus dikasih obat inhaler berotec. tapi waktu kambuh lagi, saat pakai obat itu seperti tidak mempan atau berefek, bagaimana ya dok? Sementara ini ibu diobati pakai salbutamol, apa tidak apa-apa kalau sehari bisa mengonsumsi salbutamol 2 sampai 2 tablet yang 2mg? Terus apa benar kalau terlalu sering di uap itu akan menyebabkan saluran pernafasan menjadi kaku? Terima kasih dok.. semoga dokter selalu diberi kesehatan.. Aamiin ', '76 '),
(77, 'Hallo dok, saya mau tanya. Setiap pagi atau di cuaca yang dingin saya selalu mengalami flu. Ditambah saya juga penderita asma yang setiap malam sebelum tidur selalu memakai obat semprot, karena kalau tidak akan kambuh disekitar jam 3 pagi. Apa baik jika saya selalu memakai obat setiap hari dan bagaimana cara mengobati flu saya ini. Terimakasih.... ', '77 '),
(78, 'Selamat sore. Kenapa ya saya dalam 1 tahun ini saat mau atau setelah haid selalu Asma saya kambuh.. ', '78 '),
(79, 'Dok, untuk penderita asma saat hamil apa masih boleh menggunakan inhaler/obat semprot asma ', '79 '),
(80, 'Assalamualaikum. dok saat saya baru test pack dan positif asma saya kambuh, saya pergi ke dokter dan saya bilang saya positif hamil saya pun di nebu dan diberi obat salbutamol 2mg. dan sekarang usia kehamilan saya 14 minggu asma saya kambuh lagi, kira-kira kalau saya meminum salbutamol 2mg aman tidak ya dok? terus kalau saya di nebu aman tidak ya dok soalnya saya sekarang punya nebu di rumah. ', '80 '),
(81, 'Halo dokter, saya memiliki penyakit asma dan belakangan ini saya hidung saya tersumbat pada malam hari terutama ketika tidur dan ketika bangun saya merasa sesak nafas gara-gara itu bahkan lebihnya asma saya bisa kambuh. terkadang saya tidak mengalami flu tapi terkadang saya masih merasa hidung saya ini tersumbat ketika tidur. kira-kira penyebabnya apa ya dok? Dan bagaimana penanggulanganya?.. saudara saya bilang saya harus vaksin pneumonia/pneumokokus untuk mengontrol/mencegah asma saya, karena pemicu asma saya kambuh ini dari hidung tersumbat dan flu.. apakah benar dok? Terimakasih ', '81 '),
(82, 'Dok, jadi teman saya saat sedang pergi dengan saya tiba-tiba asmanya kambuh. Dan dia juga tidak bawa inhaler maupun obat asma. Saya bingung harus bagaimana, ya. ', '82  '),
(83, 'Saya mengalami batuk dan asma (nafas pendek) selama 4 hari Saya minum obat salbutamol dan actifed sirup... Apakah penyebab asma saya ini ', '83 '),
(84, 'Dok asma saya sedang kambuh, saya minum salbutamol 2mg jam 6 malam tadi,tidak ada perubahan kemudian jam 8 malam saya minum lagi 2mg... Hingga saat ini saya masih merasa sesak, Bagaimana solusinya dok Apa harus minum salbutamol 4mg ', '84 '),
(85, 'Hai dok, saya mau bertanya. Kenapa saya kalau demam sering sesak nafas dan bengkak pada bagian mata? Apa solusinya dok? ', '85 '),
(86, 'hallo Dok, saya mau tanya\r\n\r\nsaya menderita asma dari kelas 7 SMP, dulu sering kambuh namun sekarang sudah jarang bahkan terakhir kambuh itu tahun kemarin, apakah penyakit asma saya sudah mulai sembuh?\r\nterimakasih ', '86 '),
(87, 'Selamat pagi dok saya kan punya penyakit asma nafas berbunyi dulu kalau sekalinya jadi sebentar ini sampai berhari hari dan juga dada saya setiap bangun tidur dingin kaya abis di kompres es batu... lalu perut saya jadi buncit padahal saya coba tidak makan malah keras perut saya itu penyakit apa ya selain asma atau memang asma seperti itu ', '87 '),
(88, 'Lalu bagaimana dengan tes fisiknya dok? Soalnya kan selain diperiksa mata, gigi, dll juga ada ronsen dada dok, apa itu ada pengaruhnya dok? Terakhir saya tes disalah satu poltekkes saya gagal dok, saya malah berfikir itu dikarenakan ronsen dari thorax nya saya yang seorang penderita asma dok. Terimakasih dok. ', '88 '),
(89, 'Assalamu\'alaikum dok, Saya siswi SMA disuatu daerah, saya baru tamatan tahun ini. Saya mempunyai asma dok, jadi pertanyaan saya mengenai penyakit saya ini. Saya ingin banget jadi seorang dokter. Apa mungkin seorang penderita asma seperti saya bisa memasuki fakultas kedokteran dok? Soalnyakan selain harus lulus tes masuk di suatu universitas khusus untuk fakultas kedokteran masih ada tes psikolog dan tes fisik dok. Apa memungkinkan ya dok seorang penderita asma bisa memasuki Itu saja pertanyaan saya dok, mohon di jawab ya dok???? Terima kasih Wassalam ', '89  '),
(90, 'Hallo dok. Saya mau tanya. Saya kan ada penyakit Asma. Dan sering banget sesak nafas. Sampai waktu itu saya mau operasi itu harus dirujuk ke dokter spesialis paru untuk penanganan asma saya. Nah sampai akhirnya ternyata asma saya ini bawaan dari lahir dok. Dokter bilang saluran pernafasan saya memang sempit. Dan memang sering banget tiba-tiba nafas berat banget sampai susah ambil nafas dok. Dan ini cukup sering. Sampai akhirnya saya diberi obat Symbicort Turbuhaler 80/4.5 mcg. Setiap serangan saya langsung pakai obat itu dan memang asma saya cepat redanya dok, dan dada saya pun jauh lebih plong ketika ambil nafas. Nah ketika obat saya habis. Ibu saya berobat (karena sakit) ke dokter umum dekat rumah. Terus tanya tentang obat saya. Dokter itu bilang tidak boleh pakai inhaler lagi. Lebih baik obat tablet. Terus ibu saya coba tanya di apotek, penjaga apoteknya juga bilang jangan pakai inhaler lagi. Disitu saya bingung dok, saya sering banget serangan asma mendadak. Kalau saya konsumsi obat asma tablet terus kan tidak baik buat ginjal, disisi lain saya mudah sakit juga dok jadi sudah cukup banyak konsumsi tablet. Jadi solusinya bagaimana dok ya? ', '90   '),
(91, 'halo dokter,\r\ndok saya mau tanya saya kan sedang hamil 12 minggu dok.. jadi saya memang mempunyai asma sejak dulu tapi semenjak 6 bulan ini tidak pernah kambuh tapi tiba-tiba pagi ini asma saya kambuh dok dan karena sudah tidak tahan lagi saya menggunakan inhaler yang semprot itu 2 kali dok..\r\napakah berbahaya dok bagi janin saya?\r\njika berbahaya apa yang harus saya lakukan mengatasi jika asma saya tiba-tiba kambuh dok? dan apakah saya bisa melahirkan normal dikemudian hari dok?\r\nterima kasih dok mohon bantuannya dok..  ', '91  '),
(92, 'Assalamualaikum ibu/bapak dokter yang saya hormati. Saya penderita asma sejak balita namun saat menginjak usia remaja hingga umur 19 tahun asma saya tidak pernah kambuh. Namun akhir-akhir ini pada saat usia saya 20 tahun asma saya tiba-tiba kambuh dan membuat saya tidak bisa tidur dengan pulas dan hanya sekitar 2 jam tertidur. Kira-kira posisi tidur bagaimana yang nyaman bagi penderita asma?? Terima kasih atas perhatiannya. ', '92 '),
(93, 'Salam Dok. Saya mau tanya, saya pnderita sesak nafas/asma, saya sempat ke Dokter, dan diberikan obat inhaler (dosis 160). Dan saya sudah menggunakan selama hampir 3 tahun, dan benar-benar lega & jarang kambuh, 1 botol 120 hirup bisa untk 1 tahun. Yang mau saya tanyakan, apakah saya salah karena tidak pernah kontrol lagi ke Dokter & bila inhaler habis saya beli sendiri ke toko online. Terima kasih sebelum & sesudahnya Dok. ', '93 '),
(94, 'Dok, saya elda. usia 40 tahun saya asma sejak usia 15 tahun sudah 25 tahun. selama ini sesaknya kalau malam saja. namun setahun ini setelah saya melahirkan anak. Setiap hari sesak baik siang maupun malam. saya menggunakan obat semprot dan hirup. yang ingin saya tanyakan. saya ingin mengurangi / tidak mau tergantung obat bagaimana caranya? Kenapa tidak sembuh-sembuh? Apakah karena saya kurang konsul ke dokter. saya harus konsul kedokter mana paru-paru/alergi? apakah saya boleh hamil lagi. karena anak saya baru satu? Trimakasih. ', '94 '),
(95, 'Hallo dok mau tanya . Cara mengatasi badan gemetar setelah mengkonsumsi salbutamol ?   ', '95   '),
(96, 'Saya punya masalah dok, dibagian belakang, tulang terasa ngilu, gatal dibagian kaki dan tangan, dan juga pernapasan terasa sesak, sering pusing. Kira-kira itu penyakit apa ya dok? Dan bagaimana cara mengatasinya !!!  ', '96  '),
(97, 'Halo dok, saya ingin bertanya dari segi kedokteran apakah terapi gurah untuk menyembuhkan asma aman untuk dilakukan? Apakah efek samping dari terapi gurah? Terimakasih dok. ', '97 '),
(98, 'Dok anak saya batuk terus menerus terutama saat tiduran, batuk terpotong potong. Anak Saya juga memiliki bronkitis dan riwayat asma. Saat ini saya sakit maag dan usus. Anak Saya sulit makan.hanya makan 2 sendok tapi dengan jam seperti orang normal. Sudah dipaksa tetap saja tidak mau. Setiap malam ia batuk terus menerus. minum obat pun efeknya hanya sampai jam tiga malam, padahal saat itu ia minum obat jam 10 malam. ', '98 '),
(99, 'Selamat pagi dok, saya lia,, Saya sekarang sedang menyusui anak saya yang berumur baru 1 minggu. Sekarang asma saya kambuh dok,, apakah bisa saya minum obat sabultamol atau itu akan mengganggu bayi saya dok.. terima kasih ', '99 '),
(100, 'Dok saya punya asma dan bronkitis kronis sudah dua minggu lebih obat saya yang seretide diskus habis dan asma saya kumat lagi dan akhirnya seminggu kemarin saya di nebu lagi, saya malas sekali untuk konsultasi lagi ke dokter spesialis paru, kalau menurut dokter saya beli sendiri atau bagaimana ya dok soalnya sejauh pemakain obat itu asma saya berkurang ', '100 ');

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
(7, 'stock ventolin inhaler  milik asma jarang pakai intensitas gejala sesak muncul aktivitas minggu efek beda hidung dua sumbat bibir kebas kelopak mata bengkak alergi minum ctm khawatir sering balik atasi'),
(8, 'konsumsi obat ledomer  biji kejang sembuh'),
(9, 'pimpin  sakit asma kerja jam ruang kena kumat menikah alami masalah hidung lega asmanya kambuh sumbat salah lubang tissu bersih alergi debu sinus panduan'),
(10, 'atasi sakit asma  bayi'),
(11, 'nafas manual  dangkal pikir tidur susah karna ngatur esok hari ulang mood jelek jadi habis demam cek sehat'),
(12, 'siang  perempuan asma kambuh batuk hiding berair rutin konsumsi obat teosal dexamethasone ambroxol kurang nyeri gejala minum rasa tremor halus pegal lengan telapak tangan kiri wajar efek bahaya'),
(13, 'alami sesak batuk pilek sesek ringan  sehat tidur nyenyak'),
(14, 'pijat area punggung  derita asma sembuh'),
(15, 'derita asma  kambuh kejang tangan genggam susah lepas binggung alergi makan minum debu asap bakar bau sengat cat obat bronsolvan kandung teofilin lambung iris jarang henti lanjut salbutamol sifat tablet aman ceteme anti jawab'),
(16, 'umur  derita asma smp ringan kambuh keluarga milik anak parah obat salbutamol minum'),
(17, 'idap sakit asma turun  susah nafas hidung mulut tutup bunyi saran obat'),
(18, 'guna inhaler asma dengar  jenis konsultasi'),
(19, 'suami  sakit asma turun kakek kumat pilek batuk dahak minggu sedia ventolin inhaler salbutamol sering efek tenggorok panas bakar nelan makan stop konsumsi banget kasihan badan kurus solusi obat aman total'),
(20, 'normal  rokok bangun tidur alami asma batuk'),
(21, 'anak  pakai seretide pilek kali semprot kakak lupa adik bahaya'),
(22, 'methylprednisolone  asma tahu salbutamol efek detak jantung cepat tubuh menggigil tunggu jawab'),
(23, 'jawab  orang tua derita asma paru basah masuk sakit kelas batuk periksa kiri masalah smp vonis jarang kambuh kecuali musim hujan pilek usia sesak nafas bagian dada sulit ikut nyeri tulang punggung pegal parah turun obat'),
(24, 'alami batuk  napas dengar bunyi ngik kering puskesmas dekat obat reaksi alternatif kurang sesak'),
(25, 'anak  minggu suara nafas ngrok dengar sesak tidur sedot kasian nyaring laku lendir mulut tarik bayi dalam solusi pakai alat dahak'),
(26, 'anak  laki derita sesak nafas asma tunjuk nebuliser jenis beli guna hubung sakit'),
(27, 'derita asma paksa  olahraga fisik lari bahaya kambuh aktivitas'),
(28, 'hamil  minggu sesak nafas uap muda aman'),
(29, 'ayah  nafas bunyi keluar dahak bengkak kelenjar leher hasil cenderung encer batuk jelas'),
(30, 'lahir prematur paru  sempurna sesak nafas lelah asma kambuh anak sakit cegah'),
(31, 'usia kandung  masuk riwayat asma kambuh batuk pilek lahir normal'),
(32, 'sehat  rasa sesak napas batuk umur bawah alami asma jarang kambuh gejala pengaruh ruang debu lingkung dingin faktor pola hidup hari habis kantor kerja minim aktivitas fisik lemah jawab'),
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
(50, 'batuk pilek  bersin periksa obat parah tenggorok sakit suara klimaks demam derajat opname diagnosa tipes minum es langsung cuman sebentar teh segelas hidung sensitif banget debu ngelus kucing gatel mata kucek merah megang gendong pikir total stabil jelas'),
(51, 'surat terang sehat  asma lolos'),
(52, 'sesak  stres nangis napas sulit tarik dengar suara hink ambil tenang orang perlahan batuk hidung tutup boneka peluk kucing debu alami bengek asma'),
(53, 'alami sesak napas  tahun sakit paru mikir ronsen medical cek up lamar usaha lolos kampung udara dingin dada cium asap rokok langsung suruh konsultasi alergi debu dokter asma positif'),
(54, 'usia  asma banget sesak napas batuk mengi cuaca dingin obat sembuh sakit dada'),
(55, 'milik asma  hamil minggu aman ventolin nebulizer kambuh'),
(56, 'tidur  sesak napas pikir tembak kepala solusi'),
(57, 'celaka  rasa sakit dada susah atur napas sesak kepala leher tegang gejala asma'),
(58, 'hamil anak tiga  alami sesak napas ugd vonis asma riwayat genetik umur hidup serang milik alat uap bolak kali obat jual bebas aman janin'),
(59, 'pria  keluh napas susah narik mati periksa puskesmas dokter bilang'),
(60, 'usia  sakit asma derita konsumsi obat ventolin inhaler seminggu serang jantung masuk icu aritmia'),
(61, 'flu berat  papar angin kencang minum susu diet serat habis dada sakit kering napas batas bengek pengaruh asma'),
(62, 'usia  alami sesak kena asma anjur obat nebulizer guru aktivitas rumah beli inhaler bahaya berangkat ajar cerah'),
(63, 'usia  idap asma turun karyawan rumah tangga full aktivitas nafkah urus anak batuk kambuh bpjs obat salbutamol ml dexamethasone ambroxol hcl resep beli stok bahaya konsumsi konsultasi paru'),
(64, 'asma  faktor turun kambuh parah tambah batuk sesak bawa spesialis jantung hasil echo detak lemah rujuk paru ronsen diagnosa kena infeksi gagal'),
(65, 'derita asma akut minum coq  dosis'),
(66, 'alami sesak napas  minum obat timbul dahak reda asma'),
(67, 'riwayat asma  kambuh minum obat tremor dosis kurang cocok salbutamol'),
(68, 'derita sakit asma  balita usia kambuh tepat periksa tht pilek smp polip besar rinitis alergi hubung tindak laku dingin tidur malam posisi idap'),
(69, 'obat antibiotik amoxan  aman derita sakit asma'),
(70, 'derita asma  jalar kulit tanda'),
(71, 'milik asma  jarang kambuh batuk pilek napas bunyi pakai inhaler idap konsumsi obat salbutamol'),
(72, 'derita asma turun  muncul saat henti merokok kambuh usia batuk timbul sesak haid solusi hamil sabutamol obat keras hambat'),
(73, 'anak  umur periksa keluh batuk pilek diagnosa gejala asma seminggu jangka riwayat kakek kurang antisipasi bawah obat encer dahak'),
(74, 'guna avamys  pakai bulan'),
(75, 'guna fluimucil  bronkitis bagus sakit asma baca leaflet hati hatu henti'),
(76, 'guna obat  sakit asma kambuh opname inhaler berotec pakai mempan efek salbutamol hari konsumsi tablet uap sebab salur napas kaku sehat'),
(77, 'cuaca  dingin alami flu tambah derita asma tidur pakai obat semprot kambuh sekitar jam'),
(78, 'haid  asma kambuh'),
(79, 'derita asma  hamil inhaler obat semprot'),
(80, 'test pack  positif asma kambuh pergi hamil nebu obat salbutamol usia minggu minum aman rumah'),
(81, 'milik sakit asma  hidung sumbat tidur bangun sesak napas lebih kambuh kadang alami flu sebab tanggulang saudara vaksin pneumonia pneumokokus mengontrol cegah picu'),
(82, 'pergi  asma kambuh bawa inhaler obat bingung'),
(83, 'alami batuk  asma napas pendek minum obat salbutamol actifed sirup sebab'),
(84, 'asma  kambuh minum salbutamol jam ubah sesak solusi'),
(85, 'demam  sesak napas bengkak mata solusi'),
(86, 'derita asma  kelas smp kambuh jarang sakit'),
(87, 'sakit asma napas bunyi  kali sebentar hari dada bangun tidur dingin kaya abis kompres es batu perut buncit coba makan keras'),
(88, 'tes fisik  periksa mata gigi ronsen dada pengaruh poltekkes gagal pikir thorax derita asma'),
(89, 'siswi sma suatu daerah  tamatan asma sakit banget derita masuk fakultas dokter soal lulus tes universitas khusus psikolog fisik'),
(90, 'sakit asma  banget sesak napas operasi rujuk spesialis paru penanganan bawa lahir salur sempit berat susah ambil obat symbicort turbuhaler mcg serang langsung pakai cepat reda dada plong rumah inhaler tablet coba apotek penjaga disitu bingung dadak konsumsi ginjal disisi mudah solusi'),
(91, 'hamil  minggu asma semenjak kambuh tahan inhaler semprot kali bahaya janin laku atasi lahir normal kemudian bantuan'),
(92, 'hormati  derita asma balita injak usia remaja kambuh tidur pulas jam posisi nyaman perhati'),
(93, 'salam  derita sesak napas asma obat inhaler dosis lega jarang kambuh botol hirup untuk salah kontrol beli toko online'),
(94, 'usia  asma sesak tahun lahir anak obat semprot hirup kurang gantung konsul dokter paru alergi hamil'),
(95, 'atasi badan gemetar  konsumsi salbutamol'),
(96, 'bagian  tulang ngilu gatal kaki tangan napas sesak pusing sakit atasi'),
(97, 'segi dokter  terapi gurah sembuh asma aman efek samping'),
(98, 'anak  batuk tidur potong milik bronkitis riwayat asma sakit maag usus sulit makan sendok jam orang normal paksa minum obat efek'),
(99, 'susu anak  umur minggu asma kambuh minum obat sabultamol ganggu bayi'),
(100, 'asma  bronkitis kronis minggu obat seretide diskus kumat seminggu nebu malas konsultasi spesialis paru beli pakai kurang');

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
  MODIFY `id_data_ori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `data_proses`
--
ALTER TABLE `data_proses`
  MODIFY `id_data_proses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `representasi_kasus`
--
ALTER TABLE `representasi_kasus`
  MODIFY `id_kata` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
