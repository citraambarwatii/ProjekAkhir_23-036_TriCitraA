-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 03:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `kode_input` varchar(20) NOT NULL,
  `kode_buku` varchar(20) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(20) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `stok` int(20) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`kode_input`, `kode_buku`, `nama_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `supplier`, `stok`, `harga_beli`, `harga_jual`) VALUES
('INP0001', 'BK0001', 'kancil', 'df', 'ddon', 23, 'agus', 5, 111, 989),
('INP0002', 'BK0002', 'Dino', 'rifky gantenbg', 'gatau', 2025, 'dono', 50, 2000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `full_name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'citra123'),
(2, 'citraambarwati', 'citra1@gmail.com', 'citraa'),
(3, 'cici', 'cici@gmail.com', 'cicii'),
(4, 'ambarwati', 'ambarwati@gmail.com', 'a1');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `kode_buku` varchar(20) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(20) NOT NULL,
  `harga_buku` int(20) NOT NULL,
  `stok` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`kode_buku`, `nama_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `harga_buku`, `stok`) VALUES
('BK0001', 'kancil', 'df', 'ddon', 23, 98, 5),
('BK0002', 'Dino', 'rifky gantenbg', 'gatau', 2025, 1000, 50),
('BK0003', 'malinkundang', 'bj', 'buku sinar jaya', 1999, 95000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kode_supp` varchar(20) NOT NULL,
  `nama_supp` varchar(50) NOT NULL,
  `notelp_supp` int(20) NOT NULL,
  `alamat_supp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_supp`, `nama_supp`, `notelp_supp`, `alamat_supp`) VALUES
('SUPP0001', 'sakura', 9898, 'bkln'),
('SUPP0002', 'dono', 9876, 'bangkalan'),
('SUPP0003', 'agus', 9876, 'surabaya'),
('SUPP0004', 'wedia', 5432, 'telang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_buku2` varchar(20) NOT NULL,
  `nama_buku2` varchar(50) NOT NULL,
  `pengarang2` varchar(50) NOT NULL,
  `penerbit2` varchar(50) NOT NULL,
  `tahun_terbit2` int(20) NOT NULL,
  `harga2` int(20) NOT NULL,
  `jumlah2` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_buku2`, `nama_buku2`, `pengarang2`, `penerbit2`, `tahun_terbit2`, `harga2`, `jumlah2`) VALUES
('TR0001', 'BK0001', 'kancil', 'df', 'ddon', 23, 98, 2),
('TR0002', 'BK0003', 'malinkundang', 'bj', 'buku sinar jaya', 1999, 95000, 1),
('TR0003', 'BK0003', 'malinkundang', 'bj', 'buku sinar jaya', 1999, 95000, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`kode_input`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_supp`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
