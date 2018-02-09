-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2018 a las 18:24:36
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--
-- Creación: 07-02-2018 a las 20:36:05
-- Última actualización: 07-02-2018 a las 20:36:05
-- Última revisión: 07-02-2018 a las 20:36:05
--

CREATE TABLE `animales` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `codigoChip` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(105) COLLATE utf8_unicode_ci NOT NULL,
  `idRaza` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaFallecimiento` date DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `animales`:
--   `idRaza`
--       `razas` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animalpersona`
--
-- Creación: 07-02-2018 a las 20:46:06
-- Última actualización: 07-02-2018 a las 20:46:06
-- Última revisión: 07-02-2018 a las 20:46:06
--

CREATE TABLE `animalpersona` (
  `id` bigint(20) NOT NULL,
  `idAnimal` bigint(20) NOT NULL,
  `idPersona` bigint(20) NOT NULL,
  `idTipoFamilia` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `animalpersona`:
--   `idAnimal`
--       `animales` -> `id`
--   `idPersona`
--       `personas` -> `id`
--   `idTipoFamilia`
--       `tiposfamilias` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--
-- Creación: 07-02-2018 a las 20:29:39
-- Última actualización: 07-02-2018 a las 20:29:39
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `genero` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `generos`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origenesrut`
--
-- Creación: 07-02-2018 a las 19:05:27
-- Última actualización: 07-02-2018 a las 19:05:27
--

CREATE TABLE `origenesrut` (
  `id` int(11) NOT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `origenesrut`:
--

--
-- Volcado de datos para la tabla `origenesrut`
--

INSERT INTO `origenesrut` (`id`, `pais`, `createDate`, `updateDate`, `deleteDate`, `active`) VALUES
(1, 'Chile', '2018-02-06 09:30:41', '2018-02-06 09:30:41', NULL, 1),
(2, 'Argentina', '2018-02-06 09:30:45', '2018-02-06 09:31:02', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--
-- Creación: 07-02-2018 a las 20:04:34
-- Última actualización: 07-02-2018 a las 20:04:34
-- Última revisión: 07-02-2018 a las 20:04:34
--

CREATE TABLE `personas` (
  `id` bigint(20) NOT NULL,
  `idTipoPersona` int(11) NOT NULL,
  `rut` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `idOrigenRut` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `personas`:
--   `idOrigenRut`
--       `origenesrut` -> `id`
--   `idTipoPersona`
--       `tipospersona` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personasjuridicas`
--
-- Creación: 07-02-2018 a las 20:09:53
-- Última actualización: 07-02-2018 a las 20:09:53
-- Última revisión: 07-02-2018 a las 20:09:53
--

CREATE TABLE `personasjuridicas` (
  `id` bigint(20) NOT NULL,
  `idPersona` bigint(20) NOT NULL,
  `razonSocial` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nombreComercial` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `personasjuridicas`:
--   `idPersona`
--       `personas` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personasnaturales`
--
-- Creación: 07-02-2018 a las 20:16:00
-- Última actualización: 07-02-2018 a las 20:16:00
-- Última revisión: 07-02-2018 a las 20:16:00
--

CREATE TABLE `personasnaturales` (
  `id` bigint(20) NOT NULL,
  `idPersona` bigint(20) NOT NULL,
  `nombres` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoPaterno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido Materno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idGenero` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `personasnaturales`:
--   `idGenero`
--       `generos` -> `id`
--   `idPersona`
--       `personas` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--
-- Creación: 07-02-2018 a las 19:05:41
-- Última actualización: 07-02-2018 a las 19:05:41
-- Última revisión: 07-02-2018 a las 19:05:41
--

CREATE TABLE `razas` (
  `id` int(11) NOT NULL,
  `idTipoAnimal` int(11) NOT NULL,
  `tipo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `razas`:
--   `idTipoAnimal`
--       `tiposanimales` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--
-- Creación: 07-02-2018 a las 19:39:47
-- Última actualización: 07-02-2018 a las 19:39:47
-- Última revisión: 07-02-2018 a las 19:39:47
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `roles`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposanimales`
--
-- Creación: 07-02-2018 a las 19:05:53
-- Última actualización: 07-02-2018 a las 19:05:53
-- Última revisión: 07-02-2018 a las 19:05:53
--

CREATE TABLE `tiposanimales` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `tiposanimales`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposfamilias`
--
-- Creación: 07-02-2018 a las 20:42:40
-- Última actualización: 07-02-2018 a las 20:42:40
-- Última revisión: 07-02-2018 a las 20:42:40
--

CREATE TABLE `tiposfamilias` (
  `id` int(11) NOT NULL,
  `tipo` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `tiposfamilias`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipospersona`
--
-- Creación: 07-02-2018 a las 19:06:01
-- Última actualización: 07-02-2018 a las 19:06:01
-- Última revisión: 07-02-2018 a las 19:06:01
--

CREATE TABLE `tipospersona` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `tipospersona`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--
-- Creación: 07-02-2018 a las 19:53:05
-- Última actualización: 07-02-2018 a las 19:53:05
-- Última revisión: 07-02-2018 a las 19:53:05
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `tipousuario`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 07-02-2018 a las 19:07:20
-- Última actualización: 07-02-2018 a las 19:07:20
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `idPersona` bigint(20) NOT NULL,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `usuarios`:
--   `idPersona`
--       `personas` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosroles`
--
-- Creación: 07-02-2018 a las 19:39:38
-- Última actualización: 07-02-2018 a las 19:39:38
-- Última revisión: 07-02-2018 a las 19:39:38
--

CREATE TABLE `usuariosroles` (
  `id` bigint(20) NOT NULL,
  `idUsuario` bigint(20) NOT NULL,
  `idRol` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `usuariosroles`:
--   `idRol`
--       `roles` -> `id`
--   `idUsuario`
--       `usuarios` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotipousuario`
--
-- Creación: 07-02-2018 a las 19:55:42
-- Última actualización: 07-02-2018 a las 19:55:42
-- Última revisión: 07-02-2018 a las 19:55:42
--

CREATE TABLE `usuariotipousuario` (
  `id` bigint(20) NOT NULL,
  `idUsuario` bigint(20) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleteDate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `usuariotipousuario`:
--   `idTipoUsuario`
--       `tipousuario` -> `id`
--   `idUsuario`
--       `usuarios` -> `id`
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `codigoChip` (`codigoChip`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `animalpersona`
--
ALTER TABLE `animalpersona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `idAnimal` (`idAnimal`),
  ADD KEY `idPersona` (`idPersona`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `origenesrut`
--
ALTER TABLE `origenesrut`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `personasjuridicas`
--
ALTER TABLE `personasjuridicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `idPersona` (`idPersona`);

--
-- Indices de la tabla `personasnaturales`
--
ALTER TABLE `personasnaturales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPersona` (`idPersona`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tiposanimales`
--
ALTER TABLE `tiposanimales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tiposfamilias`
--
ALTER TABLE `tiposfamilias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tipospersona`
--
ALTER TABLE `tipospersona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `usuariosroles`
--
ALTER TABLE `usuariosroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `usuariotipousuario`
--
ALTER TABLE `usuariotipousuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `animalpersona`
--
ALTER TABLE `animalpersona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `origenesrut`
--
ALTER TABLE `origenesrut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personasjuridicas`
--
ALTER TABLE `personasjuridicas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personasnaturales`
--
ALTER TABLE `personasnaturales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposanimales`
--
ALTER TABLE `tiposanimales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposfamilias`
--
ALTER TABLE `tiposfamilias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipospersona`
--
ALTER TABLE `tipospersona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuariosroles`
--
ALTER TABLE `usuariosroles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuariotipousuario`
--
ALTER TABLE `usuariotipousuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
