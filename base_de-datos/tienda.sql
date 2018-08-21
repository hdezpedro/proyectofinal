-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 21-08-2018 a las 19:26:04
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invebtario`
--

CREATE TABLE `invebtario` (
  `id_producto` char(2) NOT NULL,
  `nombre_de_producto` varchar(10) NOT NULL,
  `tipo_de_producto` varchar(10) NOT NULL,
  `precio_venta` float UNSIGNED NOT NULL,
  `cantidad` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invebtario`
--

INSERT INTO `invebtario` (`id_producto`, `nombre_de_producto`, `tipo_de_producto`, `precio_venta`, `cantidad`) VALUES
('06', 'cocacola', 'cocacola', 15, 1),
('8', 'cocacola', 'cocacola', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` char(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `existencias` int(11) UNSIGNED NOT NULL,
  `tipo_de_producto` varchar(20) NOT NULL,
  `caducidad` date NOT NULL,
  `contenidonet` int(5) UNSIGNED NOT NULL,
  `precio_venta` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombre`, `existencias`, `tipo_de_producto`, `caducidad`, `contenidonet`, `precio_venta`) VALUES
('01', 'donitas', 10, 'bimbo', '2018-10-12', 80, 10),
('02', 'sabritas', 12, 'sabritas', '2018-11-12', 131, 12),
('05', 'jarritos', 10, 'refresco', '2018-12-12', 1000, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `clave` char(2) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `tipo_de_producto` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`clave`, `nombre`, `apellidos`, `tipo_de_producto`, `fecha`) VALUES
('01', 'jesus', 'tolentino', 'cocacola', '2018-08-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`) VALUES
('eliazar', '1234'),
('israel', '5678'),
('rocio', 'hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idproducto` char(2) NOT NULL,
  `nombre_de_producto` varchar(20) NOT NULL,
  `tipo_de_producto` varchar(20) NOT NULL,
  `precio_venta` float UNSIGNED NOT NULL,
  `cantidad` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idproducto`, `nombre_de_producto`, `tipo_de_producto`, `precio_venta`, `cantidad`) VALUES
('01', 'sabritas', 'sabritas', 10, 2),
('05', 'donitas', 'bimbo', 10, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `invebtario`
--
ALTER TABLE `invebtario`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `contrasena` (`contrasena`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
