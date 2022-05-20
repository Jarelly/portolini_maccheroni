-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', '', 0, '', ''),
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(5, 1, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(6, 8, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(7, 1, 'abcd', '', 0, '', ''),
(8, 8, 'abcd', '', 0, '', ''),
(9, 1, 'abcd', '', 0, '', ''),
(10, 8, 'abcd', '', 0, '', ''),
(11, 1, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(12, 8, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(13, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(14, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(15, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(16, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(17, 1, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(18, 8, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(19, 1, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(20, 8, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(21, 1, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(22, 8, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'Comida', 'Pasta al pesto'),
(2, 'Comida', 'Pane di farina'),
(3, 'Comida', 'Ensalada de Higo'),
(4, 'Comida', ' Lasaña Boloñesa' ),
(5, 'Comida', 'Pizza Italiana'),
(6, 'Comida', 'Pollo al pesto'),
(7, 'Comida', 'Filetto di Manzo al Funghi'),
(8, 'Comida', 'Sopa li fe deitte'),
(9, 'Comida', 'Risotto '),
(10, 'Comida', 'Arancini '),
(11, 'Comida', 'Berenjenas con parmesano'),
(12, 'Comida', 'Pollo con parmesano'),
(13, 'Comida', 'Tortello  '),
(14, 'rajsthani', 'Bati'),
(20, 'rajsthani', 'Dal'),
(21, 'rajsthani', 'Salad'),
(22, 'rajsthani', 'Butter Milk'),
(23, 'rajsthani', 'Ghee'),
(24, 'rajsthani', 'Papad'),
(25, 'rise', 'Dal Rice'),
(26, 'rise', 'Kadhi-Khichadi'),
(27, 'rise', 'Vagharela Bhat'),
(28, 'rise', 'Rajwadi Khichadi'),
(29, 'tava', 'Rotli'),
(30, 'tava', 'Ghee Rotli'),
(31, 'tava', 'Rotla'),
(48, 'tava', 'Ghee Rotla'),
(49, 'tava', 'Bhakhari'),
(50, 'tava', 'Ghee Bhakhari'),
(51, 'tava', 'Tava Paratha'),
(52, 'tava', 'Rotlanu Churmu'),
(53, 'tava', 'Bhakhari nu Churmu'),
(54, 'tava', 'Dryfruit Churmu'),
(55, 'tava', 'Vagharelo Rotlo Dry'),
(56, 'tava', 'Vagharelo Rotlo Dahi');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/1.jpg'),
(4, 'img/2.jpg'),
(5, 'img/3.jpg'),
(6, 'img/4.jpg'),
(7, 'img/5.jpg'),
(8, 'img/6.jpg'),
(9, 'img/7.jpg'),
(10, 'img/8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'Comida', 'Pasta al pesto','Pasta al pesto','Parmesano & salsa pesto',113,'mimg/comida9.jpg'),
(2, 'Comida', 'Pane di farina','Pane di farina','',90,'mimg/comida10.jpg'),
(3, 'Comida', 'Ensalada de Higo','Ensalada de Higo','',68,'mimg/comida11.jpg'),
(4, 'Comida', ' Lasaña Boloñesa', ' Lasaña Boloñesa', 'Queso,Carne & Especias', 240, 'mimg/comida1.jpg'),
(5, 'Comida', 'Pizza Italiana', 'Pizza Italiana', 'Especias, Queso & Aceitunas', 210, 'mimg/comida2.jpg'),
(6, 'Comida', 'Pollo al pesto', 'Pollo al pesto', 'Pechuga con salsa pesto', 180, 'mimg/comida3.jpg'),
(7, 'Comida', 'Filetto di Manzo al Funghi', 'Filetto di Manzo al Funghi', 'A las brasas y salsa champiñón', 130, 'mimg/comida4.jpg'),
(8, 'Comida', 'Sopa li fe deitte', 'Sopa li fe deitte', 'Camarones, pasta & especias', 123, 'mimg/comida5.jpeg'),
(9, 'Comida', 'Risotto ', 'Risotto ', 'En tinta de sepia con frutos ', 260, 'mimg/comida6.jpg'),
(10, 'Comida', 'Arancini ', 'Arancini ', 'Arroz, Queso & papa', 190, 'mimg/comida7.jpg'),
(11, 'Comida', 'Berenjenas con parmesano', 'Berenjenas con parmesano', 'Rellenas de queso & especias', 230, 'mimg/comida8.jpg'),
(12, 'Comida', 'Pollo con parmesano', 'Pollo con parmesano', ' Pechuga fileteada con salsa', 113, 'mimg/comida12.jpg'),
(13, 'Comida', 'Tortello', 'Tortello', ' Especias, queso', 90, 'mimg/comida13.jpg'),
(14, 'Postres', 'Cannoli', 'Cannoli', 'Ricotta pastelera y trozos-fruta', 45, 'mimg/postre1.jpg'),
(15, 'Postres', 'Panna Cotta', 'Panna Cotta', 'Nata cocida de frutos', 35, 'mimg/postre2.jpg'),
(16, 'Postres', 'Tiramisú', 'Tiramisú', 'Cremoso y sabor canela', 35, 'mimg/postre3.jpg'),
(17, 'Postres', 'Gelato', 'Gelato', 'Cremoso con frutas', 35, 'mimg/postre4.jpg'),
(18, 'Postres', 'Sfogliatelle', 'Sfogliatelle', 'Napolitano de hojaldre', 45, 'mimg/postre5.png'),
(19, 'Postres', 'Zuccotto', 'Zuccotto', 'Bizcocho con ron', 110, 'mimg/postre6.jpg'),
(20, 'Postres', 'Profiteroles', 'Profiteroles', 'Esponjoso y cremoso', 45, 'mimg/postre7.jpg'),
(21, 'Bebidas', 'Limoncello', 'Limoncello', 'Fermentación de corteza de limones', 45, 'mimg/bebida1.jpg'),
(22, 'Bebidas', 'Amaretto', 'Amaretto', 'Bebida tradicional', 65, 'mimg/bebida2.jpg'),
(23, 'Bebidas', 'Campari', 'Campari', 'Bebida rojo carmín', 80, 'mimg/bebida3.jpg'),
(24, 'Bebidas', 'Vermouth', 'Vermouth', 'Bebida Clásica-aceituna', 90, 'mimg/bebida4.jpeg'),
(25, 'Bebidas', 'Sambuca', 'Sambuca', 'Bebida con soplo de fuego', 76, 'mimg/bebida5.jpg'),
(26, 'Bebidas', 'Galliano', 'Galliano', 'Bebida citrica', 86, 'mimg/bebida6.jpg'),
(27, 'Bebidas', 'Nocino', 'Nocino', 'Benida clásica-higos', 15, 'mimg/bebida7.jpg'),
(28, 'Vinos', 'Chianti Classico', 'Chianti Classico', 'Cosecha 2015', 1500, 'mimg/vino1.jpg'),
(29, 'Vinos', 'Sant Orsola', 'Sant Orsola', 'Vino espumeante', 1200, 'mimg/vino2.jpg'),
(30, 'Vinos', 'Cantina di Montalcino', 'Cantina di Montalcino', 'Vino cosecha 2000', 2100, 'mimg/vino3.jpg'),
(31, 'Vinos', 'Castorani Montepulciano', 'Castorani Montepulciano', 'Clásico vino delicioso', 1800, 'mimg/vino4.jpg'),
(32, 'Vinos', 'Batasiolo Barolo', 'Batasiolo Barolo', 'Vino de uvas conservadas', 2500, 'mimg/vino5.jpg'),
(33, 'Vinos', 'Chardonnay di Montemaggio', 'Chardonnay di Montemaggio', 'Vino de uvas claras', 2500, 'mimg/vino6.jpg'),
(34, 'Vinos', 'Kurtatsch Pinot ', 'Kurtatsch Pinot ', 'Vino sabor fuerte', 1456, 'mimg/vino7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Ana Guzmán', 'Exelente', 'El mejor restaurante'),
(6, 'Lila Torres', 'Exelente', 'Es buen sitio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
