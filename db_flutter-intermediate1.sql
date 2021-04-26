-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2021 pada 01.57
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_flutter-intermediate1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_favorite`
--

CREATE TABLE `tb_favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_email` varchar(256) NOT NULL,
  `favorite_idvideo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_favorite`
--

INSERT INTO `tb_favorite` (`favorite_id`, `favorite_email`, `favorite_idvideo`) VALUES
(3, 'rozaaq', '9E3j53T1Jfs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_email` varchar(256) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_nama` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_email`, `user_password`, `user_nama`) VALUES
('akbar', '123456', 'akbar'),
('nando', '123456', 'nando'),
('rozaaq', '123456', 'rozaaq'),
('ucup', '123456', 'ucup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video`
--

CREATE TABLE `tb_video` (
  `video_id` varchar(256) NOT NULL,
  `video_judul` varchar(256) NOT NULL,
  `video_gambar` varchar(256) NOT NULL,
  `video_deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_video`
--

INSERT INTO `tb_video` (`video_id`, `video_judul`, `video_gambar`, `video_deskripsi`) VALUES
('9E3j53T1Jfs', 'Upin & Ipin Musim 13 Full Eposide Terbaru 2020 | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/9E3j53T1Jfs/mqdefault.jpg', 'Upin & Ipin Musim 13 Full Eposide Terbaru 2020 | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020'),
('axxZ02i5Hps', 'Upin & Ipin Musim 14 - Tumbuh Rambut Full Episode 3 | Upin Ipin Terbaru 2021', 'https://i.ytimg.com/vi/axxZ02i5Hps/mqdefault.jpg', 'Upin & Ipin Musim 14 - Tumbuh Rambut Full Episode 3 | Upin Ipin Terbaru 2021 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/DIYStudio66 ---------------- Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #upin #ipin​​​​ #upinipin​​ #upindanipin​​'),
('bQJi23X9scE', 'Upin & Ipin Full Movie | Kompilasi Upin & Ipin Musim 15 | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/bQJi23X9scE/mqdefault.jpg', 'Upin & Ipin Full Movie | Kompilasi Upin & Ipin Musim 15 | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/DIYStudio66 ---------------- Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020 #upinipinterbaru2021 #UpinIpinMusim14 #UpinIpinMusim15'),
('iApSh0eaQhw', 'Upin & Ipin Full Movie | Upin Ipin Terbaru 2019 - 2020 | The Newest Upin & Ipin Full Episode #4', 'https://i.ytimg.com/vi/iApSh0eaQhw/mqdefault.jpg', '💖 Subscribe: https://bit.ly/33oN4bB 💖 Subscribe My New Channel/Berlangganan Saluran Baru Saya: https://bit.ly/34TWpZW UPIN & IPIN FULL MOVIE | UPIN Dan IPIN Terbaru 2019 - 2020 | The Newest UPIN DAN IPIN Kartun Full Episode ----------------------------------- PLAYLIST: Upin & Ipin Full Movie Kartun | Upin Ipin Terbaru: https://bit.ly/2PYYdwc Upin & Ipin Full Movie | Upin Ipin Terbaru 2019 - 2020: https://bit.ly/2sleBhM Upin Ipin Terbaru 2019 - 2020 | The Newest Upin & Ipin Full Episode: https://bit.ly/39bft9e Upin & Ipin Full Movie | The Newest Upin & Ipin Full Episode: https://bit.ly/2PXVwep -------------------------------------------- Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020'),
('jIx_usWcCN8', 'Upin & Ipin Full Movie | Geng - Pengembaraan Bermula Full Eposide Terbaru #2 | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/jIx_usWcCN8/mqdefault.jpg', 'Upin & Ipin Full Movie | Geng - Pengembaraan Bermula Full Eposide Terbaru #2 | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020'),
('nmqe9XQuUcA', 'Upin & Ipin Full Movie | Upin & Ipin Musim 15 - Kompilasi Upin & Ipin Merdeka | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/nmqe9XQuUcA/mqdefault.jpg', 'Upin & Ipin Full Movie | Upin & Ipin Musim 15 - Kompilasi Upin & Ipin Merdeka | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/DIYStudio66 ---------------- Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020 #upinipinterbaru2021 #UpinIpinMusim14 #UpinIpinMusim15'),
('quyX_5qMBJo', 'Upin & Ipin Full Movie | Upin & Ipin Musim 15 - Kompilasi Episod Raya | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/quyX_5qMBJo/mqdefault.jpg', 'Upin & Ipin Full Movie | Upin & Ipin Musim 15 - Kompilasi Episod Raya | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/DIYStudio66 ---------------- Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020 #upinipinterbaru2021 #UpinIpinMusim14 #UpinIpinMusim15'),
('R0xZTfl7QE8', 'DIY Crafts - Making Miniature Cardboard House for Upin & Ipin #1 | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/R0xZTfl7QE8/mqdefault.jpg', 'DIY Crafts - Making Miniature Cardboard House for Upin & Ipin #1 | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/DIYStudio66 ---------------- Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! -------------- Copyright by Studio66 Email: Studio66diy@gmail.com #DIY #Miniature #Upin #Ipin #UpinIpin #UpinIpinTerbaru #CardboardHouse #DollHouse #MiniHouse'),
('XYB-Wc3J5sY', 'Upin & Ipin Full Movie | Upin Ipin Musim 13 Full Eposide Terbaru | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/XYB-Wc3J5sY/mqdefault.jpg', 'Upin & Ipin Full Movie | Upin Ipin Musim 13 Full Eposide Terbaru | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinterbaru2019 #upinipinterbaru2020'),
('yXjx1XdxutM', 'Upin & Ipin Musim 14 - Upin Ipin Ragam Ramadhan (Episod Penuh) | Upin Ipin Terbaru', 'https://i.ytimg.com/vi/yXjx1XdxutM/mqdefault.jpg', 'Upin & Ipin Musim 14 - Upin Ipin Ragam Ramadhan (Episod Penuh) | Upin Ipin Terbaru 💖 Subscribe: https://bit.ly/33oN4bB 😊 Fanpage: https://www.facebook.com/UpinIpin2020 💖 Contact & DONATE (PayPal) : tara3979@gmail.com Upin & Ipin adalah serial animasi Les \'Copaque Production yang sudah berjalan lama, diproduksi sejak 2007. Film ini menggambarkan kehidupan dan petualangan dua saudara kembar Upin dan Ipin di sebuah desa. Malaysia. Awalnya, film ini adalah proyek sampingan dari film animasi Geng: The Adventure Begins. Upin & Ipin diperkenalkan di TV9 pada 13 September 2007 sebagai program khusus pada kesempatan Ramadhan / Idul Fitri, yang berlangsung selama enam episode, untuk mengajarkan anak-anak arti dari bulan Islam. Pada 2014, film ini telah mencapai musim kedelapan, termasuk musim khusus Ramadhan lainnya di tahun 2008 dan sejak tahun ketiga dan seterusnya, judul filmnya adalah Upin & Ipin and Friends (disingkat Upin & Ipin). ). Serial ini disiarkan melalui Disney Channel Asia, lebih fokus pada pembicaraan tentang kehidupan Upin dan Ipin dengan teman-teman mereka pada hari-hari normal. Thanks for watching my video. If you enjoy this video, please like - share & SUBSCRIBE my channel Don’t forget to turn on notifications, like, & subscribe! #ipin #upin #upinipin #upindanipin #upinipinterbaru #upinipinmusim14 #upinipinterbaru2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_favorite`
--
ALTER TABLE `tb_favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_email` (`favorite_email`),
  ADD KEY `favorite_idvideo` (`favorite_idvideo`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_email`);

--
-- Indeks untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_favorite`
--
ALTER TABLE `tb_favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_favorite`
--
ALTER TABLE `tb_favorite`
  ADD CONSTRAINT `tb_favorite_ibfk_1` FOREIGN KEY (`favorite_email`) REFERENCES `tb_user` (`user_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_favorite_ibfk_2` FOREIGN KEY (`favorite_idvideo`) REFERENCES `tb_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
