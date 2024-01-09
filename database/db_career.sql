-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2016 at 03:23 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_career`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id_contact` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(1, '567567567575675', '567567567', '5756567', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE IF NOT EXISTS `lamaran` (
  `id_lamaran` int(10) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_registrasi` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `id_lowongan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `tgl_lamaran` date NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'Belum Dikonfirmasi',
  PRIMARY KEY (`id_lamaran`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`id_lamaran`, `id_perusahaan`, `id_registrasi`, `id_lowongan`, `tgl_lamaran`, `status`) VALUES
(6, '1', 'RG000002', '3', '2014-04-30', 'Tidak Diterima'),
(7, '1', 'RG000002', '15', '2009-05-19', 'Belum Dikonfirmasi'),
(8, '18', 'RG000002', '7', '2016-05-16', 'Belum Dikonfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE IF NOT EXISTS `lowongan` (
  `id_lowongan` int(10) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `persaratan` text COLLATE latin1_general_ci NOT NULL,
  `tgl_lowongan` date NOT NULL,
  `user_posting` varchar(25) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_lowongan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_perusahaan`, `deskripsi`, `persaratan`, `tgl_lowongan`, `user_posting`) VALUES
(2, '19', 'This is a W3C standards compliant free website template from OS Templates.\r\n\r\nThis template is distributed using a Website Template Licence, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit Free Website Templates.\r\n\r\nMorbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anterdumnullam interdum eros dui urna consequam ac nisl nullam ligula vestassa.', 'This is a W3C standards compliant free website template from OS \r\nTemplates. This template is distributed using a Website Template \r\nLicence, which allows you to use and modify the template for both \r\npersonal and commercial use when you keep the provided credit links in \r\nthe footer. For more CSS templates visit Free Website Templates. \r\nMorbitincidunt maurisque eros molest nunc anteget sed vel lacus mus \r\nsemper. Anterdumnullam interdum ero', '2014-04-22', 'Administrator'),
(4, '19', 'This is a W3C standards compliant free website template from OS Templates. This template is distributed using a Website Template Licence, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit Free Website Templates. Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anterdumnullam interdum ero', 'This is a W3C standards compliant free website template from OS \r\nTemplates. This template is distributed using a Website Template \r\nLicence, which allows you to use and modify the template for both \r\npersonal and commercial use when you keep the provided credit links in \r\nthe footer. For more CSS templates visit Free Website Templates. \r\nMorbitincidunt maurisque eros molest nunc anteget sed vel lacus mus \r\nsemper. Anterdumnullam interdum ero', '2014-04-22', 'Administrator'),
(7, '18', '<span lang="IN">PT. TOYOTA merupakan perusahaan yang bergerak di bidang otomotif dalam penjualan mobil. PT. TOYOTA membutuhkan beberapa karyawan dengan mempunyai intensitas dan antusias yang tinggi dalam bekerja.<br></span><b><span lang="IN"><br></span></b>', '1.Ijazah S1<br>2.SKCK<br>3.KTP<br>4.Transkrip Nilai<br>5.CV<br>6.Foto 3x4<br>', '2014-04-24', 'PT. TOYOTA'),
(8, '20', 'This is a W3C standards compliant free website template from OS \r\nTemplates. This template is distributed using a Website Template \r\nLicence, which allows you to use and modify the template for both \r\npersonal and commercial use when you keep the provided credit links in \r\nthe footer. For more CSS templates visit Free Website Templates. \r\nMorbitincidunt maur', 'rhyrtyrtyryrtyrty<br>', '2014-04-29', 'PT. Bank CIMB Niaga'),
(15, '1', 'PT. Bank BRI Cabang Padang membutuhkan karyawan yang mempunyai antusias yang tinggi dalam bekerja.&nbsp; <br>', 'KTP<br>SKCK<br>', '2014-04-30', 'PT. Bank BRI Cabang Padan');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE IF NOT EXISTS `perusahaan` (
  `id_perusahaan` int(8) NOT NULL AUTO_INCREMENT,
  `nama_p` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `alamat` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `wilayah` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tlp` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_p`, `tgl_daftar`, `alamat`, `wilayah`, `email`, `tlp`, `password`, `foto`) VALUES
(1, 'PT. Bank BRI Cabang Padang', '2014-04-30', 'Padang retret', 'Padang', 'bri@yahoo.com', '06786867867867', '827ccb0eea8a706c4c34a16891f84e7b', 'bank-bri.png'),
(2, 'PT. Bank Mandiri  Cabang Bukitinggi', '2014-04-30', 'Bukitinggi', 'Padang', 'fhfh', '456456456645665', 'd58e3582afa99040e27b92b13c8f2280', 'mandiri.gif'),
(18, 'PT. TOYOTA', '2014-04-28', 'Palembang', 'Palembang', 'toyota', 'dfgdfgdfg', '827ccb0eea8a706c4c34a16891f84e7b', 'is.jpg'),
(19, 'PT. Semen Padang', '2014-04-28', 'Indarung', 'Padang', 'dfdfg', '567567', '2651d9f7aafc2c4c5a3c47f9d683cd57', 'fg.jpg'),
(20, 'PT. Bank CIMB Niaga', '2014-04-29', 'Padang', 'Padang', 'admin', '-', '21232f297a57a5a743894a0e4a801fc3', 't.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE IF NOT EXISTS `registrasi` (
  `id_registrasi` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `jk` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `tmp_lahir` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `umur` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `tamatan` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `jurusan` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `ipk` float NOT NULL,
  `lampiran` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_registrasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `registrasi`
--

INSERT INTO `registrasi` (`id_registrasi`, `nama_lengkap`, `jk`, `tmp_lahir`, `tgl_lahir`, `umur`, `alamat`, `tamatan`, `jurusan`, `ipk`, `lampiran`, `email`, `password`, `foto`) VALUES
('RG000002', 'Ismet Helmi ', 'pria', 'Padang', '1990-08-18', '16', 'Padang', 'UPI  "yptk" Padang', 'Sistem Informas', 3.12, 'Penguins.jpg', 'ismet@yahoo.com', 'ismet', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@web.com', 'admin');
