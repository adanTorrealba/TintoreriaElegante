-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2020 a las 19:41:56
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `_eduart_store_`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(3, 'Adan ', 'Torrealba', 'adan_e_torrealba@hotmail.com', '04144823887', 'Valencia', '$5$rounds=535000$BrqGxnfAHzEmpG4M$SzoD3BNfSVYYHrgSMSKg0/kYevAoH2ByjF0qlIeegx/', 'manager', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(11, 16, 'Adan Torrealba', 1, 1, 'Tocuyito', '04244823887', 'no', '2020-07-04 04:28:18', '2020-07-11'),
(12, NULL, 'Pedro Perez', 12, 1, 'Valencia', '04121231212', 'no', '2020-07-04 14:21:29', '2020-07-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'Qiyi Warrior w 3x3', 7, 'Cubo 3x3 de Qiyi modelo Warrioir W stickerless', 3, '3x3', '3x3', 'c-3301', '413AOV477bL._AC_.jpg', '2020-07-02 20:28:27'),
(2, 'Qiyi Yuan s 4x4', 10, 'Cubo 4x4x4 de Qiyi, model Yuan Stickerless', 8, '4x4', '4x4', 'c-4401', '71M-t61QqyL._AC_SL1389_.jpg', '2020-07-03 00:02:35'),
(3, 'Qiyi Qidi s 2x2', 5, 'Cubo 2x2 de Qiyi, modelo Qidi stickerless', 13, '2x2', '2x2', 'c-2201', '618QWMJeXML._AC_SL1500_.jpg', '2020-07-03 02:28:36'),
(4, 'Qiyi QiZheng s 5x5', 13, 'Cubo 5x5 de Qiyi modelo QiZheng stickerless', 14, '5x5', '5x5', 'c-5501', '7128+M9+ESL._AC_SL1389_.jpg', '2020-07-03 04:38:27'),
(5, 'Qiyi Megaminx QiHeng', 8, 'Megaminx de Qiyi modelo QiHeng dodecaedro con stickers', 12, 'megaminx', 'megaminx', 'c-do01', '51y5Yn2p8OL._AC_SL1000_.jpg', '2020-07-03 23:39:08'),
(6, 'Qiyi QiFan s 6x6', 15, '6x6 de Qiyi modelo QiFan stickerless', 10, '6x6', '6x6', 'c-6601', '61qaL26De9L._AC_SL1020_.jpg', '2020-07-04 00:00:15'),
(7, 'Qiyi QiXing 7x7', 20, '7x7 de Qiyi modelo QiXing con stickers', 9, '7x7', '7x7', 'c-7701', '61L59GBQT+L._AC_SL1050_.jpg', '2020-07-04 00:05:35'),
(8, 'Qiyi Pyraminx QiMing', 8, 'Piramide de la marca Qiyi modelo QiMing con stickers', 20, 'pyraminx', 'pyraminx', 'c-pi01', '614opq-gPQL._AC_SL1000_.jpg', '2020-07-04 03:21:50'),
(9, 'Qiyi Qifa s Square-1', 7, 'Square-1 de Qiyi modelo Qifa stickerless', 9, 'square1', 'square1', 'c-sq01', '511rYWy5TAL._AC_SL1001_.jpg', '2020-07-04 03:29:37'),
(10, 'Moyu Aolong 3x3', 15, 'Cubo 3x3 de la marca Moyu modelo Aolong con stickers', 8, '3x3', '3x3', 'c-3302', '71fVEVhk5YL._AC_SL1500__1.jpg', '2020-07-04 04:22:35'),
(11, '3x3 Fibra de Carbono', 6, '3x3 con stickers de fibra de carbono', 24, '3x3', '3x3', 'c-3303', '71WS9kb-JFL._AC_SL1300_.jpg', '2020-07-04 04:35:24'),
(12, 'Gan 356 XS 3x3', 60, 'Cubo 3x3 de la marca Gan, cubo de gama alta con imanes y centros ajustables', 6, '3x3', '3x3', 'c-3304', '61fCWjM2daL._AC_SL1000_.jpg', '2020-07-04 04:37:08'),
(31, 'Moyu Aosu 4x4', 16, 'Cubo 4x4 de la marca Moyu modelo Aosu', 16, '4x4', '4x4', 'c-4402', '71c74zbxeIL._AC_SL1500_.jpg', '2020-07-04 13:49:11'),
(32, 'Gan 460 M 4x4', 56, 'Cubo 4x4 de marca Gan gama alta magnetico con stickers', 10, '4x4', '4x4', 'c-4403', '61EGUE066L._AC_SL1001_.jpg', '2020-07-04 13:50:29'),
(33, '4x4 Fibra de Carbono', 9, 'Cubo 4x4 con stickers de fibra de carbono', 14, '4x4', '4x4', 'c-4404', '71iq1HpByfL._AC_SL1200_.jpg', '2020-07-04 13:52:10'),
(34, 'Qiyi QiYuan 4x4 Stickers', 12, 'Cubo 4x4 de la marca Qiyi modelo QiYuan con stickers', 8, '4x4', '4x4', 'c-4405', '61ugL-6zouL._AC_SL1100_.jpg', '2020-07-04 13:56:54'),
(35, 'Ruibi\'s 4x4', 20, 'Cubo 4x4 marca Rubik\'s', 5, '4x4', '4x4', 'c-4406', '71JCrHVCB9L._AC_SL1500_.jpg', '2020-07-04 13:58:19'),
(36, 'Runik\'s 2x2', 8, 'Cubo 2x2 marca rubiks', 20, '2x2', '2x2', 'c-2202', '71UZtheFtvL._AC_SL1500_.jpg', '2020-07-04 14:28:05'),
(37, '2x2 Fibra de Carbono', 6, 'Cubo 2x2 con stickers de fibra de carbono', 18, '2x2', '2x2', 'c-2203', '61W+67bAQhL._AC_SL1200_.jpg', '2020-07-04 14:31:02'),
(38, 'Gan 251 M 2x2', 22, 'Cubo 2x2 de la marca Gan gama alta magnetico', 7, '2x2', '2x2', 'c-2204', '61m7YY1H+ZL._AC_SL1200_.jpg', '2020-07-04 14:38:38'),
(39, 'Qiyi Valk 3 3x3', 20, 'Cubo 3x3 de la marca Qiyi modelo Valk stickerless', 20, '3x3', '3x3', 'c-3305', '61uREx7JiaL._AC_SL1014_.jpg', '2020-07-04 14:48:46'),
(40, 'Moyu Weilong GTS v2 M 3x3', 26, 'Cubo 3x3 de Moyu gama alta modelo Weilong GTS version 2, magnetico con stickers', 17, '3x3', '3x3', 'c-3306', '71ZGavfFx5L._AC_SL1000_.jpg', '2020-07-04 14:56:03'),
(41, 'ShengShou 5x5', 8, 'Cubo 5x5 marca ShenhShou base blanca con stickers', 9, '5x5', '5x5', 'c-5502', '81bMA3PcFdL._AC_SL1500_.jpg', '2020-07-04 15:07:23'),
(42, 'Rubik\'s 5x5', 24, 'Cubo 5x5 marca Rubik\'s', 6, '5x5', '5x5', 'c-5503', '71x3E5v1i0L._AC_SL1500_.jpg', '2020-07-04 15:09:55'),
(43, 'Moyu AoChuang 5X5 GTS', 24, 'Cubo 5x5 de la marca Moyu modelo AoChang GTS con stickers', 16, '5x5', '5x5', 'c-5504', '61FfL8N3aKL._AC_SL1000_.jpg', '2020-07-04 15:14:00'),
(44, 'Qiyi X-Man Shadow 6x6', 34, 'Cubo 6x6 de la sub marca X-Man de Qiyi con stickers', 21, '6x6', '6x6', 'c-6602', '51k2ST3HKML._AC_.jpg', '2020-07-04 15:27:00'),
(45, 'Yuxin Little Magic 6x6', 16, 'Cubo 6x6 de la marca Yuxin stickerless', 18, '6x6', '6x6', 'c-6603', '41OAdaetyWL._AC_.jpg', '2020-07-04 15:30:35'),
(46, 'YJ Yushi 6x6 v2 M', 16, 'Cubo 6x6 de la marca Yuxin magnetico stickerless', 16, '6x6', '6x6', 'c-6604', '51SSkaX-2HL._AC_SL1000_.jpg', '2020-07-04 15:32:36'),
(47, 'Moyu MoFang JiaoShi 7x7', 20, 'Cubo 7x7 de la sub marca MoFang JiaoShi de la marca Moyu con stickers', 13, '7x7', '7x7', 'c-7702', '61y794x9PtL._AC_SL1001_.jpg', '2020-07-04 15:48:23'),
(48, 'Qiyi X-Man Spark 7x7', 60, 'Cubo 7x7 de la submarca X-man Designs de la marca Qiyi gama alta, magnetico stickerless', 11, '7x7', '7x7', 'c-7703', 'spark-7x7-111.jpg', '2020-07-04 16:00:34'),
(49, 'Megaminx Fibra de Carbono', 12, 'Megaminx con stickers de fibra de carbono16', 16, 'megaminx', 'megaminx', 'c-do02', '814MdqUbTvL._AC_SL1200_.jpg', '2020-07-04 16:28:34'),
(50, 'Gan Megaminx M', 58, 'Megaminx de la marca Gan gama alta magnetico', 21, 'megaminx', 'megaminx', 'c-do03', '61z+p10pL+L._AC_SL1000_.jpg', '2020-07-04 16:30:37'),
(51, 'Pyraminx Fibra de Carbono', 8, 'Pyraminx con stickers de fibra de carbono', 7, 'pyraminx', 'pyraminx', 'c-py02', '71cGjL4gjFL._AC_SL1440_.jpg', '2020-07-04 16:37:58'),
(52, 'Pyraminx MoFang JiaoShi', 7, 'Pyraminx de la submarca MoFang JiaoShi de la marca Moyu', 14, 'pyraminx', 'pyraminx', 'c-py03', '51pQIrkncrL._AC_SL1000_.jpg', '2020-07-04 16:41:07'),
(53, 'Qiyi X-Man Pyraminx Bell M', 15, 'Pyraminx de la submarca X-Man del la marca Qiyi modelo Bell magnetico con stickers', 13, 'pyraminx', 'pyraminx', 'c-py04', 'qiyi-x-man-bell-magnetic-pyraminx-black-9.jpg', '2020-07-04 16:48:10'),
(54, 'Square-1 con Fibra de Carbono', 7, 'Square-1 con stickers de fibra de carbono', 10, 'square1', 'square1', 'c-sq02', '6199LkkImtL._AC_SL1050_.jpg', '2020-07-04 16:56:29'),
(55, 'Rubik\'s Square-1', 5, 'Square-1 marca Rubik\'s', 15, 'square1', 'square1', 'c-sq03', '61MLwP8fWrL._AC_SL1020_.jpg', '2020-07-04 16:58:29'),
(56, 'Square-1 Yuxin Little Magic M', 10, 'Square-1 de la marca Yuxin modelo Little Magic magnetico stickerless', 18, 'square1', 'square1', 'c-sq04', '31RLfyh4y5L._AC_.jpg', '2020-07-04 17:00:51'),
(57, 'YJ MGC Megaminx', 23, 'Megaminx de la marca YJ modelo MGC stickerless', 19, 'megaminx', 'megaminx', 'c-do04', '51dfBcBoZXL._AC_SL1000_.jpg', '2020-07-04 17:11:59'),
(58, 'Megaminx Yuixn Little Magic V2', 8, 'Megaminx de la marca Yuxin modelo Little Magic stickerless', 15, 'megaminx', 'megaminx', 'c-do04', '51rB7K0NgtL._AC_SL1000_.jpg', '2020-07-04 17:14:42'),
(59, 'Qiyi X-Man Galaxy Megaminx V2 M', 25, 'Megaminx de la submarca X-Man designs de la marca Qiyi modelo Galaxy V2 magnetico stickerless', 26, 'megaminx', 'megaminx', 'c-do06', '41hL4KWNWZL._AC_.jpg', '2020-07-04 17:17:45'),
(60, 'Moyu MFJS MeiLong Kilominx', 9, 'Kilominx de la marca Moyu, modelo MeiLong stickerless megaminx 2x2', 12, 'megaminx', 'megaminx', 'c-do07', '51Dj3knUY2L._AC_SL1000_.jpg', '2020-07-04 17:21:57'),
(61, 'Kilominx Fibra de Carbono', 12, 'Kilominx con sticker de fibra de carbono, megaminx 2x2', 26, 'megaminx', 'megaminx', 'c-do08', '61jQSCj4lwL._AC_SL1000_.jpg', '2020-07-04 17:23:40'),
(62, 'Rubik\'s 3x3', 13, 'Cubo 3x3 marca Rubik\'s', 30, '3x3', '3x3', 'c-3307', '71fGsmLt5NL._AC_SL1500_.jpg', '2020-07-04 17:31:12'),
(63, 'Moyu MoFang JiaoShi MF3RS 3x3', 5, 'Cubo 3x3 marca Moyu modelo MF3RS stickerless', 17, '3x3', '3x3', 'c-3308', '61bCkYJbPhL._AC_SL1000_.jpg', '2020-07-04 17:36:41'),
(64, 'Gan 356 X 3x3', 50, 'Cubo 3x3 de la marca Gan gama alta magnetico stickerless', 20, '3x3', '3x3', 'c-3309', '61JgYAyAKYL._AC_SL1000_.jpg', '2020-07-04 17:38:15'),
(65, 'Gan 356 RS 3x3', 17, 'Cubo 3x3 de la marca Gan modelo de la linea barata ', 28, '3x3', '3x3', 'c-3310', '51SjllxaDyL._AC_SL1000_.jpg', '2020-07-04 17:40:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_level`
--

CREATE TABLE `product_level` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qiyi` varchar(10) NOT NULL DEFAULT 'no',
  `moyu` varchar(10) NOT NULL DEFAULT 'no',
  `gan` varchar(10) NOT NULL DEFAULT 'no',
  `yj` varchar(10) NOT NULL DEFAULT 'no',
  `rubiks` varchar(10) NOT NULL DEFAULT 'no',
  `yuxin` varchar(10) NOT NULL DEFAULT 'no',
  `dayan` varchar(10) NOT NULL DEFAULT 'no',
  `shengshou` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `qiyi`, `moyu`, `gan`, `yj`, `rubiks`, `yuxin`, `dayan`, `shengshou`) VALUES
(1, 1, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(4, 4, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(5, 5, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(11, 11, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(29, 31, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(30, 32, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(31, 33, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(32, 34, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 35, 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no'),
(34, 36, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(35, 37, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(36, 38, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 39, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 40, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 41, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes'),
(40, 42, 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no'),
(41, 43, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 44, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 45, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no'),
(44, 46, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(45, 47, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(46, 48, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(47, 49, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(48, 50, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(49, 51, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(50, 52, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(51, 53, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(52, 54, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(53, 55, 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no'),
(54, 56, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no'),
(55, 57, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(56, 58, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no'),
(57, 59, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(58, 60, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(59, 61, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(60, 62, 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no'),
(61, 63, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no'),
(62, 64, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(63, 65, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(9, 16, 1, '2020-07-04 04:27:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(16, 'Adan Torrealba', 'adan@hotmail.com', '_eduart', '$5$rounds=535000$BrqGxnfAHzEmpG4M$SzoD3BNfSVYYHrgSMSKg0/kYevAoH2ByjF0qlIeegx/', '04244823887', '2020-06-22 21:29:14', '1', 'yes'),
(17, 'Mayerlin Ramos', 'chiquimayerlin8@gmail.com', 'May18', '$5$rounds=535000$4zt.Qzpn1ALqzN/G$U4q65AU3QEkanycRm57w9QKXjuOMe0XQAPSEQgViVr1', '12345678909', '2020-06-24 13:43:29', '1', 'yes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_level`
--
ALTER TABLE `product_level`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
