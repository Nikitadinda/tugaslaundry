-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 01:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundryy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cucian_keluar`
--

CREATE TABLE `cucian_keluar` (
  `id_ck` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `tanggal_ck` date DEFAULT NULL,
  `jenis_laundry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cucian_masuk`
--

CREATE TABLE `cucian_masuk` (
  `id_cm` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `tanggal_cm` date DEFAULT NULL,
  `jenis_laundry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('Nikita dinda', 'a500b93bd1d753f1155876ea03d3b6de');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(100) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `id_ck` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `jenis_laundry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cucian_keluar`
--
ALTER TABLE `cucian_keluar`
  ADD PRIMARY KEY (`id_ck`),
  ADD KEY `id_konsumen` (`id_konsumen`);

--
-- Indexes for table `cucian_masuk`
--
ALTER TABLE `cucian_masuk`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `id_konsumen` (`id_konsumen`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD KEY `id_konsumen` (`id_konsumen`),
  ADD KEY `id_ck` (`id_ck`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cucian_keluar`
--
ALTER TABLE `cucian_keluar`
  MODIFY `id_ck` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cucian_masuk`
--
ALTER TABLE `cucian_masuk`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cucian_keluar`
--
ALTER TABLE `cucian_keluar`
  ADD CONSTRAINT `cucian_keluar_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id_konsumen`);

--
-- Constraints for table `cucian_masuk`
--
ALTER TABLE `cucian_masuk`
  ADD CONSTRAINT `cucian_masuk_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id_konsumen`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id_konsumen`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_ck`) REFERENCES `cucian_keluar` (`id_ck`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
