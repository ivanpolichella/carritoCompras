-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2018 a las 23:37:40
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `setentatreinta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombre`, `tipo`, `precio`) VALUES
(1, 'Coca Cola 3L', 'Gaseosa', 57),
(2, 'Coca Cola 2.25L', 'Gaseosa', 47),
(3, 'Branca 1L', 'Fernet', 260),
(4, 'Gancia 950', 'Aperitivo', 105),
(5, 'Brahama Ltr', 'Cerveza', 45),
(6, 'Quilmes Ltr', 'Cerveza', 45),
(7, 'Patagonia', 'Cerveza', 85),
(8, 'Crush 2L', 'Gaseosa', 27),
(9, 'Baggio', 'Jugo', 28),
(10, 'Sol y fruta POMELO', 'Jugo', 45),
(11, 'Sol y fruta NARANJA', 'jugo', 40),
(12, 'Imperial LATA', 'cerveza', 34),
(13, 'miller LATA', 'cerveza', 38),
(14, 'miller LTR', 'cerveza', 55),
(15, 'Quilmes LATA', 'Cerveza', 34),
(16, 'Iguana LTR', 'cerveza', 40),
(17, 'Palitos', 'comida', 25),
(18, 'Mani cervecero', 'comida', 10),
(19, 'Imperial STOUT', 'Cerveza', 62),
(20, 'Imperial amber', 'cerveza', 60),
(21, 'stella rubia LTR', 'cerveza', 65),
(22, 'Stella LATA', 'cerveza', 45),
(23, 'Grolsh LATA', 'Cerveza', 38),
(24, 'Brahama LATA', 'cerveza', 27),
(25, 'gancia 750cc', 'aperitivo', 77),
(26, 'lata pronto', 'aperitivo', 25),
(27, 'Frizze LTR', 'aperitivo', 65),
(28, 'Frizze chico', ' aperitivo', 53),
(29, 'Branca 750cc', 'Fernet ', 215),
(30, '1882', 'fernet', 140),
(31, '1882 CHICO', 'fernet', 85),
(32, 'campari 750cc', 'aperitivo', 145),
(33, 'Budwaiser LATA', 'cerveza', 25),
(34, 'SHNEIDER LATA', 'CERVEZA', 22),
(35, 'ISENBECK LATA', 'Cerveza', 22),
(36, 'GROLSH LTR', 'CERVEZA', 60),
(37, 'IMPERIAL TRIGO', 'Cerveza', 60),
(38, 'Imperial rubia', 'cerveza', 60),
(39, 'corona PORRON', 'cerveza', 45),
(40, 'CORONA GRANDE', 'Cerveza', 85),
(41, 'ISENBECK ipa-honey', 'cerveza', 70),
(42, 'ISENBECK PORRONCITO', 'Cerveza', 17),
(43, 'speed', 'aperitivo', 26),
(44, 'mani pelado', 'comida', 25),
(45, 'mani con cascara', 'comida', 20),
(46, 'Amstel LTR', 'Cerveza', 60),
(48, 'Grolsh caja', 'Cerveza', 380),
(49, 'GROLSH no retornable', 'cerveza', 69),
(50, 'warsteiner ', 'Cerveza', 60),
(51, 'Stella noire', 'Cerveza', 74),
(52, 'Levite', 'jugo', 40),
(53, 'cosecha tardia', 'vino blanco', 110),
(54, 'norton cosecha', 'vino blanco ', 140),
(55, 'aquarius grande', 'jugo', 42),
(56, 'aquarius 1L1/4', 'jugo', 32),
(57, 'Alma mora', 'vino blanco', 110),
(58, 'lopez', 'vino blanco ', 105),
(59, 'sky', 'vodka', 160),
(60, 'smirnoff', 'vodka', 180),
(61, 'fresita', 'brindis', 140),
(62, 'sidra real', 'sidra', 55),
(63, 'sidra victoria', 'sidra', 45),
(64, 'anana fizz', 'brindis', 48),
(65, 'ISENBECK LTR', 'Cerveza', 36),
(66, 'renaissance', 'Champagne', 80),
(67, 'Colon', 'vino tinto', 80),
(68, 'circus', 'vino tinto', 95),
(69, 'bodega privada', 'vino tinto', 98),
(70, 'alamos', 'vino tinto', 196),
(71, 'benjamin', 'vino tinto', 98),
(72, 'dr lemon LTR', 'aperitivo', 65),
(73, 'dr lemon 650cc', 'aperitivo', 48),
(74, 'red bull', 'aperitivo', 37),
(75, 'gancia one', 'aperitivo', 45),
(76, 'quara', 'vino tinto', 78),
(77, 'sol y vuelo ', 'vino tinto', 135),
(78, 'gancia red bit', 'aperitivo', 98),
(79, 'norton', 'vino tinto', 75),
(80, 'dada 7', 'Champagne', 150),
(81, 'vino de la costa espumante', 'champagne', 130),
(82, 'chandon', 'Champagne', 250),
(83, 'carcasone', 'vino tinto', 68),
(84, 'valderrobles', 'vino tinto', 60),
(85, 'santa ana', 'vino tinto', 42),
(86, 'vino de la costa', 'vino tinto', 70),
(87, 'estancia mendoza', 'vino tinto', 78),
(88, 'jack daniels miel', 'wishkey', 1140),
(89, 'jack daniels', 'wishkey', 1000),
(90, 'calia', 'vino blanco', 98),
(91, 'Cynar', 'aperitivo', 140),
(92, 'Cynar 70', 'aperitivo', 160),
(93, 'campari chico', 'aperitivo', 110),
(94, 'heineken LTR', 'Cerveza', 60),
(96, 'tocornal', 'vino tinto', 58),
(97, 'absolut', 'vodka', 500),
(98, 'new style vodka', 'vodka', 120),
(99, 'new style ron', 'ron', 150),
(100, 'pinia colada', 'aperitivo', 180),
(101, 'legui', 'aperitivo', 75),
(102, 'grosh PORRON', 'Cerveza', 75),
(103, 'heineken porron', 'cerveza', 40),
(104, 'heineken Lata', 'Cerveza', 38),
(105, 'quilmes PORRON', 'Cerveza', 20),
(106, 'Brahama PORRONCITO', 'cerveza', 20),
(107, 'Grolsh PORRON', 'Cerveza', 30),
(108, 'dada ', 'vino tinto', 115),
(109, 'Coca Cola 600ml', 'gaseosa', 24),
(110, 'Coca Cola LATA', 'Gaseosa', 20),
(111, 'Agua', 'gaseosa', 15),
(112, 'otro mundo', 'cerveza', 60),
(113, 'Antares SCOTCH', 'cerveza', 65),
(114, 'Antares HONEY', 'cerveza', 80),
(115, 'Leffe PORRON', 'cerveza', 50),
(116, 'Patagonia LATA', 'cerveza', 65),
(117, 'Alma austral', 'vino tinto', 160),
(118, 'tipo MALBEC', 'vino tinto', 150),
(119, 'via blanca', 'vino tinto', 140),
(120, 'don valentin', 'vino tinto', 110),
(121, 'eugenio bustos', 'vino tinto', 105),
(122, 'elemento', 'vino tinto', 105),
(123, 'HEY MALBEC', 'vino tinto', 300),
(124, 'mantra', 'vino tinto', 250),
(125, 'marale', 'vino tinto', 160),
(126, 'cafayate', 'vino tinto', 120),
(127, 'pecado', 'vino tinto', 65),
(128, 'imago', 'vino tinto', 110),
(129, 'canciller', 'vino tinto', 95),
(130, 'gran lomo', 'vino tinto', 95),
(131, 'tinto negro', 'vino tinto', 160),
(132, 'etnia', 'vino tinto', 70),
(133, 'cepas', 'vino tinto', 50),
(134, 'coloso', 'vino tinto', 75),
(135, 'navarro', 'vino tinto', 145),
(136, 'valtmont chico', 'vino tinto', 30),
(137, 'privado', 'vino tinto', 220),
(138, 'linea A', 'vino tinto', 190),
(139, 'finca marta', 'vino tinto', 150),
(140, 'marquez sur', 'vino tinto', 55),
(141, 'quara', 'vino tinto', 78),
(142, 'los arboles', 'vino tinto', 98),
(143, 'lopez', 'vino tinto', 98),
(144, 'latitud', 'vino tinto', 122),
(145, 'viejo solar', 'vino tinto', 78),
(146, 'vinia de alvear', 'vino tinto', 70),
(147, 'tribu', 'vino tinto', 75),
(148, 'fond de cave', 'vino tinto', 140),
(149, 'bravio MALBEC', 'vino tinto', 120),
(150, 'TIPO DULCE', 'vino blanco', 130),
(151, 'santa julia', 'vino blanco', 140),
(153, 'elementos', 'vino blanco', 105),
(154, 'renaissance DU', 'Champagne', 90),
(155, 'pulpas', 'comida', 70),
(156, '', '', 0),
(157, 'SOL lata', 'cerveza', 45),
(158, '', '', 0),
(159, 'petacas licor', 'licor', 35),
(160, '3 plumas licor', 'licor', 95),
(161, 'vols', 'licor', 95),
(162, 'vat 69', 'wishkey', 155),
(163, 'MUM', 'Champagne', 180),
(164, 'Jaggermeiffer', 'aperitivo', 590),
(165, 'baileys', 'aperitivo', 430),
(166, 'tia maria', 'aperitivo', 190),
(167, 'j&b', 'wishkey', 420),
(168, 'cousenier', 'licor', 95),
(169, 'mariposa', 'aperitivo', 75),
(170, 'Branca 450cc', 'fernet', 135),
(171, 'Branca chiquito', 'fernet ', 30),
(172, 'heineken porron', 'cerveza', 30),
(173, 'soda', 'Gaseosa', 20),
(174, 'BIdon KIN', 'AGUA', 55),
(175, 'Bidon CIMES', 'agua', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` double NOT NULL,
  `cantidadItems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`fecha`, `monto`, `cantidadItems`) VALUES
('2018-03-18 20:06:35', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`fecha`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
