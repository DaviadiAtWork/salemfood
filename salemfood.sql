-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 01:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salemfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_salemfood`
--

CREATE TABLE `data_salemfood` (
  `id_makanan` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `harga` int(7) NOT NULL,
  `rating` float(4,2) NOT NULL,
  `jml_beli` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_salemfood`
--

INSERT INTO `data_salemfood` (`id_makanan`, `nama`, `deskripsi`, `gambar`, `harga`, `rating`, `jml_beli`) VALUES
(0, 'Kebab Turki', 'Hidangan Laut, Minuman, Ayam, Aneka Nasi', 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&w=800', 20000, 4.80, 150),
(1, 'Lasagna', 'Olahan pasta yang dipanggang dengan banyak isian, seperti sayur, dan daging (ayam, sapi). ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8aelT2N7dhCBCKZwfhTC980EmIIqbUk24ug&usqp=CAU', 40000, 4.70, 119),
(2, 'Waffle', 'Snacks yang disajikan dengan berbagai variasi seperti bersama es krim, maple syrup, pasta coklat, ataupun buah-buahan. ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ATyZxiHkaOwfydMkZGw4p6yguciQLIo4gQ&usqp=CAU', 30000, 4.90, 190),
(3, 'Hotdog', 'Hidangan roti dan sosis yang ditambah saus mayonaise dan saus sambal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTst44jO2nGZCLKVaKVX2qQXx0YxrU75s6CFg&usqp=CAU', 15000, 4.90, 200),
(4, 'Gelato Italia', 'Ice cream dengan ukuran cup medium (maksimal 3 rasa) ditaburi topping, seperti buah-buahan, kacang, dan juga makanan manis lainnya.', 'https://1.bp.blogspot.com/-My_VllD36QM/XdLZeicrDTI/AAAAAAAAmQE/9sqskRJ_lmERubvhHBCvgs_l5fNmj0fRgCLcBGAsYHQ/s1600/gelato%2Bcups%2Bin%2Bnigeria%2Bdessert%2Bstore-min.jpg', 45000, 4.90, 195),
(5, 'Mapo Tofu', 'Hidangan berupa tahu dengan bumbu saus pedas. ', 'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/2/9/064d1d88-93df-4fbe-be61-40b926c39930.jpg.webp?ect=4g', 55000, 4.60, 111),
(6, 'Sandwich', 'Hidangan yang terdiri dari sayuran, keju atau daging yang diiris, kemudian diletakkan di atas atau di antara irisan roti.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfKBINt8bng7cyuCFeG99F7QfpyiWPA2Olvw&usqp=CAU', 20000, 4.80, 155),
(7, 'Ramen', 'Mie ala Jepang yang berkuah dengan beberapa potongan daging dan daung bawang', 'https://www.masakapahariini.com/wp-content/uploads/2021/03/ramen-jepang-ayam-500x300.jpg', 50000, 4.90, 120),
(8, 'Takoyaki', 'Hidangan berbentuk bulat dengan isian bervariasi seperti makanan laut yang segar, sosis, keju dan lain-lain. ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMBVZMBn86HaJoOYA9GcIp0CKWMZZzuSGfeg&usqp=CAU', 20000, 4.90, 200),
(9, 'Dimsum', 'Hidangan berbentuk bulat dengan isian yang bervariasi ada daging (ayam, sapi), aneka seafood (udang, cumi-cumi), dan diberi taburan wortel, keju, jamur, dan lain-lain sebagai toping. ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsYAI7mN_YYJiqkWxrMEtCDkjkt_DjS-sOCBZPTpnWJe2pP_7r&usqp=CAc', 40000, 4.80, 115),
(10, 'Sate', 'Hidangan dari irisan daging yang ditusuk kemudian dibakar atau dipanggang. sate ayam, sate kambing, sate maranggi, sate padang, dan lainnya', 'https://kbu-cdn.com/dk/wp-content/uploads/sate-ayam.jpg', 20000, 4.90, 125),
(11, 'Tteokbokki', 'Hidangan kue beras disajikan bersama saus gochujang. Topping bervariasi bisa tambah telur, daun bawang, dan biji wijen. ', 'https://i0.wp.com/rasabunda.com/wp-content/uploads/2021/03/Tteokbokki.jpg?fit=480%2C600&ssl=1', 25000, 4.80, 140);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_salemfood`
--
ALTER TABLE `data_salemfood`
  ADD PRIMARY KEY (`id_makanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_salemfood`
--
ALTER TABLE `data_salemfood`
  MODIFY `id_makanan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
