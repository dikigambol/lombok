-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 04:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lombok`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` char(30) NOT NULL,
  `pass` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `pass`) VALUES
(1, 'pakar', 'pakar'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` char(3) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`) VALUES
('G01', 'daun mengalami kelayuan'),
('G02', 'semua daun layu tetapi warnanya tidak berubah'),
('G03', 'layu secara tiba-tiba'),
('G04', 'jaringan veskuler dari batang bagian bawah akar coklat\r\n'),
('G05', 'Daun menguning dan menjalar ke ranting'),
('G06', 'Warna jaringan akar dan batang menjadi coklat\r\n'),
('G07', 'Pucuk daun berubah kuning jelas'),
('G08', 'Tulang daun menebal dan daun menggulung ketas'),
('G09', 'Tanaman cabai menjadi kerdil dan tidak berbuah'),
('G10', 'Bercak berwarna coklat dan putih pucat pada daun \r\n\r\n'),
('G11', 'Terdapat lubang pada bercak tua\r\n'),
('G12', 'Bercak pada buah agak mengkilap dan keriput menguning'),
('G13', 'Warna kulit buah seperti jerami padi');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(9) NOT NULL,
  `nama_petani` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `noID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `nama_petani`, `alamat`, `id_penyakit`, `noID`) VALUES
(1, 'jim', 'mia', 'P03', '::1'),
(2, 'hai', 'hui', 'P01', '::1'),
(3, 'budi', 'csac', 'P02', '::1'),
(4, 'mlca', 'alc\r\n', 'P03', '::1'),
(5, 'cac', 'cs', 'P01', '::1'),
(6, 'jim', 'sc\r\n', 'P01', '::1'),
(7, 'ainz', 'albedo', 'P01', '::1'),
(8, 'scheq', 'cc', 'P04', '::1'),
(9, 'csac', 'csac', 'P03', '::1'),
(10, 'budi', 's', 'P06', '::1'),
(11, 's', 's', 'P04', '::1'),
(12, 'f', 'f', 'P01', '::1'),
(13, 'budi', 'c', 'P05', '::1'),
(14, 'g', 'gg', 'P06', '::1'),
(15, 'qwe', 'fafa', 'P05', '::1'),
(16, 'qwe', 'fafa', 'P03', '::1'),
(17, 'hjj', 'jjj', 'P05', '::1'),
(18, 'qwe', 'yeh', 'P03', '::1'),
(19, 'qw', 'w', 'P05', '::1'),
(20, 'tr', 'yr', 'P02', '::1'),
(21, 'cascas', 'acsca', 'P05', '::1'),
(22, 'acas', 'casca', 'P01', '::1'),
(23, 'acc', 'cascas', 'P03', '::1'),
(24, 'ttm', 'vsdv', 'P04', '::1'),
(25, 'acasc', 'sacsa', 'P01', '::1'),
(26, 'acsac', 'casca', 'P01', '::1'),
(27, 'qwq', 'fqfq', 'P03', '::1'),
(28, 'cascas', 'casca', 'P06', '::1'),
(29, 'acasc', 'cascasc', 'P01', '::1'),
(30, 'cascasc', 'acasc', 'P06', '::1'),
(31, 'cas', 'casca', 'P06', '::1'),
(32, 'Sandy', 'merah batang', 'P06', '::1'),
(33, 'Omen', 'Kacangnya laletan', 'P06', '::1'),
(34, 'sacasc', 'ascasca', 'P05', '::1'),
(35, 'ssaikawa', 'saka', 'P01', '::1'),
(36, 'sacasc', 'cascas', 'P05', '::1'),
(37, 'mendi', 'la', 'P04', '::1'),
(38, 'jrjr', 'rjrjt', 'P06', '::1'),
(39, 'rnrt', 'rnrt', 'P01', '::1'),
(40, 'rnrtn', 'rntr', 'P06', '::1'),
(41, 'rnrtnr', 'trnr', 'P05', '::1'),
(42, 'acacs', 'avava', 'P04', '::1'),
(43, 'avasv', 'asvasva', 'P03', '::1'),
(44, 'avav', 'avsava', 'P02', '::1'),
(45, 'vasva', 'asvasv', 'P03', '::1'),
(46, 'mma', 'sacsa', 'P03', '::1'),
(47, 'lll', 'njnj', 'P05', '::1'),
(48, 'hbhb', 'fh\r\n', 'P02', '::1'),
(49, 'ygygH', 'hh', 'P04', '::1'),
(50, 'kmkmq', 'vgg', 'P01', '::1'),
(51, 'bhbh', 'rd', 'P06', '::1'),
(52, 'sa', 'ca\r\n', 'P03', '::1'),
(53, 'CASC', 'CASC', 'P05', '::1'),
(54, 'casca', ' VA', 'P02', '::1'),
(55, 'BSBS', 'DSBSD', 'P04', '::1'),
(56, 'BBW', 'B', 'P01', '::1'),
(57, 'BEBE', 'ERBER', 'P06', '::1'),
(58, 'BRBEB', 'EBERB', 'P06', '::1'),
(59, 'olo', 'kina', 'P06', '::1'),
(60, 'daici', 'kai', 'P01', '::1'),
(61, 'budi', 'casc', 'P05', '::1'),
(62, 'saikawa', 'ttenji', 'P05', '::1'),
(63, 'maika', 'saia', 'P02', '::1'),
(64, 'cascas', 'csac', 'P03', '::1'),
(65, 'svsvsd', 'dv', 'P02', '::1'),
(66, 'acasc', 'cascas', 'P05', '::1'),
(67, 'min', 'sacsa', 'P06', '::1'),
(68, 'camsc', 'scmaksc', 'P06', '::1'),
(69, 'cascasc', 'casca', 'P02', '::1'),
(70, 'cascas', 'csaca', 'P05', '::1'),
(71, 'ascsa', 'cac', 'P06', '::1'),
(72, 'jij', 'sckam', 'P02', '::1'),
(73, 'budi', 'casc', 'P03', '::1'),
(74, 'scasc', 'cascas', 'P04', '::1'),
(75, 'sacasc', 'scacas', 'P04', '::1'),
(76, 'wwe', 'rwe', 'P01', '::1'),
(77, 'acssac', 'scaca', 'P06', '::1'),
(78, 'camskc', 'acskac', 'P02', '::1'),
(79, 'ascasc', 'cascas', 'P06', '::1'),
(80, 'qwcqcw', 'cqwcq', 'P03', '::1'),
(81, 'ascas', 'casc', 'P03', '::1'),
(82, 'ascascas', 'sacas', 'P05', '::1'),
(83, 'sacasc', 'cascas', 'P02', '::1'),
(84, 'sain', 'nsak\r\n', 'P04', '::1'),
(85, 'csac', 'asc', 'P04', '::1'),
(86, 'vvs', 'vds', 'P01', '::1'),
(87, 'cascasc', 'casc', 'P06', '::1'),
(88, 'asc', 'casc', 'P03', '::1'),
(89, 'jim', 'jim', 'P01', '::1'),
(90, 'jim', 'jim', 'P05', '::1'),
(91, 'budi', 'ascsa', 'P05', '::1'),
(92, 'budi', 'ascsa', 'P05', '::1'),
(93, 'budi', 'ascsa', 'P05', '::1'),
(94, 'budi', 'ascsa', 'P05', '::1'),
(95, 'ascasc', 'casca', 'P05', '::1'),
(96, 'ascasc', 'casca', 'P05', '::1'),
(97, 'sacas', 'casc', 'P05', '::1'),
(98, 'ascascas', 'casc', 'P05', '::1'),
(99, 'ascascas', 'casc', 'P05', '::1'),
(100, 'acasc', 'sacasc', 'P05', '::1'),
(101, 'acasc', 'sacasc', 'P05', '::1'),
(102, 'ascasc', 'sacas', 'P01', '::1'),
(103, 'CASC', 'sca', 'P01', '::1'),
(104, 'cascas', 'casc', 'P01', '::1'),
(105, 'casc', 'cas', 'P01', '::1'),
(106, 'budi', 'casc', 'P01', '::1'),
(107, 'budi', 'casc', 'P01', '::1'),
(108, 'ascsac', 'casca', 'P05', '::1'),
(109, 'ascsac', 'casca', 'P05', '::1'),
(110, 'cascascas', 'casc', 'P05', '::1'),
(111, 'ascsac', 'cascas', 'P06', '::1'),
(112, 'ascsac', 'cascas', 'P06', '::1'),
(113, 'cascasc', 'ascasc', 'P06', '::1'),
(114, 'cascasc', 'ascasc', 'P06', '::1'),
(115, 'ascacs', 'ascasc', 'P03', '::1'),
(116, 'ascacs', 'ascasc', 'P03', '::1'),
(117, 'cascascas', 'asca', 'P03', '::1'),
(118, 'cascascas', 'asca', 'P03', '::1'),
(119, 'cascascasc', 'ascas', 'P05', '::1'),
(120, 'cascascasc', 'ascas', 'P05', '::1'),
(121, 'hermin', 'sanasssa', 'P05', '::1'),
(122, 'hermin', 'sanasssa', 'P05', '::1'),
(123, 'juslim', 'abun', 'P05', '::1'),
(124, 'juslim', 'abun', 'P05', '::1'),
(125, 'cascasc', 'acsaca', 'P05', '::1'),
(126, 'ascsac', 'sacsac', 'P05', '::1'),
(127, 'ascsac', 'sacsac', 'P05', '::1'),
(128, 'cascascas', 'cascasc', 'P06', '::1'),
(129, 'cascascas', 'cascasc', 'P06', '::1'),
(130, 'bili', 'an', 'P06', '::1'),
(131, 'bili', 'an', 'P06', '::1'),
(132, 'budi', 'sacas', 'P06', '::1'),
(133, 'budi', 'sacas', 'P06', '::1'),
(134, 'ascascasc', 'ascas', 'P06', '::1'),
(135, 'ascascasc', 'ascas', 'P06', '::1'),
(136, 'cascasc', 'casca', 'P06', '::1'),
(137, 'cascasc', 'casca', 'P06', '::1'),
(138, 'cascas', 'casca', 'P06', '::1'),
(139, 'cascas', 'casca', 'P06', '::1'),
(140, 'kiki', 'kino', 'P06', '::1'),
(141, 'kiki', 'kino', 'P06', '::1'),
(142, 'koki', 'oki', 'P06', '::1'),
(143, 'koki', 'oki', 'P06', '::1'),
(144, 'momi', 'momo', 'P05', '::1'),
(145, 'momi', 'momo', 'P05', '::1'),
(146, 'acsa', 'ascas', 'P03', '::1'),
(147, 'acas', 'casc', 'P03', '::1'),
(148, 'acas', 'casc', 'P03', '::1'),
(149, 'cascasc', 'scas', 'P03', '::1'),
(150, 'cascasc', 'scas', 'P03', '::1'),
(151, 'beki', 'bolong', 'P01', '::1'),
(152, 'beki', 'bolong', 'P01', '::1'),
(153, 'ascsa', 'csacsa', 'P03', '::1'),
(154, 'ascsa', 'csacsa', 'P03', '::1'),
(155, 'ascas', 'casca', 'P03', '::1'),
(156, 'ascas', 'casca', 'P03', '::1'),
(157, 'sacsac', 'csac', 'P03', '::1'),
(158, 'sacsac', 'csac', 'P03', '::1'),
(159, 'jim', 'scac', 'P05', '::1'),
(160, 'jim', 'scac', 'P05', '::1'),
(161, 'mena', 'sas\r\n', 'P03', '::1'),
(162, 'mena', 'sas\r\n', 'P03', '::1'),
(163, 'casc', 'ascsa', 'P03', '::1'),
(164, 'casc', 'ascas', 'P05', '::1'),
(165, 'casc', 'ascas', 'P05', '::1'),
(166, 'ascasc', 'asc', 'P04', '::1'),
(167, 'ascasc', 'asc', 'P04', '::1'),
(168, 'herman', 'kacang merah', 'P05', '::1'),
(169, 'herman', 'kacang merah', 'P05', '::1'),
(170, 'budi', 'kacang merah bata', 'P05', '::1'),
(171, 'budi', 'kacang merah bata', 'P05', '::1'),
(172, 'a', 'aa', 'P03', '::1'),
(173, 'a', 'aa', 'P03', '::1'),
(174, 'a', 'a', 'P05', '::1'),
(175, 'a', 'a', 'P05', '::1'),
(176, 'a', 's', 'P04', '::1'),
(177, 'a', 's', 'P04', '::1'),
(178, 'a', 's', 'P04', '::1'),
(179, 'a', 's', 'P04', '::1'),
(180, 'a', 's', 'P04', '::1'),
(181, 's', 's', 'P03', '::1'),
(182, 's', 's', 'P03', '::1'),
(183, 'a', 'a', 'P03', '::1'),
(184, 'a', 'a', 'P03', '::1'),
(185, 'aa', 'a', 'P04', '::1'),
(186, 'aa', 'a', 'P04', '::1'),
(187, 's', 's', 'P04', '::1'),
(188, 's', 's', 'P04', '::1'),
(189, 'a', 'a', 'P01', '::1'),
(190, 'a', 'a', 'P01', '::1'),
(191, 'a', 'a', 'P02', '::1'),
(192, 'a', 'a', 'P02', '::1'),
(193, 's', 's', 'P05', '::1'),
(194, 's', 's', 'P05', '::1'),
(195, 'parto', 'rembun', 'P02', '::1'),
(196, 'parto', 'rembun', 'P02', '::1'),
(197, 'parto', 'rembun', 'P04', '::1'),
(198, 'parto', 'rembun', 'P04', '::1'),
(199, 'rois', 'ganjar', 'P02', '::1'),
(200, 'rois', 'ganjar', 'P02', '::1'),
(201, 'rois', 'ganjar', 'P02', '::1'),
(202, 'rois', 'ganjar', 'P02', '::1'),
(203, 'a', 'a', 'P02', '::1'),
(204, 'a', 'a', 'P02', '::1'),
(205, 'a', 'a', 'P02', '::1'),
(206, 'a', 'a', 'P02', '::1'),
(207, 'f', 'ff', 'P03', '::1'),
(208, 'f', 'ff', 'P03', '::1'),
(209, 'e', 'e', 'P02', '::1'),
(210, 'e', 'e', 'P02', '::1'),
(211, 'ass', 's', 'P02', '::1'),
(212, 'ass', 's', 'P02', '::1'),
(213, 'a', 'a', 'P02', '::1'),
(214, 'a', 'a', 'P02', '::1'),
(215, 'aa', 'c', 'P01', '::1'),
(216, 'aa', 'c', 'P01', '::1'),
(217, 'g', 'g', 'P05', '::1'),
(218, 'g', 'g', 'P05', '::1'),
(219, 'a', 'a', 'P01', '::1'),
(220, 'a', 'a', 'P01', '::1'),
(221, 'x', 'x', 'P02', '::1'),
(222, 'x', 'x', 'P02', '::1'),
(223, 's', 's', 'P01', '::1'),
(224, 'd', 'd', 'P01', '::1'),
(225, 'd', 'd', 'P01', '::1'),
(226, 'd', 'd', 'P01', '::1'),
(227, 's', 's', 'P01', '::1'),
(228, 's', 's', 'P03', '::1'),
(229, 's', 's', 'P02', '::1'),
(230, 's', 's', 'P02', '::1'),
(231, '2', '2', 'P01', '::1'),
(232, '2', 'w', 'P03', '::1'),
(233, 'w', 'w', 'P03', '::1'),
(234, 'w', 'w', 'P04', '::1'),
(235, '4', '4', 'P01', '::1'),
(236, 'g', 't', 'P02', '::1'),
(237, 'i', 'i', 'P02', '::1'),
(238, 'i', 'i', 'P05', '::1'),
(239, 'i', 'i', 'P05', '::1'),
(240, 'd', 'd', 'P01', '::1'),
(241, 'd', 'd', 'P05', '::1'),
(242, 's', 's', 'P03', '::1'),
(243, 'a', 'a', 'P02', '::1'),
(244, 's', 's', 'P02', '::1'),
(245, 's', 's', 'P02', '::1'),
(246, 's', 's', 'P02', '::1'),
(247, 'sd', 's', 'P01', '::1'),
(248, 's', 's', 'P02', '::1'),
(249, 's', 's', 'P02', '::1'),
(250, 'c', 'c', 'P01', '::1'),
(251, 'a', 'a', 'P01', '::1'),
(252, 'a', 'a', 'P01', '::1'),
(253, 's', 's', 'P01', '::1'),
(254, 's', 's', 'P01', '::1'),
(255, 's', 's', 'P01', '::1'),
(256, 's', 's', 'P01', '::1'),
(257, 'a', 'a', 'P01', '::1'),
(258, 'a', 'a', 'P01', '::1'),
(259, 's', 's', 'P02', '::1'),
(260, 's', 's', 'P02', '::1'),
(261, 's', 's', 'P01', '::1'),
(262, 's', 's', 'P01', '::1'),
(263, 's', 's', 'P01', '::1'),
(264, 's', 's', 'P01', '::1'),
(265, 's', 's', 'P03', '::1'),
(266, 's', 's', 'P01', '::1'),
(267, 's', 's', 'P01', '::1'),
(268, 's', 's', 'P02', '::1'),
(269, 's', 's', 'P02', '::1'),
(270, 's', 's', 'P03', '::1'),
(271, 's', 's', 'P03', '::1'),
(272, 's', 's', 'P01', '::1'),
(273, 's', 's', 'P01', '::1'),
(274, 's', 's', 'P01', '::1'),
(275, 's', 's', 'P01', '::1'),
(276, 'd', 'd', 'P02', '::1'),
(277, 'd', 'd', 'P02', '::1'),
(278, 'd', 'd', 'P03', '::1'),
(279, 'd', 'd', 'P03', '::1'),
(280, 'd', 'd', 'P03', '::1'),
(281, 'd', 'd', 'P03', '::1'),
(282, 'd', 'd', 'P05', '::1'),
(283, 'd', 'd', 'P05', '::1'),
(284, 'd', 'd', 'P03', '::1'),
(285, 'd', 'd', 'P03', '::1'),
(286, 'd', 'd', 'P02', '::1'),
(287, 'd', 'd', 'P02', '::1'),
(288, 's', 's', 'P01', '::1'),
(289, 's', 's', 'P03', '::1'),
(290, 's', 's', 'P03', '::1'),
(291, 'w', 'w', 'P02', '::1'),
(292, 'kk', 'kk', 'P01', '::1'),
(293, 'u', 'u', 'P05', '::1'),
(294, '0', '0', 'P01', '::1'),
(295, '0', '0', 'P01', '::1'),
(296, '0', '0', 'P02', '::1'),
(297, '0', '0', 'P02', '::1'),
(298, 'w', 'w', 'P02', '::1'),
(299, 'w', 'w', 'P02', '::1'),
(300, 'aee', 'qee', 'P01', '::1'),
(301, 'aee', 'qee', 'P01', '::1'),
(302, 'f', 'ff', 'P01', '::1'),
(303, 'ee', 'eee', 'P01', '::1'),
(304, 'sdsdsd', 'sdsdsd', 'P01', '::1'),
(305, 'sdsdsd', 'sdsdsd', 'P01', '::1'),
(306, 'sdsd', 'sddd', 'P01', '::1'),
(307, 'sdsd', 'sddd', '', '::1'),
(308, 'f', 'f', 'P01', '::1'),
(309, 'f', 'f', 'P01', '::1'),
(310, 'e', 'e', 'P01', '::1'),
(311, 'e', 'e', 'P01', '::1'),
(312, 'e', 'e', 'P01', '::1'),
(313, 'e', 'e', 'P01', '::1'),
(314, 'e', 'ee', 'P02', '::1'),
(315, 'e', 'ee', 'P02', '::1'),
(316, 'fdd', 'fdf', 'P02', '::1'),
(317, 'w', 'w', 'P02', '::1'),
(318, 'w', 'w', 'P02', '::1'),
(319, 'dsd', 'sd', 'P02', '::1'),
(320, 'dsd', 'sd', 'P02', '::1'),
(321, 'sd', 'aa', 'P02', '::1'),
(322, 'sd', 'aa', 'P02', '::1'),
(323, 'ds', 'aa', 'P03', '::1'),
(324, 'ds', 'aa', 'P03', '::1'),
(325, 'f', 'f', 'P01', '::1'),
(326, 'd', 'd', 'P01', '::1'),
(327, 'ww', 'ww', 'P05', '::1'),
(328, 'www', 'wwww', 'P02', '::1'),
(329, 'ss', 'sss', 'P01', '::1'),
(330, 'cc', 'w', 'P01', '::1'),
(331, 's', 's', 'P01', '::1'),
(332, 'w', 'q', 'P04', '::1'),
(333, 'h', 'h', 'P01', '::1'),
(334, 'ss', 'ss', 'P02', '::1'),
(335, 'j', 'k', 'P01', '::1'),
(336, 'xx', 'ss', 'P02', '::1'),
(337, 'f', 'f', 'P01', '::1'),
(338, 'dd', 'ddd', 'P01', '::1'),
(339, 'aaa', 'aaa', 'P05', '::1'),
(340, 'c', 'c', 'P01', '::1'),
(341, 'c', 'c', 'P02', '::1'),
(342, 'rr', 'rr', 'P01', '::1'),
(343, 'ss', 'ss', 'P02', '::1'),
(344, 'aa', 'aaa', 'P02', '::1'),
(345, 'sssss', 'ss', 'P02', '::1'),
(346, 'sssss', 'ss', 'P02', '::1'),
(347, 'ss', 'rrrrrrrr', 'P01', '::1'),
(348, 'ss', 'rrrrrrrr', 'P01', '::1'),
(349, 'ddd', 'ddd', 'P02', '::1'),
(350, 'ddd', 'ddd', 'P02', '::1'),
(351, 'ddd', 'dddddddddd', 'P05', '::1'),
(352, 'ddd', 'dddddddddd', 'P05', '::1'),
(353, 'h', 'hh', 'P02', '::1'),
(354, 'h', 'hh', 'P02', '::1'),
(355, 'h', 'h', 'P05', '::1'),
(356, 'h', 'h', 'P05', '::1'),
(357, 'h', 'h', 'P05', '::1'),
(358, 'h', 'h', 'P05', '::1'),
(359, 'at', 't', 'P01', '::1'),
(360, 'at', 't', 'P01', '::1'),
(361, '7', '7', 'P03', '::1'),
(362, '7', '7', 'P03', '::1'),
(363, 'u', 'u', 'P03', '::1'),
(364, 'u', 'u', 'P03', '::1'),
(365, 'ccc', 'ccc', 'P01', '::1'),
(366, 'lll', 'llllll', 'P03', '::1'),
(367, 'lll', 'llllll', 'P03', '::1'),
(368, 'aaaaaaaaaa', 'aaaaaaaaaaaaa', 'P03', '::1'),
(369, 'aaaaaaaaaa', 'aaaaaaaaaaaaa', 'P03', '::1'),
(370, 'ddddddddd', 'ddddddddd', 'P02', '::1'),
(371, 'ddddddddd', 'ddddddddd', 'P02', '::1'),
(372, 'rrrrrr', 'rrrrrrrrr', 'P01', '::1'),
(373, 'rrrrrr', 'rrrrrrrrr', 'P01', '::1'),
(374, 'eeeeee', 'eeeeee', 'P02', '::1'),
(375, 'eeeeee', 'eeeeee', 'P02', '::1'),
(376, 'eeeeee', 'eeeeeeee', 'P03', '::1'),
(377, 'eeeeee', 'eeeeeeee', 'P03', '::1'),
(378, '444444', '4444444444', 'P03', '::1'),
(379, '444444', '4444444444', 'P03', '::1'),
(380, 'rrrrr', 'rrrr', 'P03', '::1'),
(381, 'rrrrr', 'rrrr', 'P03', '::1'),
(382, 'ddd', 'ddddddd', 'P01', '::1'),
(383, 'dddddddddddddd', 'ddddddddddddddddddd', 'P01', '::1'),
(384, 'dddddddddddddddddddddd', 'ddddddddddddddddddddd', 'P01', '::1'),
(385, 'dddddddddddddddddddddd', 'ddddddddddddddddddddd', 'P01', '::1'),
(386, 'eeeeeeee', 'eeeeeeeeeee', 'P01', '::1'),
(387, 'eeeeeeee', 'eeeeeeeeeee', 'P01', '::1'),
(388, 'sssss', 'ssss', 'P01', '::1'),
(389, 'sssss', 'ssss', 'P01', '::1'),
(390, 'e', 'e', 'P01', '::1'),
(391, 'qqqqqqqqq', 'qqqqqqqqqqqq', 'P01', '::1'),
(392, 'qqqqqqqqq', 'qqqqqqqqqqqq', 'P01', '::1'),
(393, 'eeee', 'eee', 'P03', '::1'),
(394, 'eeee', 'eee', 'P03', '::1'),
(395, '12', '2', 'P01', '::1'),
(396, '2222222', '222222222', 'P01', '::1'),
(397, '2222222', '222222222', 'P01', '::1'),
(398, 'rrrrrr', 'rrrrrrrrr', 'P01', '::1'),
(399, 'rrrrrr', 'rrrrrrrrr', 'P01', '::1'),
(400, 'ss', 'ssss', 'P01', '::1'),
(401, 'ss', 'ssss', 'P01', '::1'),
(402, 'd', 'd', 'P03', '::1'),
(403, 'd', 'd', 'P03', '::1'),
(404, 's', 's', 'P01', '::1'),
(405, 's', 's', 'P01', '::1'),
(406, 's', 's', 'P03', '::1'),
(407, 's', 's', 'P03', '::1'),
(408, 'sssssss', 'ssssssss', 'P04', '::1'),
(409, 'sssssss', 'ssssssss', 'P04', '::1'),
(410, 'ssssss', 'sssssss', 'P05', '::1'),
(411, 'ssssss', 'sssssss', 'P05', '::1'),
(412, '111', '2222', 'P01', '::1'),
(413, '111', '2222', 'P01', '::1'),
(414, '4', 'r', 'P02', '::1'),
(415, '4', 'r', 'P02', '::1'),
(416, 'Dendik', 'Saptorenggo', 'P01', '::1'),
(417, 'Dendik 24', 'Saptorenggo', 'P01', '::1'),
(418, 'Dendik 24', 'Saptorenggo', 'P01', '::1'),
(419, 'Dendik 2424', 'Bandara', 'P04', '::1'),
(420, 'Dendik 2424', 'Bandara', 'P04', '::1'),
(421, 'Dendik 242413', 'alamat aja pokok', 'P02', '::1'),
(422, 'Dendik 242413', 'alamat aja pokok', 'P02', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` char(3) NOT NULL,
  `nama_penyakit` varchar(30) NOT NULL,
  `info_penyakit` text NOT NULL,
  `penanganan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `obat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_penyakit`, `info_penyakit`, `penanganan`, `gambar`, `obat`) VALUES
('P01', 'Layu Fusarium', 'Daun yang terserang mengalami kelayuan, menguning dan menjalar ke atas ke ranting muda. Bila infeksi berkembang tanaman menjadi layu. Warna jaringan akar dan batang menjadi coklat. Bila serangan terjadi pada saat pertumbuhan tanaman maksimum, maka tanaman masih dapat menghasilkan buah. Namun bila serangan sudah sampai pada batang, maka buah kecil akan gugur.', 'Cabut tanaman yang terserang lalu segera bakar, Pencegahannya dapat dilakukan dengan menjaga drainase agar tetap baik dan mengatur jarak tanam', 'fusarium.jpg', 'amistartop.jpg'),
('P02', 'Layu Bakteri Ralstonia', 'Pada tanaman tua, layu pertama biasanya terjadi pada daun yang terletak pada bagian bawah tanaman. Pada tanaman muda, gejala layu mulai tampak pada daun bagian atas tanaman. Setelah beberapa hari gejala layu diikuti oleh layu yang tiba-tiba dan seluruh daun tanaman menjadi layu permanen, sedangkan warna daun tidak berubah. Jaringan vaskuler dari batang bagian bawah dan akar menjadi kecoklatan. Bila batang atau akar dipotong melintang dan dicelupkan ke dalam air yang jernih, maka akan keluar cairan keruh koloni bakteri yang melayang dalam air menyerupai kepulan asap. \r\nPenyakit berkembang dengan cepat pada musim hujan. Penyakit ini disebabkan oleh Pseudomonas solanacearum, bakteri ini ditularkan melalui tanah, benih, bibit, sisa-sisa tanaman, pengairan, nematoda atau alat-alat pertanian. Selain itu, bakteri ini mampu bertahan selama bertahun-tahun di dalam tanah dalam keadaan tidak aktif. Penyakit ini cepat meluas terutama di tanah dataran rendah.\r\n', 'Pengendaliannya dengan pemilihan benih yang baik dan pengiliran tanaman. Pengendalian dengan cara penyemprotan fungisida kontak.', 'bakteri.jpg', 'agrept.jpeg'),
('P03', 'Virus Kuning', 'Helai daun mengalami vein clearing dimulai dari daun pucuk berkembang menjadi warna kuning jelas, tulang daun menebal dan daun menggulung ke atas. Infeksi lanjut dari gemini virus menyebabkan daun mengecil dan berwarna kuning terang, tanaman kerdil dan tidak berbuah.\r\nKeberadaan penyakit ini sangat merugikan karena mampu mempengaruhi produksi buah. Selain cabai virus ini juga mampu menyerang tanaman tomat, buncis, gula bit, babadotan, atau tanaman pertanian yang lain. Penyakit ini disebabkan oleh virus gemini dengan diameter partikel isometri berukuran 18–22 nm. Virus gemini mempunyai genome sirkular DNA tunggal. Virus dapat ditularkan melalui penyambungan dan melalui vektor Bemisia Tabaci.\r\n', 'Pengendaliannya dengan cara memusnahkan tanaman yang terserang dan menggunakan benih yang tahan terhadap serangan patogen. Dapat pula dengan cara menyiramkan larutan fungisida, misalnya Benhate dengan dosis 2 g/l air ke tanah bekas tanaman yang sakit.', 'virus.jpg', 'demolish.jpg'),
('P04', 'Bercak Daun', 'Penyakit ini menimbulkan kerusakan pada daun, batang dan akar. Gejala serangan penyakit ini mulai terlihat dari munculnya bercak bulat berwarna coklat pada daun, ukuran bercak bisa mencapai sekitar 1 inci. Pusat bercak berwarna pucat putih dengan warna tepi lebih tua. Bercak yang tua dapat menyebabkan lubang-lubang.Bercak daun mampu menimbulkan kerugian ekonomi yang besar pada budidaya cabai, daun yang terserang akan layu dan rontok. Penyakit bercak daun ini dapat menyerang tanaman muda di persemaian, dan cenderung lebih banyak menyerang tanaman tua. Serangan berat meyebabkan tanaman cabai kehilangan hampir semua daunnya, kondisi ini akan mempengaruhi kemampuan cabai dalam menghasilkan buah.\r\nKondisi lingkungan yang selalu hujan mendukung perkembangan dan penyebaran penyakit bercak daun. Pada musim kemarau dan pada lahan yang mempunyai drainase baik, penyakit layu kurang berkembang.', 'Pemberian fungisida yang efektif dan tepat untuk penyakit ini. Fungisida yang bisa digunakan adalah Score 250 EC dan Anvil 50 SC. pencegahannya dengan melakukan sanitasi lingkungan dan kontrol saluran drainase.', 'bercak.jpg', 'bendas.jpeg'),
('P05', 'Busuk Buah Antraknosa', 'Gejala awal penyakit ini ditandai dengan munculnya bercak yang agak mengkilap, berwarna hitam, orange dan coklat. Warna hitam merupakan struktur dari cendawan (mikro skelerotia dan aservulus), apabila kondisi lingkungan lembab tubuh buah akan berwarna orange atau merah muda. Luka yang ditimbulkan akan semakin melebar dan membentuk sebuah lingkaran konsentris dengan ukuran diameter sekitar 30 mm atau lebih. Dalam waktu yang tidak lama buah akan berubah menjadi coklat kehitaman dan membusuk, ledakan penyakit ini sangat cepat pada musim hujan. Serangan yang berat menyebabkan seluruh buah keriput dan mengering. Warna kulit buah seperti jerami padi.\r\nPenyakit ini menyerang bagian buah cabai, baik buah yang masih muda maupun yang sudah masak. Cendawan ini termasuk salah satu patogen yang terbawa oleh benih. Penyebaran penyakit ini terjadi melalui percikan air, baik air hujan maupun alat semprot. Suhu optimum bagi perkembangan cendawan ini berkisar antara 20–24° C.\r\n', 'Membuat jarak tanam yang lebih renggang dan tidak menanam tanaman kacang-kacangan secara berulang. Apabila serangan mulai tinggi bisa dikendalikan menggunakan fungisida yang berbahan aktif propineb, dithiocarbamate dan mankozeb', 'antrak.jpg', 'dhitane.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rules_penyakit`
--

CREATE TABLE `rules_penyakit` (
  `id_rules` int(9) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `id_gejala` char(3) NOT NULL,
  `keyakinan` float DEFAULT NULL,
  `ketidakyakinan` float DEFAULT NULL,
  `CB` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rules_penyakit`
--

INSERT INTO `rules_penyakit` (`id_rules`, `id_penyakit`, `id_gejala`, `keyakinan`, `ketidakyakinan`, `CB`) VALUES
(72, 'P01', 'G01', NULL, NULL, NULL),
(73, 'P01', 'G05', NULL, NULL, NULL),
(74, 'P01', 'G06', NULL, NULL, NULL),
(82, 'P03', 'G07', NULL, NULL, NULL),
(83, 'P03', 'G08', NULL, NULL, NULL),
(84, 'P03', 'G09', NULL, NULL, NULL),
(89, 'P02', 'G02', NULL, NULL, NULL),
(90, 'P02', 'G03', NULL, NULL, NULL),
(91, 'P02', 'G04', NULL, NULL, NULL),
(92, 'P04', 'G10', NULL, NULL, NULL),
(93, 'P04', 'G11', NULL, NULL, NULL),
(94, 'P05', 'G12', NULL, NULL, NULL),
(95, 'P05', 'G13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `id_gejala` char(3) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `noID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_analisa`
--

INSERT INTO `tmp_analisa` (`id_gejala`, `id_penyakit`, `noID`) VALUES
('G02', 'P02', '::1'),
('G03', 'P02', '::1'),
('G04', 'P02', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_cb`
--

CREATE TABLE `tmp_cb` (
  `id_gejala` char(3) NOT NULL,
  `noID` char(30) NOT NULL,
  `ket` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_cb`
--

INSERT INTO `tmp_cb` (`id_gejala`, `noID`, `ket`) VALUES
('G01', '::1', 'n'),
('G02', '::1', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `id_gejala` char(3) NOT NULL,
  `noID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `id_penyakit` char(3) NOT NULL,
  `noID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`id_penyakit`, `noID`) VALUES
('P02', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_petani`
--

CREATE TABLE `tmp_petani` (
  `id_petani` int(9) NOT NULL,
  `nama_petani` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `noID` char(30) NOT NULL,
  `ctr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_petani`
--

INSERT INTO `tmp_petani` (`id_petani`, `nama_petani`, `alamat`, `noID`, `ctr`) VALUES
(100, 'hermin', 'sanasssa', '::1', 1),
(101, 'juslim', 'abun', '::1', 2),
(102, 'cascasc', 'acsaca', '::1', 2),
(103, 'ascsac', 'sacsac', '::1', 2),
(104, 'cascascas', 'cascasc', '::1', 2),
(105, 'bili', 'an', '::1', 1),
(106, 'budi', 'sacas', '::1', 2),
(107, 'ascascasc', 'ascas', '::1', 2),
(108, 'cascasc', 'casca', '::1', 2),
(109, 'cascas', 'casca', '::1', 1),
(110, 'kiki', 'kino', '::1', 2),
(111, 'koki', 'oki', '::1', 2),
(112, 'momi', 'momo', '::1', 2),
(113, 'acsa', 'ascas', '::1', 1),
(114, 'acas', 'casc', '::1', 2),
(115, 'cascasc', 'scas', '::1', 1),
(116, 'beki', 'bolong', '::1', 2),
(117, 'ascsa', 'csacsa', '::1', 2),
(118, 'ascas', 'casca', '::1', 1),
(119, 'sacsac', 'csac', '::1', 1),
(120, 'jim', 'scac', '::1', 2),
(121, 'mena', 'sas\r\n', '::1', 2),
(122, 'casc', 'ascsa', '::1', 1),
(123, 'casc', 'ascas', '::1', 2),
(124, 'ascasc', 'asc', '::1', 2),
(125, 'herman', 'kacang merah', '::1', 2),
(126, 'budi', 'kacang merah bata', '::1', 1),
(127, 'a', 'aa', '::1', 1),
(128, 'a', 'a', '::1', 2),
(129, 'a', 'a', '::1', 1),
(130, 'a', 's', '::1', 2),
(131, 's', 's', '::1', 1),
(132, 'a', 'a', '::1', 1),
(133, 'v', 'v', '::1', 1),
(134, 'aa', 'a', '::1', 2),
(135, 'aa', 'a', '::1', 1),
(136, 's', 's', '::1', 2),
(137, 's', 's', '::1', 1),
(138, 'a', 'a', '::1', 1),
(139, 'a', 'a', '::1', 1),
(140, 's', 's', '::1', 2),
(141, 'parto', 'rembun\r\n', '::1', 1),
(142, 'parto', 'rembun', '::1', 1),
(143, 'parto', 'rembun', '::1', 1),
(144, 'rois', 'ganjar', '::1', 2),
(145, 'a', 'a', '::1', 2),
(146, 'a', 'a', '::1', 2),
(147, 'f', 'ff', '::1', 1),
(148, 'e', 'e', '::1', 1),
(149, 'ass', 's', '::1', 1),
(150, 'a', 'a', '::1', 2),
(151, 'aa', 'c', '::1', 2),
(152, 'g', 'g', '::1', 2),
(153, 'a', 'a', '::1', 1),
(154, 'x', 'x', '::1', 1),
(155, 'a', 'a', '::1', 1),
(156, 'f', 'f', '::1', 1),
(157, 'a', 'a', '::1', 1),
(158, 's', 's', '::1', 1),
(159, 'd', 'd', '::1', 1),
(160, 'd', 'd', '::1', 1),
(161, 'd', 'd', '::1', 1),
(162, 's', 's', '::1', 1),
(163, 'k', 'k', '::1', 1),
(164, 's', 's', '::1', 1),
(165, 's', 's', '::1', 1),
(166, 's', 's', '::1', 1),
(167, '2', '2', '::1', 1),
(168, '2', 'w', '::1', 1),
(169, 'w', 'w', '::1', 1),
(170, 'w', 'w', '::1', 1),
(171, '4', '4', '::1', 1),
(172, 'g', 't', '::1', 1),
(173, 'i', 'i', '::1', 1),
(174, 'i', 'i', '::1', 1),
(175, 'i', 'i', '::1', 1),
(176, 'f', 'f', '::1', 1),
(177, 'd', 'd', '::1', 1),
(178, 'd', 'd', '::1', 1),
(179, 's', 's', '::1', 1),
(180, 'a', 'a', '::1', 1),
(181, 's', 's', '::1', 2),
(182, 's', 's', '::1', 1),
(183, 'sd', 's', '::1', 1),
(184, 's', 's', '::1', 1),
(185, 'c', 'c', '::1', 1),
(186, 'a', 'a', '::1', 1),
(187, 's', 's', '::1', 1),
(188, 's', 's', '::1', 1),
(189, 'a', 'a', '::1', 1),
(190, 's', 's', '::1', 1),
(191, 's', 's', '::1', 1),
(192, 's', 's', '::1', 1),
(193, 's', 's', '::1', 1),
(194, 's', 's', '::1', 1),
(195, 's', 's', '::1', 1),
(196, 's', 's', '::1', 1),
(197, 's', 's', '::1', 1),
(198, 's', 's', '::1', 1),
(199, 'd', 'd', '::1', 1),
(200, 'd', 'd', '::1', 1),
(201, 'd', 'd', '::1', 1),
(202, 'd', 'd', '::1', 1),
(203, 'd', 'd', '::1', 1),
(204, 'd', 'd', '::1', 1),
(205, 's', 's', '::1', 1),
(206, 's', 's', '::1', 1),
(207, 's', 's', '::1', 1),
(208, 'w', 'w', '::1', 1),
(209, 'kk', 'kk', '::1', 1),
(210, 'u', 'u', '::1', 1),
(211, '0', '0', '::1', 1),
(212, '0', '0', '::1', 1),
(213, 'w', 'w', '::1', 1),
(214, 'aee', 'qee', '::1', 2),
(215, 'f', 'ff', '::1', 1),
(216, 'ee', 'eee', '::1', 1),
(217, 'sdsdsd', 'sdsdsd', '::1', 1),
(218, 'sdsd', 'sddd', '::1', 1),
(219, 'f', 'f', '::1', 2),
(220, 'e', 'e', '::1', 2),
(221, 'e', 'e', '::1', 2),
(222, 'e', 'ee', '::1', 2),
(223, 'fdd', 'fdf', '::1', 1),
(224, 'w', 'w', '::1', 1),
(225, 'dsd', 'sd', '::1', 2),
(226, 'sd', 'aa', '::1', 1),
(227, 'ds', 'aa', '::1', 1),
(228, 'f', 'f', '::1', 1),
(229, 'd', 'd', '::1', 1),
(230, 'd', 'd', '::1', 1),
(231, 'd', 'd', '::1', 1),
(232, 'ww', 'ww', '::1', 1),
(233, 'www', 'wwww', '::1', 1),
(234, 'sss', 'sss', '::1', 1),
(235, 'ss', 'sss', '::1', 1),
(236, 'cc', 'w', '::1', 1),
(237, 's', 's', '::1', 1),
(238, 'w', 'q', '::1', 1),
(239, 'h', 'h', '::1', 1),
(240, 'ss', 'ss', '::1', 1),
(241, 'j', 'k', '::1', 1),
(242, 'xx', 'ss', '::1', 1),
(243, 'f', 'f', '::1', 1),
(244, 'dd', 'ddd', '::1', 1),
(245, 'aaa', 'aaa', '::1', 1),
(246, 'c', 'c', '::1', 1),
(247, 'c', 'c', '::1', 1),
(248, 'rr', 'rr', '::1', 1),
(249, 'ss', 'ss', '::1', 1),
(250, 'aa', 'aaa', '::1', 1),
(251, 'sssss', 'ss', '::1', 2),
(252, 'ss', 'rrrrrrrr', '::1', 1),
(253, 'ddd', 'ddd', '::1', 1),
(254, 'ddd', 'dddddddddd', '::1', 2),
(255, 'h', 'hh', '::1', 2),
(256, 'h', 'h', '::1', 2),
(257, 'h', 'h', '::1', 2),
(258, 'at', 't', '::1', 2),
(259, 'r', 'r', '::1', 1),
(260, 'b', 'b', '::1', 1),
(261, 'j', 'j', '::1', 1),
(262, 'oo', 'oo', '::1', 1),
(263, '7', '7', '::1', 2),
(264, 'u', 'u', '::1', 1),
(265, 'nn', 'nn', '::1', 1),
(266, 'u', 'u', '::1', 1),
(267, 'uu', 'uu', '::1', 1),
(268, 'ccc', 'ccc', '::1', 1),
(269, 'ssss', 'ssss', '::1', 1),
(270, 'lll', 'llllll', '::1', 2),
(271, 'ii', 'iii', '::1', 1),
(272, 'aaaaaaaaaa', 'aaaaaaaaaaaaa', '::1', 1),
(273, 'ddddddddd', 'ddddddddd', '::1', 1),
(274, 'ddddddddd', 'ddddddddd', '::1', 1),
(275, 'dd', 'dddd', '::1', 1),
(276, 'rrrrrr', 'rrrrrrrrr', '::1', 1),
(277, 'eeeeee', 'eeeeee', '::1', 1),
(278, 'eeeeee', 'eeeeeeee', '::1', 2),
(279, 'eeeeeeee', 'eeeeeeeeee', '::1', 1),
(280, '444444', '4444444444', '::1', 2),
(281, 'rrrrr', 'rrrr', '::1', 2),
(282, 'ddd', 'ddddddd', '::1', 1),
(283, 'dddddddddddddd', 'ddddddddddddddddddd', '::1', 1),
(284, 'dddddddddddddddddddddd', 'ddddddddddddddddddddd', '::1', 2),
(285, 'eeeeeeee', 'eeeeeeeeeee', '::1', 1),
(286, 'sssss', 'ssss', '::1', 2),
(287, 'e', 'e', '::1', 1),
(288, 'qqqqqqqqq', 'qqqqqqqqqqqq', '::1', 2),
(289, 'eeee', 'eee', '::1', 2),
(290, '12', '2', '::1', 1),
(291, '2222222', '222222222', '::1', 2),
(292, 'rrrrrr', 'rrrrrrrrr', '::1', 2),
(293, 'ss', 'ssss', '::1', 1),
(294, 'd', 'd', '::1', 1),
(295, 's', 's', '::1', 2),
(296, 's', 's', '::1', 2),
(297, 'sssssss', 'ssssssss', '::1', 1),
(298, 'ssssss', 'sssssss', '::1', 1),
(299, '111', '2222', '::1', 2),
(300, '4', 'r', '::1', 2),
(301, 'Dendik', 'Saptorenggo', '::1', 1),
(302, 'Dendik 24', 'Saptorenggo', '::1', 2),
(303, 'Dendik 2424', 'Bandara', '::1', 1),
(304, 'Dendik 242413', 'alamat aja pokok', '::1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` char(3) CHARACTER SET latin1 NOT NULL,
  `nama_toko` varchar(100) CHARACTER SET latin1 NOT NULL,
  `alamat_toko` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `gambar_toko` varchar(100) CHARACTER SET latin1 NOT NULL,
  `map_toko` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `nomor_telepon`, `gambar_toko`, `map_toko`) VALUES
('T01', 'Toko Pertanian Barokah Tani', 'Jalan Gunung Gambir Jambangan Dampit', '081233322428', 'barokah.jpg', 'https://goo.gl/maps/dAwjmDxm177Pz84L9'),
('T02', 'Toko Tani Maju Jaya', 'Jalan Gatot Subroto Sedayu Turen', '081233067715', 'tani_maju.jpg', 'https://goo.gl/maps/jDrQcQrECLfLpb54A'),
('T03', 'Toko Bumi Subur', 'Jalan Panglima Sudirman No.15 Turen', '082266973986', 'subur.jpg', 'https://goo.gl/maps/NmVkp4m31gVtFnAP8'),
('T04', 'Toko Trubus', 'Jalan Ahmad Yani Turen', '081333319023', 'trubus.jpg', 'https://goo.gl/maps/PWdg1N4NNqvSDb9e8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `rules_penyakit`
--
ALTER TABLE `rules_penyakit`
  ADD PRIMARY KEY (`id_rules`);

--
-- Indexes for table `tmp_petani`
--
ALTER TABLE `tmp_petani`
  ADD PRIMARY KEY (`id_petani`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `rules_penyakit`
--
ALTER TABLE `rules_penyakit`
  MODIFY `id_rules` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tmp_petani`
--
ALTER TABLE `tmp_petani`
  MODIFY `id_petani` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
