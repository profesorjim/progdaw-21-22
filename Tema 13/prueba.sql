-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2022 at 05:58 PM
-- Server version: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.0.33-0+deb9u11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Table structure for table `gente`
--

DROP TABLE IF EXISTS `gente`;
CREATE TABLE `gente` (
  `DNI` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Apellido1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Apellido2` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gente`
--

INSERT INTO `gente` (`DNI`, `Nombre`, `Apellido1`, `Apellido2`) VALUES
('1', 'zxc', 'a', 'a'),
('123456', 'Persona1', 'Apellido1', 'Apellido2'),
('2', '2', '2', '2'),
('3', '3', '3', '3444444'),
('456789', 'Persona2', 'Apelido1b', 'ape2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gente`
--
ALTER TABLE `gente`
  ADD PRIMARY KEY (`DNI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
