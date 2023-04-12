-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2023 a las 22:46:10
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deprisa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `codigo_area` varchar(10) NOT NULL,
  `nombre_area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`codigo_area`, `nombre_area`) VALUES
('212', 'Morocco'),
('213', 'Algeria'),
('216', 'Tunisia'),
('218', 'Libya'),
('220', 'Gambia'),
('221', 'Senegal'),
('222', 'Mauritania'),
('224', 'Guinea'),
('225', 'Ivory Coast'),
('226', 'Burkina Faso'),
('227', 'Niger'),
('229', 'Benin'),
('231', 'Liberia'),
('232', 'Sierra Leone'),
('233', 'Ghana'),
('234', 'Nigeria'),
('235', 'Chad'),
('236', 'Central African Republic'),
('237', 'Cameroon'),
('238', 'Cape Verde Islands'),
('242', '*Bahamas*'),
('243', 'Congo, Dem. Rep. of'),
('244', 'Angola'),
('246', '*Barbados'),
('247', 'Ascension'),
('249', 'Sudan'),
('250', 'Rwandese Republic'),
('251', 'Ethiopia'),
('253', 'Djibouti'),
('254', 'Kenya'),
('255', 'Tanzania'),
('256', 'Uganda'),
('257', 'Burundi'),
('258', 'Mozambique'),
('260', 'Zambia'),
('261', 'Madagascar'),
('263', 'Zimbabwe'),
('264', 'Anguilla'),
('265', 'Malawi'),
('267', 'Botswana'),
('268', 'Antigua'),
('269', 'Comoros'),
('27', 'South Africa'),
('284', '*British Virgin Islands'),
('291', 'Eritrea'),
('297', 'Aruba'),
('299', 'Greenland'),
('30', 'Greece'),
('31', 'Netherlands'),
('32', 'Belgium'),
('33', 'France'),
('34', 'Spain'),
('345', '*Cayman Islands'),
('350', 'Gibraltar'),
('351', 'Portugal'),
('352', 'Luxembourg'),
('353', 'Ireland'),
('354', 'Iceland'),
('355', 'Albania'),
('356', 'Malta'),
('357', 'Cyprus'),
('358', 'Finland'),
('359', 'Bulgaria'),
('36', 'Hungary'),
('370', 'Lithuania'),
('371', 'Latvia'),
('372', 'Estonia'),
('373', 'Moldova'),
('374', 'Armenia'),
('375', 'Belarus'),
('377', 'Monaco'),
('378', 'San Marino'),
('379', 'Vatican City'),
('380', 'Ukraine'),
('381', 'Serbia/Montenegro'),
('385', 'Croatia'),
('386', 'Slovenia'),
('387', 'Bosnia/Herzegovina'),
('389', 'Macedonia'),
('39', 'Italy'),
('40', 'Romania'),
('41', 'Switzerland'),
('411', '*Bermuda'),
('420', 'Czech Republic'),
('421', 'Slovak Republic'),
('423', 'Liechtenstein'),
('43', 'Austria'),
('44', 'United Kingdom'),
('45', 'Denmark'),
('46', 'Sweden'),
('47', 'Norway'),
('473', '*Grenada'),
('48', 'Poland'),
('49', 'Germany'),
('500', 'Falkland Islands'),
('501', 'Belize'),
('502', 'Guatemala'),
('503', 'El Salvador'),
('504', 'Honduras'),
('505', 'Nicaragua'),
('506', 'Costa Rica'),
('507', 'Panama'),
('509', 'Haiti'),
('51', 'Peru'),
('52', 'Mexico'),
('53', 'Cuba'),
('5399', 'Guantanamo Bay'),
('54', 'Argentina'),
('55', 'Brazil'),
('56', 'Chile'),
('57', 'Colombia'),
('58', 'Venezuela'),
('590', 'Guadeloupe'),
('591', 'Bolivia'),
('592', 'Guyana'),
('593', 'Ecuador'),
('594', 'French Guiana'),
('595', 'Paraguay'),
('596', 'French Antilles'),
('597', 'Suriname'),
('598', 'Uruguay'),
('599', 'Netherlands Antilles'),
('60', 'Malaysia'),
('61', 'Australia'),
('63', 'Philippines'),
('64', 'Chatham Island'),
('65', 'Singapore'),
('66', 'Thailand'),
('664', '*Montserrat'),
('670', 'East Timor'),
('671', '*Guam'),
('672', 'Australian External Territories'),
('673', 'Brunei Darussalam'),
('674', 'Nauru'),
('675', 'Papua New Guinea'),
('677', 'Solomon Islands'),
('679', 'Fiji Islands'),
('68', '*Trinidad & Tobago'),
('680', 'Palau'),
('682', 'Cook Islands'),
('685', 'Western Samoa'),
('687', 'New Caledonia'),
('689', 'French Polynesia'),
('691', 'Micronesia'),
('692', 'Marshall Islands'),
('7', 'Kazakhstan'),
('758', 'St. Lucia'),
('81', 'Japan'),
('82', 'Korea (South)'),
('84', 'Vietnam'),
('849', '*Dominican Republic'),
('850', 'Korea (North)'),
('852', 'Hong Kong'),
('853', 'Macao'),
('855', 'Cambodia'),
('856', 'Laos'),
('86', 'China'),
('869', '*St. Kitts/Nevis'),
('880', 'Bangladesh'),
('886', 'Taiwan'),
('90', 'Turkey'),
('91', 'India'),
('92', 'Pakistan'),
('93', 'Afghanistan'),
('939', '*Puerto Rico'),
('94', 'Sri Lanka'),
('95', 'Myanmar'),
('960', 'Maldives'),
('961', 'Lebanon'),
('962', 'Jordan'),
('963', 'Syria'),
('964', 'Iraq'),
('965', 'Kuwait'),
('966', 'Saudi Arabia'),
('967', 'Yemen'),
('968', 'Oman'),
('971', 'United Arab Emirates'),
('972', 'Israel'),
('973', 'Bahrain'),
('974', 'Qatar'),
('975', 'Bhutan'),
('976', 'Mongolia'),
('977', 'Nepal'),
('98', 'Iran'),
('992', 'Tajikistan'),
('993', 'Turkmenistan'),
('994', 'Azerbaijan'),
('995', 'Georgia'),
('998', 'Uzbekistan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `contrasena_cifrada` varchar(255) NOT NULL,
  `nombre` text NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `codigo_area` int(25) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `identificacion`, `contrasena_cifrada`, `nombre`, `apellidos`, `email`, `codigo_area`, `nombre_usuario`, `contrasena`) VALUES
(4, 218705538, '$2y$10$yVpFxozWs5FPJBQLWoP1zOujBCO1UZ/wIQ0pqGMvUaEqMhmPUEMtm', 'Juan', 'Armani ', 'Felipe@hotmail.com', 57, 'jarmani ', ''),
(5, 2147483647, '$2y$10$uLAGlqsHfepNq/WKvzjIJe5u9fjbiAgDkHEgvb/B/t.MP3w5buKRy', 'Mandele', 'Jornyk', 'Mandele@hotmail.com', 244, 'mjornyk', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`codigo_area`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identificacion`),
  ADD KEY `id` (`id`),
  ADD KEY `codigo_area` (`codigo_area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
