-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2022 at 08:43 AM
-- Server version: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Clases_Ciclo`
--
CREATE DATABASE IF NOT EXISTS `Clases_Ciclo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Clases_Ciclo`;

-- --------------------------------------------------------

--
-- Table structure for table `Alumnos`
--

DROP TABLE IF EXISTS `Alumnos`;
CREATE TABLE `Alumnos` (
  `IDAL` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Alumnos`
--

INSERT INTO `Alumnos` (`IDAL`, `Nombre`) VALUES
(1, 'Alumno1'),
(2, 'Alumno2'),
(3, 'Alumno3'),
(4, 'Alumno4');

-- --------------------------------------------------------

--
-- Table structure for table `Matriculas`
--

DROP TABLE IF EXISTS `Matriculas`;
CREATE TABLE `Matriculas` (
  `IDMATR` int(11) NOT NULL,
  `IDAL` int(11) NOT NULL,
  `IDMOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Matriculas`
--

INSERT INTO `Matriculas` (`IDMATR`, `IDAL`, `IDMOD`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Modulos`
--

DROP TABLE IF EXISTS `Modulos`;
CREATE TABLE `Modulos` (
  `IDMOD` int(11) NOT NULL,
  `NombreModulo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Modulos`
--

INSERT INTO `Modulos` (`IDMOD`, `NombreModulo`) VALUES
(1, 'Programacion'),
(2, 'Bases de Datos'),
(3, 'Entornos'),
(4, 'FOL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alumnos`
--
ALTER TABLE `Alumnos`
  ADD PRIMARY KEY (`IDAL`);

--
-- Indexes for table `Matriculas`
--
ALTER TABLE `Matriculas`
  ADD PRIMARY KEY (`IDMATR`),
  ADD KEY `IDAL` (`IDAL`),
  ADD KEY `IDMOD` (`IDMOD`);

--
-- Indexes for table `Modulos`
--
ALTER TABLE `Modulos`
  ADD PRIMARY KEY (`IDMOD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alumnos`
--
ALTER TABLE `Alumnos`
  MODIFY `IDAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Matriculas`
--
ALTER TABLE `Matriculas`
  MODIFY `IDMATR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Modulos`
--
ALTER TABLE `Modulos`
  MODIFY `IDMOD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Matriculas`
--
ALTER TABLE `Matriculas`
  ADD CONSTRAINT `Matriculas_ibfk_1` FOREIGN KEY (`IDAL`) REFERENCES `Alumnos` (`IDAL`) ON DELETE CASCADE,
  ADD CONSTRAINT `Matriculas_ibfk_2` FOREIGN KEY (`IDMOD`) REFERENCES `Modulos` (`IDMOD`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
