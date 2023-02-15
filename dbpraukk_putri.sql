-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2023 pada 09.38
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpraukk_putri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dvd`
--

CREATE TABLE `tb_dvd` (
  `id_dvd` int(10) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dvd`
--

INSERT INTO `tb_dvd` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(18, 's', 's', 1, '2023-02-02', '2023-02-15', 1),
(19, 's', 's', 1, '2023-02-02', '2023-02-15', 1),
(20, 'horor', 'pocong', 2024, '2023-01-30', '2023-01-30', 35000),
(24, 'a', 'c', 2, '2023-02-10', '2023-02-01', 12),
(26, 'comedyy', 'cinta tapi cintaa', 2027, '2023-02-02', '2023-02-02', 1000002),
(27, 'horor', 'pocong', 2024, '2023-02-02', '2023-02-02', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(20, 'putri', 'tambakroto', 20),
(26, 'intann', 'dalemann', 26),
(27, 'bila', 'karang geneng', 27);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_dvd`
--
ALTER TABLE `tb_dvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indeks untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `id_dvd` (`id_dvd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dvd`
--
ALTER TABLE `tb_dvd`
  MODIFY `id_dvd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD CONSTRAINT `tb_penyewa` FOREIGN KEY (`id_dvd`) REFERENCES `tb_dvd` (`id_dvd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
