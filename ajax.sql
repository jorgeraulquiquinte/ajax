-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2019 a las 20:10:55
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 5.6.40-6+ubuntu16.04.1+deb.sury.org+3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ajax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `claves`
--

CREATE TABLE `claves` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `claves`
--

INSERT INTO `claves` (`user`, `pass`) VALUES
('carlos', ' aycarajo'),
('susana1988', 'susana1988'),
('unju', 'unjuvirtual'),
('veronica', 'vero2000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL DEFAULT '',
  `direccion` varchar(45) NOT NULL DEFAULT '',
  `telefono` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `direccion`, `telefono`, `email`) VALUES
(1, 'Victor Jimenez', 'Av Union 234', '45752256', 'victor_j@latin.com'),
(2, 'Ivan Fernandez', 'Belgrano 4564', '32900536', 'fernivan@surper.net'),
(3, 'Carlos Salazar', 'Peru 878', '45784568', 'salazar_234@minerva.viz'),
(4, 'Ever Mendez', 'Av Independencia 1258', '22058566', 'webmaster@yaohi.com.pe'),
(5, 'Juan Linares', 'Pj El Maestro 2', '965456348', 'gutiman@coolmain.ru'),
(6, 'Julio Gutierrez', 'Andonaegui 984', '978451268', 'juliter@menzat.nu.pe'),
(7, 'Manuel Villalobos', 'Av Cordoba 8282', '22057834', 'manu@latin.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(30) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `producto`, `descripcion`, `precio`) VALUES
(1001, 'Lampara Xenon B54', 'Las lamparas de xenon generan hasta 4 veces mas luz que las lamparas halogenas comunes. El consumo de energia es de 35watt, casi la mitad del consumo de las lamparas halogenas comunes. ', '234.00'),
(1002, 'Lampara Xenon B16', 'El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.', '254.00'),
(1003, 'Lampara Xenon 300SD', 'El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.', '344.00'),
(1004, 'Lampara Xenon B45SD', 'No hace falta realizar ninguna modificacion electrica en el auto, tampoco hace falta cortar cables. Hay kits para cada modelo y marca de autos. Los kits consumen casi la mitad de electricidad que las lamparas halogenas comunes.', '256.40'),
(1005, 'Lampara Xenon 28SE', 'Este modelo de lampara genera un ahorro de combustible.', '310.50'),
(1006, 'Lampara Xenon B345', 'En caso de ser necesario se pueden colocar lamparas halogenas de forma inmediata, los kits no modifican la instalacion electrica original del auto. ', '340.00'),
(1007, 'Lampara Xenon 34SE', 'En caso de ser necesario se pueden colocar lamparas halogenas de forma inmediata, los kits no modifican la instalacion electrica original del auto. ', '322.50'),
(1008, 'Lampara Xenon B90', 'Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.', '349.90'),
(1009, 'Lampara Xenon 43SE', 'Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.', '230.90'),
(1010, 'Lampara Xenon 98DE', 'Las lamparas de xenon generan menos calor que las lamparas halogenas, todas las opticas soportan las lamparas de xenon.', '110.00'),
(1011, 'Lampara Xenon 65SD', 'Los balastros son de menor tama?o y son digitales. Los balastros no generan ningun tipo de interferencia en las computadoras de los autos ni en las radios. ', '430.00'),
(1012, 'Lampara Xenon B44', 'Los balastros son de menor tama?o y son digitales. Los balastros no generan ningun tipo de interferencia en las computadoras de los autos ni en las radios.', '235.60'),
(1013, 'Lampara Xenon 3D4G', 'Las lamparas de 6000k generan el mismo color que los autos de alta gama que vienen con lamparas de xenon de serie. A medida que aumenta la temperatura de las lamparas la potencia lum?nica disminuye. ', '260.60'),
(1014, 'Lampara Xenon 109FD', 'Las lamparas de 6000k generan el mismo color que los autos de alta gama que vienen con lamparas de xenon de serie. A medida que aumenta la temperatura de las lamparas la potencia lum?nica disminuye. ', '430.00'),
(1015, 'Lampara Xenon 90FT', 'El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.', '456.60'),
(1016, 'Lampara Xenon FG34', 'El funcionamiento mediante la descarga electrica aumenta la cantidad de horas utiles de la lampara, ya que los golpes y las vibraciones no las da?an, como sucede con las lamparas halogenas.', '190.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `claves`
--
ALTER TABLE `claves`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
