-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2025 a las 14:33:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguimiento_proyectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta`
--

CREATE TABLE `acta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otb` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `lugar` varchar(255) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `notas` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `acta`
--

INSERT INTO `acta` (`id`, `otb`, `fecha`, `lugar`, `hora`, `notas`, `usuario_id`, `created_at`, `updated_at`) VALUES
(1, 'JUNTA VECINAL MARTIN CARDENAS', '2024-01-24', 'SALON DE CONCERTACIONES', '15:00:00', 'POZO DE AGUA  QUE SE SECO', 9, '2025-02-03 13:15:26', '2025-02-03 13:15:26'),
(2, 'JUNTA VECINAL SENAC', '2024-01-24', 'SALON DE CONCERTACIONES', NULL, NULL, 9, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(3, 'OTB BARRIO FERROVIARIO SUMUMPAYA NORTE', '2024-01-24', 'SALON DE CONCERTACIONES', NULL, NULL, 9, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(4, 'OTB JUNTA VECINAL FLORIDA II NORTE', '2024-01-24', 'SALON DE CONCERTACIONES', NULL, NULL, 9, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(5, 'OTB BARRIO CANADA', '0024-01-24', 'SALON DE CONCERTACIONES', NULL, NULL, 9, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(6, 'OTB SUMUMPAYA FERROVIARIO SUD', '2024-01-24', 'SALON DE CONCERTACIONES', NULL, NULL, 9, '2025-02-03 13:32:24', '2025-02-03 13:32:24'),
(7, 'JUNTA VECINAL PRADERAS DEL SUR', '2024-09-24', 'CBBA', NULL, 'PRADERAS DEL  SUR', 9, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(8, 'OTB SAN FRANCISCO', '2024-09-24', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:37:19', '2025-02-03 13:37:19'),
(9, 'URB. SANTA ROSA TRABAJADORES DE COMERCIO', '2024-09-24', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(10, 'JUNTA VECINAL ESQUILAN CHIJLLAWIRI', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:47:07', '2025-02-03 13:47:07'),
(11, 'JUNTA VECINAL ESQUILAN CHIJLLAWIRI', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(12, 'OTB SUMUMPAYA SUD', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(13, 'JUNTA VECINAL SUMUMPAYA CALAMINA', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(14, 'OTB SUMUMPAYA CHICO', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(15, 'SINDICATO AGRARIO SUMUMPAYA KULLKO', '2025-01-19', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:03:49', '2025-02-03 14:03:49'),
(16, 'OTB SUMUMPAYA CENTRAL', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(17, 'SINDICATO AGRARIO QENAMARI KULLKU', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(18, 'JUNTA VECINAL MIRADOR DE COLCAPIRHUA', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(19, 'JUNTA VECINAL ALTO COLCAPIRHUA', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:12:40', '2025-02-03 14:12:40'),
(20, 'JUNTA VECINAL PRADERAS DEL SUR', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(21, 'OTB CIELO MOCKO', '2025-02-01', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:17:31', '2025-02-03 14:17:31'),
(22, 'JUNTA VECINAL “TARAMOCKO”', '2025-01-25', 'COLCAPIRHUA', NULL, NULL, 9, '2025-02-03 14:18:53', '2025-02-03 14:18:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `acta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `descripcion`, `acta_id`, `created_at`, `updated_at`) VALUES
(1, 'PERFORACION DE POZO DE AGUA', 1, '2025-02-03 13:15:26', '2025-02-03 13:15:26'),
(2, 'TANQUE DE ALMACENAMIENTO', 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(3, 'CONST  DE ROMPUELLES', 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(4, 'RECOGER ESCOMBROS DE PLAZAS Y REPINTADO', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(5, 'PAVIEMENTO CALLE SALINAS', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(6, 'ENMALLADO', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(7, 'LUMINARIAS', 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(8, 'PAV  ESCALERANI', 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(9, 'PAV', 5, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(10, 'PAV', 6, '2025-02-03 13:32:24', '2025-02-03 13:32:24'),
(11, 'CREAR  UNA  UNIDAD  EDUCATIVA', 7, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(12, 'MERCADO DE SAN FRANSCISCO', 8, '2025-02-03 13:37:19', '2025-02-03 13:37:19'),
(13, 'PAVIMENTO DE LA CALLE  CORANI', 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(14, 'ALCANTARRILLADO  CAMPERO', 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(15, 'LIMPIEZA  DE LA PLAZA Y MMTTO; DEVOLUCION DE  RESB..', 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(16, 'RIO PAMPAMAYU', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(17, 'ZONA AUTORIZADA', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(18, 'PAVIMENTACION', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(19, 'RIPIO', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(20, 'DRAGADO RIO CHIJLLAWIRI Y ROCHA', 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(21, 'PUENTE DE CHIJLLAWIRRI', 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(22, 'DRAGADO  RIO VALVERDE', 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(23, 'RIPIO', 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(24, 'PAVIMENTO', 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(25, 'BOMBA DE CARCAMO', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(26, 'RIPIADO DE  VIAS, PAMPAYU', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(27, 'PAVIMENTO ATOCHA Y CALLE LIRIOS', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(28, 'DRAGADO', 14, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(29, 'RIPIO', 14, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(30, 'RIPIO DE CONTORNO RIO', 15, '2025-02-03 14:03:49', '2025-02-03 14:03:49'),
(31, 'DRAGADO DE RIO', 15, '2025-02-03 14:03:49', '2025-02-03 14:03:49'),
(32, 'ALCANTARRILLADO', 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(33, 'RIPIO PERFILADO ARQUIMEDES', 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(34, 'ASFALTADO CALLE TUPIZA', 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(35, 'EMPEDRADO PIE CERRO', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(36, 'RIPIO CALLE INTERMEDIA CERRANIA- AMPLIACION', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(37, 'ASFALTO', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(38, 'LIMPIEZA  DE DESGUAGUE - RETIRO DE   PIEDRA', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(39, 'TINGLADO', 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(40, 'APERTURA  DE VIA', 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(41, 'SEDE', 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(42, 'TANQUE  AGUA', 19, '2025-02-03 14:12:40', '2025-02-03 14:12:40'),
(43, 'PARQUE INFANTIL', 19, '2025-02-03 14:12:40', '2025-02-03 14:12:40'),
(44, 'CRONOGRAMA', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(45, 'TINGLADO', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(46, 'AVANCE DE UE', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(47, 'MEJORAMIENTO DE  VIAS - MAGUERAS - AMPLIACION ALUM...', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(48, 'ALCANTARRILLADO', 21, '2025-02-03 14:17:31', '2025-02-03 14:17:31'),
(49, 'CHIJLLAWIRI -MOVIMIENTO DEL PUENTE', 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53'),
(50, 'CORDONES CANAL DE RIEGO SENALIZACION', 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53'),
(51, 'SECCION DE AREAS  VERDES', 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53'),
(52, 'CONTINUACION DE PAVIMENTO', 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apertura_programatica`
--

CREATE TABLE `apertura_programatica` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `presupuesto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `apertura_programatica`
--

INSERT INTO `apertura_programatica` (`id`, `codigo`, `nombre`, `presupuesto`, `created_at`, `updated_at`) VALUES
(1, '000-0-001', 'Funcionamiento Ejecutivo', '14606577', NULL, NULL),
(2, '100-0-001', 'Fortalecimiento agropecuario municipio de Colcapirhua', '130144.43', NULL, NULL),
(3, '100-0-005', 'Fortalecimiento mecanizacion agricola municipio de Colcapirhua', '100000', NULL, NULL),
(4, '110-0-000', 'Saneamiento Basico', '4334166.68', NULL, NULL),
(5, '110-0-001', 'Funcionamiento saneamiento basico de Colcapirhua', '1026976.13', NULL, NULL),
(6, '110-0-002', 'Mantenimiento ampliacion del sistema agua potable y alcantarillado Colcapirhua', '899522', NULL, NULL),
(7, '110-0-011', 'Mej. mantenimiento sist. de alcantarillado OTB San Lorenzo dist. D', '27046.43', NULL, NULL),
(8, '110-0-013', 'Construccion planta de tratamiento de aguas residuales Colcapirhua (compra de terreno)', '1500000', NULL, NULL),
(9, '120-0-001', 'Mejoramiento de sistemas de riego Colcapirhua', '91294.14', NULL, NULL),
(10, '130-0-001', 'Mantenimiento ornamento equip. de parques y areas verdes', '719887.24', NULL, NULL),
(11, '130-0-003', 'Funcionamiento vivero municipal Colcapirhua', '291357', NULL, NULL),
(12, '130-0-004', 'Mantenimiento y limpieza de parques y areas verdes', '142791', NULL, NULL),
(13, '130-0-005', 'Funcionamiento taller de cerrajeria municipal', '262638', NULL, NULL),
(14, '170-0-000', 'Estructura urbana y rural', '593750.53', NULL, NULL),
(15, '170-0-009', 'Expropiación de terrenos G.A.M. Colcapirhua', '15537.2', NULL, NULL),
(16, '180-0-000', 'Gestion de caminos vecinales', '2452217.6', NULL, NULL),
(17, '190-0-000', 'Servicio de catastro urbano', '0', NULL, NULL),
(18, '200-0-000', 'Gestion de salud', '21479670.06', NULL, NULL),
(19, '210-0-000', 'Gestion de educacion', '9091998.51', NULL, NULL),
(20, '220-0-000', 'Desarrollo y promocion del deporte', '805718', NULL, NULL),
(21, '220-0-003', 'Mantenimiento y reparacion de campos deportivos', '100000', NULL, NULL),
(22, '310-0-000', 'Gestion de riesgos', '1693950', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes`
--

CREATE TABLE `asistentes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asistente` varchar(255) NOT NULL,
  `acta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistentes`
--

INSERT INTO `asistentes` (`id`, `asistente`, `acta_id`, `created_at`, `updated_at`) VALUES
(1, 'PDTE DE LA OTB SENAC', 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(2, 'ING CALDERON.', 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(3, 'ELVA PEREZ .. PDTE  OTB', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avance`
--

CREATE TABLE `avance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text DEFAULT NULL,
  `porcentaje_avance` int(11) NOT NULL,
  `formulario` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `hoja_ruta` varchar(255) DEFAULT NULL,
  `asignado_en` varchar(255) NOT NULL,
  `asignado_con` varchar(255) NOT NULL,
  `monto_certificado` double(11,2) DEFAULT NULL,
  `supervisor_id` bigint(20) UNSIGNED NOT NULL,
  `proyecto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avance`
--

INSERT INTO `avance` (`id`, `fecha`, `descripcion`, `porcentaje_avance`, `formulario`, `observacion`, `hoja_ruta`, `asignado_en`, `asignado_con`, `monto_certificado`, `supervisor_id`, `proyecto_id`, `created_at`, `updated_at`) VALUES
(1, '2021-01-09', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 100000.00, 3, 4, NULL, NULL),
(2, '2021-03-08', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 45000.00, 3, 6, NULL, NULL),
(3, '2021-03-16', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 100000.00, 3, 9, NULL, NULL),
(4, '2021-03-26', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 149985.70, 3, 35, NULL, NULL),
(5, '2021-04-09', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 239528.33, 3, 125, NULL, NULL),
(6, '2021-04-10', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 239528.33, 3, 8, NULL, NULL),
(7, '2021-04-14', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 168028.29, 3, 49, NULL, NULL),
(8, '2021-04-15', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 79742.00, 3, 10, NULL, NULL),
(9, '2021-04-20', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 99997.00, 3, 11, NULL, NULL),
(10, '2021-04-20', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 1065822.00, 3, 12, NULL, NULL),
(11, '2021-04-28', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 100000.00, 3, 30, NULL, NULL),
(12, '2021-05-10', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 39999.05, 3, 13, NULL, NULL),
(13, '2021-05-11', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 14, NULL, NULL),
(14, '2021-05-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 25, NULL, NULL),
(15, '2021-06-09', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 100000.00, 3, 23, NULL, NULL),
(16, '2021-06-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 100000.00, 3, 28, NULL, NULL),
(17, '2021-06-17', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 127800.07, 3, 27, NULL, NULL),
(18, '2021-06-25', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gastón Diaz', 100000.00, 3, 29, NULL, NULL),
(19, '2021-06-29', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 54988.12, 3, 36, NULL, NULL),
(20, '2021-07-21', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 37885.00, 3, 33, NULL, NULL),
(21, '2021-10-05', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gastón Diaz', 60000.00, 3, 37, NULL, NULL),
(22, '2021-10-21', 'Conclusión', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 23000.00, 3, 44, NULL, NULL),
(23, '2021-11-11', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 36963.60, 3, 39, NULL, NULL),
(24, '2021-11-25', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 95262.72, 3, 40, NULL, NULL),
(25, '2021-12-08', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 41, NULL, NULL),
(26, '2021-12-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 330000.00, 3, 47, NULL, NULL),
(27, '2021-12-21', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 49999.00, 3, 43, NULL, NULL),
(28, '2022-04-01', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 100000.00, 3, 48, NULL, NULL),
(29, '2022-05-19', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gastón Diaz', 60000.00, 3, 59, NULL, NULL),
(30, '2022-05-28', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 186054.41, 3, 61, NULL, NULL),
(31, '2022-06-01', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 409972.10, 3, 42, NULL, NULL),
(32, '2022-06-06', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 100000.00, 3, 58, NULL, NULL),
(33, '2022-06-06', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 394707.00, 3, 50, NULL, NULL),
(34, '2022-06-15', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 500000.00, 3, 53, NULL, NULL),
(35, '2022-06-18', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 81560.00, 3, 54, NULL, NULL),
(36, '2022-06-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 74999.75, 3, 57, NULL, NULL),
(37, '2022-07-20', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 53830.00, 3, 60, NULL, NULL),
(38, '2022-08-20', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 59984.84, 3, 62, NULL, NULL),
(39, '2022-10-02', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 195847.46, 3, 63, NULL, NULL),
(40, '2022-11-10', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 27985.00, 3, 64, NULL, NULL),
(41, '2022-11-14', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 57582.10, 3, 65, NULL, NULL),
(42, '2022-11-28', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 82992.95, 3, 70, NULL, NULL),
(43, '2022-12-02', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 42106.00, 3, 69, NULL, NULL),
(44, '2022-12-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 66, NULL, NULL),
(45, '2022-12-14', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 298955.86, 3, 77, NULL, NULL),
(46, '2023-01-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 50000.00, 3, 81, NULL, NULL),
(47, '2023-02-06', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 195234.50, 3, 75, NULL, NULL),
(48, '2023-02-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 57041.95, 3, 82, NULL, NULL),
(49, '2023-04-29', 'Concluido y pagado H.R. 2305/2023', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 18258.49, 3, 96, NULL, NULL),
(50, '2023-05-19', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 98000.00, 3, 106, NULL, NULL),
(51, '2023-05-19', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 60000.00, 3, 102, NULL, NULL),
(52, '2023-05-19', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 75000.00, 3, 17, NULL, NULL),
(53, '2023-06-05', 'Avance físico 90% Avance financiero 0%', 90, NULL, NULL, 'SMT 176', 'Obras Públicas', 'Wilder Brañez', 545808.60, 3, 100, NULL, NULL),
(54, '2023-06-05', 'Cancelado', 93, NULL, 'supervisor encargado Ing. Adimael Flores Almanza', NULL, 'Obras Públicas', 'Adimael Flores', 37443.96, 3, 112, NULL, NULL),
(55, '2023-06-05', 'Cancelado', 93, NULL, 'supervisor encargado Ing. Adimael Flores Almanza', NULL, 'Obras Públicas', 'Adimael Flores', 182203.79, 3, 114, NULL, NULL),
(56, '2023-06-05', 'Concluido en proceso planilla nro. 2', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 33141.25, 3, 110, NULL, NULL),
(57, '2023-06-05', 'En curso planilla N°2', 100, NULL, NULL, 'SMT 195', 'Obras Públicas', 'Reinaldo Jattaco', 431532.87, 3, 94, NULL, NULL),
(58, '2023-06-05', 'En etapa de corrección de observaciones de recepción provisional', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 99854.11, 3, 105, NULL, NULL),
(59, '2023-06-05', 'H.R. 184-SMT 17/05/23 (en Dir. OOPP)', 100, NULL, NULL, 'SMT 184', 'Obras Públicas', 'Gaston Diaz', 481026.63, 3, 89, NULL, NULL),
(60, '2023-06-05', 'H.R. 76-SMT 10/03/23 (Finanzas)', 100, NULL, NULL, 'SMT 175', 'Obras Públicas', 'Wilder Brañez', 640497.42, 3, 88, NULL, NULL),
(61, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 32950.61, 3, 83, NULL, NULL),
(62, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 85343.06, 3, 87, NULL, NULL),
(63, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 96395.92, 3, 76, NULL, NULL),
(64, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 99324.36, 3, 111, NULL, NULL),
(65, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 194199.83, 3, 74, NULL, NULL),
(66, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 313667.19, 3, 79, NULL, NULL),
(67, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 391911.31, 3, 78, NULL, NULL),
(68, '2023-06-05', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 428205.65, 3, 84, NULL, NULL),
(69, '2023-06-05', 'Solo retención', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 431190.67, 3, 85, NULL, NULL),
(70, '2023-06-09', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 26, NULL, NULL),
(71, '2023-06-09', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 100000.00, 3, 31, NULL, NULL),
(72, '2023-06-09', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 150000.00, 3, 38, NULL, NULL),
(73, '2023-06-09', 'Pagado 100%', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 100000.00, 3, 130, NULL, NULL),
(74, '2023-06-09', 'Paralizado. Obs: para resolución de contrato', 0, NULL, NULL, NULL, 'Obras Públicas', 'Gastón Diaz', 69752.82, 3, 119, NULL, NULL),
(75, '2023-06-13', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 68561.41, 3, 121, NULL, NULL),
(76, '2023-06-23', '100%', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 296544.00, 3, 7, NULL, NULL),
(77, '2023-06-23', 'Avance físico 100%, Avance financiero 0%', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 19030.00, 3, 104, NULL, NULL),
(78, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 14390.00, 3, 120, NULL, NULL),
(79, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 19758.32, 3, 108, NULL, NULL),
(80, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 26740.14, 3, 124, NULL, NULL),
(81, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 50373.63, 3, 117, NULL, NULL),
(82, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 98000.00, 3, 80, NULL, NULL),
(83, '2023-06-23', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 318225.52, 3, 122, NULL, NULL),
(84, '2023-06-23', 'Concluido 100%, cancelado 80%', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 49980.00, 3, 98, NULL, NULL),
(85, '2023-06-23', 'Concluido al 80%. Por resolución de contrato con conciliación de saldos', 80, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 133508.14, 3, 118, NULL, NULL),
(86, '2023-06-23', 'Concluido y cancelación en tramite', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 13805.12, 3, 107, NULL, NULL),
(87, '2023-06-23', 'Concluido y cancelado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 10241.30, 3, 97, NULL, NULL),
(88, '2023-06-23', 'Concluido y cancelado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 11989.36, 3, 99, NULL, NULL),
(89, '2023-06-23', 'Concluido y cancelado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 18681.19, 3, 95, NULL, NULL),
(90, '2023-06-23', 'Concluido y cancelado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 19997.22, 3, 101, NULL, NULL),
(91, '2023-06-23', 'Concluido y pagado en Finanzas según H.R. 1904/2023', 100, NULL, NULL, '1904/2023', 'Obras Públicas', 'Reinaldo Jattaco', 19992.06, 3, 93, NULL, NULL),
(92, '2023-06-23', 'Concluido y pagado según H.R. 1456/2023', 100, NULL, NULL, '1456/2023', 'Obras Públicas', 'Reinaldo Jattaco', 19946.52, 3, 90, NULL, NULL),
(93, '2023-06-23', 'Concluido y pagado según H.R. 1662/2023', 100, NULL, NULL, '1662/2023', 'Obras Públicas', 'Reinaldo Jattaco', 19800.00, 3, 91, NULL, NULL),
(94, '2023-06-23', 'Concluido y pagado según H.R. 1861/2023', 100, NULL, NULL, '1861/2023', 'Obras Públicas', 'Reinaldo Jattaco', 19979.69, 3, 92, NULL, NULL),
(95, '2023-06-23', 'Concluido y planilla en Finanzas', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 93234.94, 3, 109, NULL, NULL),
(96, '2023-06-23', 'En ejecución 2%', 2, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 50457.91, 3, 129, NULL, NULL),
(97, '2023-06-23', 'En ejecución 5%', 5, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 60599.89, 3, 131, NULL, NULL),
(98, '2023-06-23', 'En ejecución 85%', 85, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 38446.55, 3, 126, NULL, NULL),
(99, '2023-06-23', 'En elaboración de pago de retención', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 919808.72, 3, 68, NULL, NULL),
(100, '2023-06-23', 'En preparación de rescisión de contrato', 0, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 97515.90, 3, 113, NULL, NULL),
(101, '2023-06-23', NULL, 0, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 145804.00, 3, 123, NULL, NULL),
(102, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 9370.00, 3, 3, NULL, NULL),
(103, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 15042.00, 3, 46, NULL, NULL),
(104, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Adimael Flores', 21510.64, 3, 52, NULL, NULL),
(105, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 26249.00, 3, 5, NULL, NULL),
(106, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 34250.00, 3, 34, NULL, NULL),
(107, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 34666.00, 3, 67, NULL, NULL),
(108, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 50000.00, 3, 71, NULL, NULL),
(109, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 53027.00, 3, 20, NULL, NULL),
(110, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 57847.00, 3, 56, NULL, NULL),
(111, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 59996.00, 3, 22, NULL, NULL),
(112, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 60000.00, 3, 45, NULL, NULL),
(113, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 68290.00, 3, 73, NULL, NULL),
(114, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 78500.00, 3, 72, NULL, NULL),
(115, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 79750.42, 3, 2, NULL, NULL),
(116, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 83886.00, 3, 32, NULL, NULL),
(117, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 99986.16, 3, 86, NULL, NULL),
(118, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 100000.00, 3, 21, NULL, NULL),
(119, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 105709.00, 3, 103, NULL, NULL),
(120, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 125858.25, 3, 15, NULL, NULL),
(121, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 150000.00, 3, 55, NULL, NULL),
(122, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 153989.82, 3, 51, NULL, NULL),
(123, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 219754.00, 3, 19, NULL, NULL),
(124, '2023-06-23', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 283108.00, 3, 24, NULL, NULL),
(125, '2023-06-23', 'Preparando planilla Nº1', 100, NULL, NULL, 'SMT 245', 'Obras Públicas', 'Wilder Brañez', 49999.00, 3, 116, NULL, NULL),
(126, '2023-06-28', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 84410.72, 3, 115, NULL, NULL),
(127, '2023-07-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 25833.26, 3, 1, NULL, NULL),
(128, '2023-07-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 50000.00, 3, 16, NULL, NULL),
(129, '2023-07-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 51985.00, 3, 18, NULL, NULL),
(130, '2023-08-01', 'Inicio', 0, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 761150.17, 3, 127, NULL, NULL),
(131, '2023-08-04', 'Paralizado por límites', 0, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 44554.53, 3, 128, NULL, NULL),
(132, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 0.00, 3, 166, NULL, NULL),
(133, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 149, NULL, NULL),
(134, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 150, NULL, NULL),
(135, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 152, NULL, NULL),
(136, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 190, NULL, NULL),
(137, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 191, NULL, NULL),
(138, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 189, NULL, NULL),
(139, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 151, NULL, NULL),
(140, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 0.00, 3, 158, NULL, NULL),
(141, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 136, NULL, NULL),
(142, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 139, NULL, NULL),
(143, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 185, NULL, NULL),
(144, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 155, NULL, NULL),
(145, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 176, NULL, NULL),
(146, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 180, NULL, NULL),
(147, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 172, NULL, NULL),
(148, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 168, NULL, NULL),
(149, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 183, NULL, NULL),
(150, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 142, NULL, NULL),
(151, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Gaston Diaz', 0.00, 3, 169, NULL, NULL),
(152, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 184, NULL, NULL),
(153, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 181, NULL, NULL),
(154, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 170, NULL, NULL),
(155, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Gaston Diaz', 0.00, 3, 173, NULL, NULL),
(156, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Gaston Diaz', 0.00, 3, 175, NULL, NULL),
(157, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 182, NULL, NULL),
(158, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 0.00, 3, 178, NULL, NULL),
(159, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 145, NULL, NULL),
(160, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 0.00, 3, 146, NULL, NULL),
(161, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 135, NULL, NULL),
(162, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 177, NULL, NULL),
(163, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 141, NULL, NULL),
(164, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 188, NULL, NULL),
(165, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 174, NULL, NULL),
(166, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 0.00, 3, 153, NULL, NULL),
(167, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 132, NULL, NULL),
(168, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 0.00, 3, 148, NULL, NULL),
(169, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 0.00, 3, 147, NULL, NULL),
(170, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 179, NULL, NULL),
(171, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 156, NULL, NULL),
(172, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 137, NULL, NULL),
(173, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 186, NULL, NULL),
(174, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 171, NULL, NULL),
(175, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 0.00, 3, 140, NULL, NULL),
(176, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 143, NULL, NULL),
(177, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 138, NULL, NULL),
(178, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 133, NULL, NULL),
(179, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 187, NULL, NULL),
(180, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 134, NULL, NULL),
(181, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 154, NULL, NULL),
(182, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 144, NULL, NULL),
(183, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 163, NULL, NULL),
(184, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 0.00, 3, 208, NULL, NULL),
(185, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 0.00, 3, 167, NULL, NULL),
(186, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 160, NULL, NULL),
(187, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 161, NULL, NULL),
(188, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 162, NULL, NULL),
(189, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 197, NULL, NULL),
(190, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 196, NULL, NULL),
(191, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 198, NULL, NULL),
(192, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Carla Zambrana', 0.00, 3, 164, NULL, NULL),
(193, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 194, NULL, NULL),
(194, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 0.00, 3, 159, NULL, NULL),
(195, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 0.00, 3, 195, NULL, NULL),
(196, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 25.00, 3, 157, NULL, NULL),
(197, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 33.00, 3, 165, NULL, NULL),
(198, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Wilder Brañez', 40000.00, 3, 203, NULL, NULL),
(199, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 49983.16, 3, 205, NULL, NULL),
(200, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 49990.00, 3, 207, NULL, NULL),
(201, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Wilder Brañez', 50000.00, 3, 199, NULL, NULL),
(202, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 50794.33, 3, 204, NULL, NULL),
(203, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Wilder Brañez', 60000.00, 3, 201, NULL, NULL),
(204, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 73387.80, 3, 192, NULL, NULL),
(205, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Harold Panozo', 77160.66, 3, 193, NULL, NULL),
(206, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Publicas', 'Reinaldo Jattaco', 138811.53, 3, 209, NULL, NULL),
(207, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 199940.56, 3, 202, NULL, NULL),
(208, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Wilder Brañez', 322731.49, 3, 200, NULL, NULL),
(209, '2023-08-24', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Reinaldo Jattaco', 624370.00, 3, 206, NULL, NULL),
(210, '2023-08-25', 'Concluido', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 214, NULL, NULL),
(211, '2023-08-28', 'Concluido', 100, NULL, 'supervisor encagado Ing. Adimael Flores', NULL, 'Obras Públicas', 'Adimael Flores', 0.00, 3, 217, NULL, NULL),
(212, '2023-08-28', 'Entrega definitiva el 22/08/23', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 99999.96, 3, 210, NULL, NULL),
(213, '2023-08-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Harold Panozo', 0.00, 3, 215, NULL, NULL),
(214, '2023-08-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 9910.19, 3, 211, NULL, NULL),
(215, '2023-08-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Gaston Diaz', 38446.55, 3, 216, NULL, NULL),
(216, '2023-08-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 49995.00, 3, 213, NULL, NULL),
(217, '2023-08-28', 'Pagado', 100, NULL, NULL, NULL, 'Obras Públicas', 'Jhanet Vega', 178016.19, 3, 212, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compromisos`
--

CREATE TABLE `compromisos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `compromiso` varchar(255) NOT NULL,
  `responsable` varchar(255) DEFAULT NULL,
  `fecha_estimada` date DEFAULT NULL,
  `acta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compromisos`
--

INSERT INTO `compromisos` (`id`, `compromiso`, `responsable`, `fecha_estimada`, `acta_id`, `created_at`, `updated_at`) VALUES
(1, 'PERFORACION DE POZO CON PRESUPUESTO DE LIMITES', 'ING  JIMNENEZ', '2024-02-16', 1, '2025-02-03 13:15:26', '2025-02-03 13:15:26'),
(2, 'TANQUE DE ALMACENAMIENTO 40 M3', 'INSERTAR  - PRESUPUESTO - 104000  BS  ING  JIMENEZ', NULL, 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(3, 'PINTAR ROMPE MUELLES', 'TRAFICO- VELA', NULL, 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(4, 'PINTADO  DE CANCHA', 'DEPORTES', NULL, 2, '2025-02-03 13:19:38', '2025-02-03 13:19:38'),
(5, 'LIMPIAR Y RECOGER', 'CIRO BASCOPE', NULL, 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(6, 'PAV CALLE  SALINAS - INGRESAR', 'ELIAS  ESPINOSA', '2024-02-05', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(7, 'PAV CALLE  HUAYNACOTA', 'JESUS  VARGAS', '2024-01-25', 3, '2025-02-03 13:23:13', '2025-02-03 13:23:13'),
(8, 'CAMBIO DE LUMINARIAS', 'ING ELIAS ESPINOZA', '2024-02-05', 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(9, 'CAMBIO DE ALCANTARRILLADO', 'JUAN CARLOS BUSTAMANTE', '2024-02-01', 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(10, 'REGUISTRO  DE  AREA  VERDE', 'ING  JIMENEZ', NULL, 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(11, 'MTTO  DE  CANCHA', 'JESUS  VARGAS', NULL, 4, '2025-02-03 13:26:36', '2025-02-03 13:26:36'),
(12, 'ENMALLADO PARQUE INFANTIL', 'JIMENEZ', '2024-02-05', 5, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(13, 'CANAL DE 21', 'BUSTAMANTE', '2024-01-25', 5, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(14, 'AGUA -- ROMPEMUELLES - TAPAS AL', NULL, '2024-02-05', 5, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(15, 'TAPAS DE ALCANTARRILLADO', NULL, '2024-02-14', 5, '2025-02-03 13:29:13', '2025-02-03 13:29:13'),
(16, 'ESTUDIO DE ALCCANTARRILLADO', 'ARQ BUSTAMANTE', '2024-02-26', 6, '2025-02-03 13:32:24', '2025-02-03 13:32:24'),
(17, '21   ENERO ILUMINACION', NULL, '2024-02-14', 6, '2025-02-03 13:32:24', '2025-02-03 13:32:24'),
(18, 'TERRENO-DECLARAR BIEN DE NECESIDAD PUBLICA', 'JIMENEZ', NULL, 7, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(19, 'PROYECTO UE PRIMARIA', 'JIMENEZ', NULL, 7, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(20, 'TUBERIAS DE AGUA', 'JESUS', '2024-10-04', 7, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(21, 'RIPIADO', 'GIOVANY', NULL, 7, '2025-02-03 13:35:35', '2025-02-03 13:35:35'),
(22, 'MERCADO  SAN FRANSCISCO', 'ENVIAR UPRE', NULL, 8, '2025-02-03 13:37:19', '2025-02-03 13:37:19'),
(23, 'CORANI', 'DEBE  REALIZARSE EL  CANAL- FALTA PRESUPUESTO', NULL, 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(24, 'ALCANTARRILLADO CAMPERO', 'PIDE  REPOSICION', NULL, 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(25, 'LETREROS  DE NO BOTAR BASURA', NULL, NULL, 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(26, 'PINTADO DE LA  CANCHA', NULL, NULL, 9, '2025-02-03 13:39:50', '2025-02-03 13:39:50'),
(27, 'PAVIMENTO', 'ELIAS', '2025-01-24', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(28, 'RIPIO', 'ELIAS', '2025-01-24', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(29, 'ZONA AUTORIZADA', 'BARBERYTO', '2025-01-28', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(30, 'ELEVACION MURO', 'BARBERYTO', '2025-01-28', 10, '2025-02-03 13:47:08', '2025-02-03 13:47:08'),
(31, 'DRAGADO RIO CHIJLLAWIRI Y ROCHA', 'RAUL UGR', '2025-01-21', 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(32, 'PUENTE DE CHIJLLAWIRRI LIMPIEZA', 'RAUL UGR', '2025-01-21', 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(33, 'PAVIMENTO', NULL, NULL, 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(34, 'CASA COMUNAL', NULL, '2025-01-20', 11, '2025-02-03 13:54:18', '2025-02-03 13:54:18'),
(35, 'MAQUINARIA  Y RRELLENO', 'RAUL  UGR', '2025-01-27', 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(36, 'RIPIO- PRESUPESTO POR LIMITES', 'JIMENEZ', NULL, 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(37, 'ALCANTARRILLADO', NULL, NULL, 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(38, 'ASFALTO', NULL, NULL, 12, '2025-02-03 13:56:56', '2025-02-03 13:56:56'),
(39, 'COMPRA DE BOMBA', 'RAUL  UGR', '2025-01-23', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(40, 'RIPIADO DE VIAS', 'RAUL  UGR', '2025-02-24', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(41, 'PAVIMENTO ATOCHA Y CALLE LIRIOS', 'CRONOGRAMA', '2025-01-31', 13, '2025-02-03 13:59:36', '2025-02-03 13:59:36'),
(42, 'ENSAQUILLADO', 'UGR  RAUL', '2025-01-27', 14, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(43, 'RIPIO  CALLE ANGULO RANCHO,21 DE SEPTI', NULL, NULL, 14, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(44, 'ASFALTO', NULL, NULL, 14, '2025-02-03 14:01:25', '2025-02-03 14:01:25'),
(45, 'EXTENDIDO DE MAQUINARIA', 'ELIAS', '2025-01-21', 15, '2025-02-03 14:03:49', '2025-02-03 14:03:49'),
(46, 'RIPIO DE EMERGENCIA', 'RAUL', '2025-01-28', 15, '2025-02-03 14:03:49', '2025-02-03 14:03:49'),
(47, 'MUESTRA  EL PROYECTO', 'BUSTAMANTE', '2025-01-30', 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(48, 'RIPIO PERFILADO ARQUIMEDES', 'ELIAS', NULL, 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(49, 'ASFALTADO CALLE TUPIZA', 'ELIAS', NULL, 16, '2025-02-03 14:06:14', '2025-02-03 14:06:14'),
(50, 'ASFALTO 500 M', 'ELIAS', '2025-04-10', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(51, 'LIMPIEZA  DE DESGUAGUE', NULL, NULL, 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(52, 'RETIRO DE   PIEDRA', 'ELIAS', '2025-02-04', 17, '2025-02-03 14:08:33', '2025-02-03 14:08:33'),
(53, 'TINGLADO COMPRA MATE', 'OSMAR BARBERITO', '2025-02-05', 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(54, 'APERTURA  DE VIA', NULL, '2025-02-10', 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(55, 'RIPIO', 'ELIAS', NULL, 18, '2025-02-03 14:11:51', '2025-02-03 14:11:51'),
(56, 'TANQUE  AGUA', NULL, NULL, 19, '2025-02-03 14:12:40', '2025-02-03 14:12:40'),
(57, 'UE', 'HABLAR CON EL CONCEJO', '2025-01-31', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(58, 'TINGLADO', 'TRABAJO MANCOMUNADO', '2025-02-05', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(59, 'ALUMBRADO- 8 LUMINARIAS', 'JIMENEZ', '2025-02-10', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(60, 'MANGUERAS', 'BARBERYTO', '2025-02-10', 20, '2025-02-03 14:15:57', '2025-02-03 14:15:57'),
(61, 'ALCANTARRILLADO- PROYECTO', 'BARBERYTO', NULL, 21, '2025-02-03 14:17:31', '2025-02-03 14:17:31'),
(62, 'EJECUCION DE CANCHA', 'EJECUCION DE CANCHA', '2025-03-03', 21, '2025-02-03 14:17:31', '2025-02-03 14:17:31'),
(63, 'RIPIO', 'ELIAS', NULL, 21, '2025-02-03 14:17:31', '2025-02-03 14:17:31'),
(64, 'MEDIDAS  PREVENTIVAS', 'UGR', NULL, 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53'),
(65, 'CORDONES', NULL, NULL, 22, '2025-02-03 14:18:53', '2025-02-03 14:18:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_23_213256_apertuta_programatica', 1),
(6, '2025_01_23_214744_proyecto', 1),
(7, '2025_01_23_220307_planilla', 1),
(8, '2025_01_23_220358_avance', 1),
(9, '2025_01_23_221210_acta', 1),
(10, '2025_01_23_221833_agenda', 1),
(11, '2025_01_23_222031_compromisos', 1),
(12, '2025_01_23_222240_asistentes', 1),
(13, '2025_01_30_125238_reformulado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE `planilla` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proyecto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planilla`
--

INSERT INTO `planilla` (`id`, `nombre`, `proyecto_id`, `created_at`, `updated_at`) VALUES
(1, 'Pagado', 1, NULL, NULL),
(2, 'Pagado', 2, NULL, NULL),
(3, 'Pagado', 3, NULL, NULL),
(4, 'Pagado', 4, NULL, NULL),
(5, 'Pagado', 5, NULL, NULL),
(6, 'Pagado', 6, NULL, NULL),
(7, 'Pagado', 7, NULL, NULL),
(8, 'Pagado', 8, NULL, NULL),
(9, 'Pagado', 9, NULL, NULL),
(10, 'Pagado', 10, NULL, NULL),
(11, 'Pagado', 11, NULL, NULL),
(12, 'Pagado', 12, NULL, NULL),
(13, 'Pagado', 13, NULL, NULL),
(14, 'Pagado', 14, NULL, NULL),
(15, 'Pagado', 15, NULL, NULL),
(16, 'Pagado', 16, NULL, NULL),
(17, 'Pagado', 17, NULL, NULL),
(18, 'Pagado', 18, NULL, NULL),
(19, 'Pagado', 19, NULL, NULL),
(20, 'Pagado', 20, NULL, NULL),
(21, 'Pagado', 21, NULL, NULL),
(22, 'Pagado', 22, NULL, NULL),
(23, 'Pagado', 23, NULL, NULL),
(24, 'Pagado', 24, NULL, NULL),
(25, 'Pagado', 25, NULL, NULL),
(26, 'Pagado', 26, NULL, NULL),
(27, 'Pagado', 27, NULL, NULL),
(28, 'Pagado', 28, NULL, NULL),
(29, 'Pagado', 29, NULL, NULL),
(30, 'Pagado', 30, NULL, NULL),
(31, 'Pagado', 31, NULL, NULL),
(32, 'Pagado', 32, NULL, NULL),
(33, 'Pagado', 33, NULL, NULL),
(34, 'Pagado', 34, NULL, NULL),
(35, 'Pagado', 35, NULL, NULL),
(36, 'Pagado', 36, NULL, NULL),
(37, 'Pagado', 37, NULL, NULL),
(38, 'Pagado', 38, NULL, NULL),
(39, 'Pagado', 39, NULL, NULL),
(40, 'Pagado', 40, NULL, NULL),
(41, 'Pagado', 41, NULL, NULL),
(42, 'Pagado', 42, NULL, NULL),
(43, 'Pagado', 43, NULL, NULL),
(44, 'Pagado', 44, NULL, NULL),
(45, 'Pagado', 45, NULL, NULL),
(46, 'Pagado', 46, NULL, NULL),
(47, 'Pagado', 47, NULL, NULL),
(48, 'Pagado', 48, NULL, NULL),
(49, 'Pagado', 49, NULL, NULL),
(50, 'Pagado', 50, NULL, NULL),
(51, 'Pagado', 51, NULL, NULL),
(52, 'Pagado', 52, NULL, NULL),
(53, 'Pagado', 53, NULL, NULL),
(54, 'Pagado', 54, NULL, NULL),
(55, 'Pagado', 55, NULL, NULL),
(56, 'Pagado', 56, NULL, NULL),
(57, 'Pagado', 57, NULL, NULL),
(58, 'Pagado', 58, NULL, NULL),
(59, 'Pagado', 59, NULL, NULL),
(60, 'Pagado', 60, NULL, NULL),
(61, 'Pagado', 61, NULL, NULL),
(62, 'Pagado', 62, NULL, NULL),
(63, 'Pagado', 63, NULL, NULL),
(64, 'Pagado', 64, NULL, NULL),
(65, 'Pagado', 65, NULL, NULL),
(66, 'Pagado', 66, NULL, NULL),
(67, 'Pagado', 67, NULL, NULL),
(68, 'En elaboracion de pago de retencion', 68, NULL, NULL),
(69, 'Concluido', 69, NULL, NULL),
(70, 'Pagado', 70, NULL, NULL),
(71, 'Pagado', 71, NULL, NULL),
(72, 'Pagado', 72, NULL, NULL),
(73, 'Pagado', 73, NULL, NULL),
(74, 'Concluido y Pagado', 74, NULL, NULL),
(75, 'Concluido', 75, NULL, NULL),
(76, 'Pagado', 76, NULL, NULL),
(77, 'Pagado', 77, NULL, NULL),
(78, 'Retencion 7%', 78, NULL, NULL),
(79, 'Concluido y pagado', 79, NULL, NULL),
(80, 'Concluido', 80, NULL, NULL),
(81, 'Concluido', 81, NULL, NULL),
(82, 'Pagado', 82, NULL, NULL),
(83, 'Concluido y pagado', 83, NULL, NULL),
(84, 'Concluido', 84, NULL, NULL),
(85, 'Concluido 100%, cancelado 93%', 85, NULL, NULL),
(86, 'Concluido', 86, NULL, NULL),
(87, 'Concluido', 87, NULL, NULL),
(88, 'Concluido', 88, NULL, NULL),
(89, 'Concluido y cancelado', 89, NULL, NULL),
(90, 'Concluido y Pagado según H.R. 1456/2023', 90, NULL, NULL),
(91, 'Concluido y Pagado según H.R. 1662/2023', 91, NULL, NULL),
(92, 'Concluido y Pagado según H.R. 1861/2023', 92, NULL, NULL),
(93, 'Concluido y Pagado en Finanzas según H.R. 1904/2023', 93, NULL, NULL),
(94, 'Pagado', 94, NULL, NULL),
(95, 'Concluido y Cancelado', 95, NULL, NULL),
(96, 'Concluido y Pagado H.R. 2305/2023', 96, NULL, NULL),
(97, 'Concluido y Cancelado', 97, NULL, NULL),
(98, 'Concluido y pagado', 98, NULL, NULL),
(99, 'Concluido y Cancelado', 99, NULL, NULL),
(100, 'Pagado', 100, NULL, NULL),
(101, 'Concluido y Cancelado', 101, NULL, NULL),
(102, 'Pagado', 102, NULL, NULL),
(103, 'Pagado', 103, NULL, NULL),
(104, 'Avance físico 100%, Avance financiero 0%', 104, NULL, NULL),
(105, 'Concluido y Cancelado', 105, NULL, NULL),
(106, 'Pagado', 106, NULL, NULL),
(107, 'Concluido y Cancelado', 107, NULL, NULL),
(108, 'Concluido y Cancelado', 108, NULL, NULL),
(109, 'Concluido', 109, NULL, NULL),
(110, 'Concluido', 110, NULL, NULL),
(111, 'Pagado', 111, NULL, NULL),
(112, 'Cancelado', 112, NULL, NULL),
(113, 'Resolucion de contrato', 113, NULL, NULL),
(114, 'Cancelado', 114, NULL, NULL),
(115, 'Concluido', 115, NULL, NULL),
(116, 'Concluido', 116, NULL, NULL),
(117, 'Se alista planilla de cancelacion', 117, NULL, NULL),
(118, 'Concluido al 80%. Por resolucion de contrato con conciliacion de saldos', 118, NULL, NULL),
(119, 'Planilla de cancelacion al 93% en Finanzas', 119, NULL, NULL),
(120, 'Concluido', 120, NULL, NULL),
(121, 'Concluido', 121, NULL, NULL),
(122, 'Concluido', 122, NULL, NULL),
(123, 'Concluido', 123, NULL, NULL),
(124, 'Concluido', 124, NULL, NULL),
(125, 'Concluido', 125, NULL, NULL),
(126, 'Planilla en etapa de revision', 126, NULL, NULL),
(127, 'Pagado', 127, NULL, NULL),
(128, 'Resolucion de contrato', 128, NULL, NULL),
(129, 'Planilla en etapa de revision', 129, NULL, NULL),
(130, 'Pagado', 130, NULL, NULL),
(131, 'Se alista planilla de cancelacion', 131, NULL, NULL),
(132, 'Concluido', 132, NULL, NULL),
(133, 'Concluido', 133, NULL, NULL),
(134, 'Concluido', 134, NULL, NULL),
(135, 'Concluido', 135, NULL, NULL),
(136, 'Concluido', 136, NULL, NULL),
(137, 'Concluido', 137, NULL, NULL),
(138, 'Concluido', 138, NULL, NULL),
(139, 'Concluido', 139, NULL, NULL),
(140, 'Concluido', 140, NULL, NULL),
(141, 'Concluido', 141, NULL, NULL),
(142, 'Concluido', 142, NULL, NULL),
(143, 'Concluido', 143, NULL, NULL),
(144, 'Concluido', 144, NULL, NULL),
(145, 'Concluido', 145, NULL, NULL),
(146, 'Concluido', 146, NULL, NULL),
(147, 'Concluido', 147, NULL, NULL),
(148, 'Concluido', 148, NULL, NULL),
(149, 'Concluido', 149, NULL, NULL),
(150, 'Concluido', 150, NULL, NULL),
(151, 'Concluido', 151, NULL, NULL),
(152, 'Concluido', 152, NULL, NULL),
(153, 'Concluido', 153, NULL, NULL),
(154, 'Concluido', 154, NULL, NULL),
(155, 'Concluido', 155, NULL, NULL),
(156, 'Concluido', 156, NULL, NULL),
(157, 'Concluido', 157, NULL, NULL),
(158, 'Concluido', 158, NULL, NULL),
(159, 'Concluido', 159, NULL, NULL),
(160, 'Concluido', 160, NULL, NULL),
(161, 'Concluido', 161, NULL, NULL),
(162, 'Concluido', 162, NULL, NULL),
(163, 'Concluido', 163, NULL, NULL),
(164, 'Concluido', 164, NULL, NULL),
(165, 'Concluido', 165, NULL, NULL),
(166, 'Concluido', 166, NULL, NULL),
(167, 'Concluido cancelado al 100%', 167, NULL, NULL),
(168, 'Concluido', 168, NULL, NULL),
(169, 'Concluido', 169, NULL, NULL),
(170, 'Concluido', 170, NULL, NULL),
(171, 'Concluido', 171, NULL, NULL),
(172, 'Concluido', 172, NULL, NULL),
(173, 'Concluido', 173, NULL, NULL),
(174, 'Concluido', 174, NULL, NULL),
(175, 'Concluido', 175, NULL, NULL),
(176, 'Concluido', 176, NULL, NULL),
(177, 'Concluido', 177, NULL, NULL),
(178, 'Concluido', 178, NULL, NULL),
(179, 'Concluido', 179, NULL, NULL),
(180, 'Concluido', 180, NULL, NULL),
(181, 'Concluido', 181, NULL, NULL),
(182, 'Concluido', 182, NULL, NULL),
(183, 'Concluido', 183, NULL, NULL),
(184, 'Concluido', 184, NULL, NULL),
(185, 'Concluido', 185, NULL, NULL),
(186, 'Concluido', 186, NULL, NULL),
(187, 'Concluido', 187, NULL, NULL),
(188, 'Concluido', 188, NULL, NULL),
(189, 'Concluido', 189, NULL, NULL),
(190, 'Concluido', 190, NULL, NULL),
(191, 'Concluido', 191, NULL, NULL),
(192, 'Avance físico 100%, Finanzas HR 303', 192, NULL, NULL),
(193, 'Cierre proyecto', 193, NULL, NULL),
(194, 'Concluido', 194, NULL, NULL),
(195, 'Concluido', 195, NULL, NULL),
(196, 'Concluido', 196, NULL, NULL),
(197, 'Concluido', 197, NULL, NULL),
(198, 'Concluido', 198, NULL, NULL),
(199, 'Concluido', 199, NULL, NULL),
(200, 'Concluido', 200, NULL, NULL),
(201, 'Concluido', 201, NULL, NULL),
(202, 'Concluido', 202, NULL, NULL),
(203, 'Concluido', 203, NULL, NULL),
(204, 'Concluido', 204, NULL, NULL),
(205, 'Concluido', 205, NULL, NULL),
(206, 'Concluido cordones de acera', 206, NULL, NULL),
(207, 'Concluido', 207, NULL, NULL),
(208, 'Concluido', 208, NULL, NULL),
(209, 'Concluido', 209, NULL, NULL),
(210, 'Entrega definitiva el 22/08/23', 210, NULL, NULL),
(211, 'Pagado', 211, NULL, NULL),
(212, 'Pagado', 212, NULL, NULL),
(213, 'Pagado', 213, NULL, NULL),
(214, 'Concluido', 214, NULL, NULL),
(215, 'Concluido', 215, NULL, NULL),
(216, 'Empresa alista su carpeta de cancelación', 216, NULL, NULL),
(217, '0', 217, NULL, NULL),
(218, 'Concluido', 218, NULL, NULL),
(219, 'Concluido', 219, NULL, NULL),
(220, 'Concluido', 220, NULL, NULL),
(221, 'Concluido', 221, NULL, NULL),
(222, 'Concluido', 222, NULL, NULL),
(223, 'Concluido', 223, NULL, NULL),
(224, 'Concluido', 224, NULL, NULL),
(225, 'Concluido', 225, NULL, NULL),
(226, 'Concluido', 226, NULL, NULL),
(227, 'Concluido', 227, NULL, NULL),
(228, 'En Ejecucion (42.87%)', 228, NULL, NULL),
(229, 'Concluido', 229, NULL, NULL),
(230, 'Concluido', 230, NULL, NULL),
(231, 'Concluido', 231, NULL, NULL),
(232, 'Concluido', 232, NULL, NULL),
(233, 'Concluido', 233, NULL, NULL),
(234, 'Concluido', 234, NULL, NULL),
(235, 'Concluido', 235, NULL, NULL),
(236, 'Concluido', 236, NULL, NULL),
(237, 'Concluido', 237, NULL, NULL),
(238, 'Avance fisico 75%', 238, NULL, NULL),
(239, 'Avance fisico 100%', 239, NULL, NULL),
(240, 'Avance fisico 0%', 240, NULL, NULL),
(241, 'A la espera de la licencia ambiental', 241, NULL, NULL),
(242, 'Avance fisico 0% por resolucion de contrato', 242, NULL, NULL),
(243, 'Se alista planilla de cancelacion', 243, NULL, NULL),
(244, 'Se alista planilla de cancelacion', 244, NULL, NULL),
(245, 'Avance fisico 100%', 245, NULL, NULL),
(246, 'Planilla de cancelacion en Finanzas', 246, NULL, NULL),
(247, 'Planilla de cancelacion en Finanzas', 247, NULL, NULL),
(248, 'Planilla de cancelacion en Finanzas', 248, NULL, NULL),
(249, 'En ejecución 10%', 249, NULL, NULL),
(250, 'Planilla unica y cierre', 250, NULL, NULL),
(251, '0', 251, NULL, NULL),
(252, '0', 252, NULL, NULL),
(253, '0', 253, NULL, NULL),
(254, '0', 254, NULL, NULL),
(255, '0', 255, NULL, NULL),
(256, 'Cancelado', 256, NULL, NULL),
(257, 'Concluido', 257, NULL, NULL),
(258, 'En ejecución', 258, NULL, NULL),
(259, 'En ejecución', 259, NULL, NULL),
(260, 'Concluido', 260, NULL, NULL),
(261, 'Concluido', 261, NULL, NULL),
(262, 'Obra paralizada', 262, NULL, NULL),
(263, 'Pagado', 263, NULL, NULL),
(264, 'Cancelado', 264, NULL, NULL),
(265, 'Cancelado', 265, NULL, NULL),
(266, 'Cancelado', 266, NULL, NULL),
(267, 'Cancelado', 267, NULL, NULL),
(268, 'Cancelado', 268, NULL, NULL),
(269, '0', 269, NULL, NULL),
(270, '0', 270, NULL, NULL),
(271, '0', 271, NULL, NULL),
(272, '0', 272, NULL, NULL),
(273, '0', 273, NULL, NULL),
(274, 'SMAF 5770', 274, NULL, NULL),
(275, '0', 275, NULL, NULL),
(276, 'Cancelado', 276, NULL, NULL),
(277, '0', 277, NULL, NULL),
(278, '0', 278, NULL, NULL),
(279, '0', 279, NULL, NULL),
(280, '0', 280, NULL, NULL),
(281, '0', 281, NULL, NULL),
(282, '0', 282, NULL, NULL),
(283, '0', 283, NULL, NULL),
(284, '0', 284, NULL, NULL),
(285, 'Pagado', 285, NULL, NULL),
(286, 'Pagado', 286, NULL, NULL),
(287, 'Pagado', 287, NULL, NULL),
(288, '0', 288, NULL, NULL),
(289, '0', 289, NULL, NULL),
(290, '0', 290, NULL, NULL),
(291, '0', 291, NULL, NULL),
(292, 'Pagado', 292, NULL, NULL),
(293, 'Pagado', 293, NULL, NULL),
(294, 'Pagado', 294, NULL, NULL),
(295, '0', 295, NULL, NULL),
(296, '0', 296, NULL, NULL),
(297, '0', 297, NULL, NULL),
(298, '0', 298, NULL, NULL),
(299, '0', 299, NULL, NULL),
(300, '0', 300, NULL, NULL),
(301, 'Planilla N°1 y Planilla N°2', 301, NULL, NULL),
(302, 'Planilla N°1 y cierre', 302, NULL, NULL),
(303, '100', 303, NULL, NULL),
(304, '100', 304, NULL, NULL),
(305, '0', 305, NULL, NULL),
(306, '0', 306, NULL, NULL),
(307, '0', 307, NULL, NULL),
(308, '0', 308, NULL, NULL),
(309, '0', 309, NULL, NULL),
(310, '0', 310, NULL, NULL),
(311, '0', 311, NULL, NULL),
(312, '0', 312, NULL, NULL),
(313, '0', 313, NULL, NULL),
(314, '0', 314, NULL, NULL),
(315, '0', 315, NULL, NULL),
(316, '0', 316, NULL, NULL),
(317, '0', 317, NULL, NULL),
(318, '0', 318, NULL, NULL),
(319, '0', 319, NULL, NULL),
(320, '0', 320, NULL, NULL),
(321, '0', 321, NULL, NULL),
(322, '0', 322, NULL, NULL),
(323, '0', 323, NULL, NULL),
(324, '0', 324, NULL, NULL),
(325, '0', 325, NULL, NULL),
(326, '0', 326, NULL, NULL),
(327, '0', 327, NULL, NULL),
(328, '0', 328, NULL, NULL),
(329, '0', 329, NULL, NULL),
(330, '0', 330, NULL, NULL),
(331, '0', 331, NULL, NULL),
(332, '0', 332, NULL, NULL),
(333, '0', 333, NULL, NULL),
(334, '0', 334, NULL, NULL),
(335, '0', 335, NULL, NULL),
(336, '0', 336, NULL, NULL),
(337, '0', 337, NULL, NULL),
(338, '0', 338, NULL, NULL),
(339, '0', 339, NULL, NULL),
(340, '0', 340, NULL, NULL),
(341, '0', 341, NULL, NULL),
(342, '0', 342, NULL, NULL),
(343, '0', 343, NULL, NULL),
(344, '0', 344, NULL, NULL),
(345, '0', 345, NULL, NULL),
(346, '0', 346, NULL, NULL),
(347, '0', 347, NULL, NULL),
(348, '0', 348, NULL, NULL),
(349, '0', 349, NULL, NULL),
(350, '0', 350, NULL, NULL),
(351, '0', 351, NULL, NULL),
(352, '0', 352, NULL, NULL),
(353, '0', 353, NULL, NULL),
(354, '0', 354, NULL, NULL),
(355, '0', 355, NULL, NULL),
(356, '0', 356, NULL, NULL),
(357, '0', 357, NULL, NULL),
(358, '0', 358, NULL, NULL),
(359, '0', 359, NULL, NULL),
(360, '0', 360, NULL, NULL),
(361, '0', 361, NULL, NULL),
(362, '0', 362, NULL, NULL),
(363, '0', 363, NULL, NULL),
(364, '0', 364, NULL, NULL),
(365, '0', 365, NULL, NULL),
(366, '0', 366, NULL, NULL),
(367, '0', 367, NULL, NULL),
(368, '0', 368, NULL, NULL),
(369, '0', 369, NULL, NULL),
(370, '0', 370, NULL, NULL),
(371, '0', 371, NULL, NULL),
(372, '0', 372, NULL, NULL),
(373, '0', 373, NULL, NULL),
(374, '0', 374, NULL, NULL),
(375, '0', 375, NULL, NULL),
(376, '0', 376, NULL, NULL),
(377, '0', 377, NULL, NULL),
(378, '0', 378, NULL, NULL),
(379, '0', 379, NULL, NULL),
(380, '0', 380, NULL, NULL),
(381, '0', 381, NULL, NULL),
(382, '0', 382, NULL, NULL),
(383, '0', 383, NULL, NULL),
(384, '0', 384, NULL, NULL),
(385, '0', 385, NULL, NULL),
(386, '0', 386, NULL, NULL),
(387, '0', 387, NULL, NULL),
(388, '0', 388, NULL, NULL),
(389, '0', 389, NULL, NULL),
(390, '0', 390, NULL, NULL),
(391, '0', 391, NULL, NULL),
(392, '0', 392, NULL, NULL),
(393, '0', 393, NULL, NULL),
(394, '0', 394, NULL, NULL),
(395, '0', 395, NULL, NULL),
(396, '0', 396, NULL, NULL),
(397, '0', 397, NULL, NULL),
(398, '0', 398, NULL, NULL),
(399, '0', 399, NULL, NULL),
(400, 'CAO 1 DEL 47 % CANCELADO', 400, NULL, NULL),
(401, 'Pagado', 401, NULL, NULL),
(402, '17', 402, NULL, NULL),
(403, 'PLANILLA 1 EN FINANZAS', 403, NULL, NULL),
(404, '94', 404, NULL, NULL),
(405, '27', 405, NULL, NULL),
(406, '0', 406, NULL, NULL),
(407, 'en despacho con nÂ° de comprobante 26332', 407, NULL, NULL),
(408, 'en finanzas', 408, NULL, NULL),
(409, '0', 409, NULL, NULL),
(410, 'CAO1 y cierre al 100%', 410, NULL, NULL),
(411, 'CAO1 al 65% cancelado', 411, NULL, NULL),
(412, 'CAO1 y cierre al 100%', 412, NULL, NULL),
(413, '0', 413, NULL, NULL),
(414, 'CAO1 al 97%', 414, NULL, NULL),
(415, '0', 415, NULL, NULL),
(416, 'CAO1 al 58%', 416, NULL, NULL),
(417, 'cancelado', 417, NULL, NULL),
(418, 'Pagado', 1, NULL, NULL),
(419, 'Pagado', 2, NULL, NULL),
(420, 'Pagado', 3, NULL, NULL),
(421, 'Pagado', 4, NULL, NULL),
(422, 'Pagado', 5, NULL, NULL),
(423, 'Pagado', 6, NULL, NULL),
(424, 'Pagado', 7, NULL, NULL),
(425, 'Pagado', 8, NULL, NULL),
(426, 'Pagado', 9, NULL, NULL),
(427, 'Pagado', 10, NULL, NULL),
(428, 'Pagado', 11, NULL, NULL),
(429, 'Pagado', 12, NULL, NULL),
(430, 'Pagado', 13, NULL, NULL),
(431, 'Pagado', 14, NULL, NULL),
(432, 'Pagado', 15, NULL, NULL),
(433, 'Pagado', 16, NULL, NULL),
(434, 'Pagado', 17, NULL, NULL),
(435, 'Pagado', 18, NULL, NULL),
(436, 'Pagado', 19, NULL, NULL),
(437, 'Pagado', 20, NULL, NULL),
(438, 'Pagado', 21, NULL, NULL),
(439, 'Pagado', 22, NULL, NULL),
(440, 'Pagado', 23, NULL, NULL),
(441, 'Pagado', 24, NULL, NULL),
(442, 'Pagado', 25, NULL, NULL),
(443, 'Pagado', 26, NULL, NULL),
(444, 'Pagado', 27, NULL, NULL),
(445, 'Pagado', 28, NULL, NULL),
(446, 'Pagado', 29, NULL, NULL),
(447, 'Pagado', 30, NULL, NULL),
(448, 'Pagado', 31, NULL, NULL),
(449, 'Pagado', 32, NULL, NULL),
(450, 'Pagado', 33, NULL, NULL),
(451, 'Pagado', 34, NULL, NULL),
(452, 'Pagado', 35, NULL, NULL),
(453, 'Pagado', 36, NULL, NULL),
(454, 'Pagado', 37, NULL, NULL),
(455, 'Pagado', 38, NULL, NULL),
(456, 'Pagado', 39, NULL, NULL),
(457, 'Pagado', 40, NULL, NULL),
(458, 'Pagado', 41, NULL, NULL),
(459, 'Pagado', 42, NULL, NULL),
(460, 'Pagado', 43, NULL, NULL),
(461, 'Pagado', 44, NULL, NULL),
(462, 'Pagado', 45, NULL, NULL),
(463, 'Pagado', 46, NULL, NULL),
(464, 'Pagado', 47, NULL, NULL),
(465, 'Pagado', 48, NULL, NULL),
(466, 'Pagado', 49, NULL, NULL),
(467, 'Pagado', 50, NULL, NULL),
(468, 'Pagado', 51, NULL, NULL),
(469, 'Pagado', 52, NULL, NULL),
(470, 'Pagado', 53, NULL, NULL),
(471, 'Pagado', 54, NULL, NULL),
(472, 'Pagado', 55, NULL, NULL),
(473, 'Pagado', 56, NULL, NULL),
(474, 'Pagado', 57, NULL, NULL),
(475, 'Pagado', 58, NULL, NULL),
(476, 'Pagado', 59, NULL, NULL),
(477, 'Pagado', 60, NULL, NULL),
(478, 'Pagado', 61, NULL, NULL),
(479, 'Pagado', 62, NULL, NULL),
(480, 'Pagado', 63, NULL, NULL),
(481, 'Pagado', 64, NULL, NULL),
(482, 'Pagado', 65, NULL, NULL),
(483, 'Pagado', 66, NULL, NULL),
(484, 'Pagado', 67, NULL, NULL),
(485, 'En elaboracion de pago de retencion', 68, NULL, NULL),
(486, 'Concluido', 69, NULL, NULL),
(487, 'Pagado', 70, NULL, NULL),
(488, 'Pagado', 71, NULL, NULL),
(489, 'Pagado', 72, NULL, NULL),
(490, 'Pagado', 73, NULL, NULL),
(491, 'Concluido y Pagado', 74, NULL, NULL),
(492, 'Concluido', 75, NULL, NULL),
(493, 'Pagado', 76, NULL, NULL),
(494, 'Pagado', 77, NULL, NULL),
(495, 'Retencion 7%', 78, NULL, NULL),
(496, 'Concluido y pagado', 79, NULL, NULL),
(497, 'Concluido', 80, NULL, NULL),
(498, 'Concluido', 81, NULL, NULL),
(499, 'Pagado', 82, NULL, NULL),
(500, 'Concluido y pagado', 83, NULL, NULL),
(501, 'Concluido', 84, NULL, NULL),
(502, 'Concluido 100%, cancelado 93%', 85, NULL, NULL),
(503, 'Concluido', 86, NULL, NULL),
(504, 'Concluido', 87, NULL, NULL),
(505, 'Concluido', 88, NULL, NULL),
(506, 'Concluido y cancelado', 89, NULL, NULL),
(507, 'Concluido y Pagado según H.R. 1456/2023', 90, NULL, NULL),
(508, 'Concluido y Pagado según H.R. 1662/2023', 91, NULL, NULL),
(509, 'Concluido y Pagado según H.R. 1861/2023', 92, NULL, NULL),
(510, 'Concluido y Pagado en Finanzas según H.R. 1904/2023', 93, NULL, NULL),
(511, 'Pagado', 94, NULL, NULL),
(512, 'Concluido y Cancelado', 95, NULL, NULL),
(513, 'Concluido y Pagado H.R. 2305/2023', 96, NULL, NULL),
(514, 'Concluido y Cancelado', 97, NULL, NULL),
(515, 'Concluido y pagado', 98, NULL, NULL),
(516, 'Concluido y Cancelado', 99, NULL, NULL),
(517, 'Pagado', 100, NULL, NULL),
(518, 'Concluido y Cancelado', 101, NULL, NULL),
(519, 'Pagado', 102, NULL, NULL),
(520, 'Pagado', 103, NULL, NULL),
(521, 'Avance físico 100%, Avance financiero 0%', 104, NULL, NULL),
(522, 'Concluido y Cancelado', 105, NULL, NULL),
(523, 'Pagado', 106, NULL, NULL),
(524, 'Concluido y Cancelado', 107, NULL, NULL),
(525, 'Concluido y Cancelado', 108, NULL, NULL),
(526, 'Concluido', 109, NULL, NULL),
(527, 'Concluido', 110, NULL, NULL),
(528, 'Pagado', 111, NULL, NULL),
(529, 'Cancelado', 112, NULL, NULL),
(530, 'Resolucion de contrato', 113, NULL, NULL),
(531, 'Cancelado', 114, NULL, NULL),
(532, 'Concluido', 115, NULL, NULL),
(533, 'Concluido', 116, NULL, NULL),
(534, 'Se alista planilla de cancelacion', 117, NULL, NULL),
(535, 'Concluido al 80%. Por resolucion de contrato con conciliacion de saldos', 118, NULL, NULL),
(536, 'Planilla de cancelacion al 93% en Finanzas', 119, NULL, NULL),
(537, 'Concluido', 120, NULL, NULL),
(538, 'Concluido', 121, NULL, NULL),
(539, 'Concluido', 122, NULL, NULL),
(540, 'Concluido', 123, NULL, NULL),
(541, 'Concluido', 124, NULL, NULL),
(542, 'Concluido', 125, NULL, NULL),
(543, 'Planilla en etapa de revision', 126, NULL, NULL),
(544, 'Pagado', 127, NULL, NULL),
(545, 'Resolucion de contrato', 128, NULL, NULL),
(546, 'Planilla en etapa de revision', 129, NULL, NULL),
(547, 'Pagado', 130, NULL, NULL),
(548, 'Se alista planilla de cancelacion', 131, NULL, NULL),
(549, 'Concluido', 132, NULL, NULL),
(550, 'Concluido', 133, NULL, NULL),
(551, 'Concluido', 134, NULL, NULL),
(552, 'Concluido', 135, NULL, NULL),
(553, 'Concluido', 136, NULL, NULL),
(554, 'Concluido', 137, NULL, NULL),
(555, 'Concluido', 138, NULL, NULL),
(556, 'Concluido', 139, NULL, NULL),
(557, 'Concluido', 140, NULL, NULL),
(558, 'Concluido', 141, NULL, NULL),
(559, 'Concluido', 142, NULL, NULL),
(560, 'Concluido', 143, NULL, NULL),
(561, 'Concluido', 144, NULL, NULL),
(562, 'Concluido', 145, NULL, NULL),
(563, 'Concluido', 146, NULL, NULL),
(564, 'Concluido', 147, NULL, NULL),
(565, 'Concluido', 148, NULL, NULL),
(566, 'Concluido', 149, NULL, NULL),
(567, 'Concluido', 150, NULL, NULL),
(568, 'Concluido', 151, NULL, NULL),
(569, 'Concluido', 152, NULL, NULL),
(570, 'Concluido', 153, NULL, NULL),
(571, 'Concluido', 154, NULL, NULL),
(572, 'Concluido', 155, NULL, NULL),
(573, 'Concluido', 156, NULL, NULL),
(574, 'Concluido', 157, NULL, NULL),
(575, 'Concluido', 158, NULL, NULL),
(576, 'Concluido', 159, NULL, NULL),
(577, 'Concluido', 160, NULL, NULL),
(578, 'Concluido', 161, NULL, NULL),
(579, 'Concluido', 162, NULL, NULL),
(580, 'Concluido', 163, NULL, NULL),
(581, 'Concluido', 164, NULL, NULL),
(582, 'Concluido', 165, NULL, NULL),
(583, 'Concluido', 166, NULL, NULL),
(584, 'Concluido cancelado al 100%', 167, NULL, NULL),
(585, 'Concluido', 168, NULL, NULL),
(586, 'Concluido', 169, NULL, NULL),
(587, 'Concluido', 170, NULL, NULL),
(588, 'Concluido', 171, NULL, NULL),
(589, 'Concluido', 172, NULL, NULL),
(590, 'Concluido', 173, NULL, NULL),
(591, 'Concluido', 174, NULL, NULL),
(592, 'Concluido', 175, NULL, NULL),
(593, 'Concluido', 176, NULL, NULL),
(594, 'Concluido', 177, NULL, NULL),
(595, 'Concluido', 178, NULL, NULL),
(596, 'Concluido', 179, NULL, NULL),
(597, 'Concluido', 180, NULL, NULL),
(598, 'Concluido', 181, NULL, NULL),
(599, 'Concluido', 182, NULL, NULL),
(600, 'Concluido', 183, NULL, NULL),
(601, 'Concluido', 184, NULL, NULL),
(602, 'Concluido', 185, NULL, NULL),
(603, 'Concluido', 186, NULL, NULL),
(604, 'Concluido', 187, NULL, NULL),
(605, 'Concluido', 188, NULL, NULL),
(606, 'Concluido', 189, NULL, NULL),
(607, 'Concluido', 190, NULL, NULL),
(608, 'Concluido', 191, NULL, NULL),
(609, 'Avance físico 100%, Finanzas HR 303', 192, NULL, NULL),
(610, 'Cierre proyecto', 193, NULL, NULL),
(611, 'Concluido', 194, NULL, NULL),
(612, 'Concluido', 195, NULL, NULL),
(613, 'Concluido', 196, NULL, NULL),
(614, 'Concluido', 197, NULL, NULL),
(615, 'Concluido', 198, NULL, NULL),
(616, 'Concluido', 199, NULL, NULL),
(617, 'Concluido', 200, NULL, NULL),
(618, 'Concluido', 201, NULL, NULL),
(619, 'Concluido', 202, NULL, NULL),
(620, 'Concluido', 203, NULL, NULL),
(621, 'Concluido', 204, NULL, NULL),
(622, 'Concluido', 205, NULL, NULL),
(623, 'Concluido cordones de acera', 206, NULL, NULL),
(624, 'Concluido', 207, NULL, NULL),
(625, 'Concluido', 208, NULL, NULL),
(626, 'Concluido', 209, NULL, NULL),
(627, 'Entrega definitiva el 22/08/23', 210, NULL, NULL),
(628, 'Pagado', 211, NULL, NULL),
(629, 'Pagado', 212, NULL, NULL),
(630, 'Pagado', 213, NULL, NULL),
(631, 'Concluido', 214, NULL, NULL),
(632, 'Concluido', 215, NULL, NULL),
(633, 'Empresa alista su carpeta de cancelación', 216, NULL, NULL),
(634, '0', 217, NULL, NULL),
(635, 'Concluido', 218, NULL, NULL),
(636, 'Concluido', 219, NULL, NULL),
(637, 'Concluido', 220, NULL, NULL),
(638, 'Concluido', 221, NULL, NULL),
(639, 'Concluido', 222, NULL, NULL),
(640, 'Concluido', 223, NULL, NULL),
(641, 'Concluido', 224, NULL, NULL),
(642, 'Concluido', 225, NULL, NULL),
(643, 'Concluido', 226, NULL, NULL),
(644, 'Concluido', 227, NULL, NULL),
(645, 'En Ejecucion (42.87%)', 228, NULL, NULL),
(646, 'Concluido', 229, NULL, NULL),
(647, 'Concluido', 230, NULL, NULL),
(648, 'Concluido', 231, NULL, NULL),
(649, 'Concluido', 232, NULL, NULL),
(650, 'Concluido', 233, NULL, NULL),
(651, 'Concluido', 234, NULL, NULL),
(652, 'Concluido', 235, NULL, NULL),
(653, 'Concluido', 236, NULL, NULL),
(654, 'Concluido', 237, NULL, NULL),
(655, 'Avance fisico 75%', 238, NULL, NULL),
(656, 'Avance fisico 100%', 239, NULL, NULL),
(657, '0', 240, NULL, NULL),
(658, '0', 241, NULL, NULL),
(659, '0', 242, NULL, NULL),
(660, 'Se alista planilla de cancelacion', 243, NULL, NULL),
(661, 'Se alista planilla de cancelacion', 244, NULL, NULL),
(662, 'Avance fisico 100%', 245, NULL, NULL),
(663, 'Planilla de cancelacion en Finanzas', 246, NULL, NULL),
(664, 'Planilla de cancelacion en Finanzas', 247, NULL, NULL),
(665, 'Planilla de cancelacion en Finanzas', 248, NULL, NULL),
(666, '0', 249, NULL, NULL),
(667, 'Planilla unica y cierre', 250, NULL, NULL),
(668, '0', 251, NULL, NULL),
(669, '0', 252, NULL, NULL),
(670, '0', 253, NULL, NULL),
(671, '0', 254, NULL, NULL),
(672, '0', 255, NULL, NULL),
(673, 'Cancelado', 256, NULL, NULL),
(674, 'Concluido', 257, NULL, NULL),
(675, '0', 258, NULL, NULL),
(676, '0', 259, NULL, NULL),
(677, '0', 260, NULL, NULL),
(678, 'Concluido', 261, NULL, NULL),
(679, '0', 262, NULL, NULL),
(680, 'Pagado', 263, NULL, NULL),
(681, 'Cancelado', 264, NULL, NULL),
(682, 'Cancelado', 265, NULL, NULL),
(683, 'Cancelado', 266, NULL, NULL),
(684, 'Cancelado', 267, NULL, NULL),
(685, 'Cancelado', 268, NULL, NULL),
(686, '0', 269, NULL, NULL),
(687, '0', 270, NULL, NULL),
(688, '0', 271, NULL, NULL),
(689, '0', 272, NULL, NULL),
(690, '0', 273, NULL, NULL),
(691, '0', 274, NULL, NULL),
(692, '0', 275, NULL, NULL),
(693, 'Cancelado', 276, NULL, NULL),
(694, '0', 277, NULL, NULL),
(695, '0', 278, NULL, NULL),
(696, '0', 279, NULL, NULL),
(697, '0', 280, NULL, NULL),
(698, '0', 281, NULL, NULL),
(699, '0', 282, NULL, NULL),
(700, '0', 283, NULL, NULL),
(701, '0', 284, NULL, NULL),
(702, 'Pagado', 285, NULL, NULL),
(703, 'Pagado', 286, NULL, NULL),
(704, '0', 287, NULL, NULL),
(705, '0', 288, NULL, NULL),
(706, '0', 289, NULL, NULL),
(707, '0', 290, NULL, NULL),
(708, '0', 291, NULL, NULL),
(709, 'Pagado', 292, NULL, NULL),
(710, 'Pagado', 293, NULL, NULL),
(711, 'Pagado', 294, NULL, NULL),
(712, '0', 295, NULL, NULL),
(713, '0', 296, NULL, NULL),
(714, '0', 297, NULL, NULL),
(715, '0', 298, NULL, NULL),
(716, '0', 299, NULL, NULL),
(717, '0', 300, NULL, NULL),
(718, 'Planilla N°3 y planilla N°4 y cierre', 301, NULL, NULL),
(719, '0', 302, NULL, NULL),
(720, '0', 303, NULL, NULL),
(721, '0', 304, NULL, NULL),
(722, '0', 305, NULL, NULL),
(723, '0', 306, NULL, NULL),
(724, '0', 307, NULL, NULL),
(725, '0', 308, NULL, NULL),
(726, '0', 309, NULL, NULL),
(727, '0', 310, NULL, NULL),
(728, '0', 311, NULL, NULL),
(729, '0', 312, NULL, NULL),
(730, '0', 313, NULL, NULL),
(731, '0', 314, NULL, NULL),
(732, '0', 315, NULL, NULL),
(733, '0', 316, NULL, NULL),
(734, '0', 317, NULL, NULL),
(735, '0', 318, NULL, NULL),
(736, '0', 319, NULL, NULL),
(737, '0', 320, NULL, NULL),
(738, '0', 321, NULL, NULL),
(739, '0', 322, NULL, NULL),
(740, '0', 323, NULL, NULL),
(741, '0', 324, NULL, NULL),
(742, '0', 325, NULL, NULL),
(743, '0', 326, NULL, NULL),
(744, '0', 327, NULL, NULL),
(745, '0', 328, NULL, NULL),
(746, '0', 329, NULL, NULL),
(747, '0', 330, NULL, NULL),
(748, '0', 331, NULL, NULL),
(749, '0', 332, NULL, NULL),
(750, '0', 333, NULL, NULL),
(751, '0', 334, NULL, NULL),
(752, '0', 335, NULL, NULL),
(753, '0', 336, NULL, NULL),
(754, '0', 337, NULL, NULL),
(755, '0', 338, NULL, NULL),
(756, '0', 339, NULL, NULL),
(757, '0', 340, NULL, NULL),
(758, '0', 341, NULL, NULL),
(759, '0', 342, NULL, NULL),
(760, '0', 343, NULL, NULL),
(761, '0', 344, NULL, NULL),
(762, '0', 345, NULL, NULL),
(763, '0', 346, NULL, NULL),
(764, '0', 347, NULL, NULL),
(765, '0', 348, NULL, NULL),
(766, '0', 349, NULL, NULL),
(767, '0', 350, NULL, NULL),
(768, '0', 351, NULL, NULL),
(769, '0', 352, NULL, NULL),
(770, '0', 353, NULL, NULL),
(771, '0', 354, NULL, NULL),
(772, '0', 355, NULL, NULL),
(773, '0', 356, NULL, NULL),
(774, '0', 357, NULL, NULL),
(775, '0', 358, NULL, NULL),
(776, '0', 359, NULL, NULL),
(777, '0', 360, NULL, NULL),
(778, '0', 361, NULL, NULL),
(779, '0', 362, NULL, NULL),
(780, '0', 363, NULL, NULL),
(781, '0', 364, NULL, NULL),
(782, '0', 365, NULL, NULL),
(783, '0', 366, NULL, NULL),
(784, '0', 367, NULL, NULL),
(785, '0', 368, NULL, NULL),
(786, '0', 369, NULL, NULL),
(787, '0', 370, NULL, NULL),
(788, '0', 371, NULL, NULL),
(789, '0', 372, NULL, NULL),
(790, '0', 373, NULL, NULL),
(791, '0', 374, NULL, NULL),
(792, '0', 375, NULL, NULL),
(793, '0', 376, NULL, NULL),
(794, '0', 377, NULL, NULL),
(795, '0', 378, NULL, NULL),
(796, '0', 379, NULL, NULL),
(797, '0', 380, NULL, NULL),
(798, '0', 381, NULL, NULL),
(799, '0', 382, NULL, NULL),
(800, '0', 383, NULL, NULL),
(801, '0', 384, NULL, NULL),
(802, '0', 385, NULL, NULL),
(803, '0', 386, NULL, NULL),
(804, '0', 387, NULL, NULL),
(805, '0', 388, NULL, NULL),
(806, '0', 389, NULL, NULL),
(807, '0', 390, NULL, NULL),
(808, '0', 391, NULL, NULL),
(809, '0', 392, NULL, NULL),
(810, '0', 393, NULL, NULL),
(811, '0', 394, NULL, NULL),
(812, '0', 395, NULL, NULL),
(813, '0', 396, NULL, NULL),
(814, '0', 397, NULL, NULL),
(815, '0', 398, NULL, NULL),
(816, '0', 399, NULL, NULL),
(817, 'CAO2 DEL 30,23% EN FINAZAS', 400, NULL, NULL),
(818, 'Pagado', 401, NULL, NULL),
(819, '0', 402, NULL, NULL),
(820, '', 403, NULL, NULL),
(821, '6', 404, NULL, NULL),
(822, '', 405, NULL, NULL),
(823, '0', 406, NULL, NULL),
(824, '0', 407, NULL, NULL),
(825, '0', 408, NULL, NULL),
(826, '0', 409, NULL, NULL),
(827, '0', 410, NULL, NULL),
(828, 'CAO2 al 35%', 411, NULL, NULL),
(829, '0', 412, NULL, NULL),
(830, '0', 413, NULL, NULL),
(831, 'CAO2 al 3%', 414, NULL, NULL),
(832, '0', 415, NULL, NULL),
(833, '0', 416, NULL, NULL),
(834, 'cancelado', 417, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `distrito` varchar(255) NOT NULL,
  `otb` varchar(255) NOT NULL,
  `presupuesto` double(11,2) DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `adjudicatario` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `asignado_en` varchar(255) NOT NULL,
  `fecha_orden_proceder` date DEFAULT NULL,
  `plazo_dias` int(11) DEFAULT NULL,
  `fecha_avance` varchar(255) DEFAULT NULL,
  `porcentaje_avance` varchar(255) NOT NULL,
  `avance_financiero` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `apertura_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `nombre`, `distrito`, `otb`, `presupuesto`, `fecha_finalizacion`, `adjudicatario`, `supervisor`, `asignado_en`, `fecha_orden_proceder`, `plazo_dias`, `fecha_avance`, `porcentaje_avance`, `avance_financiero`, `observaciones`, `apertura_id`, `created_at`, `updated_at`) VALUES
(1, 'Const. pavimento rígido c/Cleomedes Blanco OTB Colcapirhua central distrito D (cordones de concreto av. La Paz a prog. 0+138)', 'D', 'Colcapirhua central', 25833.26, '2020-07-22', 'Juan de Dios RV', 'Wilder Branez', 'Obras Públicas', '2020-07-11', NULL, '2023-07-28', '100', '100', NULL, 16, NULL, NULL),
(2, 'Mej. cancha de futbol con iluminación OTB sindicato agrario Esquilan grande', 'E', 'Sindicato agrario Esquilan grande', 79750.42, '2020-08-25', 'Construcciones Saiba Chambi', 'Wilder Branez', 'Obras Públicas', '2020-08-01', NULL, '2023-06-23', '100', '100', NULL, 18, NULL, NULL),
(3, 'Const. pav. rígido av. Julio Romano', 'B', 'Holanda Santa Rosa norte', 9370.00, '2020-11-03', 'COPHE', 'Gaston Diaz', 'Obras Públicas', '2020-10-30', NULL, '2023-06-23', '100', '100', NULL, 16, NULL, NULL),
(4, 'Ampl. enmallado área de equipamiento', 'B', 'Huanuni Santa Rosa norte', 100000.00, '2021-01-19', 'STEIGERS DISEÑO Y CONSTRUCCION', 'Gaston Diaz', 'Obras Públicas', '2021-01-10', NULL, '2021-01-09', '100', '100', NULL, 16, NULL, NULL),
(5, 'Implementación de batería de lavamanos U.E. San Jose de Kami nivel primaria y secundaria - U.E. Mariscal Sucre nivel primaria y secundaria, U.E. San Jose de Kami nivel inicial - U.E. Mariscal Sucre nivel inicial y U.E. 15 de abril del dist. A', 'Educacion', 'San Jose de Kami', 26249.00, '2021-02-07', 'Hidalgo Choque Hugo Walter', 'Wilder Branez', 'Obras Públicas', '2021-01-29', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(6, 'Reposición muro de Ho Co canal de riego OTB Taramoko dist. A (fase II)', 'A', 'Taramocko', 45000.00, '2021-03-08', 'Huarachi Romero Jose Carlos', 'Wilder Branez', 'Obras Públicas', '2021-03-08', NULL, '2021-03-08', '100', '100', NULL, 2, NULL, NULL),
(7, 'Const. pavimento av. Dorbigni dist. B,C,D', 'C', 'Jazmin', 296544.00, '2021-04-08', 'Lujan Ingenieros', 'Reinaldo Jattaco', 'Obras Públicas', '2021-04-09', NULL, '2023-06-23', '100', '100', NULL, 16, NULL, NULL),
(8, 'Const. calle Wara wara (anexo ferroviario) dist. C', 'C', 'Sumumpaya Ferroviario sud', 99997.00, '2021-04-09', 'Constructora CISNEROS', 'Reinaldo Jattaco', 'Obras Públicas', '2021-03-22', NULL, '2021-04-10', '100', '100', NULL, 16, NULL, NULL),
(9, 'Const. canal Rumy Mayu- Challacaba', 'B', 'Bartos Coña coña, Municipal Coña coña', 100000.00, '2021-04-09', 'IC - OMMY', 'Gaston Diaz', 'Obras Públicas', '2021-03-16', NULL, '2021-03-16', '100', '100', NULL, 2, NULL, NULL),
(10, 'Const. cancha múltiple OTB San Francisco dist. C', 'C', 'San Francisco', 79742.00, '2021-04-15', 'Construcción es SAIBA CHAMBI', 'Reinaldo Jattaco', 'Obras Públicas', '2021-04-15', NULL, '2021-04-15', '100', '100', NULL, 16, NULL, NULL),
(11, 'Const. pav. rígido calle Thojla Phujru', 'C', 'Jazmin ', 99997.00, '2021-04-20', 'Constructora COPADE', 'Reinaldo Jattaco', 'Obras Públicas', '2021-04-20', NULL, '2021-04-20', '100', '100', NULL, 16, NULL, NULL),
(12, 'Const. FEXPOMYPE municipio de Colcapirhua', 'C', 'Sumumpaya norte', 1065822.00, '2021-04-20', 'Montaño y Asociados', 'Reinaldo Jattaco', 'Obras Públicas', '2021-03-08', NULL, '2021-04-20', '100', '100', NULL, 2, NULL, NULL),
(13, 'Const. pav. calle Tupiza OTB Sumumpaya central dist. E (canal de drenaje pluvial)', 'E', 'Sumumpaya central grande', 39999.05, '2021-05-10', 'Consultora y constructora Lazaro Humberto', 'Jhanet Vega', 'Obras Públicas', '2021-05-10', NULL, '2021-05-10', '100', '100', NULL, 9, NULL, NULL),
(14, 'Const. pav. c/adyacentes plaza OTB 21 de septiembre dist. D', 'D', '21 de septiembre', 60000.00, '2021-05-11', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-05-05', NULL, '2021-05-11', '100', '100', NULL, 6, NULL, NULL),
(15, 'Compra de capa base y sub base para la conformación de plataforma para la av. Fatima Don Bosco dist. A', 'A', 'Callajchullpa, Collpapampa Don Bosco', 125858.25, '2021-05-11', 'Vargas Quiroz Lenar Amilkar', 'Wilder Branez', 'Obras Públicas', '2021-04-21', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(16, 'Const. pav. calle Daniel Salamanca', 'B', 'Capacachi central', 50000.00, '2021-05-19', 'Administración Directa', 'Gaston Diaz', 'Obras Públicas', '2021-05-19', NULL, '2023-07-28', '100', '100', NULL, 1, NULL, NULL),
(17, 'Const. pav. de vías OTB Morococala', 'B', 'Morococala', 75000.00, '2021-05-19', 'Administración Directa', 'Gaston Diaz', 'Obras Públicas', '2021-05-19', NULL, '2023-05-19', '100', '100', NULL, 16, NULL, NULL),
(18, 'Const. pav. calle los paraísos - Pulacayo', 'B', 'California', 51985.00, '2021-05-19', 'Administracion Directa', 'Gaston Diaz', 'Obras Públicas', '2021-05-19', NULL, '2023-07-28', '100', '100', NULL, 16, NULL, NULL),
(19, 'Const. revestimiento canal 14 de febrero', 'B', 'Elfec y Cucardas', 219754.00, '2021-05-26', 'STEEL HOME SRL.', 'Gaston Diaz', 'Obras Públicas', '2021-04-19', NULL, '2023-06-23', '100', '100', NULL, 16, NULL, NULL),
(20, 'Const. pav. rígido de vías OTB Ferroviaria norte dist. C', 'C', 'Ferroviario Sumumpaya norte', 53027.00, '2021-06-09', 'Administracion Municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2021-06-09', NULL, '2023-06-23', '100', '100', NULL, 1, NULL, NULL),
(21, 'Const. pav. av. Tomas o Conor', 'C', 'Moyapampa', 100000.00, '2021-06-09', 'Administración Municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2021-06-09', NULL, '2023-06-23', '100', '100', NULL, 1, NULL, NULL),
(22, 'Const. pav. calle Leonor Rivera OTB Florida II norte', 'C', 'Florida II norte', 59996.00, '2021-06-09', 'Administracion Municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2021-06-09', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(23, 'Const. pav. vías laterales av. Blanco Galindo', 'B', 'Municipal Coña coña, Sausalito', 100000.00, '2021-06-09', 'EMPIRSA', 'Gaston Diaz', 'Obras Públicas', '2021-06-09', NULL, '2021-06-09', '100', '100', NULL, 2, NULL, NULL),
(24, 'Const. pav. vías laterales av. Blanco Galindo', 'C', 'Florida II norte, Canada', 283108.00, '2021-06-09', 'Administración Municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2021-06-09', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(25, 'Const. sist. de instalación de gas para el funcionamiento del horno crematorio municipio Colcapirhua', 'D', 'Colcapirhua central', 60000.00, '2021-06-11', 'ENPEG', 'Harold Panozo', 'Obras Públicas', '2021-05-13', NULL, '2021-05-13', '100', '100', NULL, 6, NULL, NULL),
(26, 'Const. empedrado av. Chijllawiri OTB Paraiso dist. D', 'D', 'Paraiso', 60000.00, '2021-06-17', 'L-MENTAL', 'Harold Panozo', 'Obras Públicas', '2021-06-21', NULL, '2023-06-09', '100', '100', NULL, 6, NULL, NULL),
(27, 'Const. empedrado de vías OTB Kenamari Kullcu dist. E', 'E', 'Qenamari Kullku', 127800.07, '2021-06-17', 'Goytia Coca', 'Jhanet Vega', 'Obras Públicas', '2021-05-24', NULL, '2021-06-17', '100', '100', NULL, 9, NULL, NULL),
(28, 'Const. pav. rígido OTB General Pando Colcapirhua dist. D', 'D', 'General Pando', 100000.00, '2021-06-19', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-06-13', NULL, '2021-06-13', '100', '100', NULL, 6, NULL, NULL),
(29, 'Const. pav. calle Andres Uzeda', 'B', 'Nueva Jerusalen Coña coña, Bartos Coña coña', 100000.00, '2021-06-25', 'Nelson Walker Mercado', 'Gaston Diaz', 'Obras Públicas', '2021-04-28', NULL, '2021-06-25', '100', '100', NULL, 2, NULL, NULL),
(30, 'Const. parque infantil área verde', 'B', 'Fabril Capacachi', 100000.00, '2021-06-25', 'Constructora y consultora Lizarazu Gil', 'Gaston Diaz', 'Obras Públicas', '2021-04-28', NULL, '2021-04-28', '100', '100', NULL, 16, NULL, NULL),
(31, 'Const. pav. pasaje innominado sector calle La Paz lado norte H.M. Andres Cuschieri OTB Colcapirhua central', 'D', 'Colcapirhua central', 100000.00, '2021-06-25', 'Sr. Martin Aguilar Jarro', 'Harold Panozo', 'Obras Públicas', '2021-05-28', NULL, '2023-06-09', '100', '100', NULL, 6, NULL, NULL),
(32, 'Adquisición de cemento para la const. pav. av. Andina dist. A,B', 'A', 'Capacachi norte', 83886.00, '2021-07-21', 'Cooperativa multiactiva COBOCE R.L.', 'Wilder Branez', 'Obras Públicas', '2021-07-21', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(33, 'Adquisición de capa base y sub base para la const. pav. Andina dist. A,B', 'A', 'Capacachi norte', 37885.00, '2021-07-21', 'Machuca Paredes Guido Alberto', 'Wilder Branez', 'Obras Públicas', '2021-07-21', NULL, '2021-07-21', '100', '100', NULL, 2, NULL, NULL),
(34, 'Adquisición de arena, grava y gravilla para la const. pav. andina dist. A,B', 'A', 'Capacachi norte', 34250.00, '2021-07-21', 'Machuca Paredes Guido Alberto', 'Wilder Branez', 'Obras Públicas', '2021-07-21', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(35, 'Const. canalización desagüe pluvial OTB Kami dist. A Colcapirhua', 'A', 'San Jose de kami', 149985.70, '2021-07-26', 'Lazaro Chile Humberto', 'Wilder Branez', 'Obras Públicas', '2021-03-26', NULL, '2021-03-26', '100', '100', NULL, 2, NULL, NULL),
(36, 'Const. pav. rígido av. calle Jasmin OTB Esquilan grande dist. E', 'E', 'Esquilan grande', 54988.12, '2021-08-17', 'Mercado Veizaga', 'Jhanet Vega', 'Obras Públicas', '2021-06-29', NULL, '2021-06-29', '100', '100', NULL, 9, NULL, NULL),
(37, 'Const. pav. F. Diaz de Medina', 'B', 'Holanda Santa Rosa norte', 60000.00, '2021-10-29', 'L-MENTAL', 'Gaston Diaz', 'Obras Públicas', '2021-10-05', NULL, '2021-10-05', '100', '100', NULL, 2, NULL, NULL),
(38, 'Const. pavimento rígido c/Cleomedes Blanco OTB Colcapirhua central y sud dist. D', 'D', 'Colcapirhua central, Zona sud Colcapirhua', 150000.00, '2021-11-07', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-10-29', NULL, '2023-06-09', '100', '100', NULL, 6, NULL, NULL),
(39, 'Const. av. Andina dist. A, B (cordones para pavimento) OTB Capacachi norte dist. A,B', 'A,B', 'Capacachi norte', 36963.60, '2021-11-11', 'Jhonn Oscar Goytia Coca', 'Wilder Branez', 'Obras Públicas', '2023-11-04', NULL, '2021-11-11', '100', '100', NULL, 2, NULL, NULL),
(40, 'Const. desagüe pluvial calle Cleomedes Blanco - La Paz OTB Colcapirhua central dist. D', 'D', 'Colcapirhua central', 95262.72, '2021-11-25', 'Segunda fase: Sr. Isrrael Camacho', 'Harold Panozo', 'Obras Públicas', '2021-11-01', NULL, '2021-11-25', '100', '100', NULL, 6, NULL, NULL),
(41, 'Const. pav. av. Julio Guzman Tellez y empalmes dist. C,D', 'C', 'Libertador Bolivar', 58155.00, '2021-12-08', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-11-29', NULL, '2021-12-08', '100', '100', NULL, 6, NULL, NULL),
(42, 'Const. pavimento av. Fatima Don Bosco dist. A (cordones y drenaje pluvial)', 'A', 'Collpapampa', 153989.82, '2021-12-20', 'Edwin Antonio Tames Barrios', 'Wilder Branez', 'Obras Públicas', '2021-12-13', NULL, '2022-06-01', '100', '100', NULL, 2, NULL, NULL),
(43, 'Mejoramiento de vías OTB Senac dist. C', 'C', 'Senac', 49999.00, '2021-12-21', 'Constructora EMPIRSA', 'Reinaldo Jattaco', 'Obras Públicas', '2021-12-21', NULL, '2021-12-21', '100', '100', NULL, 16, NULL, NULL),
(44, 'Const. graderías cancha múltiple', 'B', 'Holanda Santa Rosa norte', 23000.00, '2021-12-29', 'Constructora y Consultora Lizarazu Gil', 'Gaston Diaz', 'Obras Públicas', '2021-10-21', NULL, '2021-12-21', '100', '100', NULL, 16, NULL, NULL),
(45, 'Const. pav. de vías OTB Piñami sud dist. D', 'D', 'Piñami sud', 60000.00, '2021-12-29', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-12-20', NULL, '2023-06-23', '100', '100', NULL, 6, NULL, NULL),
(46, 'Const. pav. de vías Sausalito', 'B', 'Sausalito', 15042.00, '2022-03-22', 'COBOCE S.R.L.', 'Gaston Diaz', 'Obras Públicas', '2022-03-18', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(47, 'Const. puente vehicular rio Chijllawiri', 'D', 'Colcapirhua central', 330000.00, '2022-03-30', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2021-12-13', NULL, '2021-12-13', '100', '100', NULL, 6, NULL, NULL),
(48, 'Const. canalización drenaje pluvial OTB Kami dist. A (entre c. El minero y c. Molienda)', 'A', 'San Jose de kami', 100000.00, '2022-04-01', 'Aguilar Araoz Alvaro Agustin', 'Wilder Branez', 'Obras Públicas', '2022-03-08', NULL, '2022-04-01', '100', '100', NULL, 4, NULL, NULL),
(49, 'Const. puente av. 21 de enero pampamayu dist. C-E', 'C,E', 'Ferroviario sud, Sumumpaya sud', 168028.29, '2022-05-14', 'DIONICOLQUE-CHW', 'Jhanet Vega', 'Obras Públicas', '2021-04-14', NULL, '2021-04-14', '100', '100', NULL, 10, NULL, NULL),
(50, 'Const. av. Daniel Salamanca dist. A,D (calle Lako) - (adquisición de materiales de construcción por lote)', 'A', 'Collpapampa', 394707.00, '2022-06-06', 'Jimenez Chavez Nemecho, Cooperativa multiactiva COBOCE R.L.', 'Wilder Branez', 'Obras Públicas', '2022-06-06', NULL, '2022-06-06', '100', '100', NULL, 4, NULL, NULL),
(51, 'Const. pavimento av. Fatima Don Bosco dist. A (entre c/La Paz y av. Angostura)-(adquisición de materiales de construcción por lote)', 'A', 'Collpapampa', 409972.10, '2022-06-06', 'Cooperativa multiactiva COBOCE R.L., Triveño ', 'Wilder Branez', 'Obras Públicas', '2022-06-06', NULL, '2023-06-23', '100', '100', NULL, 4, NULL, NULL),
(52, 'Const. Unidad Educativa San Crispin dist. E (obra fina planta baja portería)', 'Educacion', 'Esquilan', 21510.64, '2022-06-10', 'Guido Alberto Machuca Paredes', 'Jhanet Vega', 'Obras Públicas', '2022-05-22', NULL, '2023-06-23', '100', '100', NULL, 10, NULL, NULL),
(53, 'Const. av. Daniel Salamanca dist. A,D (calle lako)', 'A', 'Collpapampa', 500000.00, '2022-06-15', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2022-05-27', NULL, '2022-06-15', '100', '100', NULL, 7, NULL, NULL),
(54, 'Const. Centro de capacitación social y productiva', 'B', 'Villa San Alfonso', 81560.00, '2022-06-18', 'Varios', 'Gaston Diaz', 'Obras Públicas', '2022-05-25', NULL, '2022-06-18', '100', '100', NULL, 2, NULL, NULL),
(55, 'Const. pavimento rígido c/Cleomedes Blanco OTB Colcapirhua central dist. D', 'D', 'Colcapirhua central', 150000.00, '2022-06-18', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2022-05-30', NULL, '2023-06-23', '100', '100', NULL, 7, NULL, NULL),
(56, 'Elevación de muros del canal pluvial Pampayu desde la c/buen retiro hasta c/Machacamarca', 'C', 'Sumumpaya Ferroviario sud', 57847.00, '2022-06-22', 'Consdepro', 'Reinaldo Jattaco', 'Obras Públicas', '2022-06-02', 21, '2023-06-23', '100', '100', NULL, 1, NULL, NULL),
(57, 'Const. centro de capacitación social productiva OTB Kanaudt dist. A (obra fina planta baja bloque B)', 'A', 'Knaudt', 74999.75, '2022-06-24', 'Mauricio Bustamante', 'Jhanet Vega', 'Obras Públicas', '2022-05-26', NULL, '2022-06-24', '100', '100', NULL, 10, NULL, NULL),
(58, 'Const. obras hidráulicas para encauce de canal', 'C', 'Florida II norte', 100000.00, '2022-06-25', 'CD- JHONN GOYTIA COCA', 'Reinaldo Jattaco', 'Obras Públicas', '2022-06-06', 26, '2022-06-06', '100', '100', NULL, 1, NULL, NULL),
(59, 'Const. tinglado cancha múltiple', 'B', 'Florida norte', 60000.00, '2022-06-27', 'Jhon Goytia', 'Gaston Diaz', 'Obras Públicas', '2022-05-19', NULL, '2022-05-19', '100', '100', NULL, 16, NULL, NULL),
(60, 'Const. av. Dorbigni dist. B,C,D (c/Beni a la c/Puca puca)-cordones de concreto y desagüe pluvial', 'C', 'Jazmin, Sumumpaya norte', 53830.00, '2022-07-20', 'Mauricio Bustamante Huaquipa', 'Jhanet Vega', 'Obras Públicas', '2022-06-30', NULL, '2022-07-20', '100', '100', NULL, 10, NULL, NULL),
(61, 'Const. bloque de aulas U.E. Daniel Salamanca (obra gruesa planta primer piso)', 'Educacion', 'Colcapirhua central', 186054.41, '2022-07-22', 'Asociacion accidental M&S', 'Harold Panozo', 'Obras Públicas', '2022-05-28', NULL, '2022-05-28', '100', '100', NULL, 7, NULL, NULL),
(62, 'Const. batería de baños mercado zonal OTB sindicato agrario Esquilan grande', 'E', 'Sindicato agrario Esquilan grande', 59985.00, '2022-08-20', 'Juan de Dios Rocha Vera', 'Jhanet Vega', 'Obras Públicas', '2022-07-27', NULL, '2022-08-20', '100', '100', NULL, 10, NULL, NULL),
(63, 'Const. centro de capacitación social productiva OTB sindicato agrario Esquilan grande dist. E (O. gruesa P. baja)', 'E', 'Sindicato agrario Esquilan grande', 195847.46, '2022-10-02', 'Cristian Jaime Peña Rioja', 'Jhanet Vega', 'Obras Públicas', '2022-08-19', NULL, '2022-10-02', '100', '100', NULL, 10, NULL, NULL),
(64, 'Const. graderías laterales cancha múltiple OTB Sumumpaya ferroviario sud', 'C', 'Sumumpaya ferroviario sud', 27985.00, '2022-11-29', 'Constructora Camacho Andia', 'Wilder Branez', 'Obras Públicas', '2022-11-10', NULL, '2022-11-10', '100', '100', NULL, 14, NULL, NULL),
(65, 'Const. puentes peatonales rio Pampa Mayu', 'E', 'Sumumpaya sud', 57582.10, '2022-12-13', 'Boris Saiva', 'Harold Panozo', 'Obras Públicas', '2022-11-14', 30, '2022-11-14', '100', '100', NULL, 15, NULL, NULL),
(66, 'Const. pav. de vías OTB Comercio Cochabamba dist. B', 'B', 'Santa Rosa trabajadores de comercio', 60000.00, '2022-12-13', 'Administracion directa', 'Harold Panozo', 'Obras Públicas', '2022-12-13', NULL, '2022-12-13', '100', '100', NULL, 7, NULL, NULL),
(67, 'Elevación de muros del canal pluvial Pampayu sobre la av. 21 de septiembre entre c/Machacamarca y la av. ferroviaria', 'C', 'Ferroviario Sumumpaya norte', 34666.00, '2022-12-13', 'Montes Bellido Andres', 'Reinaldo Jattaco', 'Obras Públicas', '2022-11-30', 14, '2023-06-23', '100', '100', NULL, 1, NULL, NULL),
(68, 'Const. prado central av. B. Galindo Reducto Mercado central municipio de Colcapirhua (tramo calle Sucre - av. Reducto)', 'D', 'Colcapirhua central', 919808.72, '2022-12-16', 'MIRAGON S.R.L.', 'Wilder Branez', 'Obras Públicas', '2022-09-08', NULL, '2023-06-23', '100', '100', NULL, 16, NULL, NULL),
(69, 'Mej. ambientes FEXPOMYPE municipio Colcapirhua', 'C', 'Sumumpaya norte', 42106.00, '2022-12-22', 'Constructora EMPIRSE', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-02', 20, '2022-12-02', '100', '100', NULL, 16, NULL, NULL),
(70, 'Const. muro perimetral ambientes GIRS municipio de Colcapirhua', 'C', 'Sumumpaya ferroviario sud', 82992.95, '2022-12-22', 'Montaño', 'Jhanet Vega', 'Obras Públicas', '2022-11-28', NULL, '2022-11-28', '100', '100', NULL, 10, NULL, NULL),
(71, 'Mantenimiento áreas verdes OTB cuatro esquinas dist. A (mejoramiento e instalación de juegos p/parque infantil)', 'A', '4 esquinas', 50000.00, '2022-12-27', 'Camacho Andia Ysrael', 'Wilder Branez', 'Obras Públicas', '2022-12-28', NULL, '2023-06-23', '100', '100', NULL, 4, NULL, NULL),
(72, 'Const. centro de capacitación social productiva OTB San Lorenzo dist. D', 'D', 'San Lorenzo', 78500.00, '2023-01-03', 'Milvian J. Arce Rocha', 'Harold Panozo', 'Obras Públicas', '2022-12-05', 30, '2023-06-23', '100', '100', NULL, 15, NULL, NULL),
(73, 'Const. muro perimetral OTB San Lorenzo', 'D', 'San Lorenzo', 68290.00, '2023-01-04', 'TOMER', 'Harold Panozo', 'Obras Públicas', '2022-12-12', NULL, '2023-06-23', '100', '100', NULL, 7, NULL, NULL),
(74, 'Const. muro perimetral y portón FEXPO MYPE municipio de Colcapirhua', 'C', 'Florida II norte', 194199.83, '2023-01-06', 'CONSDEPRO', 'Reinaldo Jattaco', 'Obras Públicas', '2022-11-11', 57, '2023-06-05', '100', '100', 'Pagado', 13, NULL, NULL),
(75, 'Const. tanque enterrado para el riego de las áreas verdes del dist. B,C,D', 'B,C,D', 'Holanda, Sausalito, Sumumpaya norte, Sumumpaya ferroviario sud', 188507.00, '2023-01-06', 'Julio Copa Cardozo', 'Harold Panozo', 'Obras Públicas', '2023-01-06', 40, '2023-02-06', '100', '100', 'Retencion 7%', 7, NULL, NULL),
(76, 'canal de riego Esquilan Chijllawiri', 'E', 'Esquilan Chijllawiri', 96396.00, '2023-01-09', 'Francisco Melchor Callapino', 'Harold Panozo', 'Obras Públicas', '2022-12-13', 28, '2023-06-05', '100', '100', NULL, 15, NULL, NULL),
(77, 'Adecuación celda de emergencia 1ra fase plan de cierre técnico botadero municipal Colcapirhua', 'E', 'Esquilan grande', 298955.86, '2023-01-12', 'Ruben Meneses Rocha', 'Jhanet Vega', 'Obras Públicas', '2022-12-14', NULL, '2022-12-14', '100', '100', NULL, 11, NULL, NULL),
(78, 'Const. de frontón campo deportivo San Jose Kami', 'A', 'San Jose de kami', 391911.31, '2023-01-20', 'MIRAGON', 'Harold Panozo', 'Obras Públicas', '2022-11-21', 50, '2023-06-05', '100', '100', 'Retencion 7%', 15, NULL, NULL),
(79, 'Ampl. bloque de aulas nivel secundaria U.E. 15 de abril (O. fina P. baja)', 'Educacion', 'Willcataco', 313667.00, '2023-01-27', 'CONSDEPRO', 'Reinaldo Jattaco', 'Obras Públicas', '2022-11-28', NULL, '2023-06-05', '100', '100', NULL, 13, NULL, NULL),
(80, 'Mejoramiento de vias en el municipio de Colcapirhua', 'A', 'San Jose reducto, Colcapirhua central, General Pando, Simon Bolivar , Colcapirhua sud, Sumumpaya central', 98000.00, '2023-02-08', 'Ronald Denis Bolaños Bernal', 'Wilder Branez', 'Obras Públicas', '2023-05-19', NULL, '2023-06-23', '100', '100', NULL, 5, NULL, NULL),
(81, 'Mej. centro de capacitación social y productiva OTB Lirios del norte dist. A', 'A', 'Lirios del norte', 49356.00, '2023-02-08', 'Herrera Meneces Horacio Angel', 'Wilder Branez', 'Obras Públicas', '2023-01-24', NULL, '2023-01-24', '100', '100', NULL, 5, NULL, NULL),
(82, 'Const. letreros urbanos de limite municipal del municipio de Colcapirhua', 'B,D,\nE', 'Piñami sud, Municipal Coña coña', 57041.95, '2023-02-13', 'Boris Casiano Saiba', 'Jhanet Vega', 'Obras Públicas', '2023-01-25', NULL, '2023-02-13', '100', '100', NULL, 11, NULL, NULL),
(83, 'Mej. centro de capacitación social y productiva OTB Sumumpaya norte dist. C', 'C', 'Sumumpaya norte', 32950.61, '2023-02-17', 'MIRALOC Const. en Ing. civil', 'Reinaldo Jattaco', 'Obras Públicas', '2023-01-24', 25, '2023-06-05', '100', '100', 'Pagado', 13, NULL, NULL),
(84, 'Const. empedrado sindicato agrario Quenamari Kullcu dist. E', 'E', 'Qenamari Kullku', 428205.65, '2023-02-21', 'EPADILLAO', 'Harold Panozo', 'Obras Públicas', '2022-12-12', 45, '2023-06-05', '100', '100', NULL, 15, NULL, NULL),
(85, 'Const. bloque de aulas nivel secundaria U.E. San Crispin (O. fina P. baja)', 'Educacion', 'Sindicato agrario Esquilan Grande', 431191.00, '2023-03-04', 'Asociacion accidental M&S', 'Gaston Diaz', 'Obras Públicas', '2023-01-19', 45, '2023-06-05', '100', '100', 'Cancelado el 93%', 3, NULL, NULL),
(86, 'Ampl. centro de salud Kami', 'Salud', 'San Jose de kami', 99986.16, '2023-03-08', 'LMENTAL constructora S.R.L.', 'Wilder Branez', 'Obras Públicas', '2023-01-26', NULL, '2023-06-23', '100', '100', NULL, 5, NULL, NULL),
(87, 'Const. parada de transporte publico en el municipio de Colcapirhua', 'B,C,D', 'Colcapirhua sud, Florida norte, San Francisco, Sumumpaya ferroviario norte, Sumumpaya ferroviario sud, Huanuni', 85343.06, '2023-03-13', 'Alvaro A. Aguilar Araoz', 'Harold Panozo', 'Obras Públicas', '2023-01-31', 42, '2023-06-05', '100', '100', NULL, 15, NULL, NULL),
(88, 'Const. bloque de talleres BTH U.E. 27 de mayo Daniel Salamanca (O. gruesa y O. fina semisótano y P. baja)', 'Educacion', 'Colcapirhua central', 702868.00, '2023-03-27', 'MIRAGON S.R.L.', 'Wilder Branez', 'Obras Públicas', '2023-01-05', NULL, '2023-06-05', '100', '100', NULL, 1, NULL, NULL),
(89, 'Const. canalización Rumy Mayu av. sexta entre av. Dorbini y c. Daniel Campos dist. B', 'B', 'Bartos Coña coña', 481026.63, '2023-04-02', 'Vladimir Melchor Quispe', 'Gaston Diaz', 'Obras Públicas', '2023-01-06', 72, '2023-10-30', '100', '100', 'Cancelado 100% ', 3, NULL, NULL),
(90, 'Mantenimiento centro de salud integral Colcapirhua', 'Salud', 'Canada', 19946.52, '2023-04-05', 'Horacio Angel Herrera Meneses', 'Reinaldo Jattaco', 'Obras Públicas', '2023-04-03', 6, '2023-06-23', '100', '100', 'Pagado segun H.R. 1456/2023', 19, NULL, NULL),
(91, 'Adquisición de ripio fino sin ligante para mtto, mejoramiento y ripiado calles y caminos distrito C', 'C', 'Sumumpaya norte, Moyapampa, Ferroviario sud, Ferroviario norte', 19800.00, '2023-04-07', 'Arnold Brayan Achocalla Almaraz', 'Reinaldo Jattaco', 'Obras Públicas', '2023-04-03', 5, '2023-06-23', '100', '100', 'Pagado segun H.R. 1662/2023', 19, NULL, NULL),
(92, 'Puente cajón de la calle Uyuni dist. C', 'C', 'Ferroviario Sumumpaya norte', 19979.69, '2023-04-11', 'Carlos Cesar Merida Flores', 'Reinaldo Jattaco', 'Obras Públicas', '2023-03-30', 13, '2023-06-23', '100', '100', 'Pagado segun H.R. 1861/2023', 19, NULL, NULL),
(93, 'Mejoramiento de la cancha múltiple con enmallado lado norte y sur de la OTB Florida norte', 'B', 'Florida norte', 19992.06, '2023-04-17', 'Boris Casiano Saiba Chambi', 'Reinaldo Jattaco', 'Obras Públicas', '2023-04-03', 15, '2023-06-23', '100', '100', 'Pagado en Finanzas segun H.R. 1904/2023', 19, NULL, NULL),
(94, 'Const. centro de salud ambulatorio Esquilan dist. E (conclusión O. gruesa y 1ra etapa obra fina)', 'Salud', 'Esquilan grande', 438656.00, '2023-04-28', 'MIRAGON', 'Reinaldo Jattaco', 'Obras Públicas', '2023-03-06', 45, '2023-06-05', '100', '100', 'Planilla de devolucion de retencion en curso', 13, NULL, NULL),
(95, 'Sistema de drenaje pluvial y cámara de bombeo calle Balazan Luigui-OTB Santa Rosa central tramo 14', 'B', 'Santa Rosa central', 18681.19, '2023-04-30', 'Consultora y Constructora Lazaro Humberto', 'Gaston Diaz', 'Obras Públicas', '2023-04-21', 10, '2023-06-23', '100', '100', 'Cancelado', 19, NULL, NULL),
(96, 'Pintado muro perimetral Centro de salud integral Colcapirhua', 'Salud', 'Canada', 18258.49, '2023-05-04', 'Luis Mejia Medina', 'Reinaldo Jattaco', 'Obras Públicas', '2023-04-29', 7, '2023-04-29', '100', '100', 'Pagado', 19, NULL, NULL),
(97, 'Tramo XIII sumideros av. Challacaba OTB Oasys', 'B', 'Oasys', 10241.30, '2023-05-05', 'Consultora y Constructora Lazaro Humberto', 'Gaston Diaz', 'Obras Públicas', '2023-04-21', 15, '2023-06-23', '100', '100', 'Cancelado', 19, NULL, NULL),
(98, 'Mtto. mejoramiento y ripiado calles y caminos dist. B', 'B', 'La Paz Colcapirhua, Lirios, Villa San Alfonso, Capacachi central, Municipal Coña coña, Bartos', 49980.00, '2023-05-07', 'Varios', 'Gaston Diaz', 'Obras Públicas', '2023-05-07', NULL, '2023-10-30', '100', '100', NULL, 19, NULL, NULL),
(99, 'Sistema de drenaje pluvial tramo 10-av. 21 de enero OTB Sumumpaya ferroviario sud dist. C', 'C', 'Sumumpaya ferroviario sud', 11989.36, '2023-05-07', 'Empresa constructora ESPCAM', 'Gaston Diaz', 'Obras Públicas', '2023-04-28', 10, '2023-06-23', '100', '100', 'Cancelado', 19, NULL, NULL),
(100, 'Muro de contención calle Sucre dist. E lado norte puente prog. 0+480', 'E', 'Esquilan grande', 598147.53, '2023-05-15', 'Asociacion accidental CREAR', 'Wilder Branez', 'Obras Públicas', '2023-03-28', NULL, '2023-09-22', '100', '100', NULL, 1, NULL, NULL),
(101, 'Mantenimiento de cubierta Centro de Hemodiálisis - municipio de Colcapirhua', 'Salud', 'Capacachi central', 19997.22, '2023-05-18', 'Edward Coria', 'Gaston Diaz', 'Obras Públicas', '2023-05-04', 15, '2023-06-23', '100', '100', 'Cancelado', 19, NULL, NULL),
(102, 'Const. pav. de vías', 'B', 'La Paz Colcapirhua', 60000.00, '2023-05-19', 'Administración Directiva', 'Gaston Diaz', 'Obras Públicas', '2023-05-19', NULL, '2023-05-19', '100', '100', NULL, 16, NULL, NULL),
(103, 'Const. pav. Av. Kanaut', 'B', 'Capacachi central', 105709.00, '2023-05-19', 'Administracion Directa', 'Gaston Diaz', 'Obras Públicas', '2023-05-19', NULL, '2023-06-23', '100', '100', NULL, 2, NULL, NULL),
(104, 'Adquisición de ripio para el mejoramiento de vías, calles y caminos dist. A', 'A', 'San Jose reducto, Willcataco, Cielo mocko, San Jose Kami', 19030.00, '2023-05-20', 'Hans Omar Espinoza Camacho', 'Wilder Branez', 'Obras Públicas', '2023-05-11', NULL, '2023-06-23', '100', '100', NULL, 19, NULL, NULL),
(105, 'Ampliación enmallado cancha de futbol OTB Esquilan grande dist. E', 'E', 'Esquilan grande', 99854.11, '2023-06-02', 'Empresa constructora Kallparina', 'Gaston Diaz', 'Obras Públicas', '2023-05-17', 17, '2023-10-30', '100', '100', 'Cancelado el 100%', 21, NULL, NULL),
(106, 'Mejoramiento de vías', 'C', 'Sumumpaya norte', 49990.00, '2023-06-09', 'Administración Municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2023-06-09', NULL, '2023-05-19', '100', '100', NULL, 16, NULL, NULL),
(107, 'Mantenimiento de la infraestructura U.E. Andres Cuschieri - distrito B', 'Educacion', 'Capacachi central', 13805.12, '2023-06-11', 'Ysrael Camacho Andia', 'Gaston Diaz', 'Obras Públicas', '2023-05-31', 12, '2023-10-30', '100', '100', 'En proceso de cancelacion (la carpeta se encuentra en Finanzas)', 19, NULL, NULL),
(108, 'Mantenimiento de pintura exterior del Centro de formación cultural y comunitaria - distrito B', 'B', 'Lirios sud', 19785.32, '2023-06-13', 'Ruben Meneses Rocha', 'Gaston Diaz', 'Obras Públicas', '2023-05-31', 14, '2023-10-30', '100', '100', 'Cancelado', 19, NULL, NULL),
(109, 'Cordones lado sud y jardinera central c. Inti raymi entre c. La Paz y av. Reducto OTB Cielo Mocko dist. A', 'A', 'Cielo mocko, San Jose kami', 93234.94, '2023-06-16', 'Carlos Cesar Merida Flores', 'Reinaldo Jattaco', 'Obras Públicas', '2023-05-31', 17, '2023-11-03', '100', '100', 'Conlcuido con recepcion definitiva', 16, NULL, NULL),
(110, 'Puente cajón prog. 0+80 y 0+125 del tramo 3 de la fase B', 'A', 'Cielo mocko', 33141.25, '2023-06-20', 'Jose Iban Maldonado Cardoso', 'reinaldo Jattaco', 'Obras Públicas', '2023-06-05', 16, '2023-06-05', '100', '100', 'Concluido, con acta de recepcion definitiva de obra', 22, NULL, NULL),
(111, 'Mejoramiento de áreas verdes con la implementación de letreros de identificación', 'A,B,C,D,E', 'Municipio de Colcapirhua', 99234.36, '2023-06-21', 'Ronald F. Rocha Meneses', 'Harold Panozo', 'Obras Públicas', '2023-06-02', 20, '2023-06-05', '100', '100', NULL, 15, NULL, NULL),
(112, 'Puente cajón c-21 de septiembre prog. 0+440 OTB Sumumpaya sud tramo II dist. E', 'E', 'Sumumpaya sud', 37458.00, '2023-06-21', 'Fernando Padilla Policarpio', 'Jhanet Vega', 'Obras Públicas', '2023-06-06', NULL, '2024-01-11', '100', '100', 'Cancelado HR SMT 250 (Ing. Adimael a cargo)', 17, NULL, NULL),
(113, 'Puente vehicular tramo I dist. A prog. 0+000', 'A', 'Villa el Rosedal Dios es amor', 97515.90, '2023-06-23', 'LMENTAL Constructora S.R.L.', 'Wilder Branez', 'Obras Públicas', '2023-06-23', NULL, '2023-06-23', '0', '0', NULL, 19, NULL, NULL),
(114, 'Muros de contención H°C° c/21 de septiembre prog. 0+010 a prog. 0+280 OTB Sumumpaya sud tramo II dist. E', 'E', 'Sumumpaya sud', 182204.00, '2023-06-26', 'Consultora y constructora Lazaro Humberto', 'Jhanet Vega', 'Obras Públicas', '2023-06-07', NULL, '2024-01-11', '100', '100', 'Cancelado HR SMT 277 (Ing.Adimael a cargo) ', 17, NULL, NULL),
(115, 'Canalización av. Intirraymi prog. 0+000-0+0120', 'A', 'Cielo mocko', 84410.72, '2023-06-28', 'JAMELMM', 'Wilder Branez', 'Obras Públicas', '2023-06-12', NULL, '2023-06-28', '100', '100', NULL, 19, NULL, NULL),
(116, 'Const. parque integral productivo OTB Cielo Mocko dist. A', 'A', 'Cielo mocko', 49999.00, '2023-07-03', 'Herrera Meneces Horacio Angel', 'Wilder Branez', 'Obras Públicas', '2023-06-22', NULL, '2023-06-23', '100', '100', NULL, 5, NULL, NULL),
(117, 'Const. graderías laterales cancha polifuncional OTB California dist. C', 'B', 'California', 50373.63, '2023-07-11', 'Maxi Lopez Villarpando', 'Gaston Diaz', 'Obras Públicas', '2023-06-22', 20, '2023-10-30', '100', '100', 'Empresa alista su carpeta de cancelacion', 22, NULL, NULL),
(118, 'Canalización calle Kanaud OTB Capacachi central dist. B-tramo IV', 'B', 'Capacachi central', 133508.14, '2023-07-12', 'Consultora y Constructora Lazaro Humberto', 'Gaston Diaz', 'Obras Públicas', '2023-06-13', 30, '2023-06-23', '80', '0', 'Empresa alista su carpeta de cancelacion', 19, NULL, NULL),
(119, 'Const. puente vehicular Rumy Mayu-OTB municipal Coña coña', 'B', 'Coña coña', 69752.82, '2023-08-01', 'Victor Cardenas', 'Gaston Diaz', 'Obras Públicas', '2023-06-28', 35, '2023-10-30', '100', '100', 'En conciliacion con la empresa', 19, NULL, NULL),
(120, 'Adquisición de ripio, mejoramiento de vías calles y caminos', 'D', 'Paraiso', 14390.00, '2023-07-18', 'Arnold B. Achocalla Almaraz', 'Harold Panozo', 'Obras Públicas', '2023-07-18', 15, '2023-06-23', '100', '100', 'H.R. 313 SMAF 23/08/23', 22, NULL, NULL),
(121, 'Sistema de drenaje pluvial tramo 3-calle Larati OTB Florida II norte dist. C', 'C', 'Florida II norte', 68561.41, '2023-07-20', 'Guido Alberto Machuca Paredes', 'Reinaldo Jattaco', 'Obras Públicas', '2023-06-13', 24, '2023-06-13', '100', '100', 'Concluido, con acta de recepcion definitiva de obra', 19, NULL, NULL),
(122, 'Ampl. centro de salud Kami (conclusión obra gruesa y fina)', 'Salud', 'San Jose de kami', 318225.52, '2023-07-26', 'Rodrigo Zurita Aguilar - MONTBA', 'Wilder Branez', 'Obras Públicas', '2023-06-07', NULL, '2023-06-23', '100', '100', NULL, 5, NULL, NULL),
(123, 'Canalización y puente cajón tramo 2 - calle Siwar OTB Moyapampa, Sumumpaya norte y Jazmin dist. C', 'C', 'Moyapampa, Sumumpaya norte, Jazmin', 145804.00, '2023-07-26', 'Lazaro Humberto', 'Reinaldo Jattaco', 'Obras Públicas', '2023-07-12', 36, '2023-09-22', '100', '100', 'En ejecucion', 22, NULL, NULL),
(124, 'Mejoramiento de área verde Av.76 (plazuela Santa Isabel) OTB Villa Santa Isabel dist. B', 'B', 'Villa Santa Isabel', 26740.14, '2023-07-28', 'Construcciones Saiba Chambi', 'Harold Panozo', 'Obras Públicas', '2023-07-19', 10, '2023-06-23', '100', '100', 'Finanzas H.R. 302', 22, NULL, NULL),
(125, 'Const. bloque de aulas Unidad Educativa Daniel Salamanca (obra fina primer piso y gradas de H°A°)', 'Educacion', 'Colcapirhua central', 239522.00, '2023-07-29', 'CONSDEPRO', 'Reinaldo Jattaco', 'Obras Públicas', '2023-06-26', 30, '2021-04-09', '100', '100', 'Concluido, con recepcion provisional y recepcion definitiva de obra', 19, NULL, NULL),
(126, 'Canalización tramo 2 conexión sumidero pluvial tramo 1, dist. B', 'B', 'Villa San Alfonso', 38446.55, '2023-07-31', 'Rodrigo Zurita Aguilar', 'Gaston Diaz', 'Obras Públicas', '2023-07-14', NULL, '2023-10-30', '100', '100', NULL, 22, NULL, NULL),
(127, 'Const. Centro integral Colcapirhua (1ra. etapa de ejecución O. gruesa P. baja y 1er piso)', 'Salud', 'Colcapirhua central', 761150.17, '2023-10-09', 'Asociación Accidental Santa Fe', 'Harold Panozo', 'Obras Públicas', '2023-07-20', 75, '2023-10-30', '100', '100', 'En ejecucion', 6, NULL, NULL),
(128, 'Cordones de confinamiento sobre el canal Angostura tramo 1 dist. A', 'A', 'Villa el Rosedal Dios es amor', 44554.53, '2023-08-04', 'Omar Mamani Apaza', 'Wilder Branez', 'Obras Públicas', '2023-08-04', NULL, '2023-08-04', '0', '0', NULL, 19, NULL, NULL),
(129, 'Sumidero pluvial y puentes cajón en las progresivas 0+060, 0+120, 0+0180 y 0+440 calle Kanaud - distrito B', 'B', 'Capacachi central', 50457.91, '2023-08-16', 'Agui Araoz', 'Gaston Diaz', 'Obras Públicas', '2023-07-28', 20, '2023-10-30', '100', '100', 'En correcciones para su entrega definitiva', 22, NULL, NULL),
(130, 'Const. pav. C/Julian Apaza', 'B', 'Capacachi central', 100000.00, '2023-08-19', 'Administración Directa', 'Gaston Diaz', 'Obras Públicas', '2023-05-19', NULL, '2023-06-09', '100', '100', NULL, 2, NULL, NULL),
(131, 'Sumideros pluviales calle siglo XX OTB California tramo 17 dist. B', 'B', 'California', 60599.89, '2023-08-17', 'Nelson Mercado', 'Gaston Diaz', 'Obras Públicas', '2023-07-24', 25, '2023-09-22', '100', '100', 'En ejecucion', 22, NULL, NULL),
(132, 'Const. pav. FNDR-2022 (tramo 3 calle Larati 256,64 m.)', 'C', 'Andres Cuschieri', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(133, 'Const. pav. FNDR-2022 (tramo 7 calle Larati 118,27 m)', 'B', 'Florida norte los bloques', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(134, 'Const. pav. FNDR-2022 (tramo 8 calle Higuerani 157,80 m)', 'C', 'Ronny Rojas', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(135, 'Const. pav. FNDR-2022 (tramo 2 calle Roberto Echazu-Cleomedes Blanco 443,50 m)', 'D', 'General Pando', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(136, 'Const. pav. FNDR-2022 (calle Shiriska 103,00 m)', 'C', 'Senac', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(137, 'Const. pav. FNDR-2022 (tramo 5 Av. Chijllawiri 281,70 m)', 'D', 'Piñami, Paraiso', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(138, 'Const. pav. FNDR-2022 (tramo 7 calle Carboneros 261,00 m)', 'D', 'Piñami sud', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(139, 'Const. pav. FNDR-2022 (Prado Colcapirhua 210,00 m)', 'D', 'Colcapirhua central', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(140, 'Const. pav. FNDR-2022 (tramo 5 calle Sucre 609,90 m)', 'E', 'Sindicato agrario Esquilan grande', 0.00, '2022-12-31', 'Administración directa', 'Jhanet Vega', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(141, 'Const. pav. FNDR-2022 (tramo 2-A calle Innominada 170,00 m)', 'C', 'Moyapampa', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(142, 'Const. pav. FNDR-2022 (tramo 11 calle Dr. Eduardo Saracho 110,59 m)', 'B', 'Elizabeth Seton', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(143, 'Const. pav. FNDR-2022 (tramo 6 calle Litoral 79,23 m)', 'C', 'Emergencia norte', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(144, 'Const. pav. FNDR-2022 (tramo 9 calle Innominada 83,20 m)', 'D', '21 de septiembre', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(145, 'Const. pav. FNDR-2022 (tramo 2 calle Kanaud 351,70 m)', 'B', 'Capacachi central', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(146, 'Const. pav. FNDR-2022 (tramo 2 calle Quilla y chinchasullu 344,70 m)', 'A', 'Willcataco', 0.00, '2022-12-31', 'Administración directa', 'Wilder Branez', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(147, 'Const. pav. FNDR-2022 (tramo 4 calle Cipres 403,60 m)', 'E', 'Esquilan Chijllawiri', 0.00, '2022-12-31', 'Administración directa', 'Jhanet Vega', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(148, 'Const. pav. FNDR-2022 (tramo 4 calle Angulo Rancho 162,75 m)', 'E', 'Sumumpaya chico', 0.00, '2022-12-31', 'Administración directa', 'Jhanet Vega', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(149, 'Const. pav. FNDR-2022 (Av. Franz Tamayo 238,77 m)', 'B', 'Martin Cardenas', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(150, 'Const. pav. FNDR-2022 (calle 3 124,60 m)', 'B', 'Sausalito', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(151, 'Const. pav. FNDR-2022 (calle Pilacocha y Manuel Ascencio 141,30 m)', 'B', 'Capacachi central', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(152, 'Const. pav. FNDR-2022 (calle Balazan luigui 88,00 m)', 'B', 'Santa Rosa central', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(153, 'Const. pav. FNDR-2022 (tramo 3 calle Intirraymi 459,00 m)', 'A', 'Cielo Mocko', 0.00, '2022-12-31', 'Administración directa', 'Wilder Branez', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(154, 'Const. pav. FNDR-2022 (tramo 9 calle Aniceto Arce 296,27 m)', 'C', 'Ferroviario Sumumpaya norte', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(155, 'Const. pav. FNDR-2022 (tramo 1 calle los molles y Fortaleza 550,00 m)', 'C', 'Moyapampa', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(156, 'Const. pav. FNDR-2022 (tramo 4 calle Ricardo Mujia 307,16 m)', 'C', 'San Francisco', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(157, 'Const. pav. FNDR-2022 (tramo 10-A calle Higuerani 146,00 m)', 'C', 'Sumumpaya ferroviario sud', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(158, 'Const. pav. FNDR-2022 (calle San Lorenzo y Abaroa 195,00 m)', 'A', 'San Jose de kami', 0.00, '2022-12-31', 'Administración directa', 'Wilder Branez', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(159, 'Mejoramiento de vías y obras de arte municipio de Colcapirhua (mej. de vía con puente canal calle 16 de julio dist. B', 'B', 'ELFEC Cucardas', 0.00, '2022-01-21', 'John Goytia Coca', 'Gaston Diaz', 'Obras Públicas', '2022-01-04', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(160, 'Elevación de muros del canal pluvial Challacaba (desde la av. Cap. Ustariz hasta la av. Ferroviaria)', 'B', 'Santa Rosa central', 0.00, '2022-03-29', 'John Goytia Coca', 'Gaston Diaz', 'Obras Públicas', '2022-03-22', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(161, 'Elevación de muros del canal pluvial Challacaba (desde la c/Juan Pablo segundo hasta la c/Cercado)', 'B', 'La Paz Colcapirhua', 0.00, '2022-06-13', 'Omar Mamani Apaza', 'Gaston Diaz', 'Obras Públicas', '2022-05-18', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(162, 'Elevación de muros del canal pluvial Guillen (sobre la av. San Miguel desde la c/Bartolome de las Casas hasta el canal Rumy Mayu', 'B', 'Oasys', 0.00, '2022-08-23', 'Constructora Vergara Lopez', 'Gaston Diaz', 'Obras Públicas', '2022-07-28', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(163, 'Const. pav. vías laterales av. Blanco Galindo dist. C,B (cordones)', 'B', 'Municipal Coña coña, Sausalito, Holanda, La pradera', 0.00, '2021-12-27', 'Omar Mamani Apaza', 'Gaston Diaz', 'Obras Públicas', '2021-12-02', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(164, 'Mej. Alumbrado publico av. Intirraymi dist. A', 'Alumbrado', 'San Jose Reducto, Cielo Mocko', 99968.00, '2023-06-30', 'Omar Gregorio Olivares', 'Faris Duran', 'Obras Públicas', '2023-06-19', 12, '2023-08-24', '100', '100', 'En cancelacion , carpeta SMT', 22, NULL, NULL),
(165, 'Adquisición de ripio para el mejoramiento de vías, calles y caminos dist. A', 'A', 'Taramocko, Collpapampa bajo Taramocko, 23 de marzo', 0.00, '2023-05-20', 'Varios', 'Wilder Branez', 'Obras Públicas', '2023-05-20', NULL, '2023-08-24', '100', '100', NULL, 1, NULL, NULL),
(166, 'Adquisición de ripio para el mejoramiento de vías, calles y caminos dist. A', 'A', 'Callajchullpa, Collpapampa Don Bosco, Capacachi norte', 0.00, '2023-05-20', 'Varios', 'Wilder Branez', 'Obras Públicas', '2023-05-20', NULL, '2023-08-24', '100', '100', NULL, 1, NULL, NULL),
(167, 'Construcción pavimento av. Dorbigni distrito B,C,D', 'B,C,D', 'Jazmin, Sumumpaya norte', 200000.00, '2023-08-24', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2023-08-24', NULL, '2023-08-24', '100', '100', NULL, 1, NULL, NULL),
(168, 'Const. pav. FNDR-2022 (tramo 10-A calle Higuerani 316,00 m)', 'C', 'Sumumpaya ferroviario sud', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(169, 'Const. pav. FNDR-2022 (tramo 12 calle Innominada 63,75 m)', 'B', 'Santa Rosa central', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(170, 'Const. pav. FNDR-2022 (tramo 13 calle Leonor Rivera 164,28 m)', 'D', 'General Pando', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(171, 'Const. pav. FNDR-2022 (tramo 5 calle Leonor Rivera 209,14 m)', 'C', 'Florida II norte', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(172, 'Const. pav. FNDR-2022 (tramo 10 calle JM Pereira y calle Bautista 404,39 m)', 'B', 'Villa Santa Isabel', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(173, 'Const. pav. FNDR-2022 (tramo 15 calle Quillacollo 93,73 m)', 'B', 'La Paz Colcapirhua', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(174, 'Const. pav. FNDR-2022 (tramo 3 calle Andres Uzeda 130,01 m)', 'B', 'Nueva Jerusalen', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(175, 'Const. pav. FNDR-2022 (tramo 16 calle Corani 113,75 m)', 'B', 'Santa Rosa trabajadores de comercio', 0.00, '2022-12-31', 'Administración directa', 'Gaston Diaz', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(176, 'Const. pav. FNDR-2022 (tramo 10 av. 21 de enero 320,00 m)', 'C', 'Sumumpaya ferroviario sud', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(177, 'Const. pav. FNDR-2022 (tramo 2 calle Siwar 310,53 m)', 'C', 'Sumumpaya norte, Jazmin', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(178, 'Const. pav. FNDR-2022 (tramo 2 av. los cedros/21 de septiembre 430,80 m)', 'E', 'Sumumpaya sud', 0.00, '2022-12-31', 'Administración directa', 'Jhanet Vega', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(179, 'Const. pav. FNDR-2022 (tramo 4 calle Illapa 245,37 m)', 'A', 'Capacachi central', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(180, 'Const. pav. FNDR-2022 (tramo 10 calle gran chaco 332,50 m)', 'D', 'Zona sud Colcapirhua', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(181, 'Const. pav. FNDR-2022 (tramo 13 Av. Challacaba 85,11 m)', 'B', 'Oasys', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(182, 'Const. pav. FNDR-2022 (tramo 17 av. siglo XX 277,00 m)', 'B', 'California', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(183, 'Const. pav. FNDR-2022 (tramo 11 av. 15 de abril 148,48 m)', 'D', 'San Lorenzo', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(184, 'Const. pav. FNDR-2022 (tramo 12 calle San Lorenzo 64,17 m)', 'D', 'San Lorenzo', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(185, 'Const. pav. FNDR-2022 (tramo 1 av. sexta 99,72 m)', 'B', 'Villa San Alfonso', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(186, 'Const. pav. FNDR-2022 (tramo 5 calle Juan Miguel Saracho 138,32 m)', 'B', 'Capacachi central', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(187, 'Const. pav. FNDR-2022 (tramo 8 av. Julian Apaza 100,34 m)', 'B', 'Morococala', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(188, 'Const. pav. FNDR-2022 (tramo 3 calle Algarrobos 206,26 m)', 'E', 'Esquilan Chijllawiri', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(189, 'Const. pav. FNDR-2022 (calle Kanaud)', 'B', 'Morococala', 0.00, '2022-12-31', 'Administración directa', 'Harold Panozo', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(190, 'Const. pav. FNDR-2022 (calle Franz Tamayo)', 'B', 'Villa San Alfonso', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(191, 'Const. pav. FNDR-2022 (calle Innominada)', 'B', 'Capacachi central', 0.00, '2022-12-31', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2022-12-31', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL);
INSERT INTO `proyecto` (`id`, `nombre`, `distrito`, `otb`, `presupuesto`, `fecha_finalizacion`, `adjudicatario`, `supervisor`, `asignado_en`, `fecha_orden_proceder`, `plazo_dias`, `fecha_avance`, `porcentaje_avance`, `avance_financiero`, `observaciones`, `apertura_id`, `created_at`, `updated_at`) VALUES
(192, 'Const. centro de capacitación social productiva OTB San Lorenzo dist. D (batería de baños y depósito)', 'D', 'San Lorenzo', 73387.80, '2023-07-17', 'Milvian J. Arce Rocha', 'Harold Panozo', 'Obras Públicas', '2023-06-20', 28, '2023-08-24', '100', '100', 'Finanzas H.R. 303', 22, NULL, NULL),
(193, 'Refacción en ambientes de la Dirección de Desarrollo Humano del G.A.M. de Colcapirhua', 'D', 'Colcapirhua central', 77160.66, '2023-08-15', 'Maxi Lopez Villarpando', 'Harold Panozo', 'Obras Públicas', '2023-08-02', 14, '2023-08-24', '100', '100', 'Planilla en curso', 1, NULL, NULL),
(194, 'Mejoramiento de canaletas y bajantes de la cancha polifuncional de la OTB Piñami sud', 'D', 'Piñami sud', 16913.55, '2023-05-06', 'Milvian Joely Arce Rocha', 'Harold Panozo', 'Obras Públicas', '2023-04-26', 11, '2023-08-24', '100', '100', 'Concluido, pagado H.R. 2340', 22, NULL, NULL),
(195, 'Sistema de drenaje pluvial calle Hilarion Daza av. La Paz', 'D', 'Colcapirhua central', 16928.20, '2023-05-21', 'Boris Saiba', 'Harold Panozo', 'Obras Públicas', '2023-05-18', 14, '2023-08-24', '100', '100', 'Concluido, pagado H.R. 2523', 22, NULL, NULL),
(196, 'Mantenimiento del acceso de emergencia portón noreste del cementerio general de Colcapirhua', 'D', 'Cielo mocko', 4059.61, '2023-04-28', 'Juan Carlos Rioja Rvas', 'Harold Panozo', 'Obras Públicas', '2022-04-24', 6, '2023-08-24', '100', '100', 'Concluido, pagado H.R. 1600', 22, NULL, NULL),
(197, 'Instalación de estructura metálica para soporte de pantalla', 'D', 'Colcapirhua central', 19671.84, '2023-06-07', 'Fernando Padilla Policarpio', 'Harold Panozo', 'Obras Públicas', '2023-05-31', 8, '2023-08-24', '100', '100', 'Concluido, pagado 2370 revision', 22, NULL, NULL),
(198, 'Mantenimiento y reparación de almacenes y ambientes del G.A.M. Colcapirhua', 'D', 'Colcapirhua central', 13166.21, '2023-07-20', 'Ciprian Angulo Javier', 'Harold Panozo', 'Obras Públicas', '2023-07-05', 15, '2023-08-24', '100', '100', 'Concluido, Finanzas 3910, revision', 22, NULL, NULL),
(199, 'Const. empedrado de vías OTB Collpapampa Don Bosco dist. A', 'A', 'Collpapampa Don Bosco', 50000.00, '2021-08-24', '', 'Wilder Branez', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(200, 'Construcción centro infantil Kami dist. A (cubierta y obra fina planta baja)', 'A', 'San Jose de kami', 322731.00, '2021-08-24', '', 'Wilder Branez', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(201, 'Const. tinglado patio central nivel inicial U.E. San Jose de kami (sistema de pórticos con estructura metálica)', 'Educacion', 'San Jose de kami', 60000.00, '2021-08-24', 'LMENTAL', 'Wilder Branez', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(202, 'Const. centro infantil Kami dist. A (obra fina)', 'A', 'San Jose de kami', 199940.56, '2022-08-24', 'CONSDEPRO', 'Wilder Branez', 'Obras Públicas', '2022-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(203, 'Const. tinglado patio central nivel inicial U.E. San Jose kami (sistema de desagüe pluvial y obras complementarias)', 'Educacion', 'San Jose de kami', 40000.00, '2022-08-24', 'LMENTAL', 'Wilder Branez', 'Obras Públicas', '2022-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(204, 'Const. centro de capacitación social productiva OTB Knaudt dist. A (obra gruesa bloque B)', 'A', 'Frontera Knaudt', 50794.33, '2022-08-24', 'Mauricio Bustamante Huaquipa', 'Wilder Branez', 'Obras Públicas', '2022-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(205, 'Mtto, mejoramiento y ripiado calles y caminos dist. C', 'C', 'Distrito C', 49983.16, '2023-08-24', 'Varios', 'Reinaldo Jattaco', 'Obras Públicas', '2023-08-24', NULL, '2023-08-24', '100', '100', NULL, 1, NULL, NULL),
(206, 'Const. pav. vías laterales av. Blanco Galindo dist. C,B', 'C', 'Florida II norte, Canada', 624370.00, '2023-08-24', 'Administración directa', 'Reinaldo Jattaco', 'Obras Públicas', '2023-08-24', 12, '2023-08-24', '100', '100', NULL, 1, NULL, NULL),
(207, 'Mejoramiento de vías Emergencia norte dist. C', 'C', 'Emergencia norte', 49990.00, '2021-08-24', 'Administración municipal', 'Reinaldo Jattaco', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(208, 'Const. tinglado cancha múltiple OTB Jazmin dist. C', 'C', 'Jazmin', 0.00, '2021-08-24', 'Construcciones PIKE', 'Reinaldo Jattaco', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(209, 'Const. tinglado cancha múltiple OTB Andres Cuschieri dist. C', 'C', 'Andres cuschieri', 138811.53, '2021-08-24', 'Construcciones PIKE', 'Reinaldo Jattaco', 'Obras Públicas', '2021-08-24', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(210, 'Const. centro de capacitación social productiva OTB Sindicato agrario Esquilan grande dist. E (obra gruesa tinglado)', 'E', 'Sindicato agrario Esquilan grande', 100000.00, '2021-11-27', 'Cristian Peña', 'Jhanet Vega', 'Obras Públicas', '2021-11-03', NULL, '2023-08-28', '100', '100', NULL, 1, NULL, NULL),
(211, 'Mej. canal de riego OTB Esquilan grande dist. E', 'E', 'Esquilan grande', 9910.19, '2021-10-18', 'Mercado Veizaga', 'Jhanet Vega', 'Obras Públicas', '2021-10-04', NULL, '2023-08-28', '100', '100', NULL, 1, NULL, NULL),
(212, 'Const. bloque de aulas U.E. Daniel Salamanca (mod. obra fina P.B. 3 aulas)', 'Educacion', 'Colcapirhua central', 178016.19, '2022-01-29', 'Consultoria y construcciones Orellana', 'Jhanet Vega', 'Obras Públicas', '2022-01-04', NULL, '2023-08-28', '100', '100', NULL, 1, NULL, NULL),
(213, 'Mtto, mejoramiento y ripiado calles y caminos distrito E', 'E', 'Sindicato agrario Esquilan grande, Sumumpaya kullcu, Sumumpaya calamina, Mirador de Colcapirhua, Esquilan Chijllawiri, Sumumpaya chico, Sumumpaya sud', 49995.00, '2023-04-10', 'Zenteno Almaraz Jose Alexander', 'Jhanet Vega', 'Obras Públicas', '2023-03-28', NULL, '2023-08-28', '100', '100', NULL, 1, NULL, NULL),
(214, 'Mtto. y mejoramiento y ripiado de calles y caminos dist. D', 'D', 'Colcapirhua central, San Lorenzo, General Pando', 0.00, '2023-04-27', '', 'Harold Panozo', 'Obras Públicas', '2023-04-27', NULL, '2023-08-25', '100', '100', NULL, 1, NULL, NULL),
(215, 'Mtto. y mejoramiento y ripiado de calles y caminos dist. D', 'D', 'Colcapirhua central, Valle San Silvestre, San Lorenzo, Paraiso, 21 de septiembre', 0.00, NULL, '', 'Harold Panozo', 'Obras Públicas', NULL, NULL, '2023-08-28', '100', '100', NULL, 1, NULL, NULL),
(216, 'Canalización tramo II conexión sumidero pluvial tramo I dist. B', 'B', 'B', 38447.00, NULL, 'Rodrigo Zurita Aguilar', 'Gaston Diaz', 'Obras Públicas', '2023-07-14', 18, '2023-08-28', '100', '100', 'Empresa alista su carpeta de cancelacion', 1, NULL, NULL),
(217, 'Sumideros pluviales OTB Sindicato agrario dist. E', 'E', 'Sindicato agrario Esquilan', 28141.00, '2023-08-22', 'Zurita Veizaga Ricardo Jose', 'Adimael Flores', 'Obras Públicas', '2023-08-08', NULL, '2024-01-11', '100', '100', 'Cancelado', 1, NULL, NULL),
(218, 'Ampl. red alcantarillado OTB Willcataco dist. A', 'A', 'Willcataco', 455586.00, '2023-03-24', 'Consultoria y Construcciones COVECA', 'Orlando Zambrana', 'Saneamiento Básico', '2022-10-27', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(219, 'Ampl. red de alcantarillado OTB Colcapirhua sud calle innominada dist. D', 'D', 'Colcapirhua Sud', 66950.00, '2023-06-28', 'Nemecio Jimenez Chavez', 'Orlando Zambrana', 'Saneamiento Básico', '2023-05-29', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(220, 'Mej. estacion elevadora de desague pluvial y red electrica dist E', 'C,E', 'Ferroviario Sud', 348926.00, '2023-02-15', 'Empresa Constructora Coca y Arnez S.R.L.', 'Eber Villarroel', 'Saneamiento Básico', '2023-01-12', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(221, 'Const. carcamo de bombeo desague pluvial av. los cedros dist. E', 'C,E', 'Ferroviario Sud', 99998.00, '2022-12-27', 'Constructora Aguiaraoz', 'Eber Villarroel', 'Saneamiento Básico', '2022-12-13', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(222, 'Const. perforacion de pozo de agua potable OTB 21 de septiembre dist. D', 'D', '21 de Septiembre', 99968.00, '2023-02-09', 'Perforaciones Israel', 'Eber Villarroel', 'Saneamiento Básico', '2023-01-23', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(223, 'Ampl. red de alcantarillado OTB sindicato agrario Esquilan grande dist. E', 'E', 'Sindicato Agrario Esquilan Grande', 99823.00, '2023-02-17', 'JUANDEDIOSRV', 'Eber Villarroel', 'Saneamiento Básico', '2023-01-19', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(224, 'Ampl. red de alcantarillado OTB Junta vecinal Chijllawiri dist. E', 'E', 'Chijllawiri', 72290.00, '2023-01-19', 'Theobolt Consultoria y Construccion', 'Eber Villarroel', 'Saneamiento Básico', '2023-02-17', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(225, 'Const. almacenamiento agua potable OTB Huanuni dist. B', 'B', 'Huanuni', 51485.00, '2023-01-25', 'Ovac Ovando Vargas Construcciones', 'Eber Villarroel', 'Saneamiento Básico', '2023-02-07', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(226, 'Mej. alcantarillado OTB Colcapirhua sud calle gran chaco', 'D', 'Colcapirhua Sud', 100000.00, '2023-02-26', 'Constructora Goytia Coca', 'Eber Villarroel', 'Saneamiento Básico', '2023-01-09', NULL, '2023-08-24', '100', '100', NULL, 22, NULL, NULL),
(227, 'Ampl. red de alcantarillado sanitario av. Dorbigni OTB Piñami paraiso - Colcapirhua central dist. D', 'D', 'Piñami Paraiso, Colcapirhua central', 81264.90, '2023-08-24', 'Horacio Angel Herrera Meneces', 'Eber Villarroel', 'Saneamiento Básico', '2023-07-24', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(228, 'Const. carcamo de bombeo OTB 21 de septiembre dist. D', 'D', '21 de septiembre', 197663.16, '2023-09-22', 'Constructora Aguiaraoz', 'Orlando Zambrana', 'Saneamiento Básico', '2023-07-24', NULL, NULL, '43', '0', NULL, 22, NULL, NULL),
(229, 'Const. tanque elevado de agua OTB Magisterio dist. B', 'B', 'Magisterio', 129955.46, '2021-10-12', 'Consdepro - Constructora Consultora Multidiciplinaria', 'Orlando Zambrana', 'Saneamiento Básico', '2021-05-07', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(230, 'Ampl. red de alcantarillado sanitario OTB Frontera kanaut dist. A', 'A', 'Frontera Knaudt', 67880.46, '2022-12-28', 'Constructora Coytia Coca', 'Eber Villarroel', 'Saneamiento Básico', '2022-12-12', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(231, 'Const. red alcantarillado OTB Taramocko dist. A', 'A', 'Taramocko', 59140.93, '2021-07-05', 'Lacoste Ltda Ingenieria de Proyectos', 'Orlando Zambrana', 'Saneamiento Básico', '2021-05-06', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(232, 'Const. perforacion de pozo de agua potable Junta vecinal Esquilan Chijllawiri dist. E', 'E', 'Esquilan Chijllawiri', 95793.10, '2022-12-21', 'Perforaciones Israel', 'Eber Villarroel', 'Saneamiento Básico', '2022-12-07', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(233, 'Const. perforacion de pozo para sistema de agua potable centro de salud Colcapirhua OTB Canada dist. C', 'C', 'Canada', 69991.37, '2022-08-05', 'El Caine S.R.L.', 'Eber Villarroel', 'Saneamiento Básico', '2022-07-19', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(234, 'Mej. red alcantarillado calle intiraymi OTB Cielo Mocko dist. A (incluye tuberia pvc sdr41 diam. 8\", camaras de inspeccion y acometidas domiciliarias', 'A', 'Cielo Mocko', 38659.33, '2021-12-13', 'Constructora Llanos Orellana', 'Orlando Zambrana', 'Saneamiento Básico', '2021-12-06', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(235, 'Actividad y defensa de los limites de Colcapirhua (ampliacion de red de alcantarillado sanitario calle innominada entre calle Martin Cardenas y calle Franz Tamayo, OTB Martin Cardenas dist. B)', 'B', 'Martin Cardenas', 59151.83, '2022-07-07', 'Consultoria y Construcciones \"COVECA\"', 'Eber Villarroel', 'Saneamiento Básico', '2022-06-23', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(236, 'Mej. mantenimiento sistema de alcantarillado OTB San Lorenzo dist. D (tramo 1: pasaje innominada: tramo 2: av. 15 de abril entre calle casuarios y San Lorenzo', 'D', 'San Lorenzo', 27046.43, '2021-12-23', 'Horacio Angel Herrera Meneces', 'Orlando Zambrana', 'Saneamiento Básico', '2021-12-14', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(237, 'Ampliacion red alcantarillado OTB Willcataco dist. A (tramo1: c/ Quilla entre c/Chincha suyo y av. Chijllawiri, tramo2: c/ Innominada, tramo3: c/ Innominada)', 'A', 'Willcataco', 85000.00, '2021-12-30', 'LMENTAL Constructora S.R.L.', 'Orlando Zambrana', 'Saneamiento Básico', '2021-12-21', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(238, 'Const. centro de capacitacion social OTB Sindicato agrario Esquilan grande dist. E (conclusion o. gruesa p. baja 1ra etapa o. fina p. baja y tinglado)', 'E', 'Sindicato agrario Esquilan grande', 400280.97, '2023-10-03', 'Asociacion accidental Chiru grup', 'Wilder Branez', 'Obras Públicas', '2023-07-21', NULL, NULL, '75', '0', NULL, 22, NULL, NULL),
(239, 'Mejoramiento area verde Av. 266 con enmallado lado este, norte y oeste OTB 4 esquinas dist. A', 'A', '4 esquinas', 65616.82, '2023-09-19', 'Maquinas y agregados Aguilar', 'Wilder Branez', 'Obras Públicas', '2023-09-05', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(240, 'Mant. y mejoramiento de parqueo mercado kami', 'A', 'San Jose de kami', 99994.24, '2023-10-20', 'Fernando Padilla Policarpio', 'Wilder Branez', 'Obras Públicas', '2023-10-02', NULL, NULL, '0', '0', NULL, 22, NULL, NULL),
(241, 'Construccion muro perimetral y tinglado de area tecnica G.A.M. Colcapirhua', 'E', 'Esquilan Chijllawiri', 948252.62, '2023-11-25', 'Saiba Chambi Boris Casiano', 'Wilder Branez', 'Obras Públicas', '2023-09-27', NULL, NULL, '0', '0', NULL, 22, NULL, NULL),
(242, 'Sumidero pluvial, tramo 3, calle Andres Uzeda OTB Nueva Jerusalen', 'B', 'Nueva Jerusalen', 23895.24, '2023-08-17', 'ESPCAM', 'Gaston Diaz', 'Obras Públicas', '2023-07-28', 21, NULL, '0', '0', 'Paralizado (se alistara doumentacion para resolucion de contrato)', 22, NULL, NULL),
(243, 'Ampl. canal Rumy Mayu av. sexta entre c. Jose Luis Roca y c. Daniel Campos', 'B', 'Municipal Coña coña', 64475.93, '2023-09-27', 'Vladimir Melchor Quispe', 'Gaston Diaz', 'Obras Públicas', '2023-09-04', NULL, '2023-10-30', '100', '100', NULL, 22, NULL, NULL),
(244, 'Mantenimiento de infraestructura de la casa de Cala cala', 'A,B,C,D,E', 'Municipio de Colcapirhua', 95679.02, '2023-09-23', 'David Padilla Carmona', 'Gaston Diaz', 'Obras Públicas', '2023-09-04', NULL, '2023-10-30', '100', '100', NULL, 22, NULL, NULL),
(245, 'Mantenimiento de la infraestructura U.E. Sausalito-dist. C', 'Educacion', 'Sausalito', 17906.43, '2023-04-26', 'Juan Carlos Rioja Rivas', 'Gaston Diaz', 'Obras Públicas', '2023-04-20', NULL, NULL, '100', '100', NULL, 22, NULL, NULL),
(246, 'Mantenimiento de la infraestructura U.E. Pablo Cano - distrito C', 'Educacion', 'Florida sud', 11104.72, '2023-08-22', 'Ysrael Camacho Andia', 'Gaston Diaz', 'Obras Públicas', '2023-08-08', NULL, '2023-10-30', '100', '100', NULL, 22, NULL, NULL),
(247, 'Const. graderias laterales cancha polifuncional U.E. Pablo Cano', 'Educacion', 'Florida Sud', 20000.00, '2023-07-24', 'Coca Noya Consultora constructora', 'Gaston Diaz', 'Obras Públicas', '2023-07-05', NULL, '2023-10-30', '100', '100', NULL, 22, NULL, NULL),
(248, 'Const. graderias laterales cancha polifuncional U.E. Benedicto Duran', 'Educacion', 'Florida norte', 20000.00, '2023-07-24', 'Coca Noya Consultora constructora', 'Gaston Diaz', 'Obras Públicas', '2023-07-05', NULL, '2023-10-30', '100', '100', NULL, 18, NULL, NULL),
(249, 'Const. cordones jardinera central amp. canal de riego y reconst. tapa de GºAº sumidero pluvial dist. C OTB Sumumpaya ferroviario sud c/21 de enero', 'C', 'Sumumpaya Ferroviario norte', 32160.70, '2023-09-28', 'Boris Acasiano Saiba Chambi', 'Reinaldo Jattaco', 'Obras Públicas', '2023-09-19', 10, '2023-09-22', '10', '0', 'En ejecucion', 20, NULL, NULL),
(250, 'Mantenimiento y ampliacion de cubierta y luminarias del Mercado central de Colcapirhua', 'D', 'Colcapirhua central', 78358.69, '2023-09-23', 'David Padilla Carmona', 'harold Panozo', 'Obras Públicas', '2023-09-04', 20, '2023-10-30', '100', '100', 'En ejecucion', 20, NULL, NULL),
(251, 'Adquisicion de capa base para el mejoramiento de vias sindicato agrario dist. E', 'E', 'Sindicato Agrario Esquilan', 19955.00, '2023-09-05', 'Arnold Brayan Achocalla Almaraz', 'Jhanet Vega', 'Obras Públicas', '2023-08-22', 15, '2023-10-30', '100', '', NULL, 20, NULL, NULL),
(252, 'Const. Camara Septica U.E. San Crispin', 'Educacion', 'Sindicato Agrario Esquilan Agrario', 96243.11, '2023-10-27', 'Juan de Dios Rocha Vera', 'Gaston Diaz', 'Obras Públicas', '2023-09-22', NULL, '2023-10-30', '100', '', NULL, 22, NULL, NULL),
(253, 'Reconstruccion de puente peatonal sobre el canal Duralit en la Av. Bolivariana entre C. Chutakawa', 'B', 'Florida norte', 28549.63, '2023-11-18', 'Lmental Constructora SRL', 'Gaston Diaz', 'Obras Públicas', '2023-10-30', NULL, '2023-10-30', '5', '', NULL, 22, NULL, NULL),
(254, 'Refaccion de barandas interior del edificio central del G.A.M. Colcapirhua', 'D', 'Colcapirhua central', 30821.76, '2023-11-06', 'Horacio Angel Herrera Meneces', 'Harold Panozo', 'Obras Públicas', '2023-10-30', 8, '2023-10-30', '100', '', 'En Finanzas', 18, NULL, NULL),
(255, 'Mejoramiento de vias en el municipio de Colcapirhua OTB Colcapirhua central (bacheo)', 'D', 'Colcapirhua central', 90000.00, '2023-11-08', 'Ronald Bolaños Bernal', 'Harold Panozo', 'Obras Públicas', '2023-10-25', 15, '2023-10-30', '100', '', 'En Finanzas', 18, NULL, NULL),
(256, 'Const. muros de H°C° y reconst. pared del canal de H°C° OTB Sumumpaya sud tramo II dist. E', 'E', 'Sumumpaya sud', 37761.27, '2023-11-07', 'Boris Casiano Saiba Chambi', 'Jhanet Vega', 'Obras Públicas', '2023-10-25', NULL, '2024-01-11', '100', '100', 'Cancelado', 18, NULL, NULL),
(257, 'Const. centro de capacitación social productiva junta vecinal Piñami sud (batería de baños, patio y obra fina p. alta)', 'D', 'Piñami sud', 80995.80, '2023-12-28', 'LMENTAL S.R.L.', 'Harold Panozo', 'Obras Públicas', '2023-11-21', 38, '2024-01-11', '100', '100', 'Concluido', 11, NULL, NULL),
(258, 'Mej. plaza parque OTB San Lorenzo dist. D', 'D', 'San Lorenzo', 99930.21, '2024-01-13', 'Horacio Herrera Meneses', 'Harold Panozo', 'Obras Públicas', '2024-01-02', 12, '2024-01-11', '50', '0', 'En ejecución', 14, NULL, NULL),
(259, 'Mejoramiento de área verde con pasajes peatonales OTB Paraiso', 'D', 'Paraiso', 82642.89, '2024-01-11', 'Carlos Andres Rocha Salazar', 'Harold Panozo', 'Obras Públicas', '2023-12-28', 15, '2024-01-11', '90', '0', 'En ejecución', 11, NULL, NULL),
(260, 'Sumideros pluviales sobre la av. 15 de abril OTB San Lorenzo dist. D', 'D', 'San Lorenzo', 18329.41, '2023-12-29', 'Arce Rocha Milvian Jhoely', 'Harold Panozo', 'Obras Públicas', '2023-12-15', 15, '2024-01-11', '100', '0', 'Concluido', 14, NULL, NULL),
(261, 'Mej. jardinera lado sud mercado central Colcapirhua', 'D', 'Colcapirhua central', 31741.33, '2024-01-09', 'Carlos Andres Rocha Salazar', 'Harold Panozo', 'Obras Públicas', '2023-12-26', 15, '2024-01-11', '72', '72', 'Concluido', 14, NULL, NULL),
(262, 'Const. centro ambulatorio Esquilan dist. E (1ra etapa p. alta y 2da etapa o. fina planta baja)', 'Salud', 'Esquilan grande', 1019556.02, '2024-02-22', 'MIRANGON', 'Harold Panozo', 'Obras Públicas', '2023-11-06', 90, '2024-01-11', '60', '22', 'Obra paralizada', 11, NULL, NULL),
(263, 'Mejoramiento y revitalización plazuela OTB Florida sud dist. B (piso de cemento con implementación pavimento amortiguante)', 'B', 'Florida sud', 91870.87, '2024-01-01', 'Evert Parra Chileno', 'Harold Panozo', 'Obras Públicas', '2023-12-18', 15, '2024-01-11', '100', '100', 'Concluido', 14, NULL, NULL),
(264, 'Implementación parque infantil junta vecinal Praderas del sur dist. E', 'E', 'Praderas del sur', 24603.12, '2023-11-14', 'Luis Mejia Medina', 'Jhanet Vega', 'Obras Públicas', '2023-12-04', 15, '2024-01-11', '100', '100', 'Cancelado', 18, NULL, NULL),
(265, 'Implementación parque infantil junta vecinal Mirador Colcapirhua dist. E', 'E', 'Mirador Colcapirhua', 24603.12, '2023-12-27', 'Walter Hidalgo', 'Jhante Vega', 'Obras Públicas', '2023-12-22', 10, '2024-01-11', '100', '100', 'Cancelado', 11, NULL, NULL),
(266, 'Const. centro de capacitación social productiva OTB Sindicato agrario Esquilan grande dist. E (2da etapa o. fina p. baja)', 'E', 'Sindicato agrario Esquilan grande', 99999.80, '2023-12-27', 'Juan de Dios Rocha', 'Jhanet Vega', 'Obras Públicas', '2023-12-18', 15, '2024-01-11', '100', '100', 'Cancelado', 18, NULL, NULL),
(267, 'Const. caseta para agua potable junta vecinal Mirador de Colcapirhua', 'E', 'Mirador Colcapirhua', 63902.97, '2023-12-27', 'Ing. David', 'Jhanet Vega', 'Obras Públicas', '2023-12-15', 20, '2024-01-11', '100', '100', 'Cancelado', 11, NULL, NULL),
(268, 'Mej. de áreas verdes con la implementación de cordones y muros de contención - sindicato agrario Esquilan grande', 'E', 'Sindicato agrario Esquilan grande', 36898.00, '2023-12-27', 'Juan de Dios Rocha', 'Jhanet Vega', 'Obras Públicas', '2023-12-22', 15, '2024-01-11', '100', '100', 'Cancelado', 18, NULL, NULL),
(269, 'Const. empedrado OTB Sumumpaya kullcu av. Pampa mayu y av. Sirari dist. E', 'E', 'Sumumpaya kullcu', 259200.00, '2024-01-26', 'Asociación accidental A-C', 'Jhanet Vega', 'Obras Públicas', '2023-12-13', 45, '2024-01-11', '45', '34', 'En ejecución', 11, NULL, NULL),
(270, 'Mej. área verde av. 101 con cordones, bordillos y muros de contención OTB Colcapirhua sud', 'E', 'Colcapirhua sud', 99075.41, '2024-02-07', 'Marco Mejia Torrico', 'Jhanet Vega', 'Obras Públicas', '2024-01-08', 31, '2024-01-11', '10', '0', 'En ejecución', 11, NULL, NULL),
(271, 'Const. puentes cajón calle Beni y calle Siwar OTB Jazmin dist. C', 'C', 'Jazmin', 99075.41, '2024-01-21', 'Carlos Andres Rocha Salazar', 'Jhanet Vega', 'Obras Públicas', '2024-01-04', 18, '2024-08-19', '100', '0', 'En ejecución', 18, NULL, NULL),
(272, 'Const. canalización y puente cajón OTB Martin Cardenas dist. B', 'B', 'Martin Cardenas', 109776.41, '2024-01-22', 'Alvaro Agustin Aguilar', 'Jhanet Vega', 'Obras Públicas', '2023-12-19', 35, '2024-08-19', '100', '0', 'En ejecución', 11, NULL, NULL),
(273, 'Const. canal de riego calle Beni y calle Siwar OTB Jazmin dist. C', 'C', 'Jazmin', 79385.34, '2024-01-06', 'Angela Vasquez Galan', 'Jhanet Vega', 'Obras Públicas', '2023-12-18', 20, '2024-08-19', '100', '0', 'Caso Ing. Jheni c/ampliacion de plazo ordenes de la MAE', 11, NULL, NULL),
(274, 'Mejoramiento de cancha polifuncional con voladura en roca Sindicato agrario Esquilan grande dist. E', 'E', 'Sindicato agrario Esquilan grande', 20000.00, '2023-10-03', 'Juan de Dios Rocha', 'Jhanet Vega', 'Obras Públicas', '2023-09-21', 15, '2024-01-11', '100', '100', 'Cancelado HR 5770', 12, NULL, NULL),
(275, 'Remodelación mercado Capacachi', 'B', 'Capacachi central', 49998.80, '2024-01-04', 'Damaris Ariana', 'Jhanet Vega', 'Obras Públicas', '2023-12-21', 15, '2024-01-11', '100', '0', 'En espera de las carpetas de cancelación', 12, NULL, NULL),
(276, 'Implentación muro de gabion canal pampamayu', 'E', 'Sindicato agrario Esquilan grande', 30188.00, '2023-12-26', 'DIRACORP', 'Jhanet Vega', 'Obras Públicas', '2023-12-22', 5, '2024-01-11', '100', '100', 'Cancelado', 12, NULL, NULL),
(277, 'Cordones calle Intiyakuy lado sud OTB Collpapampa Don Bosco Dist. A', 'A', 'Collpampa Don Bosco', 50417.22, '2024-06-13', 'Boris Casiano Saiba Chambi', 'Daniela Valeriano', 'Obras Públicas', '2024-05-30', 15, '2024-06-12', '100', '0', 'En espera de firmas del Ing. Rodrigo (a.i.)', 22, NULL, NULL),
(278, 'Imple. cordones av. 14 de febrero OTB Elfec y Cucardas dist. B', 'B', 'ELfec, Cucardas', 5329.46, '2024-06-03', 'Israel Molina Siles', 'Daniela Valeriano', 'Obras Públicas', '2024-05-21', 14, '2024-06-12', '100', '0', 'Recepción definitiva el 06/06/2024 - preparando carpetas', 22, NULL, NULL),
(279, 'Mantenimiento de las oficinas de Sistemas-Central', 'D', 'Colcapirhua central', 50417.22, '2024-05-10', 'Ing. Erick', 'Daniela Valeriano', 'Obras Públicas', '2024-04-16', 25, '2024-06-12', '100', '0', 'En espera de la carpeta / para realizar la cancelación', 22, NULL, NULL),
(280, 'Mantenimiento de la Casa de Cultura', 'B', 'Lirios del sur', 55000.00, '2024-04-29', 'Arq. Fernando Padilla', 'Daniela Valeriano', 'Obras Públicas', '2024-04-05', 25, '2024-06-12', '100', '0', 'En espera de la carpeta / para realizar la cancelación', 22, NULL, NULL),
(281, 'Cordones calle Calchi, urbanización La Paz dist. B', 'B', 'Urbanización La Paz', 10953.47, '2024-05-06', 'Israel Molina Siles', 'Daniela Valeriano', 'Obras Públicas', '2024-04-22', 15, '2024-06-12', '0', '0', 'Ya concluyó el vaciado en fecha 12-06-24 se procederá a dar la Orden de proceder el 17/06/24', 22, NULL, NULL),
(282, 'Mejoramiento y mantenimiento de pasos peatonales de la jardinera central de la av. Colcapirhua tramo (av. Reducto-c/ Bandelier Adolphe)', 'D', 'Colcapirhua sud', 99498.44, '2024-06-24', 'Merida Flores Carlos Cesar', 'Daniela Valeriano', 'Obras Públicas', '2024-05-27', 30, '2024-06-12', '50', '0', 'En ejecución', 22, NULL, NULL),
(283, 'Bacheos (av. Victor Ustariz - av. 16 de julio-casco viejo)', 'D', 'Colcapirhua central', 100000.00, '2024-05-29', 'Ing. Humberto', 'Daniela Valeriano', 'Obras Públicas', '2024-05-05', 25, '2024-06-12', '70', '0', 'En espera de la carpeta / ejecución', 22, NULL, NULL),
(284, 'Mejoramiento de área verde OTB Moyapampa dist. C (trabajos complementarios)', 'C', 'Moyapampa', 99807.47, '2024-06-20', 'Mauricio Bustamante Huaquipa', 'Daniela Valeriano', 'Obras Públicas', '2024-05-27', 25, '2024-06-12', '60', '0', 'En ejecución', 22, NULL, NULL),
(285, 'Implemetación de área recreativa parque infantil OTB Taramocko distrito A', 'A', 'Taramocko', 86971.02, '2024-01-04', 'Fernando Padilla Policarpio', 'Wilder Branez', 'Obras Públicas', '2023-12-21', 15, '2024-06-14', '100', '100', NULL, 22, NULL, NULL),
(286, 'Prov. y coloc. de caseta de bombeo para el agua potable y cámaras de válvula - Junta vecinal Señor de exaltación dist. A (área verde 200)', 'A', 'Junta vecinal Señor de exaltación', 52964.71, '2024-05-26', 'Saiba Chambi Boris Casiano', 'Wilder Branez', 'Obras Públicas', '2023-12-22', 11, '2024-06-14', '100', '100', NULL, 22, NULL, NULL),
(287, 'Conformación de terraplén distrito A,B', 'A,B', 'Distrito A,B', 99828.96, '2024-04-25', 'Rocasa Construcciones S.R.L.', 'Wilder Branez', 'Obras Públicas', '2024-04-19', 7, '2024-06-14', '100', '100', NULL, 22, NULL, NULL),
(288, 'Const. muro perimetral y tinglado para el área técnica del G.A.M. Colcapirhua', 'D', 'Colcapirhua central', 949774.66, '2024-06-01', 'Saiba Chambi Boris Casiano', 'Wilder Branez', 'Obras Públicas', '2023-10-11', 90, '2024-08-19', '100', '22', 'Paralizado hasta nueva Orden SICOES cierra en fecha 29/07/2024', 22, NULL, NULL),
(289, 'Const. bloque de talleres BTH U.E. 27 de mayo-Daniel Salamanca (1er Y 2do piso)', 'Educacion', 'Colcapirhua central', 661229.49, '2024-07-15', 'MIRAGON', 'Wilder Branez', 'Obras Públicas', '2024-05-07', 65, '2024-08-19', '100', '0', NULL, 22, NULL, NULL),
(290, 'Implementación de enmallado lado sud – este, cordones y parque infantil para el área verde de la OTB Señor de exaltación dist. A', 'A', 'Señor de exaltación', 62224.49, '2024-05-31', 'David Padilla Carmona', 'Wilder Branez', 'Obras Públicas', '2024-05-16', 24, '2024-06-14', '100', '0', NULL, 22, NULL, NULL),
(291, 'Adquisición de ripio para el mantenimiento de vías, calles y caminos dist. A', 'A', 'Distrito A', 19030.00, '2024-05-29', 'Arnold Brayan Achocaya', 'Wilder Branez', 'Obras Públicas', '2024-05-17', 15, '2024-06-14', '100', '0', NULL, 22, NULL, NULL),
(292, 'Mejoramiento de cancha polifuncional con enmallado Junta vecinal Praderas', 'E', 'Junta vecinal Praderas', 35079.25, '2024-04-28', 'Cipriano Aguilar', 'Jhanet Vega', 'Obras Públicas', '2024-04-18', 12, '2024-06-04', '100', '100', 'Cancelado', 22, NULL, NULL),
(293, 'Mejoramiento de cancha polifuncional con enmallado lado este y oeste (OTB Sumumpaya ferroviario norte dist. C del municipio de Colcapirhua', 'C', 'Sumumpaya ferroviario norte', 32044.51, '2024-04-12', 'Perez Familiar Milton', 'Jhanet Vega', 'Obras Públicas', '2024-04-04', 10, '2024-06-04', '100', '100', 'Cancelado', 22, NULL, NULL),
(294, 'Mejoramiento y revitalización plazuela OTB Florida sud dist. B (piso de cerámica', 'B', 'Florida sud', 92986.30, '2024-05-22', 'Jhon Goytia', 'Jhanet Vega', 'Obras Públicas', '2024-05-13', 10, '2024-06-04', '100', '100', 'Cancelado', 22, NULL, NULL),
(295, 'Elevación de muro divisorio de FEXPOMYPE', 'B', 'Florida II norte', 13527.55, '2024-04-22', 'Erick Teofilo Quispe Zambrana', 'Jhanet Vega', 'Obras Públicas', '2024-04-18', 5, '2024-06-04', '100', '0', 'SMT HR 179 en Finanzas para su revisión', 22, NULL, NULL),
(296, 'Mejoramiento de área verde av. 06 con enmallado lado norte oeste y sur OTB Canada', 'C', 'Canada', 75377.98, '2024-05-06', 'Rocha Salazar Carlos Andres', 'Jhanet Vega', 'Obras Públicas', '2024-04-22', 15, '2024-06-04', '100', '0', 'SMT 181 EN SMT', 22, NULL, NULL),
(297, 'Const. Centro integral Colcapirhua (o. fina p. baja Y 1er piso', 'D', 'Canada', 996480.55, '2024-07-06', 'VICONST SRL', 'Jhanet Vega', 'Obras Públicas', '2024-05-08', 60, '2024-06-04', '40', '0', 'Se inició el 08/05/24', 22, NULL, NULL),
(298, 'Tinglado mirador Colcapirhua', 'E', 'Mirador Colcapirhua', 0.00, '2024-06-19', 'Adquisición de material', 'Jhanet Vega', 'Obras Públicas', '2024-06-19', 0, '2024-06-04', '70', '0', 'Se finalizoó excavación Zapata el 13/06/2024', 22, NULL, NULL),
(299, 'Preparación y limpieza del área verde Sindicato agrario Esquilan grande dist. E', 'E', 'Sindicato agrario Esquilan grande', 99119.16, '2024-05-23', 'Bladimir Edwin Chambi', 'Jhanet Vega', 'Obras Públicas', '2024-05-10', 14, '2024-06-04', '100', '0', 'En SMT', 22, NULL, NULL),
(300, 'Impl. cordones calle gran Tarija, av. 15 de abril y calle San Lorenzo O.T.T San Lorenzo dist. D', 'D', 'San Lorenzo', 16115.45, '2024-05-14', 'Jhon Goytia', 'Jhanet Vega', 'Obras Públicas', '2024-04-30', 15, '2024-06-04', '100', '0', 'Carpetas devueltas para subsanar siendo que presentó incompleto sin libro sin factura sin planos', 22, NULL, NULL),
(301, 'Const. Centro de salud ambulatorio Esquilan dist. E (Conclusión o. gruesa y 1ra Etapa o.fina p. baja)', 'Salud', 'Esquilan', 979297.88, '2024-05-14', 'MIRAGON S.R.L.', 'Adimael Flores', 'Obras Públicas', '2023-11-06', 90, '2024-06-06', '100', '53', 'Planilla N°3 en Finanzas y la planilla N°4 y cierre para firma del Secretario Técnico', 22, NULL, NULL),
(302, 'Mejto. jardinera central av. Colcapirhua (tramo calle sta. cruz-calle mirlos)', 'conf', 'Colcapirhua sud', 99978.60, '2024-06-03', 'Ronald Freddy Rocha Meneses', 'Adimael Flores', 'Obras Públicas', '2024-05-17', 18, '2024-06-06', '100', '0', 'Planilla N°1 y cierre para firma del Secretario Técnico', 22, NULL, NULL),
(303, 'Mantenimiento de pisos de porcelanato para el servicio de Hemodialisis Hospital Andres Cuschieri', 'Salud', 'Colcapirhua central', 19905.65, '2024-06-19', 'Jefferson Salazar C.', 'Adimael Flores', 'Obras Públicas', '2024-06-19', 0, '2024-09-04', '100', '100', 'En Contrataciones para inicio de proceso de contratación', 22, NULL, NULL),
(304, 'Mantenimiento de laboratorio Hospiatl municipal Andres Cuschieri', 'Salud', 'Colcapirhua central', 15949.58, '2024-06-19', 'Jefferson Salazar C.', 'Adimael Flores', 'Obras Públicas', '2024-06-19', 0, '2024-09-04', '100', '100', 'En Contrataciones para inicio de proceso de contratación', 22, NULL, NULL),
(305, 'Mantenimiento de baños Centro de Capacachi', 'Salud', 'Capacachi', 9255.50, '2024-09-02', 'Jefferson Salazar C.', 'Adimael Flores', 'Obras Públicas', '2024-08-21', 0, '2024-09-04', '100', '0', 'En Contrataciones para inicio de proceso de contratación', 22, NULL, NULL),
(306, 'Amp. de alum. pub. av. Tomas O\' Conor Capacachi norte dist. A', 'Alumbrado', 'Capacachi norte', 88250.22, NULL, 'Sin empresa aún / Contratación directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-14', '', '', 'Planificación se encarga de realizar el proceso de contratación, actualmente se encuentra para firma de contrato', 22, NULL, NULL),
(307, 'Reubicación de postes de energía eléctrica 4 esquinas - Sumumpaya calaminas', 'Alumbrado', 'Sumumpaya calaminas', 8072.00, NULL, 'ELFEC', 'Faris Duran', 'Obras Públicas', '2024-04-12', NULL, '2024-06-01', '', '', 'En espera de la factura', 22, NULL, NULL),
(308, 'Reub. postes de energía eléctrica av. Andina OTB Capacachi central dist. B – c. Inti yakuy OTB Kollpapampa Don Bosco dist. A', 'Alumbrado', 'Collpampa Don Bosco', 13951.24, NULL, 'ELFEC', 'Faris Duran', 'Obras Publicas', '2024-06-12', NULL, '2024-06-01', '', '', 'La empresa entregará los materiales el día 17/06/2024', 22, NULL, NULL),
(309, 'Cambio de luminarias LED (7 LEDs OTB Taramocko)', 'Alumbrado', 'Taramocko', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(310, 'Cambio de luminarias LED (8 LEDs OTB Willcataco)', 'Alumbrado', 'Willcataco', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', '', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(311, 'Cambio de luminarias LED (9 LEDs OTB Villa rosedal)', 'Alumbrado', 'Villa rosedal', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(312, 'Cambio de luminarias LED (7 LEDs OTB Collpapampa Don Bosco)', 'Alumbrado', 'Collpapampa Don Bosco', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(313, 'Cambio de luminarias LED (9 LEDs OTB Capacachi norte)', 'Alumbrado', 'Capacachi norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(314, 'Cambio de luminarias LED (17 LEDs OTB Señor exaltación)', 'Alumbrado', 'Señor exaltación', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(315, 'Cambio de luminarias LED (9 LEDs OTB 23 de marzo)', 'Alumbrado', '23 de marzo', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(316, 'Cambio de luminarias LED (9 LEDs OTB Cielo Mocko)', 'Alumbrado', 'Cielo Mocko', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(317, 'Cambio de luminarias LED (10 LEDs OTB San Jose kami)', 'Alumbrado', 'San Jose de kami', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(318, 'Cambio de luminarias LED (12 LEDs OTB Collpapampa bajo)', 'Alumbrado', 'Collpapampa bajo', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(319, 'Cambio de luminarias LED (64 LEDs av. Reducto OTB 4 esquinas, OTB 23 de marzo, OTB San Jose Reducto)', 'Alumbrado', '4 esquinas, 23 de marzo, San Jose Reducto', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(320, 'Cambio de luminarias LED (33 LEDs av. Andina OTB Cielo mocko, OTB Willcataco)', 'Alumbrado', 'Cielo mocko, Willcataco', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(321, 'Cambio de luminarias LED (8 LEDs OTB San Jose reducto)', 'Alumbrado', 'San Jose reducto', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(322, 'Cambio de luminarias LED (7 LEDs OTB Lirios del norte)', 'Alumbrado', 'Lirios del norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(323, 'Cambio de luminarias LED (18 LEDs c. La Paz OTB Cielo mocko, OTB Kollpapampa, OTB San Jose kami)', 'Alumbrado', 'Cielo mocko, Kollpapampa, San Jose kami', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(324, 'Cambio de luminarias LED (6 LEDs  OTB Collpapampa Don Bosco)', 'Alumbrado', 'Collpapampa Don Bosco', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(325, 'Cambio de luminarias LED (6 LEDs OTB Taramocko)', 'Alumbrado', 'Taramocko', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(326, 'Cambio de luminarias LED (6 LEDs OTB Lirios del norte)', 'Alumbrado', 'Lirios del norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(327, 'Cambio de luminarias LED (4 LEDs OTB Villa rosedal)', 'Alumbrado', 'Villa rosedal', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(328, 'Cambio de luminarias LED (4 LEDs OTB Capacachi norte)', 'Alumbrado', 'Capacachi norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(329, 'Cambio de luminarias LED (1 LED OTB kami)', 'Alumbrado', 'kami', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(330, 'Cambio de luminarias LED (1 LED OTB Collpapampa bajo)', 'Alumbrado', 'Collpapampa bajo', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(331, 'Cambio de luminarias LED (1 LED OTB 23 de marzo)', 'Alumbrado', '23 de marzo', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(332, 'Cambio de luminarias LED (14 LEDs OTB La Paz)', 'Alumbrado', 'La Paz Colcapirhua', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(333, 'Cambio de luminarias LED (14 LEDs OTB Comercio Cochabamba)', 'Alumbrado', 'Comercio Cochabamba', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(334, 'Cambio de luminarias LED (14 LEDs OTB Oasis)', 'Alumbrado', 'Oasys', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(335, 'Cambio de luminarias LED (14 LEDs OTB Holanda)', 'Alumbrado', 'Holanda', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(336, 'Cambio de luminarias LED (14 LEDs Florida norte)', 'Alumbrado', 'Florida norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(337, 'Cambio de luminarias LED (14 LEDs OTB Sausalito)', 'Alumbrado', 'Sausalito', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(338, 'Cambio de luminarias LED (14 LEDs OTB Nueva Jerusalen)', 'Alumbrado', 'Nueva Jerusalen', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(339, 'Cambio de luminarias LED (14 LEDs Martin Cardenas)', 'Alumbrado', 'Martin Cardenas', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(340, 'Cambio de luminarias LED (15 LEDs San Alfonso)', 'Alumbrado', 'San Alfonso', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(341, 'Cambio de luminarias LED (14 LEDs Fabril Capacachi)', 'Alumbrado', 'Fabril Capacachi', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(342, 'Cambio de luminarias LED (25 LEDs OTB Huanuni)', 'Alumbrado', 'Huanuni', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(343, 'Cambio de luminarias LED (25 LEDs OTB Catavi)', 'Alumbrado', 'Catavi', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(344, 'Cambio de luminarias LED (25 LEDs OTB Florida sud)', 'Alumbrado', 'Florida sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(345, 'Cambio de luminarias LED (25 LEDs OTB Magisterio coña coña)', 'Alumbrado', 'Magisterio Coña coña', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(346, 'Cambio de luminarias LED (14 LEDs Capacachi central)', 'Alumbrado', 'Capacachi central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(347, 'Cambio de luminarias LED (14 LEDs ELFEC Cucardas)', 'Alumbrado', 'ELFEC Cucardas', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(348, 'Cambio de luminarias LED (14 LEDs OTB Morococala)', 'Alumbrado', 'Morococala', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(349, 'Cambio de luminarias LED (14 LEDs OTB Villa Santa Isabel)', 'Alumbrado', 'Villa Santa Isabel', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(350, 'Cambio de luminarias LED (14 LEDs OTB BArtos Coña coña)', 'Alumbrado', 'Bartos Coña coña', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(351, 'Cambio de luminarias LED (14 LEDs OTB Municipal)', 'Alumbrado', 'Municipal Coña coña', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(352, 'Cambio de luminarias LED (14 LEDs OTB Elizabeth Seton)', 'Alumbrado', 'Elizabeth Seton', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(353, 'Cambio de luminarias LED (14 LEDs OTB Santa Rosa central)', 'Alumbrado', 'Santa Rosa central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(354, 'Cambio de luminarias LED (14 LEDs OTB Villa California)', 'Alumbrado', 'Villa California', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(355, 'Cambio de luminarias LED (14 LEDs OTB Pradera)', 'Alumbrado', 'Pradera', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(356, 'Cambio de luminarias LED (107 LEDs av. 21 de enero OTB Senac-Florida norte-San Francisco-Sumumpaya central-Canada-Sumumpaya ferroviario norte-Rony Rojas-Sumumpaya ferroviario sud, calle Jazmin OTB Ferroviario sud)', 'Alumbrado', 'Senac, Florida norte, San Francisco, Sumumpaya central, Canada, Sumumpaya ferroviario norte, Rony Rojas, Sumumpaya ferroviario sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(357, 'Cambio de luminarias LED (49 LEDs acera norte av. Blanco Galindo OTB Sumumpaya norte-San Francisco-Libertador Bolivar-Sumumpaya central-Canada-Florida norte)', 'Alumbrado', 'Sumumpaya norte, San Francisco, Libertador Bolivar, Sumumpaya central, Canada, Florida norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(358, 'Cambio de luminarias LED (20 LEDs av. Andina 1 OTB Moyapampa)', 'Alumbrado', 'Moyapampa', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(359, 'Cambio de luminarias LED (52 LEDs av. Victor Ustariz OTB Libertador Bolivar-Sumumpaya central-Canada-Ronny Rojas)', 'Alumbrado', 'Libertador Bolivar, Sumumpaya central, Canada, Ronny Rojas', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(360, 'Cambio de luminarias LED (20 LEDs av. Libertador Bolivar OTB Libertador Bolivar)', 'Alumbrado', 'Libertador Bolivar', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(361, 'Cambio de luminarias LED (24 LEDs av. Tomas O Conor OTB Florida II norte-OTB Canada)', 'Alumbrado', 'Florida II norte, Canada', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(362, 'Cambio de luminarias LED (12 LEDs OTB Sumumpaya emergencia)', 'Alumbrado', 'Sumumpaya emergencia', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(363, 'Cambio de luminarias LED (9 LEDs OTB Sumumpaya norte)', 'Alumbrado', 'Sumumpaya norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(364, 'Cambio de luminarias LED (10 LEDs OTB Senac)', 'Alumbrado', 'Senac', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(365, 'Cambio de luminarias LED (6 LEDs OTB Ronny Rojas)', 'Alumbrado', 'Ronny Rojas', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(366, 'Cambio de luminarias LED (2 LEDs OTB Jazmin)', 'Alumbrado', 'Jazmin', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(367, 'Cambio de luminarias LED (9 LEDs OTB Ferroviario norte)', 'Alumbrado', 'Ferroviario norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(368, 'Cambio de luminarias LED (9 LEDs OTB Ferroviario sud)', 'Alumbrado', 'Ferroviario sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(369, 'Cambio de luminarias LED (9 LEDs OTB Florida II norte)', 'Alumbrado', 'Florida II norte', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '', '', NULL, 22, NULL, NULL),
(370, 'Cambio de luminarias LED (28 LEDs av. Reducto OTB General Pando)', 'Alumbrado', 'General Pando', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(371, 'Cambio de luminarias LED (7 LEDs calle Cleomedes Blanco OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(372, 'Cambio de luminarias LED (5 LEDs calle Aroma OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(373, 'Cambio de luminarias LED (10 LEDs calle Sucre OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(374, 'Cambio de luminarias LED (6 LEDs calle La Paz OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(375, 'Cambio de luminarias LED (8 LEDs calle Defensores del chaco OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(376, 'Cambio de luminarias LED (4 LEDs calle Francisco del Rivero OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(377, 'Cambio de luminarias LED (15 LEDs OTB Colcapirhua central)', 'Alumbrado', 'Colcapirhua central', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL);
INSERT INTO `proyecto` (`id`, `nombre`, `distrito`, `otb`, `presupuesto`, `fecha_finalizacion`, `adjudicatario`, `supervisor`, `asignado_en`, `fecha_orden_proceder`, `plazo_dias`, `fecha_avance`, `porcentaje_avance`, `avance_financiero`, `observaciones`, `apertura_id`, `created_at`, `updated_at`) VALUES
(378, 'Cambio de luminarias LED (34 LEDs av. Cap Victor Ustariz OTB Piñami sud)', 'Alumbrado', 'Piñami sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(379, 'Cambio de luminarias LED (14 LEDs OTB General Pando)', 'Alumbrado', 'General Pando', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(380, 'Cambio de luminarias LED (32 LEDs OTB 21 de septiembre)', 'Alumbrado', '21 de septiembre', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(381, 'Cambio de luminarias LED (36 LEDs OTB Piñami paraiso)', 'Alumbrado', 'Piñami paraiso', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(382, 'Cambio de luminarias LED (24 LEDs OTB Valle Silvestre)', 'Alumbrado', 'Valle Silvestre', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(383, 'Cambio de luminarias LED (50 LEDs av principales Sucre-S. cruz-B. Gal.-Cl. Blanco)', 'Alumbrado', 'Colcapirhua sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(384, 'Cambio de luminarias LED (25 LEDs Av. Blanco Galindo acera norte y sud)', 'Alumbrado', 'Distrito D', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(385, 'Cambio de luminarias LED (36 LEDs OTB San Lorenzo)', 'Alumbrado', 'San Lorenzo', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(386, 'Cambio de luminarias LED (2 LEDs av. 21 de enero OTB Sumumpaya sud)', 'Alumbrado', 'Sumumpaya sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(387, 'Cambio de luminarias LED (60 LEDs c. Sucre OTB Esquilan grande-OTB Esquilan Chijllawiri-OTB Sindicato agrario Esquilan)', 'Alumbrado', 'Esquilan grande, Esquilan Chijllawiri, Sindicato agrario Esquilan', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(388, 'Cambio de luminarias LED (58 LEDs c. Jazmin OTB Chijllawiri-OTB Esquilan grande-OTB Sumumpaya central grande)', 'Alumbrado', 'Chijllawiri, Esquilan grande, Sumumpaya central grande', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(389, 'Cambio de luminarias LED (10 LEDs calle Quenamari OTB Esquilan grande)', 'Alumbrado', 'Esquilan grande', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(390, 'Cambio de luminarias LED (6 LEDs OTB Sumumpaya calaminas)', 'Alumbrado', 'Sumumpaya calaminas', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(391, 'Cambio de luminarias LED (10 LEDs OTB Sumumpaya kullco)', 'Alumbrado', 'Sumumpaya kullcu', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(392, 'Cambio de luminarias LED (10 LEDs OTB Esquilan Chijllawiri)', 'Alumbrado', 'Esquilan Chijllawiri', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(393, 'Cambio de luminarias LED (10 LEDs OTB Mirador Colcapirhua)', 'Alumbrado', 'Mirador Colcapirhua', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(394, 'Cambio de luminarias LED (10 LEDs OTB Praderas del sur)', 'Alumbrado', 'Praderas del sur', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(395, 'Cambio de luminarias LED (10 LEDs OTB Alto Colcapirhua)', 'Alumbrado', 'Alto Colcapirhua', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(396, 'Cambio de luminarias LED (10 LEDs OTB Sumumpaya sud)', 'Alumbrado', 'Sumumpaya sud', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(397, 'Cambio de luminarias LED (10 LEDs OTB Sumumpaya chico)', 'Alumbrado', 'Sumumpaya chico', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(398, 'Cambio de luminarias LED (5 LEDs OTB Esquilan agrario)', 'Alumbrado', 'Esquilan agrario', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(399, 'Cambio de luminarias LED (8 LEDs OTB Quenamari kullco)', 'Alumbrado', 'Qenamari kullku', 0.00, '2024-04-02', 'Administración directa', 'Faris Duran', 'Obras Públicas', NULL, NULL, '2024-06-01', '100', '', NULL, 22, NULL, NULL),
(400, 'Const. Centro integral Colcapirhua (O fina P baja y 1er piso', 'D', 'Gral. Pando', 996480.55, '2024-08-15', 'ASOCIACION ACCIDENTAL VIOCONST.', 'Jhanet Vega', 'Obras Públicas', '2024-05-08', 100, '2024-08-19', '85', '0', 'Contrato modificatorio nro. 1 aprobado', 22, NULL, NULL),
(401, 'Const. pavimento rígido distritos A,B,C,D,E Colcapirhua- (conformación de terraplén distrito A, B)', 'A,B,C,D,E', 'Oasys, Nueva Jerusalen, Sumumpaya calamina, Santa Rosa central', 99828.96, '2024-04-25', 'Rocasa Construcciones', 'Wilder Branez', 'Obras Públicas', '2024-04-19', 6, '2024-08-19', '100', '0', 'despachado en fecha 08/08/24 a SMTS hoja de ruta SMTS 0279/2024', 22, NULL, NULL),
(402, 'Mej. Mercado central Colcapirhua', 'D', 'Colcapirhua central', 649952.47, '2024-10-07', 'CONSDEPRO', 'Adimael Flores', 'Obras Públicas', '2024-07-02', 60, '2024-09-04', '68', '17', 'CONTRATO MODIFICATORIO YA SUBIDO AL SICOES', 22, NULL, NULL),
(403, 'Const. pavimento rigido distritos A,B,C,D,E Colcapirhua (drenaje pluvial calle Chuquillanto comunidad campesina 4 esquinas dist. A)', 'A', '4 esquinas', 65200.70, '2024-08-11', 'CONSTRUCCIONES SAIBA CHAMBI', 'Jhanet Vega', 'Obras Pï¿½blicas', '2024-07-29', 14, '2024-08-20', '100', '87', 'CAO NÂ° SE ENCUENTRA EN FINANZAS CON HOJA DE RUTA 0280/2024', 22, NULL, NULL),
(404, 'Mej. con enmallado perimetral nivel secundario U.E. San Crispin', 'Educacion', 'Junta vecinal Esquilan grande', 66230.96, '2024-07-31', 'MAQUINARIAS Y AGREGADOS AGUILAR', 'Adimael Flores', 'Obras Pï¿½blicas', '2024-07-15', 20, '2024-09-04', '100', '100', '', 22, NULL, NULL),
(405, 'Ampl. ambientes servicio de hemodialisis hospital Andres Cuschieri', 'Salud', 'Capacachi central', 509357.09, '2024-09-23', 'LUCERO PEREZ', 'Adimael Flores', 'Obras Pï¿½blicas', '2024-07-24', 42, '2024-09-04', '85', '27', '', 22, NULL, NULL),
(406, 'Const. pavimento rigido distritos A,B,C,D,E Colcapirhua (drenaje pluvial calle Siwar OTB Jazmin dist. C)', 'C', 'Jazmin', 25914.94, '2024-08-11', 'Consultora y constructora Humberto Lazaro', 'Cristian Villarroel', 'Obras Pï¿½blicas', '2024-07-29', 14, '2024-09-04', '80', '0', 'A la espera de conformación de plataforma para ejecutar el 20% restante', 22, NULL, NULL),
(407, 'Const. canalización y puente cajón OTB Capacachi norte', 'A', 'Capacachi norte', 175068.14, '2024-09-17', 'Asociación accidental Quirmu', 'Cristian Villarroel', 'Obras Públicas', '2024-08-02', 40, '2024-09-11', '90', '67', 'con contrato modificatorio nÂ°1', 15, NULL, NULL),
(408, 'Const. tinglado cancha polifuncional Junta vecinal Oasys dist. B', 'B', 'Oasys', 321531.23, '2024-10-07', 'Construcciones Saiba Chambi', 'Cristian Villarroel', 'Obras Públicas', '2024-07-26', 74, '2024-09-11', '70', '57', 'En ejecución', 20, NULL, NULL),
(409, 'Tinglado Mirador Colcapirhua', 'E', 'Mirador Colcapirhua', 0.00, '2024-09-10', 'S/N', 'Jhanet Vega', 'Obras Públicas', '2024-08-02', 0, '2024-09-04', '20', '0', 'En inicio de proceso constructivo', 15, NULL, NULL),
(410, 'Mantenimiento y ampliacion de camino tramo Sindicato agrario Quenamari kullcu-Junta vecinal Mirador Colcapirhua dist. E', 'E', 'Qenamari kullcu, Mirador Colcapirhua', 99945.77, '2024-07-29', 'Constructora Aviles', 'Jhanet Vega', 'Obras Públicas', '2024-07-01', 29, '2024-09-04', '100', '100', 'Cancelado', 20, NULL, NULL),
(411, 'Mej. cancha de futbol con graderias lado norte OTB Sumumpaya chico', 'C', 'Sumumpaya chico', 74804.89, '2024-08-10', 'Lacoste', 'Jhanet Vega', 'Obras Públicas', '2024-07-15', 27, '2024-09-04', '100', '100', 'CAO1 cancelado, CAO2 observaciones subsanadas devuelto a Finanzas', 15, NULL, NULL),
(412, 'Sumideros pluviales y canal OTB Sindicato agrario Esquilan grande dist. E', 'E', 'Sindicato agrario Esquilan grande', 49965.88, '2024-08-08', 'Cristian Aguilar', 'Jhanet Vega', 'Obras Públicas', '2024-07-15', 25, '2024-09-04', '100', '100', 'Devuelto a Finanzas observaciones subsanadas', 20, NULL, NULL),
(413, 'Tanques de almacenamiento de agua potable Junta vecinal Praderas del sur dist. E', 'E', 'Praderas del sur', 91689.66, '2024-09-04', 'Vladimir Federico', 'Jhanet Vega', 'Obras Públicas', '2024-08-16', 20, '2024-09-04', '100', '0', 'Entrega provisional el 04/09/2024', 15, NULL, NULL),
(414, 'Mejoramiento y revitalizacion OTB Florida sud dist. B (piso enlucido)', 'B', 'Florida sud', 70424.93, '2024-08-21', 'Daniela Gutierrez', 'Jhanet Vega', 'Obras Públicas', '2024-08-12', 10, '2024-09-04', '100', '97', 'CAO1 cancelado, CAO2 para firma del fiscal', 20, NULL, NULL),
(415, 'Canalizacion y puente cajon calle wara wara OTB Sumumpaya central grande dist. E)', 'E', 'Sumumpaya central grande', 16090.94, '2024-08-30', 'Angela Cordova', 'Jhanet Vega', 'Obras Públicas', '2024-08-16', 15, '2024-09-04', '100', '0', 'CAO1 y cierre trajo contratista el 03/09/2024', 15, NULL, NULL),
(416, 'Mejoramiento y ampliacion de 1 Km camino vecinal tramo Junta vecinal Mirador Colcapirhua-botadero dist. E', 'E', 'Mirador Colcapirhua', 85062.69, '2024-08-31', 'CEsar Merida Flores', 'Jhanet Vega', 'Obras Públicas', '2024-08-09', 23, '2024-09-04', '100', '58', 'CAO1 en Despacho en espera de las carpetas de cierre', 20, NULL, NULL),
(417, 'CONST. PAVIMENTO RIGIDO DISTRITOS A,B,C,D,E COLCAPIRHUA (DRENAJE PLUVIAL CALLE CHUQUILLANTO COMUNIDAD CAMPESINA 4 ESQUINAS DIST. A)', 'A', '4 esquinas', 65200.70, '2024-08-11', 'boris casiano saiba chambi', 'Cristian Villarroel', 'Obras Pï¿½blicas', '2024-07-29', 14, '2024-09-11', '100', '100', 'falta cancelar retencion', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reformulado`
--

CREATE TABLE `reformulado` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha_aprobacion` date NOT NULL,
  `fecha_inicio` date NOT NULL,
  `ley_resolucion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reformulado`
--

INSERT INTO `reformulado` (`id`, `fecha_aprobacion`, `fecha_inicio`, `ley_resolucion`, `created_at`, `updated_at`) VALUES
(1, '2023-03-20', '2023-03-21', 'ley 14', NULL, NULL),
(5, '2022-08-18', '2022-08-19', 'Decreto Municipal', NULL, NULL),
(7, '2022-12-07', '2022-12-08', 'Resolución Municipal', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `oficina` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'activo',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `cargo`, `oficina`, `email`, `email_verified_at`, `password`, `role`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jesus Valencia', 'Director de planificacion', 'Planificacion', 'dirplani', NULL, '$2y$10$9sf3g0XhLVnKJ/KKFDfucem.UArR09K2TFWDVuFJDiFjrsFefKlKS', 'Director', 'activo', NULL, '2025-02-03 12:51:53', '2025-02-03 12:51:53'),
(2, 'Elias Espinoza', 'Director de Obras Publicas', 'Obras Publicas', 'dirobras', NULL, '$2y$10$KLBqvHhL72ZPKqn9tEVSGeOVhes7g.DTx4Fuuzmuobs2.duZ6VTi6', 'Director', 'activo', NULL, '2025-02-03 12:51:53', '2025-02-03 12:51:53'),
(3, 'Orlando Zambrana', 'Supervisor de obra', 'Saneamiento Básico', 'ssb1', NULL, '$2y$10$Fsv9tNrqCwToky6LuEdS8eRZnFELO/GDhLz3bDkVhbzReIMMHQWeu', 'Director', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(4, 'Eber Villarroel', 'Supervisor saneamiento', 'Saneamiento Básico', 'ssb2', NULL, '$2y$10$rSlH1ILhUZaBY3MQ8pOHGeNHkYrdZziISusazKT.E6mJ9NWMXUXny', 'Director', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(5, 'Maria Huayta', 'Supervisor saneamiento', 'Saneamiento Básico', 'ssb3', NULL, '$2y$10$AmsDO51ufOvXeRuSK34q8u4m0ofoHkEjhZ42LKstd6C2gcT1SPmD2', 'Director', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(6, 'Leonardo Rojas', 'Director de Saneamiento Básico', 'Saneamiento Básico', 'dirsb', NULL, '$2y$10$3DLCB/j8SH.yh0pdbSq2P.CzCdX72wLdHVsqjSggKGxz9AoP1K//.', 'Director', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(7, 'Nelson Gallinate', 'Alcalde Municipal', 'Despacho', 'alcalde', NULL, '$2y$10$IWjJ2vTrUuPetj3J2QCL8urFQ7qHRDUeGAMlp3dnWUqzxhqXJbM4u', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(8, 'Richard Carrillo', 'Secretario General y de Gobernabilidad', 'SMGG', 'smgg', NULL, '$2y$10$VwcfAO/N9B5lb9UbFOdEJuRDWjO/WjxQT2Q8ir/JLADk/UpUHArJ2', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(9, 'Jobany Bustamante', 'Secretario Municipal Técnico', 'SMT', 'smt', NULL, '$2y$10$MjE4DEJVs5f6AUUyKYMWq.tJ1wRPgmmmuP7/N14a8cu/nJ5O9sXWy', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 13:06:19'),
(10, 'Victor Subelza', 'Asesor tecnico', 'SMGG', 'atecn', NULL, '$2y$10$f8BcVNHjtP6mmRd4/7NYkeadI3yp15HLx5y335cywbRMuAyfODq7W', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(11, 'Rodrigo Jimenez', 'Secretario Municipal de Planificación', 'SMP', 'smp', NULL, '$2y$10$QHYaWEPGU7gyvdekkLWPz.5/EN.4VZKDtQvrA5nhRRFx6OCl3lfcm', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(12, 'Ciro Bascope', 'Dir. Medio Ambiente', 'SMT', 'smtciro', NULL, '$2y$10$24XA5tnrHc0dKFTO4jDVz.bioU8cs1LFvWAFcFdwYS6fMPaY/HuF2', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(13, 'Juan Guachalla', 'Dir. Areas Verdes', 'SMT', 'smtjuan', NULL, '$2y$10$1v1/VUpOp6p6Mg40dfkDzeoeXuOKZy4fti59VidCE1aBbT8O3xVPC', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(14, 'Osmar Barberito', 'Dir. Planificacion', 'SMP', 'smpplani', NULL, '$2y$10$zwrbLZP2ysP4p4ReZcfjxexGgcPKCXcgHoqudsGobOG16.3Zxgusa', 'Supervisor', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(15, 'Delia', 'Encargada de presupuestos', 'Finanzas', 'presupues', NULL, '$2y$10$qG8R7MZlUwLCs7ccIjoiGOKEe8a9HDr3oA4kBSCLvLOsLxjqdcw8y', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(16, 'sisn', 'SISINWEB', 'Planificacion', 'sisin', NULL, '$2y$10$P27wxvnW1j57qaA.gpMQOuT9YH9DFxO2ZNA/rSNf00kvU6A1Vkp76', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:54', '2025-02-03 12:51:54'),
(17, 'Wilder Branez', 'Supervisor Dist. A', 'Obras Públicas', 'supa', NULL, '$2y$10$KU/ENLZNNdujdmJknAR.HO6tSGlcnXQDHU4k0KSo/gf7HNnQ8ERgu', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(18, 'Daniela Valeriano', 'Supervisor Dist. B', 'Obras Públicas', 'supb', NULL, '$2y$10$Mw3jRto3qO6sjjflmaKKquFURrDyJ8QBKsTMq.0fFv28wXtV83UTq', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(19, 'Ivan Melgarejo', 'Tecnico de proyectos I', 'Planificacion', 'tecnico1', NULL, '$2y$10$.uah5AGdQZzMq5JFSYT2veInLanM37Osor2fEHuUI3hc0Yn3GZop6', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(20, 'Jenny Romero', 'Tec. de proyectos V', 'Planificacion', 'tecnico2', NULL, '$2y$10$sp6kKERTCfy5AdtUG1tpXOglbm0dYvL553sZ6jTwJoV.SyP8ZWspu', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(21, 'contrataciones', 'Encargada de Contratciones', 'Contrataciones', 'contrata', NULL, '$2y$10$RXB2mUTdoQJ0tHm9wq.D4emwlracVkjWgc5qo8kUMMPWU4Na1ewUq', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(22, 'Cristian Villarroel', 'Supervisor Dist. C', 'Obras Públicas', 'supc', NULL, '$2y$10$ghHOaW5nyUAd/J2D5CFSqO2ESJ3rKatP83Mqemd1GCizanc5rQXeq', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(23, 'Adimael Flores', 'Supervisor Dist. D', 'Obras Públicas', 'supd', NULL, '$2y$10$WqMCvxbm/We00dqs5GC6WOfqUT0uyXgNP/dgIAg5fnMJMGkptPS2K', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(24, 'Jhanet Vega', 'Supervisor Dist. E', 'Obras Públicas', 'supe', NULL, '$2y$10$MAj1F8Azy47X8KU1RAGMmOC82hvpP92UYFi3OTLnQnBVo1zDUUkhi', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(25, 'Brandon', 'Tecnico de planificacion', 'Planificacion', 'tecnico3', NULL, '$2y$10$eUfOuuWKiOM89bvObntdveakm.gvsBcj4bf8bS3mvT7KXBYgBGwwO', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(26, 'Jose Ledezma', 'Tec. de proyectos II', 'Planificacion', 'tecnico4', NULL, '$2y$10$KAWgvz7JRlvKUZ5.4ma65O6YbKaIBlm5sNuy8htRXwwd4FxPC6xiS', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(27, 'Nataly', 'Tecnico de planificacion', 'Planificacion', 'tecnico5', NULL, '$2y$10$ZuNBLWIRNZTFzlgGR2wk8u.7mpzvn0NvDORuPyl7OniXKYYi.WxMq', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(28, 'Stefano Ledezma', 'Enc. I Tec. V', 'Planificacion', 'tecnico6', NULL, '$2y$10$I7l0HvTt8krtAT7nu.a5B.tqwzWa0WjgUsd.nkS3X0bq9iZY3LFE6', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(29, 'Adimael Flores', 'Supervisor Salud y Educacion', 'Obras Públicas', 'supsaluded', NULL, '$2y$10$F78Gt9oLA9E4ydcB.oJ89.l09lNqoKnnwR0LWDaB1Zpxz6xADn1EW', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(30, 'Faris Duran', 'Supervisor Alumbrado', 'Obras Públicas', 'supalumb', NULL, '$2y$10$9HgKeRAwF87BrRyrPoGEAugZThqTLKDKOWt2IStUuDQEjhOb0XNcu', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(31, 'Eber Villarroel', 'Supervisor Saneamiento', 'Saneamiento Básico', 'supsb2', NULL, '$2y$10$6oIaIPt1eZgJViE2sYa60uYR7tnRBBLvXEDoLBbyfNSrBee3m13RC', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55'),
(32, 'Maria Huayta', 'Supervisor Saneamiento', 'Saneamiento Básico', 'supsb1', NULL, '$2y$10$IGL.JgbYpAKUsV0PktlsxedWpD0i7aIiV1Waq8akItK7nJVmgef1C', 'Tecnico', 'activo', NULL, '2025-02-03 12:51:55', '2025-02-03 12:51:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acta`
--
ALTER TABLE `acta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acta_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agenda_acta_id_foreign` (`acta_id`);

--
-- Indices de la tabla `apertura_programatica`
--
ALTER TABLE `apertura_programatica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistentes_acta_id_foreign` (`acta_id`);

--
-- Indices de la tabla `avance`
--
ALTER TABLE `avance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avance_supervisor_id_foreign` (`supervisor_id`),
  ADD KEY `avance_proyecto_id_foreign` (`proyecto_id`);

--
-- Indices de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compromisos_acta_id_foreign` (`acta_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planilla_proyecto_id_foreign` (`proyecto_id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyecto_apertura_id_foreign` (`apertura_id`);

--
-- Indices de la tabla `reformulado`
--
ALTER TABLE `reformulado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acta`
--
ALTER TABLE `acta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `apertura_programatica`
--
ALTER TABLE `apertura_programatica`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `avance`
--
ALTER TABLE `avance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planilla`
--
ALTER TABLE `planilla`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT de la tabla `reformulado`
--
ALTER TABLE `reformulado`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acta`
--
ALTER TABLE `acta`
  ADD CONSTRAINT `acta_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_acta_id_foreign` FOREIGN KEY (`acta_id`) REFERENCES `acta` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD CONSTRAINT `asistentes_acta_id_foreign` FOREIGN KEY (`acta_id`) REFERENCES `acta` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `avance`
--
ALTER TABLE `avance`
  ADD CONSTRAINT `avance_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `avance_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD CONSTRAINT `compromisos_acta_id_foreign` FOREIGN KEY (`acta_id`) REFERENCES `acta` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD CONSTRAINT `planilla_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_apertura_id_foreign` FOREIGN KEY (`apertura_id`) REFERENCES `apertura_programatica` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
