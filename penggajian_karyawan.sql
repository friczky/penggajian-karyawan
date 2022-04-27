-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2021 at 05:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_hak_akses`
--

CREATE TABLE `tb_hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(222) NOT NULL,
  `hak_akses` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hak_akses`
--

INSERT INTO `tb_hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'Dapat mengubah semuanya', 'Admin'),
(2, 'Melihat data diri dan gaji', 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `nama_jabatan` varchar(111) NOT NULL,
  `gaji_pokok` varchar(111) NOT NULL,
  `tunjangan_jabatan` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `nama_jabatan`, `gaji_pokok`, `tunjangan_jabatan`) VALUES
(2, 'SPV Marketing', '1800000', '100000'),
(3, 'SPV Gudang', '3000000', '100000'),
(5, 'spv sales', '1500000', '100000'),
(6, 'Akuntan Keuangan', '1500000', '100000'),
(7, 'Sekertaris', '2500000', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `nik` varchar(222) NOT NULL,
  `nama_karyawan` varchar(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `jenis_kelamin` varchar(222) NOT NULL,
  `jabatan` varchar(222) NOT NULL,
  `tanggal_masuk` varchar(222) NOT NULL,
  `status` varchar(222) NOT NULL,
  `foto` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `nik`, `nama_karyawan`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `foto`) VALUES
(5, '1234566', 'Rudi Hartono', 'rudi', '21232f297a57a5a743894a0e4a801fc3', 'Laki-Laki', 'Sekertaris', '2021-08-12', 'Admin', 'spp.png'),
(7, '1234', 'arsat', 'arsat', '1776075fb656b2445c05064e910e3693', 'Perempuan', 'SPV Gudang', '2021-11-19', 'Karyawan', '20171001_1522531.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kehadiran`
--

CREATE TABLE `tb_kehadiran` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `bulan` varchar(222) NOT NULL,
  `tahun` varchar(100) NOT NULL,
  `nik` varchar(222) NOT NULL,
  `nama_karyawan` varchar(222) NOT NULL,
  `jenis_kelamin` varchar(222) NOT NULL,
  `nama_jabatan` varchar(222) NOT NULL,
  `hadir` varchar(222) NOT NULL,
  `sakit` varchar(100) NOT NULL,
  `alpa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kehadiran`
--

INSERT INTO `tb_kehadiran` (`id`, `id_karyawan`, `bulan`, `tahun`, `nik`, `nama_karyawan`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpa`) VALUES
(11, 5, 'Agustus', '2021', '1234566', 'Rudi Hartono', 'Laki-Laki', 'Sekertaris', '27', '2', '1'),
(14, 7, 'November', '2021', '1234', 'arsat', 'Perempuan', 'SPV Gudang', '28', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_potongan_gaji`
--

CREATE TABLE `tb_potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(222) NOT NULL,
  `jumlah_potongan` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_potongan_gaji`
--

INSERT INTO `tb_potongan_gaji` (`id`, `potongan`, `jumlah_potongan`) VALUES
(3, 'Sakit', '10000'),
(4, 'Alpa', '100000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_hak_akses`
--
ALTER TABLE `tb_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `tb_potongan_gaji`
--
ALTER TABLE `tb_potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hak_akses`
--
ALTER TABLE `tb_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_potongan_gaji`
--
ALTER TABLE `tb_potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kehadiran`
--
ALTER TABLE `tb_kehadiran`
  ADD CONSTRAINT `tb_kehadiran_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `tb_karyawan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
