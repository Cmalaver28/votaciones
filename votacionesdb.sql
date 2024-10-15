-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 18:59:26
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
-- Base de datos: `votacionesdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_votos`
--

CREATE TABLE `auditoria_votos` (
  `id_auditoria` bigint(20) NOT NULL,
  `id_voto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_eleccion` bigint(20) DEFAULT NULL,
  `fecha_auditoria` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `accion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auditoria_votos`
--

INSERT INTO `auditoria_votos` (`id_auditoria`, `id_voto`, `id_usuario`, `id_eleccion`, `fecha_auditoria`, `accion`) VALUES
(1, 1, 1, 1, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(2, 2, 2, 1, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(3, 3, 3, 2, '2024-10-03 16:55:04', 'Voto no cumplía con los requisitos.'),
(4, 4, 4, 2, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(5, 5, 5, 3, '2024-10-03 16:55:04', 'El usuario solicitó anular su voto.'),
(6, 6, 6, 3, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(7, 7, 7, 4, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(8, 8, 8, 4, '2024-10-03 16:55:04', 'Voto no válido, sobrepasó el límite de votos.'),
(9, 9, 9, 5, '2024-10-03 16:55:04', 'Voto verificado exitosamente.'),
(10, 10, 10, 5, '2024-10-03 16:55:04', 'El usuario cambió de opinión antes del cierre.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `partido` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nombre`, `partido`, `descripcion`, `imagen_url`) VALUES
(1, 'Pedro Gómez', 'Partido A', 'Candidato a la presidencia', 'https://example.com/img1.jpg'),
(2, 'Luisa Pérez', 'Partido B', 'Candidata a la presidencia', 'https://example.com/img2.jpg'),
(3, 'José Castillo', 'Partido C', 'Candidato al senado', 'https://example.com/img3.jpg'),
(4, 'Ana Torres', 'Partido D', 'Candidata a la gobernación', 'https://example.com/img4.jpg'),
(5, 'Carlos Domínguez', 'Partido A', 'Candidato a la alcaldía', 'https://example.com/img5.jpg'),
(6, 'Elena Suárez', 'Partido B', 'Candidata a la alcaldía', 'https://example.com/img6.jpg'),
(7, 'Javier Ruiz', 'Partido C', 'Candidato a la gobernación', 'https://example.com/img7.jpg'),
(8, 'Gabriela Ortiz', 'Partido D', 'Candidata al senado', 'https://example.com/img8.jpg'),
(9, 'Manuel Pérez', 'Partido A', 'Candidato a la presidencia', 'https://example.com/img9.jpg'),
(10, 'Carmen Silva', 'Partido B', 'Candidata a la gobernación', 'https://example.com/img10.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elecciones`
--

CREATE TABLE `elecciones` (
  `id_eleccion` bigint(20) NOT NULL,
  `nombre_eleccion` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `elecciones`
--

INSERT INTO `elecciones` (`id_eleccion`, `nombre_eleccion`, `descripcion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'Elección Presidencial 2024', 'Elección para presidente', '2024-10-01 08:00:00', '2024-10-02 18:00:00'),
(2, 'Elección Alcaldía 2024', 'Elección para alcalde', '2024-10-05 08:00:00', '2024-10-05 18:00:00'),
(3, 'Elección Senado 2024', 'Elección para senadores', '2024-10-10 08:00:00', '2024-10-10 18:00:00'),
(4, 'Elección Gobernación 2024', 'Elección para gobernador', '2024-10-15 08:00:00', '2024-10-15 18:00:00'),
(5, 'Elección Presidencial 2028', 'Elección para presidente', '2028-10-01 08:00:00', '2028-10-02 18:00:00'),
(6, 'Elección Alcaldía 2028', 'Elección para alcalde', '2028-10-05 08:00:00', '2028-10-05 18:00:00'),
(7, 'Elección Senado 2028', 'Elección para senadores', '2028-10-10 08:00:00', '2028-10-10 18:00:00'),
(8, 'Elección Gobernación 2028', 'Elección para gobernador', '2028-10-15 08:00:00', '2028-10-15 18:00:00'),
(9, 'Elección Especial 2024', 'Elección para cargos especiales', '2024-12-01 08:00:00', '2024-12-01 18:00:00'),
(10, 'Elección Especial 2028', 'Elección para cargos especiales', '2028-12-01 08:00:00', '2028-12-01 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contraseña_hash` varchar(256) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `contraseña_hash`, `direccion`, `fecha_registro`, `estado`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', 'hash1', 'Calle 123', '2024-01-01 13:00:00', 1),
(2, 'María García', 'maria.garcia@example.com', 'hash2', 'Calle 456', '2024-01-02 14:00:00', 1),
(3, 'Luis Martínez', 'luis.martinez@example.com', 'hash3', 'Avenida 789', '2024-01-03 15:00:00', 1),
(4, 'Ana Rodríguez', 'ana.rodriguez@example.com', 'hash4', 'Carrera 10', '2024-01-04 16:00:00', 1),
(5, 'Carlos Fernández', 'carlos.fernandez@example.com', 'hash5', 'Calle 85', '2024-01-05 17:00:00', 1),
(6, 'Sofía López', 'sofia.lopez@example.com', 'hash6', 'Calle 22', '2024-01-06 18:00:00', 1),
(7, 'Miguel Sánchez', 'miguel.sanchez@example.com', 'hash7', 'Avenida 13', '2024-01-07 19:00:00', 1),
(8, 'Lucía Ramírez', 'lucia.ramirez@example.com', 'hash8', 'Carrera 9', '2024-01-08 20:00:00', 1),
(9, 'Jorge Hernández', 'jorge.hernandez@example.com', 'hash9', 'Calle 50', '2024-01-09 21:00:00', 1),
(10, 'Laura Torres', 'laura.torres@example.com', 'hash10', 'Carrera 3', '2024-01-10 22:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id_voto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  `id_candidato` bigint(20) DEFAULT NULL,
  `id_eleccion` bigint(20) DEFAULT NULL,
  `fecha_voto` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`id_voto`, `id_usuario`, `id_candidato`, `id_eleccion`, `fecha_voto`) VALUES
(1, 1, 1, 1, '2024-10-01 14:00:00'),
(2, 2, 2, 1, '2024-10-01 15:00:00'),
(3, 3, 3, 2, '2024-10-05 14:30:00'),
(4, 4, 4, 2, '2024-10-05 16:00:00'),
(5, 5, 5, 3, '2024-10-10 13:15:00'),
(6, 6, 6, 3, '2024-10-10 14:45:00'),
(7, 7, 7, 4, '2024-10-15 14:20:00'),
(8, 8, 8, 4, '2024-10-15 15:00:00'),
(9, 9, 9, 5, '2028-10-01 13:10:00'),
(10, 10, 10, 5, '2028-10-01 14:50:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria_votos`
--
ALTER TABLE `auditoria_votos`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `id_voto` (`id_voto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_eleccion` (`id_eleccion`);

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `elecciones`
--
ALTER TABLE `elecciones`
  ADD PRIMARY KEY (`id_eleccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id_voto`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`,`id_eleccion`),
  ADD KEY `id_candidato` (`id_candidato`),
  ADD KEY `id_eleccion` (`id_eleccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria_votos`
--
ALTER TABLE `auditoria_votos`
  MODIFY `id_auditoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditoria_votos`
--
ALTER TABLE `auditoria_votos`
  ADD CONSTRAINT `auditoria_votos_ibfk_1` FOREIGN KEY (`id_voto`) REFERENCES `votos` (`id_voto`),
  ADD CONSTRAINT `auditoria_votos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `auditoria_votos_ibfk_3` FOREIGN KEY (`id_eleccion`) REFERENCES `elecciones` (`id_eleccion`);

--
-- Filtros para la tabla `votos`
--
ALTER TABLE `votos`
  ADD CONSTRAINT `votos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `votos_ibfk_2` FOREIGN KEY (`id_candidato`) REFERENCES `candidatos` (`id_candidato`),
  ADD CONSTRAINT `votos_ibfk_3` FOREIGN KEY (`id_eleccion`) REFERENCES `elecciones` (`id_eleccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
