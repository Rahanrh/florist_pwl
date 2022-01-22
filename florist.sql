-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 02:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db2_florist`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_user` varchar(20) NOT NULL,
  `id_sc` varchar(20) NOT NULL,
  `id_flash` varchar(20) DEFAULT NULL,
  `id_bunga` varchar(20) NOT NULL,
  `nama_bunga` varchar(255) NOT NULL,
  `gb_bunga` varchar(255) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_cart` int(11) NOT NULL COMMENT 'Total Harga cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_order`
--

CREATE TABLE `custom_order` (
  `id_user` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `order_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `id_flash_sale` varchar(20) NOT NULL,
  `flash_start` datetime NOT NULL,
  `flash_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`id_flash_sale`, `flash_start`, `flash_end`) VALUES
('fs00000009', '2022-01-09 21:06:00', '2022-01-09 21:06:00'),
('fs00000040', '2022-01-09 21:08:00', '2022-01-11 21:08:00'),
('fs00000101', '2022-01-09 21:11:00', '2022-01-12 21:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('K-001', 'Buket'),
('K-002', 'Vas'),
('K-003', 'Blossom Box'),
('K-004', 'Acrylic Blossom Box');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(20) NOT NULL,
  `id_sc` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `total_harga_pembayaran` int(11) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prodak_bunga`
--

CREATE TABLE `prodak_bunga` (
  `id_bunga` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `nama_bunga` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gb_bunga` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodak_bunga`
--

INSERT INTO `prodak_bunga` (`id_bunga`, `id_kategori`, `nama_bunga`, `harga`, `stok`, `gb_bunga`, `created_at`) VALUES
('B00000001', 'K-001', 'Romantic Autumn', 2200000, 50, 'RomanticAutumn.jpg', '2021-12-12 17:11:01'),
('B00000002', 'K-001', 'Wonderfull Garden Spirit', 2700000, 50, 'WonderfullGardenSpirit.jpg', '2021-12-12 15:11:28'),
('B00000003', 'K-001', 'Saphire Skies Bouquet', 2000000, 50, 'SaphireSkiesBouquet.jpg', '2021-12-12 18:11:52'),
('B00000004', 'K-001', 'Kristina Bouquet', 2500000, 50, 'KristinaBouquet.jpg', '2021-12-12 18:12:07'),
('B00000005', 'K-002', 'Green Bloom Vase', 1200000, 50, 'GreenBloomVase.jpg', '2021-12-12 18:12:12'),
('B00000006', 'K-002', 'Summer Sunshine Luxury Vase', 2800000, 50, 'SummerSunshineLuxuryVase.jpg', '2021-12-12 18:12:13'),
('B00000007', 'K-002', 'Josephine Vase', 2500000, 50, 'JosephineVase.jpg', '2021-12-12 18:12:12'),
('B00000008', 'K-002', 'Luxury Red Scarlet Vase', 2800000, 50, 'LuxuryRedScarletVase.jpg', '2021-12-12 18:11:27'),
('B00000009', 'K-003', 'Sweet Estelle Blooming Basket', 2950000, 50, 'SweetEstelleBloomingBasket.jpg', '2021-12-12 18:13:31'),
('B00000010', 'K-003', 'Basket Full Of Sunshine', 1800000, 50, 'SummerShunsineLuxuryVase.jpg', '2021-12-12 18:11:37'),
('B00000011', 'K-003', 'Juliet Flower Basket', 2200000, 50, 'JulietFlowerBasket.jpg', '2021-12-12 18:10:43'),
('B00000012', 'K-003', 'Blooming Fuchsia Blossom Box', 1800000, 50, 'BloomingFuchsiaBlossomBox.jpg', '2021-12-12 18:11:49'),
('B00000013', 'K-004', 'Tulic Lace Festival Acrylic Blossom Box', 1650000, 50, 'TulicLaceFestivalAcrylicBlossomBox.jpg', '2021-12-12 13:12:55'),
('B00000014', 'K-004', 'Acrylic Blossom Box In Soft Pink', 1200000, 50, 'Acrylic BlossomBoxInSoftPink.jpg', '2021-12-12 12:13:02'),
('B00000015', 'K-004', 'Acrylic Blossom Box In Pink', 1200000, 50, 'AcrylicBlossomBoxInPink.jpg', '2021-12-19 18:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `produk_flashsale`
--

CREATE TABLE `produk_flashsale` (
  `id_bunga` varchar(20) NOT NULL,
  `id_flash_sale` varchar(20) NOT NULL,
  `diskon` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_flashsale`
--

INSERT INTO `produk_flashsale` (`id_bunga`, `id_flash_sale`, `diskon`) VALUES
('B00000001', 'fs00000009', 60),
('B00000001', 'fs00000101', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id_sc` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `total_bunga_terjual`
--

CREATE TABLE `total_bunga_terjual` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_bunga` varchar(20) NOT NULL,
  `nama_bunga` varchar(20) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_bunga_terjual` int(11) NOT NULL,
  `total_harga_bunga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_bunga_terjual`
--

INSERT INTO `total_bunga_terjual` (`id_penjualan`, `id_bunga`, `nama_bunga`, `tgl_penjualan`, `total_bunga_terjual`, `total_harga_bunga`) VALUES
('pe000001', 'B00000009', 'Sweet Estelle Bloomi', '2021-12-13', 20, 59000000),
('pe000001', 'B00000009', 'Sweet Estelle Bloomi', '2021-12-13', 20, 59000000),
('pe000002', 'B00000003', 'Saphire Skies Bouque', '2021-12-20', 20, 2000000),
('pe000003', 'B00000004', 'Kristina Bouquet', '2021-12-20', 10, 1000000),
('pe000002', 'B00000003', 'Saphire Skies Bouque', '2021-12-20', 20, 2000000),
('pe000003', 'B00000004', 'Kristina Bouquet', '2021-12-20', 10, 1000000),
('pe000003', 'B00000005', 'Green Bloom Vase', '2021-12-19', 5, 15000000),
('pe000005', 'B00000008', 'Luxury Red Scarlet V', '2021-12-12', 100, 10000000),
('pe000006', 'B00000009', 'Sweet Estelle Bloomi', '2021-12-20', 1, 150000),
('pe000006', 'B00000009', 'Sweet Estelle Bloomi', '2021-12-20', 1, 150000),
('pe000007', 'B00000011', 'Juliet Flower Basket', '2021-12-12', 30, 4600000),
('pe000007', 'B00000011', 'Juliet Flower Basket', '2021-12-12', 30, 4600000);

-- --------------------------------------------------------

--
-- Table structure for table `total_penjualan`
--

CREATE TABLE `total_penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_harga_penjualan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `alamat`, `status`) VALUES
('UF00000001', 'admin', 'admin', 'admin', 'admin', 'admin'),
('UF000000010', 'adminku', '81dc9bdb52d04dc20036dbd8313ed055', 'raha nugraha', 'Klaten', 'admin'),
('UF00000002', 'shin', 'shin', 'Shinta Namas', 'Yogyakarta', 'user'),
('UF00000003', 'ris', 'ris', 'Riski Nimo', 'Sumatra', 'user'),
('UF00000004', 'har', 'har', 'Dihar Wan', 'Jakarta', 'user'),
('UF00000005', 'raha', '202cb962ac59075b964b07152d234b70', 'raha', 'klaten', 'admin'),
('UF00000006', 'userraha', '202cb962ac59075b964b07152d234b70', 'raha nugraha', 'jogja', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `id_sp` (`id_sc`,`id_flash`,`id_bunga`),
  ADD KEY `id_bunga` (`id_bunga`),
  ADD KEY `id_flash` (`id_flash`),
  ADD KEY `id_sc` (`id_sc`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `custom_order`
--
ALTER TABLE `custom_order`
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`id_flash_sale`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_sp` (`id_sc`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `prodak_bunga`
--
ALTER TABLE `prodak_bunga`
  ADD PRIMARY KEY (`id_bunga`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `produk_flashsale`
--
ALTER TABLE `produk_flashsale`
  ADD PRIMARY KEY (`id_bunga`,`id_flash_sale`) USING BTREE;

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id_sc`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `total_bunga_terjual`
--
ALTER TABLE `total_bunga_terjual`
  ADD KEY `id_penjualan` (`id_penjualan`,`id_bunga`);

--
-- Indexes for table `total_penjualan`
--
ALTER TABLE `total_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
