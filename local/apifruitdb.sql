-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2020 a las 03:24:41
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apifruitdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fruits`
--

INSERT INTO `fruits` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'banana', '2020-03-03 02:24:06', '2020-03-03 02:21:06'),
(2, 'apple', '2020-03-03 02:22:48', '2020-03-03 02:22:42'),
(3, 'orange', '2020-03-03 02:21:06', '2020-03-03 02:21:06'),
(4, 'peach', '2020-03-03 02:21:06', '2020-03-03 02:21:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
