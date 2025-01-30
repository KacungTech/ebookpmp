-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 01:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook1`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_barang` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga_barang`) VALUES
('EMR01', 'Baju Kapuyuak', 80000),
('EMR02', 'Sendal Kapuyuak', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `booktitle` varchar(50) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `bookcover` text DEFAULT NULL,
  `bookfile` text DEFAULT NULL,
  `description` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `booktitle`, `category`, `price`, `bookcover`, `bookfile`, `description`) VALUES
(9, 'Dilan 1990', 'Novel', 0, 'a.jpg', 'Pidi Baiq - Dilan 1990.pdf', 'Novel ini menceritakan kisah milea, siswa pindahan dari Jakarta yang bertemu dilan di SMA barunya di Bandung. Ddengan latar waktu tahun 1990, cerita ini punya modal positif untuk menonjol di agensi remaja masa kini (mesti bukan itu yang jadi poin utama pidi baiq menulis cerita ini). '),
(10, 'Sepasang Kaos Kaki', 'Novel', 50, 'Sepasang_Kaos_Kaki_Hitam.jpg', 'Sepasang_Kaos_Kaki_Hitam.pdf', 'Novel ini lucu dan menarik'),
(11, 'Dilan 1991', 'Novel', 30, 'cover dilan 2.jpg', 'Pidi Baiq - Dilan 1991.compressed.pdf', 'ini adalah novel lanjuta dari kisah dilan tahun 1990, tokoh utamanya masih sama, dilan dan milea. disini pidi baiq mengisahkan tentang milea yang berpacaran dengan dilan, masih dengan alur mundurnya, dimana milea bercerita tentang kebahagiaannya karena pernah mengenal dilan.'),
(12, 'Tertawa Mumpung Masih Gratis', 'Humor', 100, 'Tertawalah_mumpung_masih_gratis.jpg', 'humors.pdf', 'Tertawalah anda sebelum tertawa itu bayar.'),
(13, 'Kasih Dunia Parellel', 'Novel', 0, 'Kisah-Dunia-Paralel.jpg', 'Kisah-Dunia-Paralel.pdf', 'Novel menarik tentang dunia parallel'),
(14, 'Belajar Java Dasar', 'Teknologi', 0, 'Belajar-Java-Dasar.jpg', 'Belajar-Java-Dasar.pdf', 'Mari belajar pemrograman java dalam ebook ini');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`) VALUES
(10, 'Humor'),
(1, 'Novel'),
(11, 'olahraga'),
(9, 'Teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `payment_report` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`userid`, `bookid`, `paymentid`, `status`, `payment_report`) VALUES
(17, 11, 5, 'sudah_bayar', 'CBR150R-LOKAL-REPSOL-NEW.jpg'),
(2, 12, 6, 'sudah_bayar', 'Varid Signature.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT 'User',
  `email` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `status`, `email`, `password`) VALUES
(1, 'Admin', 'Admin', 'adminebook@gmail.com', 'admin'),
(2, 'emirramon', 'User', 'emirramon@gmail.com', 'emirramon24'),
(4, 'emir', 'User', 'emir@gmail.com', 'emir'),
(5, 'emsuri', 'User', 'emsuri_rustam@gmail.com', 'emsuri'),
(6, 'ridhawati', 'User', 'ridhawati_ibrahim@gmail.com', 'ridhawati'),
(7, 'adjip', 'User', 'adjiprayogi@gmail.com', 'adjip'),
(8, 'mhdsaddam', 'User', 'mhdsaddam@gmail.com', 'saddam'),
(9, 'akbarmadani', 'User', 'akbamadani@gmail.com', 'akbar'),
(10, 'qurotaaini', 'User', 'qurotaaini@gmail.com', 'aini'),
(11, 'riskaulia', 'User', 'riskaulia@gmail.com', 'riska'),
(12, 'sabrinahardianti', 'User', 'sabrina94@gmail.com', 'sabrina'),
(13, 'bungasyifa', 'User', 'bungasyifa87@gmail.com', 'bunga'),
(14, 'ariyanip', 'User', 'ariyanip@gmail.com', 'ariyani'),
(15, 'ayu', 'User', 'khairunnisaayu16@gmail.com', '1234'),
(16, 'tes', 'User', 'tes@gmail.com', 'tes'),
(17, 'ingsy', 'User', 'ingsy@gmail.com', 'ingsy');

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `libraryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`userid`, `bookid`, `libraryid`) VALUES
(4, 11, 1),
(15, 12, 2),
(16, 11, 3),
(4, 10, 4),
(17, 11, 5),
(17, 11, 6),
(17, 11, 7),
(2, 12, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD UNIQUE KEY `booktitle_unique` (`booktitle`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `categoryname_unique` (`categoryname`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username_unique` (`username`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`libraryid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `libraryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`categoryname`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `user_books`
--
ALTER TABLE `user_books`
  ADD CONSTRAINT `user_books_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`),
  ADD CONSTRAINT `user_books_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
