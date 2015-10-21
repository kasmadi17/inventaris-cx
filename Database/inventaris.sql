-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2015 at 02:09 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ex_inventaris`
--
CREATE DATABASE IF NOT EXISTS `ex_inventaris` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ex_inventaris`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nmbarang` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `pemberi` varchar(100) NOT NULL,
  `pj` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nmbarang`, `model`, `kondisi`, `tgl`, `pemberi`, `pj`, `ket`) VALUES
(6, 'kipas', 'cosmos', 'Baik', '2015-10-18', 'hikam', 'ines', 'kado wisuda'),
(8, 'komputer', 'acer', 'Kurang Baik', '2015-10-04', 'kasmadi', 'rian', 'ram rusak'),
(9, 'mikrotik', '3214', 'Baik', '2015-09-28', 'rafki', 'rian', 'pinjaman'),
(10, 'modem', 'tplink', 'Tidak Baik', '2015-07-30', 'anggri', 'rozi', 'adapter');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `level`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
