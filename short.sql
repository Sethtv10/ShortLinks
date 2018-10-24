-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-10-2018 a las 21:05:47
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `shortlinks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `url`
--

CREATE TABLE `url` (
  `short` varchar(36) NOT NULL,
  `original` varchar(255) NOT NULL,
  `expirationDate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `url`
--

INSERT INTO `url` (`short`, `original`, `expirationDate`) VALUES
('a3cc8c50-57fd-42e3-9edd-23e51546b915', 'http://www.Seth.com', '30-10-18'),
('a15a00c8-2a95-4635-a6b0-4e66d46e483c', 'http://www.Seth.com', '30-10-18'),
('da3f7d0a-05ae-4f21-9786-b24ce1d879b0', 'http://www.Seth2.com', '30-10-18'),
('37de5f9c-0493-4da4-b9a4-eff2c1fdacdd', 'http://www.Seth3.com', '30-10-18'),
('d5bf7dc2-0524-423e-bc8c-e9bafc2087db', 'http://www.Seth4.com', '30-10-18'),
('b225985d-806b-4225-897a-fc66c1a35783', 'http://www.Seth.com', '30-10-18'),
('a30c7b68-5bea-49bb-9aad-b401b9a735bd', 'http://www.Seth2.com', '30-10-18'),
('36614a68-a6f2-4753-8a63-a86b331bd4cc', 'http://www.Seth3.com', '30-10-18'),
('8fe1ec4f-11b8-43f8-a055-99a6d770e0f4', 'http://www.Seth4.com', '30-10-18'),
('fbdd883a-a451-481c-99ff-a58e989b61db', 'http://www.Seth.com', '30-10-18'),
('e98b038d-babe-49eb-a893-f53f0dc55bf0', 'http://www.Seth2.com', '30-10-18'),
('d5616e1e-8aa1-426f-9334-2c36d9c2dcea', 'http://www.Seth3.com', '30-10-18'),
('ceabfd07-4caf-4447-ba61-d2e6e4ba5402', 'http://www.Seth4.com', '30-10-18'),
('084597c5-e813-45c6-9263-0c19b2238663', 'http://www.Seth.com', '30-10-18'),
('103a9625-c8c8-4a01-8f4d-0c4f2d16d93f', 'http://www.Seth2.com', '30-10-18'),
('fe0ab4d1-582b-48fe-8909-fab32865678f', 'http://www.Seth3.com', '30-10-18'),
('e64d8d33-68a9-49ce-a603-b6b450ab98d6', 'http://www.Seth4.com', '30-10-18'),
('48d44d0a-ad4a-4eea-9db9-37bb468185e3', 'http://www.Seth.com', '30-10-18'),
('3b973958-67d2-46bd-9894-28528f394ad8', 'http://www.Seth2.com', '30-10-18'),
('a087e305-c92d-44d3-ae66-3de997d99506', 'http://www.Seth3.com', '30-10-18'),
('22332f8c-cab0-4f46-863d-9769b1cd4a39', 'http://www.Seth4.com', '30-10-18'),
('95773699-9b5e-48e3-836f-cbc3d04ac2c6', 'http://www.Seth.com', '30-10-18'),
('5403715b-af24-4429-ab8b-1577e0d6a53f', 'http://www.Seth2.com', '30-10-18'),
('a467da5b-cc0f-44bd-ad46-2de887b4ab39', 'http://www.Seth3.com', '30-10-18'),
('a97c92a5-6c32-455a-b68f-f2ecba2e0bc5', 'http://www.Seth4.com', '30-10-18');