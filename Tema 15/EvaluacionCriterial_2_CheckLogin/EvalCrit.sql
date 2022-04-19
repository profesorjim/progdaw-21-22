-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2022 at 09:03 PM
-- Server version: 10.1.48-MariaDB-0+deb9u2
-- PHP Version: 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EvalCritCheckLogin`
--
CREATE DATABASE IF NOT EXISTS `EvalCritCheckLogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `EvalCritCheckLogin`;

-- --------------------------------------------------------

--
-- Table structure for table `CCEE`
--

DROP TABLE IF EXISTS `CCEE`;
CREATE TABLE `CCEE` (
  `IDCE` int(11) NOT NULL,
  `IDRARef` int(11) NOT NULL,
  `CriterioEvaluacion` text COLLATE utf8_bin NOT NULL,
  `PesoGlobal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `CCEE`
--

INSERT INTO `CCEE` (`IDCE`, `IDRARef`, `CriterioEvaluacion`, `PesoGlobal`) VALUES
(1, 1, 'a) Se han identificado los bloques que componen la estructura de un programa informático.', 0),
(2, 1, 'b) Se han creado proyectos de desarrollo de aplicaciones.', 0),
(3, 1, 'c) Se han utilizado entornos integrados de desarrollo.', 3),
(4, 1, 'd) Se han identificado los distintos tipos de variables y la utilidad específica de cada uno.', 0),
(5, 1, 'e) Se ha modificado el código de un programa para crear y utilizar variables.', 0),
(6, 1, 'f) Se han creado y utilizado constantes y literales.', 0),
(7, 1, 'g) Se han clasificado, reconocido y utilizado en expresiones los operadores del lenguaje.', 0),
(8, 1, 'h) Se ha comprobado el funcionamiento de las conversiones de tipos explícitas e implícitas.', 0),
(9, 1, 'i) Se han introducido comentarios en el código.', 0),
(10, 2, 'a) Se han identificado los fundamentos de la programación orientada a objetos.', 2),
(11, 2, 'b) Se han escrito programas simples.', 0),
(12, 2, 'c) Se han instanciado objetos a partir de clases predefinidas.', 0),
(13, 2, 'd) Se han utilizado métodos y propiedades de los objetos.', 0),
(14, 2, 'e) Se han escrito llamadas a métodos estáticos.', 0),
(15, 2, 'f) Se han utilizado parámetros en la llamada a métodos.', 0),
(16, 2, 'g) Se han incorporado y utilizado librerías de objetos.', 0),
(17, 2, 'h) Se han utilizado constructores.', 0),
(18, 2, 'i) Se ha utilizado el entorno integrado de desarrollo en la creación y compilación de programas simples.', 0),
(19, 3, 'a) Se ha escrito y probado código que haga uso de estructuras de selección.', 0),
(20, 3, 'b) Se han utilizado estructuras de repetición.', 0),
(21, 3, 'c) Se han reconocido las posibilidades de las sentencias de salto.', 0),
(22, 3, 'd) Se ha escrito código utilizando control de excepciones.', 0),
(23, 3, 'e) Se han creado programas ejecutables utilizando diferentes estructuras de control.', 0),
(24, 3, 'f) Se han probado y depurado los programas.', 0),
(25, 3, 'g) Se ha comentado y documentado el código.', 0),
(26, 4, 'a) Se ha reconocido la sintaxis, estructura y componentes típicos de una clase.', 0),
(27, 4, 'b) Se han definido clases.', 0),
(28, 4, 'c) Se han definido propiedades y métodos.', 0),
(29, 4, 'd) Se han creado constructores.', 0),
(30, 4, 'e) Se han desarrollado programas que instancien y utilicen objetos de las clases creadas anteriormente.', 0),
(31, 4, 'f) Se han utilizado mecanismos para controlar la visibilidad de las clases y de sus miembros.', 0),
(32, 4, 'g) Se han definido y utilizado clases heredadas.', 0),
(33, 4, 'h) Se han creado y utilizado métodos estáticos.', 0),
(34, 4, 'i) Se han definido y utilizado interfaces.', 0),
(35, 4, 'j) Se han creado y utilizado conjuntos y librerías de clases.', 0),
(36, 5, 'a) Se ha utilizado la consola para realizar operaciones de entrada y salida de información.', 0),
(37, 5, 'b) Se han aplicado formatos en la visualización de la información.', 0),
(38, 5, 'c) Se han reconocido las posibilidades de entrada/salida del lenguaje y las librerías asociadas.', 0),
(39, 5, 'd) Se han utilizado ficheros para almacenar y recuperar información.', 0),
(40, 5, 'e) Se han creado programas que utilicen diversos métodos de acceso al contenido de los ficheros.', 0),
(41, 5, 'f) Se han utilizado las herramientas del entorno de desarrollo para crear interfaces gráficos de usuario simples.', 0),
(42, 5, 'g) Se han programado controladores de eventos.', 0),
(43, 5, 'h) Se han escrito programas que utilicen interfaces gráficos para la  entrada y salida de información.', 0),
(44, 6, 'a) Se han escrito programas que utilicen arrays.', 0),
(45, 6, 'b) Se han reconocido las librerías de clases relacionadas con tipos de datos avanzados.', 0),
(46, 6, 'c) Se han utilizado listas para almacenar y procesar información.', 0),
(47, 6, 'd) Se han utilizado iteradores para recorrer los elementos de las listas.', 0),
(48, 6, 'e) Se han reconocido las características y ventajas de cada una de la colecciones de datos disponibles.', 0),
(49, 6, 'f) Se han creado clases y métodos genéricos.', 0),
(50, 6, 'g) Se han utilizado expresiones regulares en la búsqueda de patrones en cadenas de texto.', 0),
(51, 6, 'h) Se han identificado las clases relacionadas con el tratamiento de documentos XML.', 0),
(52, 6, 'i) Se han realizado programas que realicen manipulaciones sobre documentos XML.', 0),
(53, 7, 'a) Se han identificado los conceptos de herencia, superclase y subclase.', 0),
(54, 7, 'b) Se han utilizado modificadores para bloquear y forzar la herencia de clases y métodos.', 0),
(55, 7, 'c) Se ha reconocido la incidencia de los constructores en la herencia.', 0),
(56, 7, 'd) Se han creado clases heredadas que sobrescriban la implementación de métodos de la superclase.', 0),
(57, 7, 'e) Se han diseñado y aplicado jerarquías de clases.', 0),
(58, 7, 'f) Se han probado y depurado las jerarquías de clases.', 0),
(59, 7, 'g) Se han realizado programas que implementen y utilicen jerarquías de clases.', 0),
(60, 7, 'h) Se ha comentado y documentado el código.', 0),
(61, 8, 'a) Se han identificado las características de las bases de datos orientadas a objetos.', 0),
(62, 8, 'b) Se ha analizado su aplicación en el desarrollo de aplicaciones mediante lenguajes orientados a objetos.', 0),
(63, 8, 'c) Se han instalado sistemas gestores de bases de datos orientados a objetos.', 0),
(64, 8, 'd) Se han clasificado y analizado los distintos métodos soportados por los sistemas gestores para la gestión de la información almacenada.', 0),
(65, 8, 'e) Se han creado bases de datos y las estructuras necesarias para el almacenamiento de objetos.', 0),
(66, 8, 'f) Se han programado aplicaciones que almacenen objetos en las bases de datos creadas.', 0),
(67, 8, 'g) Se han realizado programas para recuperar, actualizar y eliminar objetos de las bases de datos.', 0),
(68, 8, 'h) Se han realizado programas para almacenar y gestionar tipos de datos estructurados, compuestos y relacionados.', 0),
(69, 9, 'a) Se han identificado las características y métodos de acceso a sistemas gestores de bases de datos relacionales.', 0),
(70, 9, 'b) Se han programado conexiones con bases de datos.', 0),
(71, 9, 'c) Se ha escrito código para almacenar información en bases de datos.', 0),
(72, 9, 'd) Se han creado programas para recuperar y mostrar información almacenada en bases de datos.', 0),
(73, 9, 'e) Se han efectuado borrados y modificaciones sobre la información almacenada.', 0),
(74, 9, 'f) Se han creado aplicaciones que ejecuten consultas sobre bases de datos.', 0),
(75, 9, 'g) Se han creado aplicaciones para posibilitar la gestión de información presente en bases de datos relacionales.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `RRAA`
--

DROP TABLE IF EXISTS `RRAA`;
CREATE TABLE `RRAA` (
  `IDRA` int(11) NOT NULL,
  `ResultadoAprendizaje` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `RRAA`
--

INSERT INTO `RRAA` (`IDRA`, `ResultadoAprendizaje`) VALUES
(1, '1. Reconoce la estructura de un programa informático, identificando y relacionando los elementos propios del lenguaje de programación utilizado.\r\n'),
(2, '2. Escribe y prueba programas sencillos, reconociendo y aplicando los fundamentos de la programación orientada a objetos\r\n'),
(3, '3. Escribe y depura código, analizando y utilizando las estructuras de control del lenguaje.\r\n'),
(4, '4. Desarrolla programas organizados en clases analizando y aplicando los principios de la programación orientada a objetos.\r\n'),
(5, '5. Realiza operaciones de entrada y salida de información, utilizando procedimientos específicos del lenguaje y librerías de clases\r\n'),
(6, '6. Escribe programas que manipulen información seleccionando y utilizando tipos avanzados de datos.\r\n'),
(7, '7. Desarrolla programas aplicando características avanzadas de los lenguajes orientados a objetos y del entorno de programación.\r\n'),
(8, '8. Utiliza bases de datos orientadas a objetos, analizando sus características y aplicando técnicas para mantener la persistencia de la información.\r\n'),
(9, '9. Gestiona información almacenada en bases de datos relacionales manteniendo la integridad y consistencia de los datos\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CCEE`
--
ALTER TABLE `CCEE`
  ADD PRIMARY KEY (`IDCE`),
  ADD KEY `IDRAref` (`IDRARef`);

--
-- Indexes for table `RRAA`
--
ALTER TABLE `RRAA`
  ADD PRIMARY KEY (`IDRA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CCEE`
--
ALTER TABLE `CCEE`
  MODIFY `IDCE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `RRAA`
--
ALTER TABLE `RRAA`
  MODIFY `IDRA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `CCEE`
--
ALTER TABLE `CCEE`
  ADD CONSTRAINT `IDRAref` FOREIGN KEY (`IDRARef`) REFERENCES `RRAA` (`IDRA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
