-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2024 pada 15.09
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id_admin`, `nama`, `password`) VALUES
(1, 'zaki', '$2y$10$/.wga9GPI8Q5pr//V2Yw3etudnounJeo6pjXZ1yjUEq9HgibqmXrm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pesan` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `pesan`, `tanggal`) VALUES
(31, 'Yuuxi', 'nuxitensura@gmail.com', 'Juuuukiiiiiii', '2024-10-17 02:37:36'),
(32, 'tes', 'tes123@123.com', 'test12', '2024-10-19 02:44:51'),
(33, 'zaki', 'zaki@gmail.com', 'cepatkan webnya agar jadi', '2024-10-19 10:57:23'),
(34, 'oasis', 'oasis@gmail.com', 'halo', '2024-10-19 11:03:42'),
(36, 'zaki', 'zaki@gmail.com', 'zaki', '2024-10-24 02:14:47'),
(37, 'jakwfiuegfb', 'enqhiodqhd@gmail.com', 'efkwnqiohq', '2024-10-29 13:54:33'),
(38, 'andi', 'andi@gmail.com', 'testing', '2024-10-30 00:19:59'),
(39, 'Wilwil', 'a@gmail.com', 'tes', '2024-10-30 02:04:40'),
(40, 'albert', 'albertganteng@gmail.com', 'anjay', '2024-10-31 00:57:02'),
(42, 'Test', 'rockenakO@gmail.com', 'Ui simple tapi ringan pas di pake ', '2024-11-16 03:27:35'),
(44, 'Yuuxi', 'nukitomoha@gmail.com', 'menurutku warnanya agak kurang, lebih bagus yang gelap yang di atas ga sih? tapi tetap sesuai selera', '2024-12-05 01:08:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_content`
--

CREATE TABLE `list_content` (
  `id_produk` int(25) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `judul_produk` varchar(50) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `list_content`
--

INSERT INTO `list_content` (`id_produk`, `img`, `title`, `harga`, `judul_produk`, `deskripsi`) VALUES
(1, 'excel.jpeg', 'makanan-kering', '20000', 'Excel', 'Excel Makanan Kucing Kering merupakan pilihan yang baik bagi pemilik kucing yang mencari makanan berkualitas dengan harga terjangkau.'),
(2, 'royal.jpeg', 'makanan-kering', '14000', 'Royal Canin Kitten', 'Royal Canin Kitten adalah makanan kucing kering yang diformulasikan khusus untuk memenuhi kebutuhan nutrisi anak kucing yang sedang dalam tahap pertumbuhan pesat.'),
(3, 'jio.jpeg', 'makanan-kering', '34000', 'Jio', 'Makanan Kucing Kering Jio adalah salah satu pilihan populer bagi para pemilik kucing di Indonesia. Jio dikenal sebagai produk yang cukup terjangkau dan mudah ditemukan di pasaran.'),
(4, 'bolt.jpeg', 'makanan-kering', '50000', 'Bolt', 'Makanan Kucing Kering Bolt adalah salah satu pilihan populer di kalangan pemilik kucing di Indonesia, terutama karena harganya yang terjangkau. Bolt menawarkan berbagai varian rasa dan kemasan, sehing'),
(5, 'Felibite .jpeg', 'makanan-kering', '15000', 'Felibite ', 'Felibite adalah merek makanan kucing kering yang mengandung nutrisi seimbang, omega 3 dan 6, taurine, dan yucca extract. '),
(6, 'Me-O-Seafood.jpeg', 'makanan-kering', '35000', 'Me-O Cat Food Seafood', ''),
(7, 'pediatric-weaning.jpeg', 'makanan-basah', '50000', 'Pediatric Weaning', ''),
(8, 'royal-basah.jpeg', 'makanan-basah', '34000', 'Royal Canin Kitten basah', ''),
(9, 'tikus.jpeg', 'mainan', '50000', 'Tikus Mainan', 'mainan klasik yang hampir semua kucing suka. Terbuat dari berbagai bahan seperti bulu, kain, atau plastik, tikus mainan ini akan merangsang insting berburu alami kucing.'),
(10, 'bulukucing.jpeg', 'mainan', '20000', 'Bulu mainan', 'Bulu-bulu yang menempel pada tali atau tongkat sangat menarik perhatian kucing untuk mengejarnya. Gerakan bulu yang lembut akan membuat kucing merasa seperti sedang menangkap mangsa.'),
(11, 'bola-gantung.jpeg', 'mainan', '100000', 'oasis', 'sample');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`) VALUES
(1, 'Home', '<div class=\"pengenalan1\"><h1>Welcome to the Home Page</h1><p>This is the content of the home page.</p></div>\r\n<img src=\"./asets/img/home.jpg\" alt=\"\" width=\"50rem\">'),
(2, 'About', '<h2>Tentang Kami</h2>  <div class=\"content\">\r\n            <p>Selamat datang di <strong>Toko Kucingku</strong>, tempat terbaik untuk menemukan makanan dan mainan berkualitas tinggi untuk kucing kesayangan Anda. Kami berdedikasi untuk menyediakan produk terbaik yang tidak hanya lezat, tetapi juga mendukung kesehatan dan kebahagiaan kucing Anda.</p>\r\n\r\n            <p><strong>Toko Kucingku</strong> dimulai dengan kecintaan kami pada kucing. Kami percaya bahwa setiap kucing berhak mendapatkan makanan yang bergizi dan mainan yang menyenangkan. Oleh karena itu, kami hanya menyediakan produk yang telah melalui uji kualitas dan aman untuk kucing dari segala usia dan ras.</p>\r\n\r\n\r\n\r\n            <p>Produk-produk yang kami tawarkan meliputi:</p>\r\n            <ul>\r\n                <li><strong>Makanan Kucing :</strong> Dirancang untuk memenuhi kebutuhan nutrisi kucing, dengan bahan-bahan berkualitas tinggi yang akan membuat kucing Anda selalu sehat dan bugar.</li>\r\n                <li><strong>Mainan Kucing : </strong> Beragam mainan interaktif yang membantu kucing tetap aktif, sehat, dan bahagia. Mulai dari bola mainan, tali, hingga mainan berbulu yang pasti akan menarik perhatian kucing Anda.</li>\r\n            </ul>\r\n\r\n            <p>Dengan berbagai pilihan produk yang kami tawarkan, kami yakin Anda akan menemukan apa yang dibutuhkan untuk membuat kucing Anda tetap sehat dan gembira. Terima kasih telah mempercayai <strong>Toko Kucingku</strong> sebagai tempat belanja kebutuhan kucing Anda!</p>\r\n        </div>'),
(3, 'Contact', '<h2>Kontak Kami</h2><p>Ada pertanyaan ? , kirim dibawah ini</p>'),
(4, 'Home1', '<h2>Selamat datang di Toko Kucingku</h2>\r\n\r\n<div class=\"row\"><p class=\"pengenalan\">Toko Kucingku adalah surga bagi para pecinta kucing! Temukan berbagai macam produk berkualitas untuk si meong kesayangan Anda, mulai dari makanan, mainan, hingga perlengkapan perawatan.\r\n</p> <div class=\"pengenalan1\">\r\n</div>\r\n<img src=\"landingpage/asets/img/pengenalan.png\" alt=\"\" width =\"500rem\" ></div>'),
(5, 'content', '<style>\r\n\r\nbutton {\r\n  background-color: #4CAF50; /* Warna latar */\r\n  border: none;\r\n  color: white;\r\n  padding: 15px 32px;\r\n  text-align: center;\r\n  text-decoration: none;\r\n  display: inline-block;\r\n  font-size: 16px;\r\n  margin: 4px 2px;\r\n  cursor: pointer;\r\n}\r\n.allrow{\r\ndisplay : flex;\r\n}\r\n</style>\r\n<div id=\"makanan\" class=\"content1\"><h2>Makanan Kucing</h2><p>Berikut adalah beberapa makanan kucing yang dibedakan menjadi dua yaitu : </p><div class=\"allrow\"><section class=\"row1\"><p class=\"judulr\">Makanan Kucing Kering (Dry Food)</p><button onclick=\"location.href=\'index.php?page=kering\'\">Info lanjut</button></section>\r\n<section class=\"row1\"><p class=\"judulr\">Makanan Kucing Basah (Wet Food)</p><button onclick=\"location.href=\'index.php?page=basah\'\">Info lanjut</button></section>\r\n</div></div>\r\n<div id=\"mainan\" class=\"mainan\">\r\n<h2>Mainan Kucing</h2><p>Berikut adalah beberapa mainan yang ada di toko :</p></div><section class=\"row1\"><p class=\"judulr\">Mainan Kucing </p><button onclick=\"location.href=\'index.php?page=mainan\'\">Info lanjut</button></section>'),
(6, 'kering', '<style>\r\n.kering{\r\nwidth: 100%;\r\n    display: flex;\r\n    flex-direction: row;\r\n    flex-wrap: wrap;\r\n    justify-content: space-around;\r\n    align-items: flex-start;\r\n}\r\n.kering-img{\r\nwidth: 400px;\r\nmargin-right: 5px;\r\nmargin-left: 30px;\r\nborder-radius: 2px;\r\n}\r\nbutton {\r\n  background-color: #4CAF50; /* Warna latar */\r\n  border: none;\r\n  color: white;\r\n  padding: 15px 32px;\r\n  text-align: center;\r\n  text-decoration: none;\r\n  display: inline-block;\r\n  font-size: 16px;\r\n  margin: 4px 2px;\r\n  cursor: pointer;\r\n  position: relative;\r\n}\r\n</style>\r\n\r\n<h1>Makanan Kucing Dry food</h1>\r\n<div class=\"kering\"><p>Makanan Kucing Kering (Dry Food): Makanan ini berbentuk kibble atau butiran kecil. Kandungan airnya rendah, sehingga bisa disimpan lebih lama. Makanan kering biasanya mengandung karbohidrat lebih tinggi dibandingkan makanan basah.</p><button class=\"button\" onclick=\"window.location.href=\'index.php?page=menu\'\">Beli produk</button>\r\n<img src=\"/landingpage/asets/img/img-content/makanan_kucing_kering.jpg\" alt=\"pengenalan gambar kucing\" class=\"kering-img\"></div>'),
(7, 'basah', '<style>\r\n.kering{\r\nwidth: 100%;\r\ndisplay: flex;\r\n\r\n    flex-direction: row;\r\n    flex-wrap: wrap;\r\n    justify-content: space-around;\r\n    align-items: flex-start;}\r\n.kering-img{\r\nwidth: 400px;\r\nmargin-right: 5px;\r\nmargin-left: 30px;\r\nborder-radius: 2px;\r\n}\r\nbutton {\r\n  background-color: #4CAF50; /* Warna latar */\r\n  border: none;\r\n  color: white;\r\n  padding: 15px 32px;\r\n  text-align: center;\r\n  text-decoration: none;\r\n  display: inline-block;\r\n  font-size: 16px;\r\n  margin: 4px 2px;\r\n  cursor: pointer;\r\n  position: relative;\r\n}\r\n</style>\r\n\r\n<h1>Makanan Kucing Wet Food</h1>\r\n<div class=\"kering\"><p>Makanan kucing basah (Wet Food) adalah jenis makanan kucing yang memiliki kandungan air yang tinggi. Biasanya dikemas dalam kaleng atau pouch, makanan ini memiliki tekstur yang lembut dan saus yang kaya akan aroma, sehingga sangat disukai oleh banyak kucing.</p><button class=\"button\" onclick=\"window.location.href=\'index.php?page=menu\'\">Beli produk</button><img src=\"/landingpage/asets/img/img-content/makanan-kucing-basah.jpeg\" alt=\"pengenalan gambar kucing\" class=\"kering-img\"></div>'),
(8, 'menu', '<h1>Menu Makanan Kucing</h1>\r\n<section id=\"makanan-kering\"><center><h2>Makanan Kucing tipe kering</h2></center></section>\r\n'),
(9, 'mainan', '<style>\r\n.kering{\r\nwidth: 100%;\r\n    display: flex;\r\n    flex-direction: row;\r\n    flex-wrap: wrap;\r\n    justify-content: space-around;\r\n    align-items: flex-start;\r\n}\r\n.kering-img{\r\nwidth: 400px;\r\nmargin-right: 5px;\r\nmargin-left: 30px;\r\nborder-radius: 2px;\r\n}\r\nbutton {\r\n  background-color: #4CAF50; /* Warna latar */\r\n  border: none;\r\n  color: white;\r\n  padding: 15px 32px;\r\n  text-align: center;\r\n  text-decoration: none;\r\n  display: inline-block;\r\n  font-size: 16px;\r\n  margin: 4px 2px;\r\n  cursor: pointer;\r\n  position: relative;\r\n}\r\n</style>\r\n\r\n<h1>Mainan Kucing</h1>\r\n<div class=\"kering\"><p>Mainan sangat penting bagi kucing untuk menjaga kesehatan mental dan fisiknya. Mainan membantu kucing mengeluarkan energi, mengasah insting berburu, dan mencegah kebosanan yang dapat memicu perilaku destruktif.</p><button class=\"button\" onclick=\"window.location.href=\'index.php?page=menu\'\">Beli produk</button>\r\n<img src=\"/landingpage/asets/img/img-content/mainan-kucing.jpeg\" alt=\"mainan kucing\" class=\"kering-img\"></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pagesdashboard`
--

CREATE TABLE `pagesdashboard` (
  `id_dahsboard` int(15) NOT NULL,
  `title` varchar(25) NOT NULL,
  `contentt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pagesdashboard`
--

INSERT INTO `pagesdashboard` (`id_dahsboard`, `title`, `contentt`) VALUES
(1, 'dashboard', '\r\n<div class=\"dashboardhead\"><h1>Dashboard  Admin</h1></div>\r\n'),
(2, 'reports', '<div class=\"report\"><h1>Report User</h1><p>Berikut adalah beberapa report dari user.</'),
(3, 'products', '<h1>Products Contents</h1><p>Berikan adalah isi dari menu di user :</p>'),
(5, 'logout', '<?php\r\nsession_start();  \r\nsession_unset();\r\nsession_destroy();\r\nheader(\"Location: ../login/login.php\");\r\nexit(); \r\n?>'),
(6, 'tambahproduk', '<h1>Penambahan Produk</h1>'),
(7, 'ubahproduk', '<h2>Ubah Produk</h2><br>\r\n<p>ubahlah sesuai kebutuhan.</p><br>'),
(8, 'user', '	<div id=\"user\">\r\n	<h1>User Informasi</h1>\r\n	<p>Di halaman ini berisi tentang informasi user :</p>	\r\n	</div>'),
(9, 'pembelian', '<div class=\"pembelian\"><h1>Pembelian</h1><p>Selamat datang di pembelian produk :\r\n</P></div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian` int(11) NOT NULL,
  `id_user` int(20) DEFAULT NULL,
  `id_produk` int(25) DEFAULT NULL,
  `telepon` varchar(50) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `alamat` varchar(200) NOT NULL,
  `tanggal_pembelian` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian`, `id_user`, `id_produk`, `telepon`, `jumlah`, `total_harga`, `alamat`, `tanggal_pembelian`) VALUES
(52, 23, 1, '081339334437', 1, 20000.00, 'madiun', '2024-12-04 07:55:51'),
(53, 23, 1, '888', 2, 40000.00, 'lumajang', '2024-12-04 15:26:35'),
(54, 32, 7, '09829181', 1, 50000.00, 'surabaya', '2024-12-04 19:49:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `telepon` int(25) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `alamat`, `telepon`, `tanggal`) VALUES
(1, 'zaki', 'zaki@gmail.com', '$2y$10$iiQIthz.8x7YRL8IvdBt6Ov', 'Lumajang', 81, '2024-10-31 01:04:46'),
(23, 'moca', 'moca@gmail.com', '$2y$10$eSDNoVdvMyNqtt9e9JjqfuauK2oa9JErEBspU.2Y/wq/zvuS0AcCS', 'lmj', 392010, '2024-10-31 04:01:58'),
(28, 'oasis', 'oasis@gmail.com', '$2y$10$LCFeNFfm3STa/AQSkE8KW.81r9d0Q0v5Am/TRgX/jt.mJqpPVOb/u', 'Surabaya', 2147483647, '2024-11-05 14:10:50'),
(29, 'Ki', 'ki@gmail.com', '$2y$10$bAgTiZU4jRXCh6E7.t3B8OoMTKCBWp2PRkLutIejFNqatmRtg236y', 'Malang', 813939434, '2024-11-08 11:27:31'),
(30, 'coba', 'coba@gmail.com', '$2y$10$CqLuBvSErEhMxDDPRu2ItO7IPe2Z6NYY2AeqKe1kAWDw655Se/8ky', 'surabaya', 76654535, '2024-11-12 11:29:42'),
(31, 'Rafi Udin', 'raditya.putra.astara@gmail.com', '$2y$10$4raekiO/yEtVCfFi1Qe7D.zeWqju0.4bnPpxDjqylOfDo8E3RSC1y', 'Jogotrunan', 2147483647, '2024-11-13 00:12:55'),
(32, 'moli', 'moli@gmail.com', '$2y$10$d6OU6NPMv.wSwWj0lHZtaO1bzfgySPoU.YohrqcobJPHyBa5iIgKu', 'semarang', 2147483647, '2024-11-27 06:54:21'),
(33, 'Akbar', 'user@aafd.com', '$2y$10$n.dp4zbKxohimE6DWSd38.Ny5fg2EjoswZDZCxkNSBSnR2rDBx/6i', 'Jl. Raya Sumatra Tengara', 1, '2024-11-27 18:44:39'),
(34, 'Zaki', 'supriyantolumajang@gmail.com', '$2y$10$u32sg9es.NTb0xOGzZpuu.UeogaHCaqmFr28YUDUIEZx9s5q4dBie', 'Lmj', 3636, '2024-11-27 18:44:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `list_content`
--
ALTER TABLE `list_content`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pagesdashboard`
--
ALTER TABLE `pagesdashboard`
  ADD PRIMARY KEY (`id_dahsboard`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `user_id` (`id_user`,`id_produk`),
  ADD KEY `produk_id` (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `list_content`
--
ALTER TABLE `list_content`
  MODIFY `id_produk` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pagesdashboard`
--
ALTER TABLE `pagesdashboard`
  MODIFY `id_dahsboard` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD CONSTRAINT `pembelian_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `list_content` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_produk_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
