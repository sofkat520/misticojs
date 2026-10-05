-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2026 a las 22:28:03
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
-- Base de datos: `catalogo_alimentos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `peso` varchar(50) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `emoji` varchar(10) NOT NULL,
  `descripcion` text NOT NULL,
  `ingredientes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ingredientes`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `precio`, `peso`, `origen`, `emoji`, `descripcion`, `ingredientes`) VALUES
(1, 'Quinua Orgánica', 'Granos', 12.50, '500 g', 'Puno', '🌾', 'Quinua blanca lavada y lista para cocinar. Rica en proteínas y libre de gluten.', '[\"Quinua 100% orgánica\"]'),
(2, 'Miel de Abeja', 'Endulzantes', 18.90, '350 g', 'Cusco', '🍯', 'Miel pura de abeja, sin aditivos ni azúcares agregados.', '[\"Miel de abeja pura\"]'),
(3, 'Café Molido Premium', 'Bebidas', 24.00, '250 g', 'Chanchamayo', '☕', 'Café de altura, tostado medio y molido fresco. Aroma intenso y sabor balanceado.', '[\"Café arábica 100%\"]'),
(4, 'Aceite de Oliva Extra Virgen', 'Aceites', 32.00, '500 ml', 'Tacna', '🫒', 'Primera prensada en frío, ideal para ensaladas y platos fríos.', '[\"Aceite de oliva extra virgen\"]'),
(5, 'Chocolate Amargo 70%', 'Dulces', 9.50, '100 g', 'San Martín', '🍫', 'Barra de chocolate amargo elaborada con cacao fino de aroma.', '[\"Pasta de cacao\",\"Azúcar\",\"Manteca de cacao\"]'),
(6, 'Avena en Hojuelas', 'Cereales', 6.80, '400 g', 'Junín', '🥣', 'Hojuelas de avena integral para desayunos, batidos y repostería.', '[\"Avena integral\"]'),
(7, 'Maca Andina en Polvo', 'Superalimentos', 16.50, '250 g', 'Junín', '🌾', 'Harina de maca gelatinizada, energizante natural y rica en minerales esenciales.', '[\"Maca orgánica 100%\"]'),
(8, 'Cacao en Polvo Orgánico', 'Chocolates', 14.00, '200 g', 'Cusco', '🍫', 'Cacao puro desgrasado ideal para repostería, batidos y bebidas calientes.', '[\"Cacao orgánico en polvo\"]'),
(9, 'Sal Rosa de Maras', 'Condimentos', 11.00, '500 g', 'Cusco', '🧂', 'Sal natural extraída de las salineras de Maras, libre de aditivos químicos.', '[\"Sal de manantial 100% natural\"]'),
(10, 'Té de Muña Orgánico', 'Infusiones', 8.50, '100 g', 'Puno', '🌿', 'Hojas seleccionadas de muña andina, excelente digestivo y de aroma fresco.', '[\"Hojas secas de muña\"]'),
(11, 'Mermelada de Aguaymanto', 'Conservas', 13.50, '310 g', 'Cajamarca', '🍊', 'Mermelada artesanal de capulí/aguaymanto con bajo contenido de azúcar agregada.', '[\"Aguaymanto\", \"Azúcar de caña\", \"Pectina cítrica\"]'),
(12, 'Kiwicha Pop Expanida', 'Cereales', 7.50, '150 g', 'Arequipa', '🥣', 'Grano de kiwicha tostado y expandido, listo para consumir con yogur o leche.', '[\"Kiwicha 100% expandida\"]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
