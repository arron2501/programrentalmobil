-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2019 pada 19.57
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamobil`
--

CREATE TABLE `datamobil` (
  `idmobil` varchar(5) NOT NULL,
  `namamobil` char(30) DEFAULT NULL,
  `merkmobil` char(20) DEFAULT NULL,
  `tahunmobil` int(4) DEFAULT NULL,
  `kursimobil` int(2) DEFAULT NULL,
  `hargarental` bigint(10) DEFAULT NULL,
  `status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datamobil`
--

INSERT INTO `datamobil` (`idmobil`, `namamobil`, `merkmobil`, `tahunmobil`, `kursimobil`, `hargarental`, `status`) VALUES
('AVZ01', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ02', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ03', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ04', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ05', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ06', 'Avanza', 'Toyota', 2015, 7, 500000, 'Ready'),
('AVZ07', 'Avanza', 'Toyota', 2015, 7, 500000, 'Tidak Ready'),
('AVZ08', 'Avanza', 'Toyota', 2015, 7, 500000, 'Tidak Ready'),
('AVZ09', 'Avanza', 'Toyota', 2015, 7, 500000, 'Tidak Ready'),
('AVZ10', 'Avanza', 'Toyota', 2015, 7, 500000, 'Tidak Ready'),
('FTR01', 'Fortuner', 'Toyota', 2017, 7, 900000, 'Tidak Ready'),
('FTR02', 'Fortuner', 'Toyota', 2017, 7, 900000, 'Ready'),
('FTR03', 'Fortuner', 'Toyota', 2017, 7, 900000, 'Ready'),
('FTR04', 'Fortuner', 'Toyota', 2017, 7, 900000, 'Tidak Ready'),
('FTR05', 'Fortuner', 'Toyota', 2017, 7, 900000, 'Tidak Ready'),
('FTR08', 'Fortuner', 'Toyota', 2010, 7, 1000000, 'Ready'),
('FTR09', 'Fortuner', 'Toyota', 2010, 7, 1000000, 'Ready'),
('FTR10', 'Fortuner', 'Toyota', 2010, 7, 1000000, 'Ready'),
('MBO01', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO02', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO03', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO04', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO05', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO06', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO07', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO08', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('MBO09', 'Mobilio', 'Honda', 2015, 7, 650000, 'Tidak Ready'),
('MBO10', 'Mobilio', 'Honda', 2015, 7, 650000, 'Ready'),
('PJO01', 'Pajero Sport', 'Mitsubishi', 2016, 7, 850000, 'Ready'),
('PJO02', 'Pajero Sport', 'Mitsubishi', 2018, 7, 850000, 'Tidak Ready'),
('PJO03', 'Pajero Sport', 'Mitsubishi', 2014, 7, 850000, 'Ready'),
('PJO04', 'Pajero Sport', 'Mitsubishi', 2017, 7, 850000, 'Tidak Ready'),
('PJO05', 'Pajero Sport', 'Mitsubishi', 2015, 7, 850000, 'Ready'),
('XNA01', 'Xenia', 'Daihatsu', 2010, 7, 400000, 'Ready'),
('XNA02', 'Xenia', 'Daihatsu', 2010, 7, 400000, 'Ready'),
('XNA03', 'Xenia', 'Daihatsu', 2010, 7, 400000, 'Ready'),
('XNA04', 'Xenia', 'Daihatsu', 2010, 7, 400000, 'Ready'),
('XNA05', 'Xenia', 'Daihatsu', 2010, 7, 400000, 'Ready');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datarental`
--

CREATE TABLE `datarental` (
  `idrental` varchar(5) NOT NULL,
  `idmobil` varchar(5) DEFAULT NULL,
  `namapelanggan` char(50) DEFAULT NULL,
  `nomorhp` varchar(12) DEFAULT NULL,
  `namamobil` varchar(50) DEFAULT NULL,
  `merkmobil` varchar(50) DEFAULT NULL,
  `hargarental` bigint(10) DEFAULT NULL,
  `tglrental` varchar(15) DEFAULT NULL,
  `tglkembali` varchar(15) DEFAULT NULL,
  `lama` int(5) DEFAULT NULL,
  `hatot` bigint(10) DEFAULT NULL,
  `status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datarental`
--

INSERT INTO `datarental` (`idrental`, `idmobil`, `namapelanggan`, `nomorhp`, `namamobil`, `merkmobil`, `hargarental`, `tglrental`, `tglkembali`, `lama`, `hatot`, `status`) VALUES
('RNT01', 'XNA03', 'Rivaltino', '085777709900', 'Xenia', 'Daihatsu', 400000, '20-05-2019', '25-05-2019', 5, 2000000, 'Lunas'),
('RNT02', 'FTR03', 'Andreanto', '081233211232', 'Fortuner', 'Toyota', 900000, '01-06-2019', '05-06-2019', 4, 3600000, 'Lunas'),
('RNT03', 'MBO03', 'Leon', '083211233211', 'Mobilio', 'Honda', 650000, '20-06-2019', '25-06-2019', 5, 3250000, 'Belum Lunas'),
('RNT04', 'PJO03', 'Jarjit', '0815973952', 'Pajero Sport', 'Mitsubishi', 850000, '20-06-2019', '22-06-2019', 2, 1700000, 'Belum Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logindb`
--

CREATE TABLE `logindb` (
  `user` varchar(15) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logindb`
--

INSERT INTO `logindb` (`user`, `pass`) VALUES
('arron2501', 'admin001'),
('andrean', 'admin002'),
('leon', 'admin003');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`idmobil`),
  ADD UNIQUE KEY `idmobil` (`idmobil`),
  ADD UNIQUE KEY `idmobil_2` (`idmobil`),
  ADD UNIQUE KEY `idmobil_3` (`idmobil`),
  ADD UNIQUE KEY `idmobil_4` (`idmobil`),
  ADD KEY `idmobil_5` (`idmobil`);

--
-- Indeks untuk tabel `datarental`
--
ALTER TABLE `datarental`
  ADD PRIMARY KEY (`idrental`);

--
-- Indeks untuk tabel `logindb`
--
ALTER TABLE `logindb`
  ADD PRIMARY KEY (`pass`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
