-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2011 at 01:54 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbhimakal`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=43 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `username`) VALUES
(40, 'Tumpengan PKPBA', 'tumpengan-pkpba', '', 'Sport Center', '', '2011-06-24', '2011-06-24', '2011-06-14', '14', 'admin'),
(41, 'Kunjungan ke Rumah Pak Syafullah bersama anggota Himakal', 'kunjungan-ke-rumah-pak-syafullah-bersama-anggota-himakal', '', 'Rumah Pak Syaifullah', '', '2011-06-25', '2011-06-25', '2011-06-14', '19:00', 'admin'),
(42, 'Rapat Paripurna Himakal', 'rapat-paripurna-himakal', '', 'Gedung B', 'Ketua', '2011-06-30', '2011-06-30', '2011-06-30', 'Setelah Ashar', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `gbr_album`, `aktif`) VALUES
(21, 'LPJ HIMAKAL', 'lpj-himakal', '252471IMG_1171.JPG', 'Y'),
(20, 'Outbon Himakal', 'outbon-himakal', '138397IMG_0036.JPG', 'Y'),
(18, 'Bayi', 'bayi', '246551silvestree.jpg', 'N'),
(12, 'Ilustrator', 'ilustrator', '987701family.jpg', 'N'),
(19, 'Binatang', 'binatang', '391479burung.jpg', 'N'),
(17, 'Arsitektur', 'arsitektur', '741638arche090.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(4, 'Fresh Book', 'http://freshbooks.com', 'freshbook.jpg', '2009-02-05'),
(7, 'Cinema 21', 'http://21cineplex.com', 'cinema21.jpg', '2008-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=201 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(193, 19, 'admin', ' Polres Sintang Sukses Gelar Perkemahan Di Perbatasan', '-polres-sintang-sukses-gelar-perkemahan-di-perbatasan', 'Y', '<p id="pengantar">\r\n<strong>Sintang-KOTA, (kalimantan-news) -</strong>\r\nLima Polres di Kalimantan Barat yang barada di wilayah perbatasan\r\ndengan negara tetangga Malaysia, telah melaksanakan satu kegiatan\r\nperkemahan yang melibatkan warga di daerah perbatasan khususnya para\r\npelajar, yang tujuannya adalah untuk lebih menumbuhkan wawasan\r\nkebangsaan serta cinta pada tanah air.\r\n</p>\r\n<p style="text-align: justify">\r\nKhusus\r\nuntuk wilayah hukum Polres Sintang, kegiatan perkemahan tersebut\r\ndilaksanakan pada tanggal 23-26 Juni 2011 bertempat di Desa Jasa\r\nkecamatan Ketungau Hulu.<br />\r\n<br />\r\nHal tersebut disampaikan Kanit Binkamsa Aiptu Hariyanto kepada kalimantan-news, Senin (27/06/2011).<br />\r\n<br />\r\n&ldquo;Acara\r\nlangsung dibuka oleh Bapak Kapolres Sintang tanggal 24 Juni yang\r\ndihadiri oleh masyarakat, tokoh masyarakat setempat serta para\r\npelajar,&rdquo; kata Aiptu Hariyanto<br />\r\n<br />\r\nUntuk pelajar, lanjut Hariyanto, ada 2 sekolah yang mengikuti kegiatan yang jumlahnya sebanyak 77 orang pelajar.<br />\r\n<br />\r\nDalam\r\nkegiatan tersebut, pihak Polres menyerahkan beberapa bantuan seperti\r\nsarana olahraga berupa bola kaki dan voli. Selain itu juga diserahkan\r\nlampu petromax, 65 lembar bendera Merah Putih dan 65 lembar foto\r\nPresiden dan Wapres&nbsp; RI.<br />\r\n<br />\r\n&ldquo;Kita tidak menyangka, Hut Kepolisian\r\nke 65 ini, ternyata juga sesuai dengan angka KK yang ada disana yang\r\nberjumlah 65 KK. Jadi yang kita bagikan pas jumlahnya,&rdquo; ungkapnya.<br />\r\n<br />\r\nBerbagai\r\nbantuan lain juga diserahkan tidak hanya untuk desa Jasa akan tetapi\r\njuga ke beberapa desa terdekat seperti Sungai Kelik. Aiptu Hariyanto\r\njuga menjelaskan, pada dua malam berturut-turut juga diputarkan film\r\nperjuangan.<br />\r\n<br />\r\n&ldquo;Ini dimaksudkan untuk menggugah serta menumbuhkan\r\nsemangat juang warga perbatasan. Dengan pemutaran film tersebut, kita\r\nberharap mereka dapat mengetahui seperti apa perjuangan bangsa\r\nIndonesia dalam merebut serta mempertahankan kemerdekaan. Kemerdekaan\r\nyang kita peroleh tidak dengan cara yang mudah tapi penuh dengan\r\npengorbanan jiwa, raga dan harta,&rdquo; jelasnya.<br />\r\n<br />\r\nBahkan,lanjutnya\r\ndalam setiap kegiatan yang dilaksanan selalu diputarkan lagu-lagu\r\nperjuangan sebagai penggugah semangat masyarakat diperbatasan.<br />\r\n<br />\r\n&ldquo;Selama 4 hari kegiatan, kita terus menerus memutarkan lagu wajib nasional,&rdquo; kata Aiptu Hariyanto.<br />\r\n<br />\r\nSementara\r\nitu, Kapolres Sintang AKBP Firly R Samosir pada kesempatan kegiatan,\r\nlanjut Hariyanto juga memberikan sosialisasi kepada masyarakat setempat\r\nmengenai penanganan TKI Ilegal. Secara umum kegiatan perkemahan dalam\r\nrangka HUT POLRI ke 65 yang bertajuk Kemah Bhakti Sosial Pramuka Saka\r\nBhayangkara selama 4 hari tersebut berlangsung sukses.<br />\r\n<br />\r\n&ldquo;Ada\r\nharapan dari masyarakat setempat, bahkan dari Organisasi Laskar Merah\r\nPutih meminta agar kegiatan yang kita lakukan selama 4 hari tersebut\r\ndapat menjadi agenda rutin tahunan tidak sebatas oleh Polri akan tetapi\r\noleh yang lainnya atau lintas sektoral,&rdquo; pungkasnya.<strong>(*)</strong>\r\n</p>\r\n', 'Senin', '2011-06-27', '17:42:37', '6520110627033754_05228A8.jpg', 4, ''),
(194, 23, 'admin', 'Puskesmas Sungai Durian Direkomendasikan Jadi Rumah Sakit', 'puskesmas-sungai-durian-direkomendasikan-jadi-rumah-sakit', 'N', '<p id="pengantar">\r\n<strong>Kalimantan Barat-KUBU RAYA, (kalimantan-news) -</strong>\r\nDinas Kesehatan Kabupaten Kubu Raya akan merekomendasikan kepada bupati\r\nsetempat untuk meningkatkan Puskesmas Sungai Durian yang terletak di\r\nDesa Arang Limbung, Kecamatan Sungai Raya untuk dijadikan sebagai rumah\r\nsakit tipe C.\r\n</p>\r\n<p style="text-align: justify">\r\n&quot;Pemerintah\r\nKabupaten Kubu Raya tidak akan membuat Rumah Sakit Umum Daerah seperti\r\nyang banyak direncanakan kabupaten/kota pemekaran baru. Paling\r\nstatusnya akan dinaikkan menjadi RSUD dan kita telah merekomendasikan\r\npuskesmas tersebut untuk jadi rumah sakit,&quot; kata Titus Nursiwan di\r\nSungai Raya, Sabtu.<br />\r\n<br />\r\nDia mengatakan membangun fasilitas atau\r\nsarana prasarana rumah sakit, biayanya terlalu besar. Kemungkinan\r\nPemkab akan melakukan peningkatan sarana Puskesmas kemudian menjadi\r\npuskesmas rawat inap sampai menjadi rumah sakit.<br />\r\n<br />\r\n&quot;Yang layak sampai saat ini adalah Puskesmas Rawat Inap Sungai Durian,&quot; ujarnya.<br />\r\n<br />\r\nPuskesmas\r\nRawat Inap Sungai Durian, levelnya bukan rumah sakit. Namun operasional\r\nsehari-hari dan kegiatannya sudah layaknya seperti rumah sakit. Dinas\r\nKesehatan Kubu Raya tengah merancang menuju perbaikan level. Kapan\r\nterealisasinya belum dapat diketahui pasti.<br />\r\n<br />\r\n&quot;Kita tidak\r\ntargetkan kapan perubahan status Puskesmas Sungai Durian menjadi Rumah\r\nSakit. Insya Allah kalau disetujui Provinsi Kalbar pada tahun 2011\r\nakhir, statusnya akan berubah,&quot; katanya.<br />\r\n<br />\r\nPemkab memang\r\nmenargetkan perubahan tersebut. Alasannya pendirian rumah sakit\r\nberhubungan dengan bantuan Kementerian Kesehatan atau Pemerintah Pusat.\r\nBiasanya bantuannya berupa sarana, tenaga spesial dan lain sebagainya.<br />\r\n<br />\r\n&quot;Itu yang harus dikejar Kubu Raya untuk memberikan pelayanan lebih baik,&quot; kata Titus.<br />\r\n<br />\r\nDia\r\nmelanjutkan, di Puskesmas Rawat Inap Sungai Durian sekarang\r\npelayanannya bersifat 24 jam seperti rumah sakit. Setidaknya terdapat\r\n25 tempat tidur. Untuk tenaga memang belum memiliki tenaga dokter\r\nspesialis.<br />\r\n<br />\r\n&quot;Kita baru punya satu orang dokter beberapa tenaga bidan dan perawat,&quot; katanya.<br />\r\n<br />\r\nTitus\r\nmenambahkan dengan perkembangan zaman, Kubu Raya memang banyak\r\nmembutuhkan tenaga medis. Kuota untuk tahun 2011 harus ditambah. Dinkes\r\nsendiri sudah mengusulkan banyak bidan, perawat, sanitasi, apoteker,\r\ntenaga gizi termasuk dokter.<br />\r\n<br />\r\nSeperti penerimaan CPNS 2010,\r\nperuntukannya sangat vital bagi daerah terpencil dan sangat terpencil.\r\nNamun dengan belum dikeluarkannya Nomor Induk Pegawai, peruntukannya\r\nmenjadi kosong. Sementara banyak masyarakat meminta.<br />\r\n<br />\r\nDi Desa\r\nPadang Tikar, Kecamatan Batu Ampar, Kecamatan Teluk Pakedai sampai\r\nsekarang masih menunggu. Pengisiannya selama ini mengandalkan puskesmas\r\ninduk. &quot;Dan kami berharap secepatnya terselesaikan. Karena ada sekitar\r\n71 tenaga kita yang masih menggantung,&quot; kata Titus.<strong> (phs/Ant)</strong>\r\n</p>\r\n', 'Senin', '2011-06-27', '17:46:01', '', 3, ''),
(195, 2, 'admin', 'Rossi Mengaku Masih Belajar ', 'rossi-mengaku-masih-belajar-', 'Y', '<strong>BANJARMASINPOST.CO.ID&nbsp; </strong>&mdash; Valentino Rossi gagal meraih\r\nhasil menggembirakan pada kualifikasi GP Belanda, Jumat (24/6/2011).\r\n&quot;The Doctor&quot; mengatakan bahwa persoalan besar muncul karena ia masih\r\ndalam proses pembelajaran terhadap motor baru GP11.1 dan masalah\r\ntemperatur ban Bridgestone.<br />\r\n<br />\r\n Rossi, yang pada latihan pertama\r\ndi Assen sempat berada di peringkat kedua, tak berdaya saat sesi\r\nkualifikasi. Juara dunia tujuh kali MotoGP tersebut terpuruk di urutan\r\nke-11. Padahal, dia mendapat paket sasis 2012 pada mesin 800 cc yang\r\ndiharapkan dapat meminimalkan kesulitan Rossi selama musim ini.<br />\r\n<br />\r\nNamun, kenyataannya sangat jauh berbeda. Pebalap Italia ini justru\r\nterlempar dari posisi di 10 besar. Ini kali ketiga ia mengalami hal\r\nserupa sepanjang debutnya bersama Ducati.<br />\r\n<br />\r\n&quot;Perasaan kami sedang buruk. Kami agak frustrasi, terutama setelah penampilan kemarin,&quot; ujar Rossi kepada situs resmi MotoGP.<br />\r\n<br />\r\n&quot;Dalam kondisi kering, kami masih memiliki persoalan yang sama seperti\r\nmotor lama. Kami tidak memahami secara pasti bagaimana cara mengendarai\r\nmotor ini sehingga bisa mencapai limit atau bagaimana cara mengeset\r\nmotor ini.&quot;<br />\r\n<br />\r\nMantan pebalap Honda dan Yamaha tersebut pun mengakui, temperatur ban membuat situasi di Ducati kian kacau.<br />\r\n<br />\r\n&quot;Seperti di Silverstone, kami memiliki banyak masalah dengan temperatur\r\nban, dan ini membuat persoalan kami bertambah besar,&quot; ujarnya.<br />\r\n<br />\r\nPada latihan hari pertama yang berlangsung saat sirkuit basah, performa\r\nRossi cukup menjanjikan. Setelah berada di urutan kedua pada latihan\r\npertama, dia kembali berada di posisi lima besar pada latihan kedua.\r\nMeski demikian, Rossi tak mau hanya mengandalkan balapan dalam kondisi\r\nlintasan basah.<br />\r\n<br />\r\n&quot;Sekarang kami harus bekerja untuk meningkatkan performa dan berada di\r\nposisi yang lebih baik saat balapan,&quot; ucap pebalap berusia 33 tahun ini.<br />\r\n<br />\r\n&quot;Kemarin dalam situasi basah, kami tidak terlalu buruk. Sesuai ramalan,\r\ncuaca besok pun buruk. Namun, kami harus menunggu bagaimana kondisinya,\r\ndan setelah itu kami akan membuat keputusan.&quot;\r\n', 'Senin', '2011-06-27', '18:02:08', '54f29f114aac5cef9122d54b0c1db65856.jpg', 29, ''),
(196, 33, 'admin', 'Berlagak Beli Minuman, Pemilik Kios Diparang', 'berlagak-beli-minuman-pemilik-kios-diparang', 'N', '<p>\r\n<img src="http://banjarmasin.tribunnews.com/photo/2011/06/d2311f7660d97a2fd74748e85ed488e7.jpg" alt=" " width="415" height="311" /> \r\n</p>\r\n<p>\r\nHati-hati membuka pintu,\r\napalagi jika ada tamu yang datang tidak dikenal. Seperti terjadi pada\r\nMulia (27), yang terpaksa harus dilarikan ke rumah sakit karena\r\nmengalami luka serius.<br />\r\n<br />\r\nDua jari tangan kirinya putus karena\r\nsabetan senjata tajam oleh seorang pria tidak dikenal. &quot;Katanya mau\r\nbeli tiga bungkus Kuku Bima, lalu serahkan uang Rp4 ribu. Saya bilang\r\nuangnya lebihan, tapi dia langsung menyerang,&quot; tutur Mulia saat di\r\nruang IGD RSUD Kapuas.<br />\r\n<br />\r\nPeristiwa ini terjadi Senin (20/6/2011) sekitar pukul 19.30 WiB di\r\nMuara Handil Sederhana, Desa Anjir Serapat Barat Kilometer 9, Kecamatan\r\nKapuastimur, Kapuas, Kalteng.<br />\r\n<br />\r\nSaat kejadian, korban hanya bersama anak dan keponakan yang masih\r\nkecil. Sedangkan suami korban, Sani (30), sedang nongkrong di terminal\r\nojek yang lumayan jauh dari rumah.<br />\r\n<br />\r\nTeriakan yang spontan minta tolong membuat pelaku kabur. Oleh keponakan\r\nkorban, Sani ditelepon dan menemukan istrinya bersimbah darah.<br />\r\n<br />\r\nBelum diketahui motif pelaku atas kejadian penyerangan tersebut. &quot;Kalau\r\ndikatakan perampokan, kita belum tahu apa barang yang hilang,&quot; ujar\r\nKanit Reskrim Polsek Kapuastimur Aiptu Heru.<br />\r\n<br />\r\n&nbsp;\r\n<!-- story content : end -->\r\n</p>\r\n', 'Senin', '2011-06-27', '18:24:12', '', 1, ''),
(197, 23, 'admin', 'Sunatan, Alat Kelamin Malah Terpotong', 'sunatan-alat-kelamin-malah-terpotong', 'Y', '<strong>BANJARMASINPOST.CO.ID, KUALAKAPUAS </strong>- Malang nasib Tegar, bukan nama sebenarnya. Gara-gara salah khitan, bocah sembilan tahun itu harus dilarikan ke rumah sakit.<br />\r\n<br />\r\nEntah bagaimana peristiwa itu bisa terjadi. Yang pasti, Tegar yang\r\nmerupakan salah satu dari ratusan pasien sunatan massal yang digelar\r\nProgram Nasional Pemberdayaan Masyarakat (PNPM) Mandiri Perdesaan\r\nbekerja sama dengan Dinas Kesehatan Kapuas, harus menjalani perawatan\r\nintensif.<br />\r\n<br />\r\n&quot;Tadi pasien hanya sempat diberi infus. Kondisi &#39;kepala&#39; terpotong\r\npenuh hingga putus. Melihat kondisinya, tidak mungkin dirawat di sini\r\nkarena perlu penangan bedah urologi,&quot; sebut dokter jaga IGD RSUD\r\nKualakapuas, Rudi Helmansyah yang sempat menangani perawatan korban.<br />\r\n<br />\r\nMeski panitia dan petugas medis pada acara yang digelar di aula Kantor\r\nCamat Kapuasmurung itu sempat dibuat geger, para orangtua lain yang\r\nmembawa putranya untuk dikhitan tidak cemas. Sementara Tegar dilarikan\r\nke rumah sakit di Banjarmasin, kegiatan tetap berlangsung.<br />\r\n<br />\r\n(mustain khaitami/bpost online)\r\n', 'Senin', '2011-06-27', '18:28:27', '943b738b0e81c5dec77be7f452667147a9.jpg', 3, ''),
(198, 31, 'admin', 'Nelayan Sangata Temukan Ikan Langka', 'nelayan-sangata-temukan-ikan-langka', 'Y', '<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong>BANJARMASINPOST.CO.ID, SANGATA</strong> - Nelayan Bukit Pelangi\r\nSangata Kutai Timur, Kalimantan Timur, menemukan dan menangkap dua ekor\r\nikan layar atau marlin saat memancing di kawasan birah-birahan perairan\r\nSangkulirang dengan panjang masing-masing 2,10 meter dan 1,96 meter\r\nseberat 61 kilogram serta 57 kilogram.<br />\r\n<br />\r\n &quot;Ikan marlin itu kami\r\ntangkap bersamaan di kedalaman laut hanya lima meter, berwarna abu-abu\r\nbintik-bintik biru dan hitam saat memancing di perairan Sangkulirang,\r\nSelasa dinihari (31/5/2011),&quot; kata Jufri warga RT 40 dusun VII Bukit\r\nPelangi, Sangata, Kamis (2/6/2011).<br />\r\n<br />\r\nIa yang saat itu memancing bertiga mengaku sangat senang karena bisa\r\nmenemukan dan menangkap ikan jenis marlin atau ikan layar yang\r\nmerupakan ikan langka itu.<br />\r\n<br />\r\nJufri adalah nelayan asal Mamuju Provinsi Sulawesi Barat, namun memilih\r\ntinggal dan menjadi nelayan di Sangata, sejak satu tahun lalu.<br />\r\n<br />\r\nIa menyatakan, saat mendapatkan ikan layar tersebut, cuaca terbilang\r\nlumayan bagus, namun angin cukup kencang namun kami tetap nekat karena\r\nhasilnya tangkapan sedikit.<br />\r\n<br />\r\n&quot;Beruntung kami bisa mendapat ikan layar (marlin) itu, kami senang\r\nbangga dapat ikan langka meskipun resikonya juga berat kapal kami\r\nnyaris oleng diterjang angin kencang,&quot; kata Jufri dibenarkan Asri\r\nrekannya.<br />\r\n<br />\r\nMalam itu setelah mendapat ikan besar langsung bergeser kapal ke\r\npinggir pantai hingga pukul 04.15 wita dan kembali ke Sangata menjelang\r\nfajar setelah angin mulai menurun.<br />\r\n<br />\r\nIkan layar itu saat kami merapat dipelabuhan bukit pelangi Kenyamukan\r\nmenjadi tontonan warga, sebab selama ini belum pernah ada yang\r\nmenemukan jenis itu dengan berat hingga 60 kilogram dan panjang 2 meter\r\nlebih atau 100 kilogram (Kg) lebih dua ekor.<br />\r\n<br />\r\nAsri dan Anwar rekan satu kelompok dengan Jufri mengatakan tidak\r\nmengetahui harga ikan hasil tangkapannya karena langsung dibawa bosnya\r\npemilik kapal.<br />\r\n<br />\r\n&quot;Kami tidak tahu harganya berapa, sebab kami hanya mengetahui beratnya\r\nsaat ditimbang, setelah itu dinaikkan mobil bos. Sedangkan jenis ikan\r\nlain kami hanya dapat sedikit tidak sampai 10 kilogram, karena cuaca\r\nangin kencang,&quot; kata Asri.\r\n</p>\r\n', 'Senin', '2011-06-27', '18:47:21', '26d600b8a4179f8fbf292cdd2e743ea429.jpg', 4, ''),
(199, 23, 'admin', 'Kabut Asap Kembali Saput Palangkaraya', 'kabut-asap-kembali-saput-palangkaraya', 'Y', '<strong>BANJARMASINPOST.CO.ID, PALANGKARAYA </strong>- Kebakaran lahan\r\ngambut mencapai ratusan hektare yang terjadi selama dua hari di kawasan\r\nEks PLG di Kabupaten Kapuas sejak Jumat hingga Minggu kemarin berdampak\r\npada Kota Cantik Palangkaraya. Malam dan pagi Minggu (26/6/2011) kabut\r\nasap menyaput Kota Cantik Palangkaraya.<br />\r\n<br />\r\n Kabut menyaput kota\r\ncantik palangkaraya dan mulai mengganggu para pengendara yang\r\nlalukalang di jalan-jalan protokol di Ibukota Kalteng ini, bahkan\r\nsebagian pengendara tidak berani mengendarai kendaraan dengan kecepatan\r\ntinggi, karena takut tabrakan.<br />\r\n<br />\r\nStaf Deteksi Dini Kebakaran Hutan dan Lahan Balai Konservasi Sumber\r\nDaya Alam, Andreas Dody, mengatakan, kebakaran lahan akibat pembukaan\r\nlahan untuk perkebunan rakyat memang makin marak terjadi, bahkan sudah\r\nmulai mengkhawatirkan, karena sudah mulai merembet ke lahan-lahan\r\ngambut di kawasan Eks PLG.<br />\r\n<br />\r\n(faturahman/bpostonline)\r\n', 'Senin', '2011-06-27', '18:49:55', '63c0aed4075dcc462ceb6967771516b4c2.jpg', 10, ''),
(200, 31, 'admin', 'Kegiatan Palangkaraya Youth Day Berakhir', 'kegiatan-palangkaraya-youth-day-berakhir', 'Y', '<strong>BANJARMASINPOST.CO.ID, PALANGKARAYA</strong>- Kegiatan Palangkaraya Youth Day (PYD) yang terpusat di Yayasan Siswarta Lapangan SMA Katholik Palangkaraya Kalimantan Tengah, Minggu (26/6/2011) berakhir.<br />\r\n<br />\r\nKegiatan yang digelar sejak Kamis (23/6/2011) tersebut berlangsung suskses dan dihadiri sekitar 700 orang pemuda dan pemudi katholik se Kalimantan Tengah untuk mempererat rasa kebersamaan dan persudaraan.<br />\r\n<br />\r\nPada hari terakhir hari ini, kegiatan yang dilakukan senam pagi dan melakukan evaluasi terhadap berbagai kegiatan yang dilakukan selama tiga hari, di hari terakhir para peserta juga melakukan operasi semut dan perpisahaan di lapangan dilingkungan yayasan siswarta.<br />\r\n<br />\r\nKetua Komisi Kepemudaan Keuskupan Palangkaraya, Pastor I Wayan Joko Sunaryo, mengatakan, PYD dilakukan secara rutin setiap lima tahun sekali merupakan kerinduan berkumpul sebagai generasi muda.<br />\r\n<br />\r\nKomunitas sporadis- yang tercecer di seluruh wilayah Kalteng bersatu dalam satu wadah dimana semua bisa sharing pengalaman, meneguhkan dan bisa juga ketemu temanyang cocok alias berjodoh! PYD (palangka raya youth day-kerennya) adalah wadah yang strategis yang mengusung semangat persaudaraan, ajang bakat dan kreasi, pencerahan motivasi hidup, penguatan spiritual, dsb&hellip;&hellip; yang hanya terjadi 5 tahun sekali di keuskupan Palangka Raya.<br />\r\n<br />\r\nMenurut dia, Tema PYD tahun ini yakni &ldquo; berakar dan dibangun dalam Yesus Kristus, berteguh dalam iman&rdquo; mengikut tema WYD.<br />\r\n<br />\r\nPanitia mengucapkan terimakasih kepada Uskup, para Pastor yang mendukung terselenggaranya PYD 2011.&nbsp; Kepada segenap rekan-rekan SC dan panitia/OC &ndash; tetap semangat dalam melakukan kegiatan tersebut hingga sukses &quot;Kamu pasti bisa! Hanya dengan kemauan, kekompakan PYD akan berlangsung lancar dan apik,&quot; katanya.<br />\r\n<br />\r\nMenurut dia, kemegahan PYD akan juga karena didukung oleh, hadirnya motivator kondang Istoto Suharyoto dan Krishnamurti yang membuat hidup menjadi lebih hidup,&quot; katanya.<br />\r\n<br />\r\nBukan hanya itu, Pesona&nbsp; PYD juga lebih meriah, karena turut dimeriahkan oleh group band pelajar Yogyakarta &ldquo;SEQUENCE&rdquo;.<br />\r\n<br />\r\n(faturahman/bpostonline)<br />\r\n&nbsp; \r\n', 'Senin', '2011-06-27', '18:51:25', '89ee3b832f7de2524ebf01b58f47a92f3a.jpg', 26, '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(3, 'Jurnal HIMAKAL', 'shopping cart.pdf', '2009-02-17', 9),
(5, 'laporan keuangan HIMAKAL', 'laporan keuangan HIMAKAL.doc', '2009-02-06', 3),
(1, 'Proker', 'kalender2009.rar', '2009-02-06', 10),
(8, 'LAPORAN PERTANGGUNGJAWABAN', 'LAPORAN PERTANGGUNGJAWABAN.docx', '2009-10-28', 7),
(9, 'AD dan ART HIMAKAL', 'AD dan ART HIMAKAL.doc', '2009-11-03', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=93 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(86, 21, 'lpj-2', 'lpj2', '', ''),
(85, 0, 'lpj-2', 'lpj2', '', '7257742.jpg'),
(84, 21, 'lpj-1', 'lpj1', '', '9920831.jpg'),
(87, 21, 'lpj-3', 'lpj3', '', '9932553.jpg'),
(88, 21, 'lpj-4', 'lpj4', '', '9916324.jpg'),
(89, 21, 'lpj-5', 'lpj5', '', '3406656.jpg'),
(90, 21, 'lpj-6', 'lpj6', '', '2494747.jpg'),
(91, 21, 'lpj-7', 'lpj7', '', '9880918.jpg'),
(92, 21, 'lpj-8', 'lpj8', '', '8071919.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE IF NOT EXISTS `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `isi_halaman`, `tgl_posting`, `gambar`) VALUES
(2, 'Sekilas tentang sejarah HIMAKAL UIN Maliki Malang', '<!--\r\n@page { margin: 2cm }\r\nP { margin-bottom: 0.21cm }\r\n-->\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Himpunan Mahasiswa Kalimantan (HIMAKAL) merupakan bentuk pengembangan dan peningkatan SDM yang tentunya adalah sebagai generasi penerus yang sangat diharapkan sekali peran sertanya dalam pembangunan berbangsa dan bernegara.</span> \r\n</p>\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Sementara itu keberadaan organisasi-organisasi mahasiswa Kalimantan selama ini hanya bersifat kedaerahan, dan hanya terfokuskan pada masalah pengembangan intelektual saja. Disamping itu rasa solidaritas dan sosialnya pun masih bersifat kedaerahan, sehingga adanya persangingan yang tidak sehat. Ras persatuan dan kesatuan menjadi terabaikan, sehingga antara daerah yang satu dengan yang lainnya secara tidak mengenal.</span> \r\n</p>\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Melihat kenyataan inilah maka kami merasa terpanggil untuk menanggapi dan mensikapi hal yang demikian. Maka pada hari rabu tanggal 24 Nopember 1999 dengan dihadirinya hanya sebelas orang, mahasiswa STAIN Malang yang berasal dari Kalimantan, baik dari kalimantan selatan, kalimantan tengah, kalimantan barat, dan kalimantan timur. mengadakan kesepakatan untuk mendirikan sebuah perhimpunan dengan harapan dapat membantu pemerintah dalam meningkatkan sumber daya manusia (SDM) sesuai dengan apa yang diinginkan oleh Negara dalam rangka mewujudkan kesejahteraan dan kedamaian di Indonesia. Atas nama persaudaraan dan persatuan Mahasiswa Kalimantan Sekolah Tinggi Agama Islam Negeri Malang, maka berdirilah Himpunan Mahasiswa Kalimantan (HIMAKAL) di STAIN Malang atau sekarang sudah menjadi Universitas Islam Negeri </span>Maulana Malik Ibrahim <span>Malang (UIN </span>Miliki <span>Malang).</span> \r\n</p>\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Dengan status kemandirian tanpa adanya sifat kedaerahan dan kesukuan, HIMAKAL diharapkan akan mempunyai peran yang sangat penting dan mantap dalam menignkatkan kecerdasan, harkat martabat suku, daerah dan budaya kita yang terasa masih belum begitu banyak digali dan dikembangkan untuk diperkenalkan kepada maasyarakat Indonesia pada umumnya dan warga Kalimantan pada khususnya.</span> \r\n</p>\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Disamping itu keberadaan HIMAKAL diharapkan bisa menghasilkan Tenaga Ahli atau sarjana Islam yang memiliki wawasan yang luas dan terbuka, kemapuan berfikir integratif dan persfektif, serta memiliki kemampuan menajemen dan teknologi yang profesional sesuai dengan tuntutan kebutuhan masyarakat dalam era globalisasi saat ini.</span> \r\n</p>\r\n<p style="text-indent: 1.27cm; margin-bottom: 0cm" align="justify">\r\n<span>Dengan statusnya sebagai sebuah organisasi yang mandiri, HIMAKAL memiliki otonomi yang lebih luas dari organisasi yang bersifat kedaerahan, baik dengan kemandirian HIMAKAL memiliki kesempatan yang lebih luas unutk membuka dan mengelola serta mengembangkan progra-programnya yang lebih sesuai dengan kebutuhan masyarakat dan tuntutan pembangunan.</span> \r\n</p>\r\n', '2010-05-31', ''),
(8, 'Arti Lambang', '<!--\r\n@page { margin: 2cm }\r\nP { margin-bottom: 0.21cm }\r\n-->\r\n<p align="justify">\r\n<strong><font face="times new roman,times" size="3"><img src="http://localhost./lokomedia/tinymcpuk/gambar/Image/50264_145662745460875_7810296_n.jpg" alt=" " hspace="7" align="left" /></font></strong> \r\n</p>\r\n<p align="justify">\r\n&nbsp;\r\n</p>\r\n<p align="justify">\r\n<img src="http://i51.tinypic.com/pc8yr.jpg" alt=" " hspace="30" width="200" height="196" align="left" />\r\n</p>\r\n<br />\r\n<ol>\r\n	<li><strong><font face="times new roman,times" size="3">Lambang Organisasi Himpunan Mahasiswa&nbsp;&nbsp;</font></strong><strong><font face="times new roman,times" size="3">&nbsp;</font></strong> <strong><font face="times new roman,times" size="3">Kalimantan&nbsp;UIN MAULANA MALIK IBRAHIM Malang&nbsp;berbentuk segi lima&nbsp; berwarna hijau&nbsp;dan di dalamnya terdapat&nbsp;pulau Kalimantan berwarna hijau.</font></strong></li><br />\r\n	<br />\r\n	<li><font face="Times New Roman, serif" size="3"><strong>Pulau Kalimantan</strong> menunjukkan domisili anggota HIMAKAL UIN </font><font face="times new roman,times" size="3">MAULANA MALIK IBRAHIM </font><font face="Times New Roman, serif" size="3">Malang</font></li><br />\r\n	<br />\r\n	<li><font face="Times New Roman, serif" size="3"><strong>Segi lima</strong> menunjukkan bahwa HIMAKAL berada di UIN&nbsp;</font><font face="Times New Roman, serif" size="3"> </font><font face="times new roman,times" size="3">MAULANA MALIK IBRAHIM </font><font face="Times New Roman, serif" size="3">Malang, dimana lambang segi lima di ambil dari lambang UIN&nbsp;</font><font face="Times New Roman, serif" size="3"> </font><font face="times new roman,times" size="3">MAULANA MALIK IBRAHIM&nbsp;</font><font face="Times New Roman, serif" size="3">Malang</font></li><br />\r\n	<br />\r\n	<li><font face="Times New Roman, serif" size="3"><strong>Warna hijau</strong> memberikan kedamaian bagi anggota HIMAKAL dan menunjukkan luasnya pulau Kalimantan yang masih asri dan sebagai paru-paru dunia</font></li>\r\n</ol>\r\n<p align="justify">\r\n&nbsp;\r\n</p>\r\n<p align="justify">\r\n&nbsp;\r\n</p>\r\n<p align="justify">\r\n&nbsp;\r\n</p>\r\n', '2011-06-30', ''),
(9, 'Peta Situs', '<blockquote>\r\n	<ul>\r\n		<li><font color="#0000ff"><strong><font size="3"><a href="index.php" title="Home">Home </a> <br />\r\n		</font></strong></font></li>\r\n		<li><font color="#0000ff"><strong><font size="3"><br />\r\n		</font></strong></font></li>\r\n		<li><font color="#0000ff"><strong><font size="3">Profile\r\n		</font></strong></font></li>\r\n	</ul>\r\n	<blockquote>\r\n		<ul>\r\n			<li>\r\n			<font color="#0000ff"><a href="statis-2-visidanmisi.html" title="Sejarah Organisasi"><strong><font size="3"> Sejarah Organisasi  </font></strong></a></font> \r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> <a href="statis-8-arti-lambang.html" title="Arti Lambang">Arti lambang </a> </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> <a href="statis-5-visi-danmisi.html" title="Visi dan Misi">Visi dan Misi </a> </font></strong></font>\r\n			</li>\r\n			<li><font color="#0000ff"><strong><font size="3"> <a href="statis-7-struktur-organisasi-himakal-uin-maulana-malik-ibrahim-malang.html" title="Struktur Organisasi">Struktur Organisasi</a> </font></strong></font></li>\r\n			<li><font color="#0000ff"><strong><font size="3"><br />\r\n			</font></strong></font></li>\r\n		</ul>\r\n	</blockquote>\r\n</blockquote>\r\n<blockquote>\r\n	<ul>\r\n		<li><font color="#0000ff"><a href="semua-agenda.html"><strong><font size="3">Agenda</font></strong></a></font> </li>\r\n		<li><font color="#0000ff"><strong><font size="3"><br />\r\n		</font></strong></font></li>\r\n		<li><font color="#0000ff"><a href="semua-berita.html" title="Berita"><strong><font size="3">Berita</font></strong></a> <br />\r\n		</font> \r\n		</li>\r\n	</ul>\r\n</blockquote>\r\n<blockquote>\r\n	<blockquote>\r\n	</blockquote>\r\n	<blockquote>\r\n		<ul>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Edukasi </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Ekonomi </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Hiburan </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Kesehatan </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Kriminal </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Olahraga </font></strong></font>\r\n			</li>\r\n			<li>\r\n			<font color="#0000ff"><strong><font size="3"> Organisasi </font></strong></font>\r\n			</li>\r\n			<li><font color="#0000ff"><strong><font size="3"> Politik</font></strong></font></li>\r\n			<li><font color="#0000ff"><a href="semua-download.html" title="Dokumentasi"><strong><font size="3"><br />\r\n			</font></strong></a></font> </li>\r\n		</ul>\r\n	</blockquote>\r\n	<ul>\r\n		<li><font color="#0000ff"><a href="semua-download.html" title="Dokumentasi"><strong><font size="3">Dokumentasi</font></strong></a> <br />\r\n		</font> \r\n		</li>\r\n		<li><font color="#0000ff"><a href="semua-album.html" title="Galeri Foto"><br />\r\n		</a></font>  \r\n		</li>\r\n		<li><font color="#0000ff"><a href="semua-album.html" title="Galeri Foto"><strong><font size="3">Galeri Foto </font></strong></a></font>   </li>\r\n		<li><font color="#0000ff"><strong><font size="3"><br />\r\n		</font></strong></font></li>\r\n		<li>\r\n		<font color="#0000ff"><strong><font size="3"> <a href="hubungi-kami.html" title="Hubungi Kami">Hubungi Kami </a> </font></strong></font></li>\r\n		<li><font color="#0000ff"><strong><font size="3"><br />\r\n		</font></strong></font></li>\r\n		<li><font color="#0000ff"><strong><font size="3"> <a href="statis-9-peta-situs.html" title="Peta Situs">Peta Situs </a> </font></strong></font></li>\r\n	</ul>\r\n	<p>\r\n	<font color="#0000ff">&nbsp;</font>\r\n	</p>\r\n	<ul>\r\n	</ul>\r\n</blockquote>\r\n', '2011-07-01', ''),
(5, 'Visi dan Misi', '<p>\r\n<strong><font face="Times New Roman" size="3">Visi HIMAKAL UIN MAULANA MALIK IBRAHIM MALANG adalah :</font></strong> \r\n</p>\r\n<p align="justify">\r\n<font face="times new roman,times"><font size="3">Menjadi sebuah organisasi Mahasiswa Kalimantan terdepan di Malang dalam melakukan pengembangan keilmuan dan pengabdian pada masyarakat</font>.</font> \r\n</p>\r\n<p align="justify">\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font face="times new roman,times"><strong><font size="3">Misi HIMAKAL UIN MAULANA MALIK IBRAHIM MALANG adalah :</font> </strong></font>\r\n</p>\r\n<ol>\r\n	<li><font face="times new roman,times"><font size="3">Membina dan memberikan arahan yang berakhlakul karimah bagi para anggota.</font></font></li>\r\n	<li>\r\n	<div align="justify">\r\n	<font face="times new roman,times" size="3">Mengembangkan potensi, kreatifitas, spiritualitas, keintelektualan, dan profesionalitas bagi anggotanya yang sesuai dengan bidang ilmu yang ditekuninya.</font>\r\n	</div>\r\n	 </li>\r\n	<li>\r\n	<div align="justify">\r\n	<font face="times new roman,times" size="3">Berperan serta memajukan kehidupan umat dan mengamalkan ajaran agama Islam dalam kehidupan pribadi, bermasyarakat, berbangsa dan bernegara</font><font face="times new roman,times">. </font>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div align="justify">\r\n	<font face="times new roman,times" size="3">Usaha-usaha lain yang sesuai dengan ketentuan organisasi dan tidak mengikat</font>\r\n	</div>\r\n	 </li>\r\n</ol>\r\n', '2011-06-28', ''),
(7, 'Struktur Organisasi HIMAKAL UIN Maulana Malik Ibrahim Malang', '<p>\r\n<font face="times new roman,times" size="3"><strong>Penasehat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong>&nbsp; </font>\r\n</p>\r\n<p>\r\n<font face="times new roman,times" size="3">Drs. H. Djumransyah, M.Ed </font>\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times"><strong>Pembina&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </strong></font></font>\r\n</p>\r\n<ol>\r\n	<li><font size="3"><font face="times new roman,times">Dr. H. Saifullah, SH, M.Hum. </font></font></li>\r\n	<li><font face="times new roman,times" size="3">Muslih Herri, SH, M.Hum. </font></li>\r\n	<li><font size="3"><font face="times new roman,times">Ahmad Murad, M.Ag. </font></font></li>\r\n</ol>\r\n<p>\r\n<font face="times new roman,times" size="3"><strong>Ketua &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong> </font>\r\n</p>\r\n<p>\r\n<img src="http://i56.tinypic.com/2h5p6gx.jpg" alt=" Ketua Himakal " title="Ketua" width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">Hendratama Putra Irwandana<strong> </strong></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font face="times new roman,times" size="3"><strong>Wakil Ketua&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong> </font>\r\n</p>\r\n<p>\r\n<img src="http://i55.tinypic.com/jkkqon.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">Niyalatul Muna</font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times"><strong>Bendahara&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; :</strong>&nbsp;</font></font>\r\n</p>\r\n<p>\r\n<img src="http://i54.tinypic.com/5bp4eq.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">M. Zainul Fuad </font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong><font face="times new roman,times" size="3">Sekretaris&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp; </font></strong>\r\n</p>\r\n<ol>\r\n	<li><font face="times new roman,times" size="3">Intan Rafika Permata Hati </font></li>\r\n	<li><font face="times new roman,times" size="3">Ismi Yuniarti </font></li>\r\n</ol>\r\n<ol>\r\n</ol>\r\n<p>\r\n<font size="3"><font face="times new roman,times"><strong>Divis</strong></font></font><font size="3"><font face="times new roman,times"><strong>i </strong></font></font><font size="3"><font face="times new roman,times"><strong>Humas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;</strong></font></font>&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i56.tinypic.com/2la7o6e.jpg" alt="Koordinator Divisi Humas" title="Koordinator Humas" width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">K</font><font face="times new roman,times" size="3">h</font><font face="times new roman,times" size="3">ai</font><font face="times new roman,times" size="3">r</font><font face="times new roman,times" size="3">unisa Ramadhani (CO)</font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i54.tinypic.com/11lr0bp.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">Ahmad Syafi&#39;i</font>\r\n</p>\r\n<p>\r\n&nbsp; \r\n</p>\r\n<p>\r\n<img src="http://i55.tinypic.com/2ewdrwp.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">Ummu Nikmatussa&#39;dah</font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i56.tinypic.com/2hfkx9s.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font face="times new roman,times" size="3">Syafi&#39;e Karim </font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<ol>\r\n</ol>\r\n<p>\r\n<font size="3"><font face="times new roman,times"><strong>Divisi Minat Bakat&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;</strong></font></font>\r\n</p>\r\n<p>\r\n<img src="http://i54.tinypic.com/i1zi82.jpg" alt=" " title="Koordinator Divisi Minat Bakat" width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">H. Abdul Aziz (CO)</font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i56.tinypic.com/21bpqbq.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">Sari Firnanda Fauzi</font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i55.tinypic.com/2evgdx0.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">M. Iqbal</font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<img src="http://i53.tinypic.com/21b4vnr.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">Mas Khoirud Darojat</font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Siti Muthoharoh</font></font>\r\n</p>\r\n<p>\r\n<img src="http://i54.tinypic.com/2150yfl.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">Novi Anto </font></font>\r\n</p>\r\n<ol>\r\n</ol>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<strong><font face="times new roman,times" size="3">Divisi Kewirausahaan&nbsp; :&nbsp;&nbsp;</font></strong>\r\n</p>\r\n<p>\r\n<font face="times new roman,times" size="3">Abdul Wahab (CO)</font>\r\n</p>\r\n<p>\r\n<img src="http://i53.tinypic.com/2hyadu.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">Dessy Stivani </font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Puspa Miladin Bur Aida Safitri Abdul Basith</font></font>\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Nur Asyifaturrohma</font></font>\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Aiyub Anshori</font></font>\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times"><strong>Divisi Kerohanian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;</strong></font></font>\r\n</p>\r\n<p>\r\n<img src="http://i52.tinypic.com/2cftg6u.jpg" alt=" " width="50" height="50" align="left" />\r\n</p>\r\n<p>\r\n&nbsp;<font size="3"><font face="times new roman,times">Binti Mahmudah (CO)</font></font>\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Wahidatul Munawarah</font></font>\r\n</p>\r\n<p>\r\n<font face="times new roman,times" size="3">Nelly Sulastri</font>\r\n</p>\r\n<p>\r\n<font size="3"><font face="times new roman,times">Jalaluddin Putra&nbsp; </font></font>\r\n</p>\r\n<ol>\r\n</ol>\r\n', '2011-06-29', '');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(10, 'H. Abdul Aziz', 'slashrawk13@rocketmail.com', 'Kritik dan Saran', ' Website nya bagus tapi coba masukkan buku tamu terima kasih', '2011-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE IF NOT EXISTS `katajelek` (
  `id_jelek` int(11) NOT NULL AUTO_INCREMENT,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jelek`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `ganti`) VALUES
(4, 'sex', 's**'),
(2, 'bajingan', 'b*******'),
(3, 'bangsat', 'b******');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`, `aktif`) VALUES
(19, 'Edukasi', 'edukasi', 'Y'),
(2, 'Olahraga', 'olahraga', 'Y'),
(21, 'Ekonomi', 'ekonomi', 'Y'),
(22, 'Organisasi', 'organisasi', 'Y'),
(23, 'Kesehatan', 'kesehatan', 'Y'),
(31, 'Hiburan', 'hiburan', 'Y'),
(32, 'Politik', 'politik', 'Y'),
(33, 'Kriminal', 'kriminal', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=78 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(77, 195, 'H. Abdul Aziz', 'maskalsaintek.web.id', 'Rossi meskipun hebat dia tetap merendah. Hal yang seperti itulah yang perlu dicontoh \r\n', '2011-06-30', '23:30:46', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(2, 'HOME', 'index.php', 'Y'),
(3, 'Profil', '', 'Y'),
(4, 'Agenda', 'semua-agenda.html', 'Y'),
(5, 'Berita', 'semua-berita.html', 'Y'),
(6, 'Dokumentasi', 'semua-download.html', 'Y'),
(7, 'Galeri Foto', 'semua-album.html', 'Y'),
(8, 'Hubungi Kami', 'hubungi-kami.html', 'Y'),
(10, 'Peta Situs', 'statis-9-peta-situs.html', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', '?module=user', '', '', 'N', 'user', 'Y', 1, ''),
(18, 'Berita', '?module=berita', '', '', 'Y', 'user', 'Y', 6, 'semua-berita.html'),
(19, 'Banner', '?module=banner', '', '', 'Y', 'admin', 'Y', 9, ''),
(37, 'Profil', '?module=profil', '<b>Bukulokomedia.com</b> merupakan website resmi dari penerbit Lokomedia yang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br><br>Produk unggulan dari penerbit Lokomedia adalah buku-buku serta aksesoris bertema PHP (<span style="font-weight: bold; font-style: italic;">PHP: Hypertext Preprocessor</span>) yang merupakan pemrograman Internet paling handal saat ini.\r\n', 'gedungku.jpg', 'N', 'admin', 'N', 3, 'profil-kami.html'),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'Y', 2, ''),
(31, 'Kategori', '?module=kategori', '', '', 'Y', 'admin', 'Y', 5, ''),
(33, 'Poling', '?module=poling', '', '', 'Y', 'admin', 'Y', 10, ''),
(34, 'Tag (Label)', '?module=tag', '', '', 'N', 'admin', 'Y', 7, ''),
(35, 'Komentar', '?module=komentar', '', '', 'Y', 'admin', 'Y', 8, ''),
(36, 'Download', '?module=download', '', '', 'Y', 'admin', 'Y', 11, 'semua-download.html'),
(40, 'Hubungi Kami', '?module=hubungi', '', '', 'Y', 'admin', 'Y', 12, 'hubungi-kami.html'),
(41, 'Agenda', ' ?module=agenda', '', '', 'Y', 'user', 'Y', 4, 'semua-agenda.html'),
(42, 'Shoutbox', '?module=shoutbox', '', '', 'Y', 'user', 'Y', 13, ''),
(43, 'Album', '?module=album', '', '', 'N', 'admin', 'Y', 14, ''),
(44, 'Galeri Foto', '?module=galerifoto', '', '', 'Y', 'admin', 'Y', 15, ''),
(45, 'Templates', '?module=templates', '', '', 'N', 'admin', 'Y', 16, ''),
(46, 'Kata Jelek', '?module=katajelek', '', '', 'N', 'admin', 'Y', 17, ''),
(47, 'RSS', '-', '', '', 'Y', 'admin', 'N', 18, ''),
(48, 'YM', '-', '', '', 'Y', 'admin', 'N', 19, ''),
(49, 'Indeks Berita', '-', '', '', 'Y', 'admin', 'N', 20, ''),
(50, 'Kalender', '-', '', '', 'Y', 'admin', 'N', 21, ''),
(51, 'Statistik User', '-', '', '', 'Y', 'admin', 'N', 22, ''),
(52, 'Pencarian', '-', '', '', 'Y', 'admin', 'N', 23, ''),
(53, 'Berita Teratas', '-', '', '', 'Y', 'admin', 'N', 24, ''),
(54, 'Arsip Berita', '-', '', '', 'Y', 'admin', 'N', 25, ''),
(55, 'Berita Sebelumnya', '-', '', '', 'Y', 'admin', 'N', 26, ''),
(60, 'Sekilas Info', '?module=sekilasinfo', '', '', 'Y', 'admin', 'Y', 13, ''),
(57, 'Menu Utama', '?module=menuutama', '', '', 'Y', 'admin', 'Y', 28, ''),
(58, 'Sub Menu', '?module=submenu', '', '', 'Y', 'admin', 'Y', 29, ''),
(59, 'Halaman Statis', '?module=halamanstatis', '', '', 'Y', 'admin', 'Y', 30, ''),
(61, 'buku-tamu', '?module=bukutamu', '', '', 'Y', 'admin', 'Y', 31, '');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Menarik', 'Jawaban', 1, 'Y'),
(2, 'Bagus', 'Jawaban', 0, 'Y'),
(3, 'Bermanfaat', 'Jawaban', 0, 'Y'),
(4, 'Biasa-biasa saja', 'Jawaban', 0, 'Y'),
(8, 'Bagaimana Pendapat Anda Tentang Website Kami? ', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(6, 'Pria Berpoligami di Malaysia dapat Hadiah.Pemerintah Kelantan, Malaysia, memberikan hadiah berupa di', '2011-06-30', ''),
(7, 'Yang Terjadi di Internet Selama 60 Detik.inilah beberapa hal yang akan kamu lewatkan hanya dalam 1 m', '2011-06-30', ''),
(8, 'Manfaat Kulit Apel. Buahnya yang ranum, rasanya yang manis, dan dipercantik dengan tampilan kulitnya', '2011-06-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE IF NOT EXISTS `shoutbox` (
  `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_shoutbox`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `shoutbox`
--

INSERT INTO `shoutbox` (`id_shoutbox`, `nama`, `website`, `pesan`, `tanggal`, `jam`, `aktif`) VALUES
(1, 'lukman', 'lukman.com', 'tes :-) aja ;-D ha ha ha <:D>', '2009-11-02', '00:00:00', 'Y'),
(2, 'hakim', 'hakim.com', 'tes :-) aja ;-D ha ha ha <:D>\r\ndfa\r\nfdas\r\nfdsa\r\nfdasf\r\n:-(', '2009-11-02', '00:00:00', 'Y'),
(3, 'daryono', 'bukulokomedia.com', 'ku tes lagi<br>\r\ntes :-) aja ;-D ha ha ha &lt;:D&gt;<br>\r\nkeren euy<br>\r\n:-(', '2009-11-02', '13:55:00', 'Y'),
(8, 'Aziz', '', 'Hi\r\n:-)', '2011-06-14', '17:29:13', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2009-09-11', 17, '1252734209'),
('127.0.0.3', '2009-09-12', 8, '1252817594'),
('127.0.0.1', '2009-10-24', 8, '1256381921'),
('127.0.0.1', '2009-10-26', 108, '1256620074'),
('127.0.0.1', '2009-10-27', 52, '1256686769'),
('127.0.0.1', '2009-10-28', 124, '1256792223'),
('127.0.0.1', '2009-10-29', 9, '1256828032'),
('127.0.0.1', '2009-10-31', 3, '1257047101'),
('127.0.0.1', '2009-11-01', 85, '1257113554'),
('127.0.0.1', '2009-11-02', 11, '1257207543'),
('127.0.0.1', '2009-11-03', 165, '1257292312'),
('127.0.0.1', '2009-11-04', 59, '1257403499'),
('127.0.0.1', '2009-11-05', 10, '1257433172'),
('127.0.0.1', '2009-11-11', 13, '1258006911'),
('127.0.0.1', '2009-11-12', 10, '1258048069'),
('127.0.0.1', '2009-11-14', 14, '1258222519'),
('127.0.0.1', '2009-11-17', 2, '1258473856'),
('127.0.0.1', '2009-11-19', 16, '1258635469'),
('127.0.0.1', '2009-11-21', 4, '1258863505'),
('127.0.0.1', '2009-11-25', 3, '1259216216'),
('127.0.0.1', '2009-11-26', 1, '1259222467'),
('127.0.0.1', '2009-11-30', 11, '1259651841'),
('127.0.0.1', '2009-12-02', 9, '1259746407'),
('127.0.0.1', '2009-12-03', 17, '1259906128'),
('127.0.0.1', '2009-12-10', 69, '1260423794'),
('127.0.0.1', '2009-12-12', 26, '1260560082'),
('127.0.0.1', '2009-12-11', 5, '1260508621'),
('127.0.0.1', '2009-12-13', 8, '1260716786'),
('127.0.0.1', '2009-12-14', 9, '1260772698'),
('127.0.0.1', '2009-12-15', 9, '1260837158'),
('127.0.0.1', '2009-12-16', 7, '1260905627'),
('127.0.0.1', '2009-12-17', 48, '1261026791'),
('127.0.0.1', '2009-12-18', 11, '1261088534'),
('127.0.0.1', '2009-12-22', 3, '1261477278'),
('127.0.0.1', '2009-12-25', 2, '1261686043'),
('127.0.0.1', '2009-12-26', 29, '1261835507'),
('127.0.0.1', '2009-12-27', 7, '1261920445'),
('127.0.0.1', '2009-12-28', 3, '1261965611'),
('127.0.0.1', '2009-12-29', 21, '1262024011'),
('127.0.0.1', '2009-12-30', 24, '1262146708'),
('127.0.0.1', '2010-01-01', 12, '1262286131'),
('127.0.0.1', '2010-01-03', 38, '1262529325'),
('127.0.0.1', '2010-01-12', 89, '1263264291'),
('127.0.0.1', '2010-01-14', 54, '1263482540'),
('127.0.0.1', '2010-01-15', 57, '1263506901'),
('127.0.0.1', '2010-02-11', 30, '1265831568'),
('127.0.0.1', '2010-02-13', 2, '1266032303'),
('127.0.0.1', '2010-02-14', 3, '1266115347'),
('127.0.0.1', '2010-02-15', 15, '1266195235'),
('127.0.0.1', '2010-02-18', 1, '1266499945'),
('127.0.0.1', '2010-02-22', 5, '1266856332'),
('127.0.0.1', '2010-02-25', 46, '1267103145'),
('127.0.0.1', '2010-05-12', 10, '1273654648'),
('127.0.0.1', '2010-05-16', 195, '1274026185'),
('127.0.0.1', '2010-05-17', 2, '1274029517'),
('127.0.0.1', '2010-05-19', 1, '1274279374'),
('127.0.0.1', '2010-05-27', 16, '1274967085'),
('127.0.0.1', '2010-05-30', 4, '1275192045'),
('127.0.0.1', '2010-05-31', 13, '1275271939'),
('127.0.0.1', '2010-06-05', 1, '1275676869'),
('127.0.0.1', '2010-06-06', 2, '1275842170'),
('127.0.0.1', '2010-06-15', 3, '1276572924'),
('127.0.0.1', '2010-06-22', 206, '1277221605'),
('127.0.0.1', '2010-08-02', 17, '1280754660'),
('127.0.0.1', '2010-08-20', 7, '1282285305'),
('127.0.0.1', '2010-08-30', 21, '1283185430'),
('127.0.0.1', '2010-08-31', 53, '1283207455'),
('127.0.0.1', '2010-09-02', 133, '1283402651'),
('127.0.0.1', '2010-09-05', 35, '1283702206'),
('127.0.0.1', '2010-09-13', 10, '1284370291'),
('127.0.0.1', '2010-09-17', 12, '1284662303'),
('127.0.0.1', '2010-09-22', 2, '1285091212'),
('127.0.0.1', '2010-09-23', 47, '1285254071'),
('127.0.0.1', '2010-09-26', 32, '1285512806'),
('127.0.0.1', '2010-09-27', 48, '1285529871'),
('127.0.0.1', '2011-01-19', 18, '1295395096'),
('127.0.0.1', '2011-01-21', 6, '1295580166'),
('127.0.0.1', '2011-01-22', 3, '1295639704'),
('127.0.0.1', '2011-01-25', 2, '1295895420'),
('127.0.0.1', '2011-01-27', 20, '1296145564'),
('127.0.0.1', '2011-01-28', 5, '1296150116'),
('127.0.0.1', '2011-02-01', 10, '1296555613'),
('127.0.0.1', '2011-02-02', 1, '1296657225'),
('127.0.0.1', '2011-02-05', 3, '1296875908'),
('127.0.0.1', '2011-02-07', 5, '1297090649'),
('127.0.0.1', '2011-02-09', 182, '1297254341'),
('127.0.0.1', '2011-02-10', 268, '1297355704'),
('127.0.0.1', '2011-02-16', 6, '1297824002'),
('127.0.0.1', '2011-02-17', 2, '1297945065'),
('127.0.0.1', '2011-02-18', 17, '1298043047'),
('127.0.0.1', '2011-02-19', 4, '1298051552'),
('127.0.0.1', '2011-02-20', 1, '1298185747'),
('127.0.0.1', '2011-02-21', 7, '1298279916'),
('127.0.0.1', '2011-02-22', 1, '1298391839'),
('127.0.0.1', '2011-02-28', 2, '1298910213'),
('127.0.0.1', '2011-03-19', 48, '1300548611'),
('127.0.0.1', '2011-06-23', 15, '1308808489'),
('127.0.0.1', '2011-06-04', 7, '1307170393'),
('127.0.0.1', '2011-06-05', 2, '1307257642'),
('127.0.0.1', '2011-06-07', 2, '1307431672'),
('127.0.0.1', '2011-06-08', 3, '1307527193'),
('127.0.0.1', '2011-06-14', 26, '1308051102'),
('127.0.0.1', '2011-06-25', 8, '1308995603'),
('127.0.0.1', '2011-06-26', 193, '1309100593'),
('127.0.0.1', '2011-06-27', 105, '1309181689'),
('127.0.0.1', '2011-06-28', 300, '1309280396'),
('127.0.0.1', '2011-06-29', 157, '1309358148'),
('127.0.0.1', '2011-06-30', 886, '1309451543'),
('127.0.0.1', '2011-07-01', 299, '1309517729'),
('127.0.0.1', '2011-07-02', 20, '1309606352'),
('203.130.229.19', '2011-07-02', 19, '1309599928'),
('180.241.14.202', '2011-07-02', 6, '1309578342'),
('110.138.238.55', '2011-07-05', 2, '1309860932'),
('115.69.217.92', '2011-07-06', 11, '1309964918'),
('110.138.247.239', '2011-07-07', 23, '1310032143'),
('69.171.224.249', '2011-07-07', 1, '1310026760'),
('115.69.217.92', '2011-07-07', 3, '1310036277'),
('182.3.114.50', '2011-07-07', 1, '1310040651'),
('125.164.103.209', '2011-07-07', 1, '1310043971'),
('115.69.217.92', '2011-07-08', 20, '1310090977'),
('114.79.17.33', '2011-07-08', 16, '1310091612'),
('46.19.138.242', '2011-07-08', 1, '1310090178'),
('110.138.239.196', '2011-07-08', 1, '1310117590'),
('110.138.237.90', '2011-07-08', 1, '1310120645'),
('110.138.236.245', '2011-07-08', 1, '1310120753'),
('114.56.37.101', '2011-07-08', 6, '1310125846'),
('180.246.238.157', '2011-07-08', 1, '1310140566'),
('180.246.238.157', '2011-07-09', 7, '1310147325'),
('69.171.228.246', '2011-07-09', 1, '1310147145'),
('127.0.0.1', '2011-07-09', 52, '1310152831');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(2, 'Sejarah Organisasi', 'statis-2-visidanmisi.html', 3),
(4, 'Ekonomi', 'kategori-21-ekonomi.html', 5),
(5, 'Hiburan', 'kategori-23-hiburan.html', 5),
(6, 'Olahraga', 'kategori-2-olahraga.html', 5),
(7, 'Politik', 'kategori-22-politik.html', 5),
(8, 'Teknologi', 'kategori-19-teknologi.html', 5),
(10, 'Arti Lambang', 'statis-8-arti-lambang.html', 3),
(11, 'Visi dan Misi', 'statis-5-visi-danmisi.html', 3),
(12, 'Struktur Organisasi', 'statis-7-struktur-organisasi-himakal-uin-maulana-malik-ibrahim-malang.html', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `tag_seo`, `count`) VALUES
(23, 'J2SE', 'j2se', 0),
(24, 'J2ME', 'j2me', 0),
(25, 'program', 'program', 0),
(26, 'install', 'install', 0),
(27, 'akal', 'akal', 0),
(28, 'alat', 'alat', 0),
(22, 'java', 'java', 0);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `pembuat`, `folder`, `aktif`) VALUES
(1, 'Standar', 'Lukmanul Hakim', 'templates/standar', 'N'),
(2, 'Building', 'Lukmanul Hakim', 'templates/building', 'N'),
(3, 'eL jQuery', 'Lukmanul Hakim', 'templates/eljquery', 'N'),
(4, 'eL jQuery versi 2', 'Lukmanul Hakim', 'templates/eljquery2', 'Y'),
(5, 'AutoportaL', 'Maskal', 'templates/alee/alee', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@detik.com', '08238923848', 'admin', 'N', '8ifoglmsgqg1b41pjr6fsf1gc6'),
('sinto ', '958f62f9f8b7f348d08943189fda3b15', 'Sinto Gendeng', 'sinto@detik.com', '09945849545', 'user', 'N', '958f62f9f8b7f348d08943189fda3b15'),
('joko', '4e5ad0dc4d478726661c8c2b3ea31777', 'Joko Sembung', 'joko@detik.com', '0895485045958', 'user', 'N', '4e5ad0dc4d478726661c8c2b3ea31777'),
('wiro', '7577bfe4fecd40c43e6140344d90ce0e', 'Wiro Sableng', 'wiro@detik.com', '038039403948', 'user', 'N', 'heeml1opjl0thtn3lmet3dogs4'),
('wiros', 'dcdd932ea3418387ef2f06644303389e', 'wiryo', 'wiryo@sableng', '98797', 'user', 'N', '25005d71e4f9a670ebf111888a0916b2');
