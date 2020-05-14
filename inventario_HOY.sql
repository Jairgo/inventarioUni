-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2020 a las 23:18:40
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
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(8, 'Escritorios y mesas'),
(11, 'Estantes'),
(9, 'estrados'),
(10, 'Muebles'),
(7, 'Sillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `boss` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `name`, `last_name`, `job`, `boss`, `date`) VALUES
(112, 'CHRISTIAN YESICA', 'MÉNDEZ RUÍZ', 'ESPECIALISTA EN DISEÑO INSTRUCCIONAL    ', 'Servicios Tecnológicos', '2020-02-21 14:07:43'),
(15, 'MARITZA', 'CASTELLANOS VASALLO', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Ciencias Juridicas y sociales', '2019-12-09 16:21:37'),
(16, 'JULIO CÉSAR', 'MENDOZA CRUZ', 'COORDINADOR DE BIBLIOTECA', 'Biblioteca', '2019-12-09 16:22:09'),
(17, 'AGRIPINO', 'GARCÍA CRUZ ', 'ASISTENTE DE BIBLIOTECA Y MEDIOS        ', 'Biblioteca', '2019-12-09 16:22:58'),
(18, 'DALIA', 'ORTIZ FRÍAS', 'COORDINADOR DE ESCUELA', 'Escuela de Psicología', '2019-12-09 16:23:29'),
(19, 'SANDRA CAROLINA', 'MUCIÑO GÓMEZ', 'ASISTENTE AUXILIAR ADMINISTRATIVO', 'Posgrados', '2019-12-09 16:24:29'),
(20, 'LUIS FERNANDO', 'ALAVEZ REYES', 'COORDINADOR DE OPERACIÓN Y LOGISTICA DNA Y VINCULACION EMPRESARIAL', 'Programas de extensión', '2019-12-09 16:25:08'),
(21, 'EDGAR JAVIER', 'FIERROS SÁNCHEZ ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Negocios', '2019-12-09 16:25:26'),
(22, 'ENRIQUE EDGAR', 'CABRERA SALAZAR', 'COORDINADOR DE ESCUELA', 'Escuela de Negocios', '2019-12-09 16:25:48'),
(23, 'JUAN CARLOS', 'CRUZ AQUINO', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Negocios', '2019-12-09 16:26:21'),
(24, 'CARLOS ALBERTO', 'DÍAZ PÉREZ', 'COORDINADOR DE ESCUELA', 'Escuela de Comunicación y diseño', '2019-12-09 16:26:50'),
(25, 'IRENE', 'OSORIO PINEDA', 'COORDINADOR DE DESARROLLO ACADÉMICO     ', 'Desarrollo académico', '2019-12-09 16:27:34'),
(26, 'LUISA MIRIAM', 'TOLEDO RAMOS', 'COORDINADOR DE TUTORÍAS Y APOYO ACADÉMICO', 'Desarrollo académico', '2019-12-09 16:28:07'),
(27, 'LUIS ALONSO', 'VÁSQUEZ ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Comunicación y diseño', '2019-12-09 16:28:43'),
(28, 'JUAN ALBERTO', 'PÉREZ TORRES', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Comunicación y diseño', '2019-12-09 16:29:10'),
(114, 'CHRISTOPHER JEAN LUC', 'STENECK  GREGORY', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Turismo y Gastronomía', '2020-02-21 16:15:30'),
(115, 'MARTÍN ALBERTO', 'RODRÍGUEZ BRINDIS', 'COORDINADOR DE CENTRO DE INVESTIGACIÓN  Y POSGRADO', 'Posgrados', '2020-02-21 16:15:56'),
(32, 'CYNTHIA', 'CRUZ CORTÉS', 'COORDINADOR DE ESCUELA', 'Escuela de Humanidades', '2019-12-09 16:35:14'),
(116, 'DIEGO ALBERTO', 'ARROYO CELAYA', 'COORDINADOR DEL CENTRO DE LENGUAS       ', 'Centro de lenguas', '2020-02-21 16:16:32'),
(36, 'JORGE FRANCISO', ' MORALES MEJÍA', 'COORDINADOR DE PASTORAL UNIVERSITARIA', 'Pastoral Universitaria', '2019-12-09 16:37:47'),
(37, 'ALEJANDRA', 'SANTIAGO RAMÍREZ', 'JEFE DE COMPRAS', 'Finanzas y contaduría', '2019-12-09 16:38:10'),
(113, 'LUIS ANTONIO', 'HERNÁNDEZ HERNÁNDEZ', 'TÉCNICO DE SOPORTE', 'Servicios Tecnológicos', '2020-02-21 16:11:08'),
(39, 'ANA CECILIA', 'HERNÁNDEZ VILLAFAÑE', 'AUXILIAR ADMINISTRATIVO', 'Administración y Finanzas', '2019-12-09 16:38:58'),
(40, 'ALINA', 'HERNANDEZ NIETO ', 'COORDINADORA DE VINCULACIÓN, EVENTOS Y EGRESADOS', 'Vinculacion y egresados', '2019-12-09 16:39:33'),
(41, 'BRYAN KEITH', 'GÓMEZ VÁSQUEZ ', 'COORDINADOR DE ADMISIONES Y BECAS', 'Admisiones y Becas', '2019-12-09 16:39:58'),
(42, 'LLUVIA ITAIÍ', 'RUÍZ RAMOS', 'COORDINADOR DE PROGRAMAS DE LIDERAZGO   ', 'Programas de Liderazgo', '2019-12-09 16:40:17'),
(43, 'FRANCISCO JAVIER', 'MÁRQUEZ TORRES', 'ASESOR PREUNIVERSITARIO', 'Antención Preuniversitaria', '2019-12-09 16:40:52'),
(44, 'ALICIA', 'GALGUERA NORIEGA ', 'ASESOR PREUNIVERSITARIO', 'Antención Preuniversitaria', '2019-12-09 16:41:10'),
(117, 'DANIEL', 'VELÁZQUEZ PAZ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Ciencias Juridicas y sociales', '2020-02-21 16:17:53'),
(46, 'ELIZABETH', 'FELIX ACEVEDO ', 'DIRECTOR DE DESARROLLO INSTITUCIONAL', 'Desarrollo Institucional', '2019-12-09 16:42:01'),
(47, 'CHRISTIAN', 'MENDOZA ACEVEDO', 'ESPECIALISTA EN PRODUCCIÓN AUDIOVISUAL', 'Diseñador y Producción', '2019-12-09 16:42:51'),
(48, 'SARAHÍ ROCIO', 'PÉREZ CASTRO ', 'ESPECIALISTA EN DISEÑO DE MEDIOS', 'Diseñador y Producción', '2019-12-09 16:43:16'),
(49, 'TANIA PATRICIA', 'MENDOZA SANTIAGO', 'ESPECIALISTA RECURSOS HUMANOS', 'Recursos Humanos', '2019-12-09 16:43:48'),
(118, 'DIEGO MOISÉS', 'MEINGÜER CUEVAS', 'ESPECIALISTA DE INFRAESTRUCTURA TECNOLÓGICA', 'Servicios Tecnológicos', '2020-02-21 16:18:15'),
(51, 'Salòn A32', 'A32', 'Salòn', 'Otros', '2019-12-17 23:07:22'),
(52, 'A33', 'Salón A33', 'Salòn', 'Otros', '2019-12-17 23:10:16'),
(53, 'A21', 'Salón A21', 'Salòn', 'Otros', '2019-12-17 23:12:01'),
(54, 'A22', 'Salón A22', 'Salòn', 'Otros', '2019-12-17 23:13:44'),
(55, 'A23', 'Salón A23', 'Salòn', 'Otros', '2019-12-17 23:14:50'),
(56, 'A23b', 'Salón A23b', 'Salòn', 'Otros', '2019-12-17 23:15:50'),
(57, 'A24', 'Salón A24', 'Salòn', 'Otros', '2019-12-17 23:16:50'),
(58, 'A24b', 'Salón A24b', 'Salòn', 'Otros', '2019-12-17 23:17:54'),
(59, 'A25', 'Salón A25', 'Salòn', 'Otros', '2019-12-17 23:19:12'),
(60, 'A26', 'Salón A26', 'Salòn', 'Otros', '2019-12-17 23:20:16'),
(61, 'A27', 'Salón A27', 'Salòn', 'Otros', '2019-12-17 23:21:20'),
(62, 'A28', 'Salón A28', 'Salòn', 'Otros', '2019-12-17 23:24:22'),
(63, 'A11', 'Salón A11', 'Salòn', 'Otros', '2019-12-18 09:45:11'),
(64, 'A12', 'Salón A12', 'Salòn', 'Otros', '2019-12-18 09:47:20'),
(65, 'A12b', 'Salón A12b', 'Salòn', 'Otros', '2019-12-18 09:50:15'),
(66, 'A13', 'Salón A13', 'Salòn', 'Otros', '2019-12-18 09:51:37'),
(67, 'A14', 'Salón A14', 'Salòn', 'Otros', '2019-12-18 09:55:26'),
(68, 'A15', 'Salón A15', 'Salòn', 'Otros', '2019-12-18 09:57:09'),
(69, 'A16', 'Salón A16', 'Salòn', 'Otros', '2019-12-18 09:59:03'),
(73, 'DALIA.', 'ALARCÓN GONZÁLEZ ', 'COORD. DE OP. ACADÉMICA Y NORMATIVIDAD  ', 'Operación acádemica', '2019-12-18 10:06:13'),
(74, 'C21', 'Salón C21', 'Salòn', 'Otros', '2019-12-18 10:31:08'),
(75, 'C22', 'Salón C22', 'Salòn', 'Otros', '2019-12-18 10:31:36'),
(76, 'C23', 'Salón C23', 'Salòn', 'Otros', '2019-12-18 10:31:53'),
(77, 'C24', 'Salón C24', 'Salòn', 'Otros', '2019-12-18 10:32:10'),
(78, 'C25', 'Salón C25', 'Salòn', 'Otros', '2019-12-18 10:32:35'),
(79, 'C26', 'Salón C26', 'Salòn', 'Otros', '2019-12-18 10:32:57'),
(80, 'C27', 'Salón C27', 'Salòn', 'Otros', '2019-12-18 10:33:22'),
(81, 'D21', 'Salón D21', 'Salòn', 'Otros', '2019-12-18 10:40:48'),
(82, 'D22', 'Salón D22', 'Salòn', 'Otros', '2019-12-18 10:41:07'),
(83, 'MARIBEL DOLORES', 'FIGUEROA VILLANUEVA', 'COORDINADOR DE EXTENSION UNIVERSITARIA Y PROMOCION', 'Programas de extensión', '2019-12-18 10:54:22'),
(84, 'ROSA MARÍA', 'LÓPEZ OLIVER FARIAS', 'COORDINADOR DE INVESTIGACIÓN', 'Investigacion', '2019-12-18 10:56:16'),
(85, 'HUMBERTO JESÚS', 'ORTEGA VÁZQUEZ ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Negocios', '2019-12-18 10:57:31'),
(86, 'LUZ ESTRELLA', 'NIETO RAMÍREZ ', 'OPERACION Y LOGISTICA DE POSGRADOS', 'Posgrados', '2019-12-18 10:58:50'),
(87, 'Centro de aprendizaje', 'area', 'area', 'Otros', '2019-12-18 11:04:44'),
(92, 'PEDRO', 'OJEDA GARRIDO ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Humanidades', '2020-01-24 12:34:18'),
(93, 'CARLOS RUBÉN', 'CASTILLO JIMÉNEZ', 'DIRECTOR DE FORMACIÓN INTEGRAL            ', 'Dirección de Formación integral', '2020-01-24 12:39:20'),
(94, 'YUPZIL', 'FLORES LOZANO ', 'ENFERMERO(A) ESPECIALIZADO', 'Orientación medica', '2020-01-24 12:41:26'),
(95, 'JORGE', 'GÓMEZ HERNÁNDEZ ', 'DIRECTOR DE SERVICIOS DE TECNOLOGÍA      ', 'Servicios Tecnológicos', '2020-02-21 13:25:05'),
(96, 'JAVIER', 'GUTIÉRREZ CORTÉS ', 'AYUDANTE GENERAL', 'Ayudante General', '2020-02-21 13:26:33'),
(97, 'FARAÓN', 'ESPAÑA SILVA ', 'CONTADOR', 'Finanzas y contaduría', '2020-02-21 13:27:25'),
(98, 'ALEJANDRO', 'CHÁVEZ BAUTISTA', 'DIRECTOR DE ADMINISTRACIÓN Y FINANZAS   ', 'Administración y Finanzas', '2020-02-21 13:32:54'),
(99, 'XAVIER', 'SCHERENBERG FARRET ', 'PROFESOR DE TIEMPO COMPLETO', 'Centro de lenguas', '2020-02-21 13:34:48'),
(100, 'ADAN ESTEBAN', 'CRUZ CABALLERO ', 'ESPECIALISTA DE RECURSOS HUMANOS', 'Recursos Humanos', '2020-02-21 13:37:15'),
(101, 'MARTÍN', 'GARNICA HERNÁNDEZ ', 'COORDINADOR DE ESCUELA', 'Escuela de Ingeniería', '2020-02-21 13:38:47'),
(102, 'GUILLERMO ALFREDO', 'MONZÓN GUZMÁN ', 'DIRECTOR ACÁDEMICO', 'Rectoria', '2020-02-21 13:40:14'),
(103, 'YOANI PAOLA', 'RODRÍGUEZ VILLEGAS', 'RECTOR DE UNIVERSIDAD', 'Rectoria', '2020-02-21 13:41:53'),
(104, 'EDUARDO ROGELIO', 'LÓPEZ LÓPEZ ', 'COORDINADOR DE CALIDAD ACÁDEMICA', 'Otros', '2020-02-21 13:42:50'),
(105, 'EMILIANO', 'ORTEGA ', 'AYUDANTE GENERAL', 'Ayudante General', '2020-02-21 13:44:47'),
(106, 'JESÚS OMAR', 'SILVA VEGA', 'COORDINADOR DE ADMISIÓN PREUNIVERSITARIA ', 'Antención Preuniversitaria', '2020-02-21 13:47:14'),
(107, 'NILO', 'CRUZ MARTINEZ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Ingeniería', '2020-02-21 14:02:22'),
(108, 'DIANA IRMA', 'RODRIGUEZ BAUTISTA ', 'DIRECTOR DE SERVICIOS INSTITUCIONALES', 'Servicios Institucionales', '2020-02-21 14:03:13'),
(109, 'HÉCTOR HUMBERTO', 'VASQUEZ QUEVEDO ', 'COORDINADOR DE ESCUELA', 'Escuela de Ciencias Juridicas y sociales', '2020-02-21 14:05:02'),
(110, 'ARINELLY', 'ROJAS ALCANTARA', 'JEFE DE SERVICIOS ESCOLARES', 'Servicios escolares', '2020-02-21 14:06:06'),
(111, 'JOSUÉ GREGORIO', 'AGUILAR GARCÍA', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Ingeniería', '2020-02-21 14:06:29'),
(119, 'KARINA EMELIA', 'WIYURIS SOTO', 'CAJERO', 'Servicios Institucionales', '2020-02-21 16:23:37'),
(120, 'HORACIO', 'GUEVARA CRUZ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Psicología', '2020-02-21 16:25:03'),
(121, 'ARELY', 'AMADOR GERÓNIMO', 'AUXILIAR ADMINISTRATIVO', 'Otros', '2020-02-21 16:25:44'),
(122, 'MARGARITA MARÍA', 'VILLALOBOS MIRELES', 'DIRECTORA DE INTERNACIONALIZACIÓN', 'Centro de lenguas', '2020-02-21 16:26:31'),
(123, 'ALBERTO ISAAC', 'RAMOS SALDAÑA', 'ESPECIALISTA EN SERVICIOS COMPUTACIONALES', 'Servicios Tecnológicos', '2020-02-21 16:26:50'),
(124, 'TANIA AMIRA', 'HERNÁNDEZ NIETO', 'ASISTENTE ACADÉMICO', 'Otros', '2020-02-21 16:28:29'),
(125, 'YANET', 'GONZÁLEZ VÁSQUEZ', 'SECRETARIO(A) DE RECTORÍA', 'Rectoria', '2020-02-21 16:28:58'),
(126, 'MILDRED ADRIANA', 'REYES RIOS', 'ASISTENTE DE DIRECCIÓN', 'Otros', '2020-02-21 16:30:12'),
(127, 'JOSÉ LORENZO', 'MARTINEZ VALENCIA', 'COORDINADOR DE DEPORTES', 'Deportes', '2020-02-21 16:31:49'),
(128, 'ROBERTO GEOVANNI', 'LÓPEZ CURIEL', 'ASISTENTE ACADÉMICO', 'Servicios escolares', '2020-02-21 16:35:51'),
(129, 'DAVID', 'AGUILAR RODRÍGUEZ', 'PROFESOR DE TIEMPO COMPLETO', 'Otros', '2020-02-21 16:37:23'),
(130, 'ALAN ARMENGOL', 'GARCÍA AGUAYO', 'COORDINADOR DE ESCUELA', 'Escuela de Turismo y Gastronomía', '2020-02-21 16:37:51'),
(131, 'RAFAEL ÁNGEL', 'GARCÍA COVIÁN', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Ciencias Juridicas y sociales', '2020-02-21 16:40:11'),
(132, 'MARITZA JENNY', 'HERNÁNDEZ CUEVAS', 'COORDINADOR DE ESCUELA', 'Escuela de Medicina', '2020-02-21 16:40:31'),
(133, 'IVAN WILFRED', 'JUÁREZ NÚÑEZ', 'SECRETARIO DE DEPARTAMENTO', 'Otros', '2020-02-21 16:41:53'),
(134, 'OSCAR RODRIGO', 'VICTORIA VELASCO ', 'COORD. DE REL. ESTUDIAN. Y ACCIÓN SOCIAL', 'Acción social', '2020-02-21 16:42:43'),
(135, 'ALICIA CONCEPCIÓN', 'SOLANO FÉLIX', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Comunicación y diseño', '2020-02-21 16:43:44'),
(136, 'ROCIO NEREYDA', 'SANTIAGO JIMÉNEZ', 'COORDINADOR DE ÁREA DISCIPLINAR', 'Otros', '2020-02-21 16:45:22'),
(137, 'ADRIÁN', 'RODRÍGUEZ VÁSQUEZ', 'TÉCNICO DE LABORATORIO Y/O TALLER', 'Escuela de Ingeniería', '2020-02-21 16:48:44'),
(138, 'KAREN MELISSA', 'GARCÍA PÉREZ', 'ASISTENTE JURÍDICO', 'Otros', '2020-02-21 16:49:24'),
(139, 'ANA GABRIELA', 'PÉREZ GARCÍA', 'TÉCNICO DE LABORATORIO Y/O TALLER', 'Escuela de Comunicación y diseño', '2020-02-21 16:50:12'),
(140, 'YURI EUSEBIO', 'ALTAMIRANO RAYMUNDO', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Medicina', '2020-02-21 16:50:52'),
(141, 'CRISTINA ELIZABETH', 'MEDINA FLORES', 'ASISTENTE DE APOYO ADMINISTRATIVO', 'Otros', '2020-02-21 16:51:39'),
(142, 'NELLY TANIVET', 'LÓPEZ MARTÍNEZ', 'PROFESOR DE TIEMPO COMPLETO', 'Otros', '2020-02-21 16:52:24'),
(143, 'PATRICIA XOCHIQUETZAL', 'Mendoza Cruz', 'PROFESOR DE TIEMPO COMPLETO', 'Otros', '2020-02-21 16:52:43'),
(144, 'HUMBERTO', 'NAVARRETE SALAZAR', 'TÉCNICO DE LABORATORIO Y/O TALLER', 'Otros', '2020-02-21 16:53:06'),
(145, 'ADRIAN ADALBERTO', 'MARTÍNEZ LÓPEZ ', 'TÉCNICO DE LABORATORIO Y/O TALLER', 'Escuela de Comunicación y diseño', '2020-02-21 16:54:00'),
(146, 'OSCAR', 'CUEVAS CRUZ', 'COORDINADOR DE CAMPOS CLÍNICOS', 'Otros', '2020-02-21 16:54:48'),
(147, 'ARIANA', 'SOLANO ZARAGOZA', 'ASISTENTE ACADÉMICO', 'Escuela de Psicología', '2020-02-21 16:55:43'),
(148, 'ALFA ROCÍO', 'SÁNCHEZ LÓPEZ ', 'ASISTENTE DE APOYO ADMINISTRATIVO', 'Administración y Finanzas', '2020-02-21 16:56:09'),
(149, 'VERÓNICA IVONNE', 'LÓPEZ GARCÍA', 'ESPECIALISTA DE ORIENTACIÓN VOCACIONAL', 'Admisiones y Becas', '2020-02-21 16:58:44'),
(150, 'GUSTAVO ADOLFO', 'TORRES LÓPEZ', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Medicina', '2020-02-21 16:59:55'),
(151, 'ADRIANA', 'BETANZOS LÓPEZ', 'ASESOR PREUNIVERSITARIO', 'Antención Preuniversitaria', '2020-02-21 17:00:18'),
(152, 'BRENDA EDITH', 'MÉNDEZ ROMERO', 'AUXILIAR ADMINISTRATIVO', 'Otros', '2020-02-21 17:01:04'),
(153, 'EDWIN FLORENCIO', 'JARQUÍN SANTIAGO', 'ASESOR PREUNIVERSITARIO', 'Antención Preuniversitaria', '2020-02-21 17:02:11'),
(154, 'JOSUÉ ALEJANDRO', 'CARBAJAL RIVERA', 'COORDINADOR DE COMUNICACIÓN', 'Comunicación y eventos', '2020-02-21 17:03:18'),
(155, 'CESAR OCTAVIO', 'SORIANO MARQUEZ', 'ESPECIALISTA DE EVENTOS', 'Comunicación y eventos', '2020-02-21 17:04:27'),
(156, 'ALBERT HAMIT', 'JARQUIN MARIN', 'SUB-COORDINADOR DE ESCUELA', 'Escuela de Medicina', '2020-02-21 17:05:19'),
(157, 'MIGUEL', 'CARRASCO MATUS', 'PROFESOR DE TIEMPO COMPLETO', 'Escuela de Turismo y Gastronomía', '2020-02-21 17:05:55'),
(158, 'CONCEPCION JAZMIN', 'SANTOS ESTRADA', 'COORDINADOR DE ARTE Y CULTURA', 'Arte y Cultura', '2020-02-21 17:07:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distros`
--

CREATE TABLE `distros` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 NOT NULL,
  `edificio` varchar(55) CHARACTER SET utf8 NOT NULL,
  `edificio_largo` varchar(55) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(12, 'Silla auditorio azul.jpg', 'image/png'),
(13, 'Silla de estudio Tipo B.jpg', 'image/png'),
(14, 'Silla azul obscuro.jpg', 'image/png'),
(15, 'Silla auditorio Rojo.jpg', 'image/png'),
(16, 'Silla de estudio.jpg', 'image/png'),
(17, 'Silla ejecutiva sencilla Tipo A Tela Negro.jpg', 'image/png'),
(18, 'Silla ejecutiva sencilla Tipo B Tela Negro.jpg', 'image/png'),
(19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', 'image/png'),
(20, 'Silla ejecutiva Tipo C Tela Negro.jpg', 'image/png'),
(21, 'Silla ejecutiva Tipo D Tela Negro.jpg', 'image/png'),
(22, 'Silla lúdica amarilla Tipo A.jpg', 'image/png'),
(23, 'Silla lúdica amarilla Tipo B.jpg', 'image/png'),
(24, 'Silla lúdica blanca Tipo A.jpg', 'image/png'),
(25, 'Silla lúdica naranja Tipo A.jpg', 'image/png'),
(26, 'Silla lúdica naranja Tipo B.jpg', 'image/png'),
(27, 'Silla lúdica roja Tipo A.jpg', 'image/png'),
(28, 'Silla lúdica roja Tipo B.jpg', 'image/png'),
(29, 'Silla lúdica verde Tipo A.jpg', 'image/png'),
(30, 'Silla lúdica verde Tipo B.jpg', 'image/png'),
(31, 'Silla naranja.jpg', 'image/png'),
(32, 'Silla negra.jpg', 'image/png'),
(33, 'Silla roja.jpg', 'image/png'),
(34, 'Silla verde.jpg', 'image/png'),
(35, 'Silla visita naranja acabado cromo.jpg', 'image/png'),
(36, 'Silla visita naranja acabado negro.jpg', 'image/png'),
(37, 'Silla visita negro acabado negro.jpeg', 'image/png'),
(38, 'Silla visita negro tipo B.jpg', 'image/png'),
(39, 'Silla visita roja acabado negro.jpeg', 'image/png'),
(40, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', 'image/jpeg'),
(41, 'Escritorio chico lúdico.jpg', 'image/png'),
(42, 'Escritorio chico Tipo A.jpg', 'image/png'),
(43, 'Escritorio Chico Tipo B.jpg', 'image/png'),
(44, 'Escritorio chico Tipo C.jpg', 'image/png'),
(45, 'Escritorio chico Tipo D.jpg', 'image/png'),
(46, 'Escritorio Chico Verde.jpg', 'image/png'),
(47, 'Escritorio largo lúdico.jpg', 'image/png'),
(48, 'Escritorio largo Tipo A.jpg', 'image/png'),
(49, 'Escritorio largo Tipo B.jpg', 'image/png'),
(50, 'Escritorio largo Tipo C.jpg', 'image/png'),
(51, 'Escritorio sencillo negro.jpg', 'image/png'),
(52, 'Escritorio sencillo Tipo B naranja.jpg', 'image/png'),
(53, 'Escritorio sencillo Tipo C naranja.jpg', 'image/png'),
(54, 'Escritorio Tipo L naranja manija plateada.png', 'image/png'),
(55, 'Escritorio Tipo L naranja.jpg', 'image/jpeg'),
(56, 'Escritorio Tipo L negro.jpg', 'image/png'),
(57, 'Estrado café.png', 'image/png'),
(58, 'Estrado negro.jpg', 'image/png'),
(59, 'Mesa cuadrada.jpg', 'image/png'),
(60, 'Mesa de trabajo negro.jpeg', 'image/png'),
(61, 'Mesa de trabajo tipo B.jpg', 'image/png'),
(62, 'Mesa de trabajo tipo C.jpg', 'image/png'),
(63, 'Mesa de trabajo tipo D.jpg', 'image/png'),
(64, 'Mesa de trabajo tipo E.jpg', 'image/png'),
(65, 'Mesa grupal circular.jpg', 'image/png'),
(66, 'Mesa grupal hexagonal.jpg', 'image/png'),
(67, 'Mesa individual Triangulo circular.jpg', 'image/png'),
(68, 'Mesa Individual.jpg', 'image/png'),
(69, 'Mesa Semitriangulo.jpg', 'image/png'),
(70, 'Escritorio sencillo naranja.jpg', 'image/jpeg'),
(71, 'Archivero 3 cajones negro.jpg', 'image/png'),
(72, 'Archivero metal gris.jpg', 'image/png'),
(73, 'Mesa de trabajo chico negro.jpg', 'image/jpeg'),
(74, 'Mueble 2 cajones negro manija corta cromo.jpg', 'image/png'),
(75, 'Mueble 2 cajones negro manija larga cromo.jpg', 'image/jpeg'),
(76, 'Mueble 2 cajones negro manija plateada.jpg', 'image/png'),
(77, 'Mueble 2 cajones negro sin manija.jpg', 'image/jpeg'),
(78, 'Mueble 2 cajones negro.jpg', 'image/jpeg'),
(79, 'Mueble 2 puertas largo negro.jpg', 'image/jpeg'),
(80, 'Mueble 3 cajones negro.jpg', 'image/jpeg'),
(81, 'Mueble 3 secciones ruedas negro.jpg', 'image/jpeg'),
(82, 'Mueble 4 cajones abierto negro.jpg', 'image/png'),
(83, 'Mueble 4 cajones blanco.jpg', 'image/png'),
(84, 'Mueble chico 3 espacios.jpg', 'image/png'),
(85, 'Mueble chico 6 espacios negro.jpg', 'image/png'),
(86, 'Mueble delgado café obscuro.jpg', 'image/png'),
(87, 'Mueble sencillo negro con mesa despegable.jpg', 'image/jpeg'),
(88, 'Mueble tipo escritorio 3 cajones negro.jpeg', 'image/png'),
(89, 'Mueble tipo escritorio 4 cajones negro.jpg', 'image/jpeg'),
(90, 'Pizarrón blanco.jpg', 'image/png'),
(91, 'Sillón de espera naranja.jpg', 'image/jpeg'),
(92, 'Ventilador negro pilar.jpg', 'image/png'),
(93, 'Librero 3 secciones 2 puertas negro.jpg', 'image/png'),
(94, 'Librero negro 4 secciones.png', 'image/png'),
(95, 'Librero negro 6 secciones.jpg', 'image/png'),
(96, 'Repisa 2 secciones 1 cajón  negro.jpg', 'image/jpeg'),
(97, 'Repisa 2 secciones negro.jpg', 'image/jpeg'),
(98, 'Repisa 3 secciones mediano negro.jpg', 'image/png'),
(99, 'Repisa 4 secciones grande negro.jpg', 'image/jpeg'),
(100, 'Repisa 4 secciones mediano negro.jpg', 'image/jpeg'),
(101, 'Repisa 5 pisos Negro.jpg', 'image/jpeg'),
(102, 'Repisa 6 secciones blanco.jpg', 'image/png'),
(103, 'Repisa 6 secciones grande negro.jpg', 'image/png'),
(104, 'Repisa doble 1 sección negro.jpg', 'image/jpeg'),
(105, 'Repisa doble esquinado negro.jpg', 'image/jpeg'),
(106, 'Repisa doble esquinado soporte negro.jpg', 'image/jpeg'),
(107, 'Repisa dos secciones negro apertura superior.jpg', 'image/png'),
(108, 'Repisa sencilla negro.jpg', 'image/jpeg'),
(109, 'Repisa Tipo cajón negro.jpg', 'image/png'),
(110, 'e003b214-cf23-49e0-bb06-3d2b82369318.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `categorie_id`, `media_id`, `date`, `description`) VALUES
(16, 'Silla visita naranja acabado cromo', '-6', 7, 35, '2019-12-17 20:47:55', 'Tela color Naranja, Orillas color plateado cromado, Sin descanso de brazos'),
(17, 'Silla visita naranja acabado negro', '-12', 7, 36, '2019-12-17 20:53:14', 'Tela color Naranja, Orillas color negro, Sin descanso de brazos'),
(18, 'Silla visita roja acabado negro', '-3', 7, 39, '2019-12-17 20:53:45', 'Tela color Rojo, Orillas color negro, Sin descanso de Brazos'),
(19, 'Silla ejecutiva Tipo B Vinil Negro', '-16', 7, 19, '2019-12-17 20:54:25', 'Color Negro, Acabado tipo piel, Orillas negro, Con descanso de brazos'),
(20, 'Silla ejecutiva Tipo B Tela Negro', '-8', 7, 40, '2019-12-17 20:56:23', 'Color Negro, Acabado Tela, Orillas negro, Con descanso de brazos'),
(21, 'Silla visita negro tipo B', '-21', 7, 38, '2019-12-17 20:57:14', 'Tela color Negro con puntos, Orillas color negro, Sin descanso de Brazos'),
(22, 'Silla ejecutiva Tipo D Tela Negro', '-1', 7, 21, '2019-12-17 20:57:52', ' Color Negro, Acabado Tela, Orillas negro, Con descanso de brazos'),
(23, 'Silla visita negro acabado negro', '-243', 7, 37, '2019-12-17 20:58:34', 'Tela color Negro, Orillas color negro, Sin descanso de Brazos'),
(24, 'Silla de estudio', '-410', 7, 16, '2019-12-17 21:00:08', 'Color Negro, Orillas plateadas, Con paleta Alumnos'),
(25, 'Silla de estudio Tipo B', '-18', 7, 13, '2019-12-17 21:00:44', ' Color Negro, Orillas plateadas, Sin paleta, Profesores'),
(26, 'Silla lúdica naranja Tipo A', '-5', 7, 25, '2019-12-17 21:01:34', 'Color naranja, Giratoria, Sin paleta, Alumnos'),
(27, 'Silla lúdica amarilla Tipo A', '-5', 7, 22, '2019-12-17 21:02:09', 'Color Amarillo, Giratoria, Sin paleta, Alumnos'),
(28, 'Silla lúdica roja Tipo A', '-5', 7, 27, '2019-12-17 21:02:42', 'Color roja, Giratoria, Sin paleta, Alumnos 	'),
(29, 'Silla lúdica verde Tipo A', '-5', 7, 29, '2019-12-17 21:03:12', 'Color verde, Giratoria, Sin paleta Alumnos'),
(30, 'Silla lúdica amarilla Tipo B', '1', 7, 23, '2019-12-17 21:03:39', 'Color Amarillo, Giratoria, Con paleta Alumnos'),
(31, 'Silla lúdica roja Tipo B', '-3', 7, 28, '2019-12-17 21:04:09', 'Color roja, Giratoria, Con paleta Alumnos'),
(32, 'Silla lúdica verde Tipo B', '-7', 7, 30, '2019-12-17 21:04:41', 'Color verde, Giratoria, Con paleta Alumnos'),
(33, 'Silla lúdica blanca Tipo A', '0', 7, 24, '2019-12-17 21:05:24', 'Color Amarillo, Giratoria, Sin paleta Profesores'),
(34, 'Silla auditorio azul', '-65', 7, 12, '2019-12-17 21:05:55', 'Tela color Azul, Paleta color negra, Con descanso de Brazos, Orillas color negro'),
(35, 'Silla auditorio Rojo', '-65', 7, 15, '2019-12-17 21:06:28', 'Tela color rojo, Paleta color negra, Con descanso de Brazos, Orillas color negro'),
(36, 'Silla lúdica naranja Tipo B', '-5', 7, 26, '2019-12-17 21:06:56', 'Color naranja, Giratoria, Con paleta Alumnos'),
(37, 'Silla ejecutiva sencilla Tipo A Tela Negro', '0', 7, 17, '2019-12-17 21:07:26', 'Color Negro, Acabado Tela, Orillas negro, Sin descanso de brazos'),
(38, 'Silla ejecutiva sencilla Tipo B Tela Negro', '1', 7, 18, '2019-12-17 21:07:58', 'Color Negro, Acabado Tela, Orillas negro, Sin descanso de brazos'),
(39, 'Silla ejecutiva Tipo C Tela Negro', '-4', 7, 20, '2019-12-17 21:08:27', 'Color Negro, Acabado Tela, Orillas negro, Con descanso de brazos'),
(40, 'Silla negra', '-8', 7, 32, '2019-12-17 21:08:57', 'Color Negro, Plástico, Patas silla plateado, Sin descanso de brazos'),
(41, 'Silla azul obscuro', '-7', 7, 14, '2019-12-17 21:09:29', 'Color azul obscuro, Plástico, Patas silla plateado, Sin descanso de brazos'),
(42, 'Silla verde', '-8', 7, 34, '2019-12-17 21:10:03', 'Color verde, Plástico, Patas silla plateado, Sin descanso de brazos'),
(43, 'Silla roja', '-9', 7, 33, '2019-12-17 21:10:31', 'Color roja, Plástico, Patas silla plateado, Sin descanso de brazos'),
(44, 'Silla naranja', '-8', 7, 31, '2019-12-17 21:11:00', 'Color naranja, Plástico, Patas silla plateado, Sin descanso de brazos'),
(45, 'Escritorio Tipo L negro', '-11', 8, 56, '2019-12-17 21:28:09', 'Escritorio doble, Esquinado, Color Negro'),
(46, 'Escritorio sencillo naranja', '-7', 8, 70, '2019-12-17 21:28:50', 'Escritorio de 1 pieza, Color Naranja'),
(47, 'Mesa de trabajo negro', '0', 8, 60, '2019-12-17 21:29:24', 'Escritorio de 1 pieza, Color Negro'),
(48, 'Escritorio Tipo L naranja', '0', 8, 55, '2019-12-17 21:29:53', 'Escritorio doble, Esquinado, Color Naranja'),
(49, 'Escritorio largo lúdico', '-7', 8, 47, '2019-12-17 21:30:22', '3 lugares, Plástico, Alumnos'),
(50, 'Escritorio chico lúdico', '0', 8, 41, '2019-12-17 21:30:55', '1 lugar, Plástico, Profesores'),
(51, 'Escritorio largo Tipo A', '-43', 8, 48, '2019-12-17 21:31:40', '3 lugares, Tipo madera, Alumnos'),
(52, 'Escritorio chico Tipo A', '-5', 8, 42, '2019-12-17 21:32:15', '1 lugar, Tipo madera, Profesores'),
(53, 'Escritorio largo Tipo B', '-5', 8, 49, '2019-12-17 21:32:50', '3 lugares, Color negro, Alumnos'),
(54, 'Escritorio Chico Tipo B', '-5', 8, 43, '2019-12-17 21:33:22', '2 lugares, Color negro, Alumnos'),
(55, 'Escritorio Chico Verde', '0', 8, 46, '2019-12-17 21:33:52', '1 lugar, Color verde oscuro, Profesores'),
(56, 'Escritorio largo Tipo C', '-13', 8, 50, '2019-12-17 21:34:20', '3 lugares, Color naranja, Alumnos'),
(57, 'Escritorio chico Tipo C', '-2', 8, 44, '2019-12-17 21:34:56', '1 lugar, Color naranja, Alumnos'),
(58, 'Mesa cuadrada', '0', 8, 59, '2019-12-17 21:35:53', 'Color café, Impresora, Madera'),
(59, 'Mesa de trabajo tipo C', '0', 8, 62, '2019-12-17 21:36:21', '1 lugar, Color negro, Profesores'),
(60, 'Mesa de trabajo tipo D', '-9', 8, 63, '2019-12-17 21:36:49', '1 lugar, Color negro, Profesores'),
(61, 'Mesa de trabajo tipo B', '-5', 8, 61, '2019-12-17 21:37:22', '1 lugar, Color negro, Profesores'),
(62, 'Estrado negro', '0', 9, 58, '2019-12-17 21:37:47', '1 lugar, Color negro'),
(63, 'Estrado café', '0', 9, 57, '2019-12-17 21:38:08', '1 lugar, Color café'),
(64, 'Mesa de trabajo tipo E', '0', 8, 64, '2019-12-17 21:38:54', '1 lugar, Color negro, Profesores'),
(65, 'Escritorio sencillo negro', '-3', 8, 51, '2019-12-17 21:39:37', 'Escritorio de 1 pieza, Color Negro'),
(66, 'Escritorio sencillo Tipo B naranja', '-3', 8, 52, '2019-12-17 21:40:06', 'Escritorio de 1 pieza, Color Naranja'),
(67, 'Escritorio sencillo Tipo C naranja', '0', 8, 53, '2019-12-17 21:40:33', 'Escritorio de 1 pieza, Color Naranja'),
(68, 'Escritorio Tipo L naranja manija plateada', '0', 8, 54, '2019-12-17 21:41:11', 'Escritorio doble, Esquinado, Color Naranja'),
(69, 'Escritorio chico Tipo D', '-6', 8, 45, '2019-12-17 21:41:45', '1 Lugar, Alumnos, Color Naranja'),
(70, 'Mesa Individual', '-18', 8, 68, '2019-12-17 21:42:17', ' Escritorio individual, 4 lados, Color blanco'),
(71, 'Mesa grupal hexagonal', '-1', 8, 66, '2019-12-17 21:42:51', 'Escritorio grupal, 6 lados, Color blanco'),
(72, 'Mesa grupal circular', '0', 8, 65, '2019-12-17 21:44:28', 'Escritorio grupal, circular Color blanco'),
(73, 'Mesa individual Triangulo circular', '-3', 8, 67, '2019-12-17 21:45:04', 'Escritorio grupal, Tipo triangulo, Color blanco'),
(74, 'Mesa Semitriangulo', '-3', 8, 69, '2019-12-17 21:45:34', 'Escritorio grupal, 6 lados, Color blanco'),
(75, 'Mueble tipo escritorio 4 cajones negro', '0', 10, 89, '2019-12-17 22:41:16', 'mueble'),
(76, 'Mueble 2 cajones negro', '-6', 10, 78, '2019-12-17 22:41:34', 'mueble'),
(77, 'Mueble sencillo negro con mesa despegable', '0', 10, 87, '2019-12-17 22:41:53', 'mueble'),
(78, 'Mueble 2 cajones negro manija larga cromo', '0', 10, 75, '2019-12-17 22:42:27', 'mueble'),
(79, 'Mesa de trabajo chico negro', '-2', 10, 73, '2019-12-17 22:42:42', 'mueble'),
(80, 'Mueble 4 cajones blanco', '0', 10, 83, '2019-12-17 22:42:56', 'mueble'),
(81, 'Mueble 2 cajones negro manija corta cromo', '-1', 10, 74, '2019-12-17 22:43:25', 'mueble'),
(82, 'Mueble 2 cajones negro sin manija', '0', 10, 77, '2019-12-17 22:43:40', 'mueble'),
(83, 'Mueble 4 cajones abierto negro', '-1', 10, 82, '2019-12-17 22:43:55', 'mueble'),
(84, 'Mueble tipo escritorio 3 cajones negro', '0', 10, 88, '2019-12-17 22:44:14', 'mueble'),
(85, 'Mueble 2 puertas largo negro', '1', 10, 79, '2019-12-17 22:44:32', 'mueble'),
(86, 'Mueble 3 cajones negro', '-1', 10, 80, '2019-12-17 22:44:49', 'mueble'),
(87, 'Mueble 3 secciones ruedas negro', '0', 10, 81, '2019-12-17 22:45:05', 'mueble'),
(88, 'Sillón de espera naranja', '1', 10, 91, '2019-12-17 22:45:18', 'mueble'),
(89, 'Pizarrón blanco', '-21', 10, 90, '2019-12-17 22:45:31', 'mueble'),
(90, 'Archivero 3 cajones negro', '-1', 10, 71, '2019-12-17 22:45:44', 'mueble'),
(91, 'Mueble 2 cajones negro manija plateada', '0', 10, 76, '2019-12-17 22:46:04', 'mueble'),
(92, 'Ventilador negro pilar', '-2', 10, 92, '2019-12-17 22:46:16', 'mueble'),
(93, 'Archivero metal gris', '0', 10, 72, '2019-12-17 22:46:32', 'mueble'),
(94, 'Mueble chico 3 espacios', '-1', 10, 84, '2019-12-17 22:46:45', 'mueble'),
(95, 'Mueble chico 6 espacios negro', '-1', 10, 85, '2019-12-17 22:46:59', 'mueble'),
(96, 'Mueble delgado café obscuro', '0', 10, 86, '2019-12-17 22:47:12', 'mueble'),
(97, 'Repisa 2 secciones 1 cajón  negro', '0', 11, 96, '2019-12-17 23:00:14', 'repisa'),
(98, 'Repisa doble esquinado negro', '0', 11, 105, '2019-12-17 23:00:30', 'repisa'),
(99, 'Repisa 5 pisos Negro', '0', 11, 101, '2019-12-17 23:00:44', 'repisa'),
(100, 'Repisa doble 1 sección negro', '0', 11, 104, '2019-12-17 23:01:00', 'repisa'),
(101, 'Repisa sencilla negro', '-1', 11, 108, '2019-12-17 23:01:14', 'repisa'),
(102, 'Repisa 4 secciones grande negro', '0', 11, 99, '2019-12-17 23:01:30', 'repisa'),
(103, 'Repisa 4 secciones mediano negro', '0', 11, 100, '2019-12-17 23:01:43', 'repisa'),
(104, 'Repisa 2 secciones negro', '-1', 11, 97, '2019-12-17 23:02:05', 'repisa'),
(105, 'Repisa doble esquinado soporte negro', '0', 11, 106, '2019-12-17 23:02:22', 'repisa'),
(106, 'Repisa 6 secciones grande negro', '0', 11, 103, '2019-12-17 23:02:36', 'repisa'),
(107, 'Repisa 3 secciones mediano negro', '0', 11, 98, '2019-12-17 23:02:51', 'repisa'),
(108, 'Repisa Tipo cajón negro', '-5', 11, 109, '2019-12-17 23:03:07', 'repisa'),
(109, 'Librero negro 6 secciones', '-1', 11, 95, '2019-12-17 23:03:27', 'librero'),
(110, 'Repisa dos secciones negro apertura superior', '0', 11, 107, '2019-12-17 23:03:45', 'repisa'),
(111, 'Librero 3 secciones 2 puertas negro', '0', 11, 93, '2019-12-17 23:03:59', 'librero'),
(112, 'Librero negro 4 secciones', '0', 11, 94, '2019-12-17 23:04:15', 'librero'),
(113, 'Repisa 6 secciones blanco', '0', 11, 102, '2019-12-17 23:04:30', 'repisa'),
(116, 'Librero 1 seccion doble puertas', '-3', 11, 110, '2020-04-23 14:46:10', 'Librero,1,seccion,doble,puertas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productsowner`
--

CREATE TABLE `productsowner` (
  `id_dueño` int(11) NOT NULL COMMENT 'Es el id que viene de la tabla characters',
  `cantidad` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `idmedia` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL COMMENT 'Es el id que viene de la tabla products',
  `fileMedia` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Es el nombre del file que viene de la tabla media',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productsowner`
--

INSERT INTO `productsowner` (`id_dueño`, `cantidad`, `nombre`, `idCategoria`, `idmedia`, `idProducto`, `fileMedia`, `date`) VALUES
(51, '7', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-17 23:07:43'),
(51, '22', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-17 23:08:17'),
(51, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-17 23:08:35'),
(51, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:08:43'),
(52, '7', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-17 23:10:35'),
(52, '21', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-17 23:10:51'),
(52, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-17 23:11:02'),
(52, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:11:08'),
(53, '23', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:12:23'),
(53, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:12:34'),
(53, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:12:42'),
(53, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:12:52'),
(54, '30', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:13:59'),
(54, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:14:08'),
(54, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:14:20'),
(54, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:14:29'),
(55, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:15:13'),
(55, '35', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:15:24'),
(55, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:15:34'),
(56, '16', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:16:06'),
(56, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:16:16'),
(56, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:16:26'),
(56, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:16:35'),
(57, '40', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:17:06'),
(57, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:17:15'),
(57, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:17:28'),
(57, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:17:36'),
(58, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:18:21'),
(58, '14', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:18:38'),
(58, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:18:52'),
(59, '40', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:19:28'),
(59, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:19:38'),
(59, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-17 23:19:49'),
(59, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:19:57'),
(60, '40', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:20:32'),
(60, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:20:42'),
(60, '1', 'Mesa de trabajo tipo E', 8, 64, 64, 'Mesa de trabajo tipo E.jpg', '2019-12-17 23:21:00'),
(60, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-17 23:21:06'),
(61, '8', 'Escritorio largo lúdico', 8, 47, 49, 'Escritorio largo lúdico.jpg', '2019-12-17 23:21:42'),
(61, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:22:35'),
(61, '6', 'Silla lúdica amarilla Tipo A', 7, 22, 27, 'Silla lúdica amarilla Tipo A.jpg', '2019-12-17 23:22:49'),
(61, '6', 'Silla lúdica naranja Tipo A', 7, 25, 26, 'Silla lúdica naranja Tipo A.jpg', '2019-12-17 23:23:07'),
(61, '6', 'Silla lúdica roja Tipo A', 7, 27, 28, 'Silla lúdica roja Tipo A.jpg', '2019-12-17 23:23:21'),
(61, '6', 'Silla lúdica verde Tipo A', 7, 29, 29, 'Silla lúdica verde Tipo A.jpg', '2019-12-17 23:23:33'),
(62, '1', 'Mesa de trabajo tipo C', 8, 62, 59, 'Mesa de trabajo tipo C.jpg', '2019-12-17 23:24:37'),
(62, '18', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-17 23:24:48'),
(62, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-17 23:25:00'),
(63, '66', 'Silla auditorio azul', 7, 12, 34, 'Silla auditorio azul.jpg', '2019-12-18 09:46:09'),
(63, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:46:19'),
(63, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-18 09:46:32'),
(63, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:46:49'),
(63, '1', 'Estrado café', 9, 57, 63, 'Estrado café.png', '2019-12-18 09:46:57'),
(64, '6', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 09:47:45'),
(64, '14', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 09:47:59'),
(64, '2', 'Escritorio chico Tipo C', 8, 44, 57, 'Escritorio chico Tipo C.jpg', '2019-12-18 09:48:45'),
(64, '12', 'Escritorio largo Tipo C', 8, 50, 56, 'Escritorio largo Tipo C.jpg', '2019-12-18 09:49:01'),
(64, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 09:49:10'),
(64, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:49:20'),
(64, '1', 'Mesa cuadrada', 8, 59, 58, 'Mesa cuadrada.jpg', '2019-12-18 09:49:30'),
(64, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:49:41'),
(65, '17', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 09:50:33'),
(65, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:50:46'),
(65, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-18 09:51:00'),
(65, '2', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:51:13'),
(66, '6', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 09:52:04'),
(66, '18', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 09:52:20'),
(66, '6', 'Escritorio Chico Tipo B', 8, 43, 54, 'Escritorio Chico Tipo B.jpg', '2019-12-18 09:52:33'),
(66, '6', 'Escritorio largo Tipo B', 8, 49, 53, 'Escritorio largo Tipo B.jpg', '2019-12-18 09:52:53'),
(66, '1', 'Escritorio Chico Verde', 8, 46, 55, 'Escritorio Chico Verde.jpg', '2019-12-18 09:53:07'),
(66, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:53:16'),
(66, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:53:23'),
(67, '8', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-18 09:55:40'),
(67, '24', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 09:55:57'),
(67, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-18 09:56:11'),
(67, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:56:22'),
(67, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:56:28'),
(68, '8', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-18 09:57:24'),
(68, '23', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 09:57:39'),
(68, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-18 09:57:50'),
(68, '1', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 09:58:02'),
(68, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:58:32'),
(68, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:58:38'),
(69, '66', 'Silla auditorio Rojo', 7, 15, 35, 'Silla auditorio Rojo.jpg', '2019-12-18 09:59:18'),
(69, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 09:59:27'),
(69, '1', 'Mesa de trabajo tipo D', 8, 63, 60, 'Mesa de trabajo tipo D.jpg', '2019-12-18 09:59:38'),
(69, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 09:59:46'),
(69, '1', 'Estrado negro', 9, 58, 62, 'Estrado negro.jpg', '2019-12-18 09:59:54'),
(32, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:01:08'),
(32, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:01:22'),
(32, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:01:32'),
(32, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:01:42'),
(32, '1', 'Librero negro 6 secciones', 11, 95, 109, 'Librero negro 6 secciones.jpg', '2019-12-18 10:01:51'),
(32, '1', 'Ventilador negro pilar', 10, 92, 92, 'Ventilador negro pilar.jpg', '2019-12-18 10:02:02'),
(73, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:08:02'),
(73, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:08:10'),
(73, '1', 'Ventilador negro pilar', 10, 92, 92, 'Ventilador negro pilar.jpg', '2019-12-18 10:08:21'),
(73, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:08:30'),
(73, '1', 'Archivero metal gris', 10, 72, 93, 'Archivero metal gris.jpg', '2019-12-18 10:08:39'),
(34, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:12:03'),
(34, '1', 'Mueble chico 3 espacios', 10, 84, 94, 'Mueble chico 3 espacios.jpg', '2019-12-18 10:12:12'),
(34, '1', 'Mueble chico 6 espacios negro', 10, 85, 95, 'Mueble chico 6 espacios negro.jpg', '2019-12-18 10:12:24'),
(34, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:12:31'),
(35, '1', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 10:13:25'),
(35, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:13:32'),
(35, '1', 'Mueble delgado café obscuro', 10, 86, 96, 'Mueble delgado café obscuro.jpg', '2019-12-18 10:13:39'),
(35, '1', 'Repisa 6 secciones blanco', 11, 102, 113, 'Repisa 6 secciones blanco.jpg', '2019-12-18 10:13:45'),
(35, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2019-12-18 10:13:53'),
(40, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:14:53'),
(40, '2', 'Silla visita naranja acabado cromo', 7, 35, 16, 'Silla visita naranja acabado cromo.jpg', '2019-12-18 10:15:18'),
(40, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:15:25'),
(40, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:15:37'),
(40, '1', 'Repisa 5 pisos Negro', 11, 101, 99, 'Repisa 5 pisos Negro.jpg', '2019-12-18 10:15:45'),
(41, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:16:04'),
(41, '3', 'Silla visita naranja acabado negro', 7, 36, 17, 'Silla visita naranja acabado negro.jpg', '2019-12-18 10:16:13'),
(41, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:16:20'),
(41, '1', 'Mesa de trabajo chico negro', 10, 73, 79, 'Mesa de trabajo chico negro.jpg', '2019-12-18 10:16:29'),
(41, '1', 'Mueble 2 cajones negro sin manija', 10, 77, 82, 'Mueble 2 cajones negro sin manija.jpg', '2019-12-18 10:16:37'),
(41, '1', 'Repisa sencilla negro', 11, 108, 101, 'Repisa sencilla negro.jpg', '2019-12-18 10:16:53'),
(42, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:17:13'),
(42, '3', 'Silla visita naranja acabado negro', 7, 36, 17, 'Silla visita naranja acabado negro.jpg', '2019-12-18 10:17:21'),
(42, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:17:27'),
(42, '1', 'Mueble sencillo negro con mesa despegable', 10, 87, 77, 'Mueble sencillo negro con mesa despegable.jpg', '2019-12-18 10:17:37'),
(42, '1', 'Mueble 2 cajones negro manija larga cromo', 10, 75, 78, 'Mueble 2 cajones negro manija larga cromo.jpg', '2019-12-18 10:17:46'),
(42, '1', 'Repisa sencilla negro', 11, 108, 101, 'Repisa sencilla negro.jpg', '2019-12-18 10:17:58'),
(42, '1', 'Repisa doble 1 sección negro', 11, 104, 100, 'Repisa doble 1 sección negro.jpg', '2019-12-18 10:18:07'),
(43, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 10:18:40'),
(43, '2', 'Silla visita naranja acabado negro', 7, 36, 17, 'Silla visita naranja acabado negro.jpg', '2019-12-18 10:18:47'),
(43, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:18:56'),
(43, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:19:05'),
(43, '2', 'Mueble 2 cajones negro manija corta cromo', 10, 74, 81, 'Mueble 2 cajones negro manija corta cromo.jpg', '2019-12-18 10:19:13'),
(43, '1', 'Repisa 2 secciones negro', 11, 97, 104, 'Repisa 2 secciones negro.jpg', '2019-12-18 10:19:41'),
(44, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:20:05'),
(44, '3', 'Silla visita naranja acabado negro', 7, 36, 17, 'Silla visita naranja acabado negro.jpg', '2019-12-18 10:20:12'),
(44, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:20:24'),
(44, '1', 'Mueble 4 cajones blanco', 10, 83, 80, 'Mueble 4 cajones blanco.jpg', '2019-12-18 10:20:31'),
(44, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:20:38'),
(44, '1', 'Mesa de trabajo chico negro', 10, 73, 79, 'Mesa de trabajo chico negro.jpg', '2019-12-18 10:20:45'),
(44, '1', 'Repisa 4 secciones grande negro', 11, 99, 102, 'Repisa 4 secciones grande negro.jpg', '2019-12-18 10:20:51'),
(45, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:21:15'),
(45, '2', 'Silla visita naranja acabado negro', 7, 36, 17, 'Silla visita naranja acabado negro.jpg', '2019-12-18 10:21:25'),
(45, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2019-12-18 10:21:32'),
(45, '1', 'Mesa de trabajo chico negro', 10, 73, 79, 'Mesa de trabajo chico negro.jpg', '2019-12-18 10:21:39'),
(45, '1', 'Repisa 4 secciones mediano negro', 11, 100, 103, 'Repisa 4 secciones mediano negro.jpg', '2019-12-18 10:21:45'),
(46, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 10:22:51'),
(46, '2', 'Silla visita naranja acabado cromo', 7, 35, 16, 'Silla visita naranja acabado cromo.jpg', '2019-12-18 10:23:13'),
(46, '1', 'Escritorio Tipo L naranja', 8, 55, 48, 'Escritorio Tipo L naranja.jpg', '2019-12-18 10:23:21'),
(46, '1', 'Repisa 2 secciones 1 cajón  negro', 11, 96, 97, 'Repisa 2 secciones 1 cajón  negro.jpg', '2019-12-18 10:23:36'),
(46, '1', 'Mueble tipo escritorio 4 cajones negro', 10, 89, 75, 'Mueble tipo escritorio 4 cajones negro.jpg', '2019-12-18 10:23:43'),
(46, '1', 'Repisa doble esquinado negro', 11, 105, 98, 'Repisa doble esquinado negro.jpg', '2019-12-18 10:23:53'),
(47, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 10:24:46'),
(47, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:24:54'),
(47, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:25:00'),
(47, '2', 'Mueble 3 cajones negro', 10, 80, 86, 'Mueble 3 cajones negro.jpg', '2019-12-18 10:25:09'),
(47, '1', 'Repisa doble esquinado soporte negro', 11, 106, 105, 'Repisa doble esquinado soporte negro.jpg', '2019-12-18 10:25:16'),
(47, '1', 'Repisa 2 secciones negro', 11, 97, 104, 'Repisa 2 secciones negro.jpg', '2019-12-18 10:25:24'),
(48, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 10:25:50'),
(48, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:26:00'),
(48, '1', 'Mesa de trabajo negro', 8, 60, 47, 'Mesa de trabajo negro.jpeg', '2019-12-18 10:26:07'),
(48, '1', 'Mueble tipo escritorio 3 cajones negro', 10, 88, 84, 'Mueble tipo escritorio 3 cajones negro.jpeg', '2019-12-18 10:26:21'),
(49, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 10:26:42'),
(49, '2', 'Silla visita roja acabado negro', 7, 39, 18, 'Silla visita roja acabado negro.jpeg', '2019-12-18 10:26:49'),
(49, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:26:56'),
(49, '1', 'Mueble 3 secciones ruedas negro', 10, 81, 87, 'Mueble 3 secciones ruedas negro.jpg', '2019-12-18 10:27:02'),
(50, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:27:18'),
(50, '2', 'Silla visita roja acabado negro', 7, 39, 18, 'Silla visita roja acabado negro.jpeg', '2019-12-18 10:27:25'),
(50, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:27:32'),
(50, '2', 'Mueble 4 cajones abierto negro', 10, 82, 83, 'Mueble 4 cajones abierto negro.jpg', '2019-12-18 10:27:40'),
(74, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 10:33:35'),
(74, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:33:41'),
(74, '24', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 10:33:48'),
(74, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:33:57'),
(75, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 10:34:14'),
(75, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:34:23'),
(75, '36', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 10:34:30'),
(75, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:34:39'),
(76, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 10:34:56'),
(76, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:35:04'),
(76, '24', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 10:35:12'),
(76, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:35:18'),
(77, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 10:35:33'),
(77, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:35:38'),
(77, '24', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 10:35:44'),
(77, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:35:50'),
(78, '6', 'Silla lúdica naranja Tipo B', 7, 26, 36, 'Silla lúdica naranja Tipo B.jpg', '2019-12-18 10:36:03'),
(78, '8', 'Silla lúdica verde Tipo B', 7, 30, 32, 'Silla lúdica verde Tipo B.jpg', '2019-12-18 10:36:10'),
(78, '4', 'Silla lúdica roja Tipo B', 7, 28, 31, 'Silla lúdica roja Tipo B.jpg', '2019-12-18 10:36:17'),
(78, '1', 'Silla lúdica blanca Tipo A', 7, 24, 33, 'Silla lúdica blanca Tipo A.jpg', '2019-12-18 10:36:25'),
(78, '1', 'Escritorio chico lúdico', 8, 41, 50, 'Escritorio chico lúdico.jpg', '2019-12-18 10:36:32'),
(78, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:36:38'),
(79, '6', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-18 10:37:28'),
(79, '18', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:37:37'),
(79, '1', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 10:37:44'),
(79, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-18 10:37:50'),
(79, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:37:59'),
(80, '1', 'Mesa de trabajo tipo B', 8, 61, 61, 'Mesa de trabajo tipo B.jpg', '2019-12-18 10:38:16'),
(80, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:38:22'),
(80, '30', 'Silla de estudio', 7, 16, 24, 'Silla de estudio.jpg', '2019-12-18 10:38:31'),
(80, '1', 'Pizarrón blanco', 10, 90, 89, 'Pizarrón blanco.jpg', '2019-12-18 10:38:39'),
(81, '7', 'Escritorio chico Tipo D', 8, 45, 69, 'Escritorio chico Tipo D.jpg', '2019-12-18 10:41:43'),
(81, '1', 'Silla de estudio Tipo B', 7, 13, 25, 'Silla de estudio Tipo B.jpg', '2019-12-18 10:42:23'),
(81, '30', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:42:59'),
(82, '8', 'Escritorio largo Tipo A', 8, 48, 51, 'Escritorio largo Tipo A.jpg', '2019-12-18 10:43:20'),
(82, '1', 'Escritorio chico Tipo A', 8, 42, 52, 'Escritorio chico Tipo A.jpg', '2019-12-18 10:43:29'),
(82, '25', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:43:43'),
(19, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:46:17'),
(19, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:46:25'),
(19, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:46:31'),
(19, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:46:47'),
(20, '1', 'Silla ejecutiva Tipo D Tela Negro', 7, 21, 22, 'Silla ejecutiva Tipo D Tela Negro.jpg', '2019-12-18 10:48:33'),
(20, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:48:42'),
(20, '1', 'Repisa 3 secciones mediano negro', 11, 98, 107, 'Repisa 3 secciones mediano negro.jpg', '2019-12-18 10:48:49'),
(20, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:49:02'),
(21, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:49:37'),
(21, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:49:45'),
(21, '1', 'Escritorio sencillo negro', 8, 51, 65, 'Escritorio sencillo negro.jpg', '2019-12-18 10:49:50'),
(21, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2019-12-18 10:50:08'),
(22, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:50:30'),
(22, '1', 'Silla ejecutiva Tipo C Tela Negro', 7, 20, 39, 'Silla ejecutiva Tipo C Tela Negro.jpg', '2019-12-18 10:50:37'),
(22, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:50:44'),
(22, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:50:51'),
(22, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2019-12-18 10:51:18'),
(22, '1', 'Librero negro 6 secciones', 11, 95, 109, 'Librero negro 6 secciones.jpg', '2019-12-18 10:51:31'),
(23, '2', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 10:51:48'),
(23, '1', 'Silla ejecutiva Tipo C Tela Negro', 7, 20, 39, 'Silla ejecutiva Tipo C Tela Negro.jpg', '2019-12-18 10:51:54'),
(23, '1', 'Escritorio sencillo negro', 8, 51, 65, 'Escritorio sencillo negro.jpg', '2019-12-18 10:52:02'),
(23, '1', 'Librero 3 secciones 2 puertas negro', 11, 93, 111, 'Librero 3 secciones 2 puertas negro.jpg', '2019-12-18 10:52:11'),
(83, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:54:47'),
(83, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:54:54'),
(83, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:55:00'),
(83, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:55:18'),
(83, '1', 'Repisa 6 secciones grande negro', 11, 103, 106, 'Repisa 6 secciones grande negro.jpg', '2019-12-18 10:55:25'),
(84, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:56:28'),
(84, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:56:35'),
(84, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2019-12-18 10:56:41'),
(84, '1', 'Mueble 2 cajones negro', 10, 78, 76, 'Mueble 2 cajones negro.jpg', '2019-12-18 10:56:51'),
(84, '1', 'Archivero 3 cajones negro', 10, 71, 90, 'Archivero 3 cajones negro.jpg', '2019-12-18 10:56:58'),
(85, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:57:42'),
(85, '1', 'Silla ejecutiva Tipo C Tela Negro', 7, 20, 39, 'Silla ejecutiva Tipo C Tela Negro.jpg', '2019-12-18 10:57:47'),
(85, '1', 'Escritorio sencillo negro', 8, 51, 65, 'Escritorio sencillo negro.jpg', '2019-12-18 10:57:53'),
(85, '1', 'Mueble 2 cajones negro manija plateada', 10, 76, 91, 'Mueble 2 cajones negro manija plateada.jpg', '2019-12-18 10:58:01'),
(85, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2019-12-18 10:58:18'),
(86, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 10:59:01'),
(86, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2019-12-18 10:59:09'),
(86, '1', 'Escritorio sencillo negro', 8, 51, 65, 'Escritorio sencillo negro.jpg', '2019-12-18 10:59:15'),
(86, '1', 'Repisa dos secciones negro apertura superior', 11, 107, 110, 'Repisa dos secciones negro apertura superior.jpg', '2019-12-18 10:59:23'),
(24, '2', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2019-12-18 11:00:12'),
(24, '1', 'Silla ejecutiva Tipo C Tela Negro', 7, 20, 39, 'Silla ejecutiva Tipo C Tela Negro.jpg', '2019-12-18 11:00:18'),
(24, '1', 'Escritorio Tipo L naranja manija plateada', 8, 54, 68, 'Escritorio Tipo L naranja manija plateada.png', '2019-12-18 11:00:25'),
(24, '1', 'Librero negro 4 secciones', 11, 94, 112, 'Librero negro 4 secciones.png', '2019-12-18 11:00:37'),
(26, '1', 'Ventilador negro pilar', 10, 92, 92, 'Ventilador negro pilar.jpg', '2020-04-23 14:40:26'),
(18, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 11:01:22'),
(18, '1', 'Escritorio sencillo Tipo B naranja', 8, 52, 66, 'Escritorio sencillo Tipo B naranja.jpg', '2019-12-18 11:01:29'),
(27, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 11:01:59'),
(27, '1', 'Silla ejecutiva sencilla Tipo A Tela Negro', 7, 17, 37, 'Silla ejecutiva sencilla Tipo A Tela Negro.jpg', '2019-12-18 11:02:09'),
(27, '1', 'Escritorio sencillo Tipo C naranja', 8, 53, 67, 'Escritorio sencillo Tipo C naranja.jpg', '2019-12-18 11:02:15'),
(25, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 11:02:39'),
(25, '1', 'Silla ejecutiva Tipo C Tela Negro', 7, 20, 39, 'Silla ejecutiva Tipo C Tela Negro.jpg', '2019-12-18 11:02:50'),
(25, '1', 'Escritorio sencillo Tipo B naranja', 8, 52, 66, 'Escritorio sencillo Tipo B naranja.jpg', '2019-12-18 11:02:55'),
(28, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 11:03:20'),
(28, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 11:03:27'),
(28, '1', 'Escritorio sencillo Tipo B naranja', 8, 52, 66, 'Escritorio sencillo Tipo B naranja.jpg', '2019-12-18 11:03:39'),
(26, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2019-12-18 11:04:01'),
(26, '1', 'Silla ejecutiva Tipo B Tela Negro', 7, 40, 20, 'Silla-ejecutiva-Tipo-B-Tela-Negro.jpg', '2019-12-18 11:04:07'),
(26, '1', 'Escritorio sencillo Tipo B naranja', 8, 52, 66, 'Escritorio sencillo Tipo B naranja.jpg', '2019-12-18 11:04:16'),
(87, '8', 'Silla negra', 7, 32, 40, 'Silla negra.jpg', '2019-12-18 11:04:56'),
(87, '8', 'Silla azul obscuro', 7, 14, 41, 'Silla azul obscuro.jpg', '2019-12-18 11:05:03'),
(87, '9', 'Silla verde', 7, 34, 42, 'Silla verde.jpg', '2019-12-18 11:05:12'),
(87, '9', 'Silla roja', 7, 33, 43, 'Silla roja.jpg', '2019-12-18 11:05:29'),
(87, '9', 'Silla naranja', 7, 31, 44, 'Silla naranja.jpg', '2019-12-18 11:05:44'),
(87, '19', 'Mesa Individual', 8, 68, 70, 'Mesa Individual.jpg', '2019-12-18 11:05:54'),
(87, '2', 'Mesa grupal hexagonal', 8, 66, 71, 'Mesa grupal hexagonal.jpg', '2019-12-18 11:06:02'),
(87, '4', 'Mesa Semitriangulo', 8, 69, 74, 'Mesa Semitriangulo.jpg', '2019-12-18 11:06:24'),
(87, '1', 'Mesa grupal circular', 8, 65, 72, 'Mesa grupal circular.jpg', '2019-12-18 11:06:29'),
(87, '4', 'Mesa individual Triangulo circular', 8, 67, 73, 'Mesa individual Triangulo circular.jpg', '2019-12-18 11:06:37'),
(15, '1', 'Silla ejecutiva Tipo D Tela Negro', 7, 21, 22, 'Silla ejecutiva Tipo D Tela Negro.jpg', '2020-04-23 14:32:57'),
(15, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2020-04-23 14:33:47'),
(15, '1', 'Escritorio sencillo naranja', 8, 70, 46, 'Escritorio sencillo naranja.jpg', '2020-04-23 14:34:26'),
(15, '1', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2020-04-23 14:35:17'),
(15, '1', 'Silla visita negro tipo B', 7, 38, 21, 'Silla visita negro tipo B.jpg', '2020-04-23 14:35:47'),
(18, '3', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2020-04-23 14:38:40'),
(26, '1', 'Repisa Tipo cajón negro', 11, 109, 108, 'Repisa Tipo cajón negro.jpg', '2020-04-23 14:40:50'),
(36, '1', 'Librero 1 seccion doble puertas', 11, 110, 116, 'e003b214-cf23-49e0-bb06-3d2b82369318.jpg', '2020-04-23 14:46:58'),
(36, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2020-04-23 14:48:22'),
(36, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2020-04-23 14:47:58'),
(37, '1', 'Escritorio Tipo L negro', 8, 56, 45, 'Escritorio Tipo L negro.jpg', '2020-04-23 14:49:07'),
(37, '2', 'Silla visita negro acabado negro', 7, 37, 23, 'Silla visita negro acabado negro.jpeg', '2020-04-23 14:49:17'),
(37, '2', 'Librero 1 seccion doble puertas', 11, 110, 116, 'e003b214-cf23-49e0-bb06-3d2b82369318.jpg', '2020-04-23 14:49:42'),
(37, '1', 'Silla ejecutiva Tipo B Vinil Negro', 7, 19, 19, 'Silla ejecutiva Tipo B Vinil Negro.jpeg', '2020-04-23 14:55:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Anahuac', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '3kenpupb1.png', 1, '2020-04-24 10:46:14'),
(2, 'Special Anahuac', 'Special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'hwv9rexy2.png', 1, '2020-04-23 23:16:12'),
(5, 'Alejandro Chavez', 'Alex', '60c6d277a8bd81de7fdde19201bf9c58a3df08f4', 1, 'yxbxxdmn5.png', 1, '2020-04-23 23:14:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Administradores', 1, 1),
(2, 'Supervisores', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `work_area`
--

CREATE TABLE `work_area` (
  `id_area` int(11) UNSIGNED NOT NULL,
  `name_area` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `work_area`
--

INSERT INTO `work_area` (`id_area`, `name_area`) VALUES
(1, 'Escuela de Ingeniería'),
(4, 'Escuela de Turismo y Gastronomía'),
(5, 'Escuela de Negocios'),
(6, 'Escuela de Medicina'),
(7, 'Escuela de Psicología'),
(8, 'Escuela de Comunicación y diseño'),
(9, 'Escuela de Ciencias Juridicas y sociales'),
(10, 'Escuela de Humanidades'),
(11, 'Antención Preuniversitaria'),
(12, 'Deportes'),
(13, 'Centro de lenguas'),
(14, 'Dirección de Formación integral'),
(15, 'Servicios Tecnológicos'),
(16, 'Rectoria'),
(17, 'Finanzas y contaduría'),
(18, 'Servicios escolares'),
(19, 'Biblioteca'),
(20, 'Orientación medica'),
(21, 'Posgrados'),
(22, 'Investigacion'),
(23, 'Vinculacion y egresados'),
(24, 'Consultorio de psicología'),
(25, 'Desarrollo académico'),
(26, 'Otros'),
(28, 'Ayudante General'),
(30, 'Desarrollo Institucional'),
(31, 'Administración y Finanzas'),
(32, 'Recursos Humanos'),
(33, 'Servicios Institucionales'),
(34, 'Programas de extensión'),
(35, 'Pastoral Universitaria'),
(36, 'Admisiones y Becas'),
(37, 'Programas de Liderazgo'),
(38, 'Diseñador y Producción'),
(39, 'Operación acádemica'),
(41, 'Acción social'),
(42, 'Comunicación y eventos'),
(43, 'Arte y Cultura');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `distros`
--
ALTER TABLE `distros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `productsowner`
--
ALTER TABLE `productsowner`
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `id_dueño` (`id_dueño`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- Indices de la tabla `work_area`
--
ALTER TABLE `work_area`
  ADD PRIMARY KEY (`id_area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `distros`
--
ALTER TABLE `distros`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `work_area`
--
ALTER TABLE `work_area`
  MODIFY `id_area` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
