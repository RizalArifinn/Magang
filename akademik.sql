-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2017 at 03:14 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tgl_ajar` date NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `materi` varchar(20) NOT NULL,
  `guru` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `tgl_ajar`, `kelas`, `materi`, `guru`) VALUES
(1, 'Senin', '2017-03-06', 'X-KU 1', 'Matematika', 'Pak Imam'),
(2, 'Selasa', '2017-03-07', 'XI-MM 1', 'Bahasa Jerman', 'Frau Erlyn'),
(3, 'Rabu', '2017-03-08', 'X-TI 2', 'Matematika', 'Bu Sri'),
(5, 'Sabtu', '2017-03-11', 'XI-RPL', 'Penjaskes', 'Pak Nur'),
(6, 'Senin', '2017-03-13', 'X-ADM 2', 'Bahasa Indonesia', 'Bu Dwi'),
(7, 'Kamis', '2017-03-09', 'X-ADM 2', 'Bahasa Indonesia', 'Bu Dwi'),
(10, 'Selasa', '2017-03-07', 'XI-RPL', 'Pemrograman', 'Pak Isa'),
(11, 'Rabu', '2017-03-08', 'XI-RPL', 'Bahasa Jerman', 'Frau Erlyn'),
(12, 'Selasa', '2017-03-07', 'X-KU 1', 'Pemrograman', 'Pak Isa'),
(13, 'Selasa', '2017-03-31', 'X-KU 2', 'Pemrograman', 'Pak Isa');

-- --------------------------------------------------------

--
-- Table structure for table `lap_kelas`
--

CREATE TABLE `lap_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(60) NOT NULL,
  `jml_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lap_kelas`
--

INSERT INTO `lap_kelas` (`id`, `kelas`, `jml_siswa`) VALUES
(1, 'X-TI 1', 30),
(2, 'X-TI 2', 35),
(3, 'X-TI 3', 36),
(4, 'X-TI 4', 37),
(5, 'X-KU 1', 36),
(6, 'X-KU 2', 35),
(7, 'X-KU 3', 38),
(8, 'X-KU 4', 34),
(9, 'X-ADM 1', 36),
(10, 'X-ADM 2', 36),
(11, 'XI-MM 1', 35),
(12, 'XI-MM 2', 36),
(13, 'XI-MM 3', 34),
(14, 'XI-RPL', 37),
(16, 'XI-AK 1', 36),
(17, 'XI-AK 2', 35),
(18, 'XI-AK 3', 36),
(19, 'XI-PBK', 35),
(20, 'X-PMS 1', 35),
(21, 'X-PMS 2', 35),
(22, 'XI-APK 1', 36),
(23, 'XI-APK 2', 37),
(24, 'XI-PMS 1', 36),
(25, 'XI-PMS 2', 36),
(26, 'XII-MM 1', 36),
(27, 'XII-MM 2', 35),
(28, 'XII-MM 3', 36),
(29, 'XII-RPL', 36),
(30, 'XII-AK 1', 36),
(31, 'XII-AK 2', 36),
(32, 'XII-AK 3', 37),
(33, 'XII-PBK', 36),
(34, 'XII-APK 1', 36),
(35, 'XII-APK 2', 37),
(36, 'XII-PMS 1', 36),
(37, 'XII-PMS 2', 37);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `siswa` varchar(50) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `guru` varchar(50) NOT NULL,
  `materi` varchar(30) NOT NULL,
  `nilai_umum` float NOT NULL,
  `nilai_kejuruan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `siswa`, `kelas`, `guru`, `materi`, `nilai_umum`, `nilai_kejuruan`) VALUES
(2, 'John', 'XI-RPL', 'Pak Imam', 'Matematika', 87.7, 0),
(3, 'Rambo', 'XI-RPL', 'Pak Isa', 'Pemrograman', 0, 87),
(4, 'Choco', 'XI-MM 1', 'Pak Nur', 'Penjaskes', 89, 0),
(5, 'One', 'X-KU 2', 'Pak Nur', 'Penjaskes', 88, 0),
(6, 'John', 'X-TI 1', 'Pak Imam', 'Matematika', 89, 0),
(7, 'Yuda', 'XI-RPL', 'Pak Imam', 'Matematika', 88, 0),
(8, 'Rizal', 'XI-RPL', 'Pak Nur', 'Penjaskes', 89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `materi` varchar(30) NOT NULL,
  `no_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nama`, `materi`, `no_guru`) VALUES
(3, 'Pak Imam', 'Matematika', 8973),
(4, 'Pak Isa', 'Pemrograman', 7171),
(5, 'Pak Nur', 'Penjaskes', 9879),
(6, 'Bu Dwi', 'Bahasa Indonesia', 6414),
(7, 'Frau Erlyn', 'Bahasa Jerman', 7261),
(8, 'Pak Tri', 'Pemrograman', 8973),
(9, 'Pak Dwi Sasongko', 'Sejarah', 1384),
(10, 'Bu Marti', 'PPKN', 4181),
(11, 'Bu Yekti', 'Seni Budaya', 4891),
(12, 'Bu Yuni', 'Prakarya', 2314),
(13, 'Bu Nana', 'Bahasa Inggris', 3145),
(14, 'Pak Umar', 'Fisika', 9871),
(15, 'Bu Tutut', 'Bimbingan Konseling', 8917),
(16, 'Pak Effendi', 'Bahasa Daerah', 8718),
(17, 'Bu Asmaul', 'Agama', 8018),
(18, 'Pak Umar', 'Sistem Komputer', 9871);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_materi`
--

CREATE TABLE `tbl_materi` (
  `id` int(11) NOT NULL,
  `materi` varchar(30) NOT NULL,
  `guru` varchar(50) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_materi`
--

INSERT INTO `tbl_materi` (`id`, `materi`, `guru`, `waktu`) VALUES
(1, 'Matematika', 'Pak Imam', 2),
(2, 'Pemrograman', 'Pak Isa', 3),
(4, 'Bahasa Jerman', 'Frau Erlyn', 2),
(5, 'Bahasa Indonesia', 'Bu Dwi', 2),
(6, 'Penjaskes', 'Pak Nur', 2),
(7, 'Sejarah', 'Pak Dwi Sasongko', 2),
(8, 'PPKN', 'Bu Marti', 2),
(9, 'Seni Budaya', 'Bu Yekti', 2),
(10, 'Prakarya', 'Bu Yuni', 2),
(11, 'Bahasa Inggris', 'Bu Nana', 2),
(12, 'Fisika', 'Pak Umar', 2),
(13, 'Bimbingan Konseling', 'Bu Tutut', 9711),
(14, 'Bahasa Daerah', 'Pak Effendi', 2),
(15, 'Agama', 'Bu Asmaul', 2),
(16, 'Sistem Komputer', 'Pak Umar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `noi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `kelas`, `noi`) VALUES
(2, 'John', 'X-TI 2', 10918),
(3, 'Rambo', 'XI-RPL', 1918),
(17, 'One', 'Two', 3),
(18, 'Choco', 'XI-MM 1', 9817),
(19, 'Yuda', 'XI-RPL', 7173),
(20, 'Rizal', 'XI-RPL', 10734),
(21, 'Rehan', 'XI-RPL', 1381),
(22, 'Rifan', 'XI-RPL', 481),
(23, 'Ari', 'XI-RPL', 341);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lap_kelas`
--
ALTER TABLE `lap_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lap_kelas`
--
ALTER TABLE `lap_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
