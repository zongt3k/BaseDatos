-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2020 a las 06:15:44
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenamiento`
--

CREATE TABLE `almacenamiento` (
  `tipoAlmacenamiento` varchar(100) NOT NULL,
  `capacidad` int(100) NOT NULL,
  `tipoConexion` varchar(100) NOT NULL,
  `velocidadLectura` int(100) NOT NULL,
  `velocidadEscritura` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacenamiento`
--

INSERT INTO `almacenamiento` (`tipoAlmacenamiento`, `capacidad`, `tipoConexion`, `velocidadLectura`, `velocidadEscritura`) VALUES
('Unidad Estado Solido10', 500, 'Sata', 3000, 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cable`
--

CREATE TABLE `cable` (
  `tipoCable` varchar(100) NOT NULL,
  `versionCable` varchar(100) NOT NULL,
  `medidaCable` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cable`
--

INSERT INTO `cable` (`tipoCable`, `versionCable`, `medidaCable`) VALUES
('DVI', '2.0', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fans`
--

CREATE TABLE `fans` (
  `numFans` int(100) NOT NULL,
  `leds` varchar(100) NOT NULL,
  `tamaño` varchar(100) NOT NULL,
  `velocidadFan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fans`
--

INSERT INTO `fans` (`numFans`, `leds`, `tamaño`, `velocidadFan`) VALUES
(5, '500', 'tamaño', 'velocidadFan'),
(5, '500', 'tamaño', 'velocidadFan'),
(5, '500', 'tamaño', 'velocidadFan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuente`
--

CREATE TABLE `fuente` (
  `potencia` varchar(100) NOT NULL,
  `diametroVentilador` int(100) NOT NULL,
  `numeroConectores` varchar(100) NOT NULL,
  `certificacion` int(100) NOT NULL,
  `tipoModular` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fuente`
--

INSERT INTO `fuente` (`potencia`, `diametroVentilador`, `numeroConectores`, `certificacion`, `tipoModular`) VALUES
('600 w', 120, '4', 80, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabinete`
--

CREATE TABLE `gabinete` (
  `tipoTapa` varchar(100) NOT NULL,
  `leds` varchar(100) NOT NULL,
  `numBahias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gabinete`
--

INSERT INTO `gabinete` (`tipoTapa`, `leds`, `numBahias`) VALUES
('Vidrio Templado', 'RGB', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpu`
--

CREATE TABLE `gpu` (
  `tipoGpu` varchar(100) NOT NULL,
  `marcaGPU` varchar(100) NOT NULL,
  `serieGPU` int(100) NOT NULL,
  `capacidadVRAM` int(100) NOT NULL,
  `tipoAPI` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gpu`
--

INSERT INTO `gpu` (`tipoGpu`, `marcaGPU`, `serieGPU`, `capacidadVRAM`, `tipoAPI`) VALUES
('Nvidia', 'EVGA', 2000, 8, 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `marcaMonitor` varchar(100) NOT NULL,
  `pulgadas` int(100) NOT NULL,
  `fTasaderefresco` varchar(100) NOT NULL,
  `tipoPanel` int(100) NOT NULL,
  `cantidadMonitores` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`marcaMonitor`, `pulgadas`, `fTasaderefresco`, `tipoPanel`, `cantidadMonitores`) VALUES
('MSI', 24, '144HZ', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motherboard`
--

CREATE TABLE `motherboard` (
  `fabricante` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `proveedorChipset` varchar(100) NOT NULL,
  `capacidadSata` int(100) NOT NULL,
  `puertoM2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `motherboard`
--

INSERT INTO `motherboard` (`fabricante`, `modelo`, `proveedorChipset`, `capacidadSata`, `puertoM2`) VALUES
('Asus', 'z170p', 'intel', 4, 'si'),
('Asus', 'z170p', 'intel', 4, 'si'),
('Asus', 'z170p', 'intel', 4, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mouse`
--

CREATE TABLE `mouse` (
  `tipoMouse` varchar(100) NOT NULL,
  `tipoConexion` varchar(100) NOT NULL,
  `dpiMaximo` varchar(100) NOT NULL,
  `numMacros` varchar(100) NOT NULL,
  `pesas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mouse`
--

INSERT INTO `mouse` (`tipoMouse`, `tipoConexion`, `dpiMaximo`, `numMacros`, `pesas`) VALUES
('Mecanico', 'Inalambrico', '5000', '3', '6'),
('Mecanico', 'Inalambrico', '5000', '3', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--

CREATE TABLE `procesador` (
  `marcaProcesador` varchar(100) NOT NULL,
  `genProce` int(100) NOT NULL,
  `versionProce` varchar(100) NOT NULL,
  `infoNucleos` int(100) NOT NULL,
  `infoHilos` int(100) NOT NULL,
  `infoFrecuencia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`marcaProcesador`, `genProce`, `versionProce`, `infoNucleos`, `infoHilos`, `infoFrecuencia`) VALUES
('Ryzen', 3, '3000', 8, 12, '3.5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ram`
--

CREATE TABLE `ram` (
  `marcaRam` varchar(100) NOT NULL,
  `numRam` int(100) NOT NULL,
  `capacidadRam` varchar(100) NOT NULL,
  `frecuenciaRam` int(100) NOT NULL,
  `infoFrecuencia` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ram`
--

INSERT INTO `ram` (`marcaRam`, `numRam`, `capacidadRam`, `frecuenciaRam`, `infoFrecuencia`) VALUES
('Hyperex', 2, '8 gb', 3200, 3200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclado`
--

CREATE TABLE `teclado` (
  `tipoTeclado` varchar(100) NOT NULL,
  `tipoTeclas` varchar(100) NOT NULL,
  `conexion` varchar(100) NOT NULL,
  `lenguaje` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teclado`
--

INSERT INTO `teclado` (`tipoTeclado`, `tipoTeclas`, `conexion`, `lenguaje`) VALUES
('Mecanico', 'Switch cherry mx red', 'Alambrica', 'EUA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
