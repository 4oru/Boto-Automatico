-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-12-2020 a las 23:52:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Partido` int(200) DEFAULT NULL,
  `Puesto` int(200) DEFAULT NULL,
  `Foto` varchar(500) NOT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `voto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`Id`, `Nombre`, `Apellido`, `Partido`, `Puesto`, `Foto`, `Estado`, `voto`) VALUES
(2, 'Luis', 'Abinader', 1, 1, 'Foto', b'0', 34),
(5, 'Marvin', 'Sena', 1, 1, '5.jpeg', b'1', 0),
(6, 'miguel', 'santos', 2, 4, '6.jpeg', b'1', 0),
(8, 'Manuel', 'Santos', 2, 4, '8.png', b'1', 0),
(9, 'El segundo', 'Santos', 2, 4, '9.png', b'0', 0),
(10, 'prd', 'prd', 2, 3, '', b'0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudadanos`
--

CREATE TABLE `ciudadanos` (
  `Identidad` varchar(15) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudadanos`
--

INSERT INTO `ciudadanos` (`Identidad`, `Nombre`, `Apellido`, `Email`, `Estado`) VALUES
('1', 'lucas', 'muji', 'asdf@asdf.asdf', b'1'),
('123123', 'nombre', 'apeliido', 'sf@gmaid.com', b'1'),
('40209488671', 'Ismael Francisco', 'Santana Borgess', 'ismael@gmail.com', b'1'),
('40209488672', 'Maria', 'Lopez', 'maria@gmail.com', b'1'),
('40209488673', 'Lucass', 'Borgess', 'bor@gmail.comm', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(150) DEFAULT NULL,
  `Descripcion` varchar(400) DEFAULT NULL,
  `Logo_Partido` varchar(500) NOT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`Id`, `Nombre`, `Descripcion`, `Logo_Partido`, `Estado`) VALUES
(1, 'PLD', 'Partido de la Liberacion Dominicana', '', b'1'),
(2, 'PRD', 'Partido Reformista Dominicano', 'Array', b'0'),
(4, 'PRM', 'Partido Reformista Moderno.', '4.', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto_electivo`
--

CREATE TABLE `puesto_electivo` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(400) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puesto_electivo`
--

INSERT INTO `puesto_electivo` (`Id`, `Nombre`, `Descripcion`, `Estado`) VALUES
(1, 'Presidente', 'El presidente', b'1'),
(2, 'Diputado', 'El diputado', b'1'),
(3, 'Senador', 'El senador', b'1'),
(4, 'Alcalde', 'El alcalde', b'1'),
(6, 'Sindico', 'El sindico', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `Id` int(11) NOT NULL,
  `voto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ciudadanos`
--
ALTER TABLE `ciudadanos`
  ADD PRIMARY KEY (`Identidad`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `puesto_electivo`
--
ALTER TABLE `puesto_electivo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `puesto_electivo`
--
ALTER TABLE `puesto_electivo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
