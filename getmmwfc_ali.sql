-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2021 at 06:40 AM
-- Server version: 10.3.30-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getmmwfc_ali`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(6) NOT NULL,
  `ewallet` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `bwallet` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `pm` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `ewallet`, `bwallet`, `pm`, `email`, `password`) VALUES
(1, '999999999999mm', '35DqgDrWWjjWDGbBZ9kcfs1oFn8ZSo45Bn', '7567t78g87t6778778', 'admin@pstacademytech.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `adminmessage`
--

CREATE TABLE `adminmessage` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `status` tinyint(4) NOT NULL,
  `msgid` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btc`
--

CREATE TABLE `btc` (
  `id` int(11) NOT NULL,
  `btc` double NOT NULL,
  `eth` double NOT NULL,
  `pm` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `usd` double NOT NULL,
  `image` tinyblob NOT NULL,
  `btctnx` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tnxid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `refcode` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `referred` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btc`
--

INSERT INTO `btc` (`id`, `btc`, `eth`, `pm`, `usd`, `image`, `btctnx`, `email`, `status`, `tnxid`, `refcode`, `referred`, `date`) VALUES
(57, 0, 0, '', 1000, '', 'Ytuucddkdd', 'gseun129@gmail.com', 'approved', 'tnx60ace2987549b', 'ShlMUVlNMh', '', '2021-05-25 11:42:16'),
(59, 0, 0, '', 300, '', 'Ytuucddkdd', 'gseun129@gmail.com', 'approved', 'tnx60ace4c727e4d', 'ShlMUVlNMh', '', '2021-05-25 11:51:35'),
(60, 0, 0, '', 900, '', 'ufjkhnlk', 'prestigeguy10@gmail.com', 'approved', 'tnx61249c3ce9dda', '', '', '2021-08-24 07:14:04'),
(61, 0, 0, '', 900, '', 'ufjkhnlk', 'prestigeguy10@gmail.com', 'pending', 'tnx61249d5d17993', 'D5HuldJS7N', 'dC8hBBbShA', '2021-08-24 07:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `messageadmin`
--

CREATE TABLE `messageadmin` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `status` tinyint(4) NOT NULL,
  `msgid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package1`
--

CREATE TABLE `package1` (
  `id` int(6) NOT NULL,
  `email` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `pname` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `increase` double NOT NULL,
  `bonus` double NOT NULL,
  `duration` int(11) NOT NULL,
  `froms` double NOT NULL,
  `tos` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package1`
--

INSERT INTO `package1` (`id`, `email`, `pname`, `increase`, `bonus`, `duration`, `froms`, `tos`) VALUES
(5, 'admin@webbiitmedia.com', 'Mini Plan', 1, 5, 10, 100, 999),
(6, 'prestigeguy10@gmail.com', 'Maximum', 2, 40, 20, 200, 1000),
(8, 'admin@alicryptofx.com', 'STARTER', 50, 20, 1, 100, 300);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `wl` int(200) NOT NULL,
  `rb` int(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `bname` varchar(200) NOT NULL,
  `baddress` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `cy` varchar(200) NOT NULL,
  `hea` varchar(200) NOT NULL,
  `act` varchar(200) NOT NULL,
  `inert` varchar(200) NOT NULL,
  `jso` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sname`, `wl`, `rb`, `currency`, `branch`, `bname`, `baddress`, `email`, `phone`, `title`, `logo`, `cy`, `hea`, `act`, `inert`, `jso`) VALUES
(2, 'pstacademytech.com', 200, 20, '', '', 'Pstacademytech', '', 'admin@pstacademytech.com', '', 'Welcome to AliCryptoFx', '', '2009', '../../vendor/twilio/sdk/Services/header.php', 'https://scriptsdemo.website/superadmin/btc_activation.php', '../../vendor/twilio/sdk/Services/initializer.php', '');

-- --------------------------------------------------------

--
-- Table structure for table `tfa`
--

CREATE TABLE `tfa` (
  `id` int(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `qrcode` blob NOT NULL,
  `result` int(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `refcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `package` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `verify` tinyint(4) NOT NULL,
  `session` tinyint(4) NOT NULL,
  `activate` tinyint(4) NOT NULL,
  `referred` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profit` double NOT NULL,
  `refbonus` double NOT NULL,
  `walletbalance` double NOT NULL,
  `pm` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `eth` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `btc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `2fa` tinyint(4) NOT NULL,
  `pname` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `increase` double NOT NULL,
  `bonus` double NOT NULL,
  `duration` int(111) NOT NULL,
  `pdate` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `froms` double NOT NULL,
  `usd` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `token`, `refcode`, `package`, `image`, `verify`, `session`, `activate`, `referred`, `profit`, `refbonus`, `walletbalance`, `pm`, `eth`, `btc`, `2fa`, `pname`, `increase`, `bonus`, `duration`, `pdate`, `froms`, `usd`, `date`, `phone`, `address`, `country`) VALUES
(122, 'lotty', 'ssssaawalllo', 'admin', 'prestigeguy10@gmail.com', 'llllll', 'MP8scSNw82', 'D5HuldJS7N', '', '', 0, 1, 0, 'dC8hBBbShA', 1, 0, 1916, '', '', '', 0, ' Maximum', 2, 40, 20, '0', 200, 900, '2021-03-04 12:24:38', '09033834777', 'M8 ogo oluwa', 'Nigeria'),
(124, 'Val', 'harris', 'Vizzini22', 'idusiomoifo@gmail.com', '123aideguosa', 'SCc{MUBQSh', 'dC8hBBbShA', '', '', 0, 1, 0, '', 0, 45, 65, '', '', '', 0, '', 0, 0, 0, '0', 0, 0, '2021-04-27 10:20:32', '+12347556737', '', ''),
(126, 'Crypto', 'Inside', 'Cryin', 'greecestudent7@gmail', 'dani11', 'X2MfBBRrbh', 'dgR9Dshufj', '', '', 0, 0, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '', 0, 0, '2021-04-27 17:20:14', '08148501756', '', ''),
(127, 'Investment', 'Yes', 'Yes', 'hjsb77@gmail.com', 'dani11', '5]RdHt8lCw', 'TNMdBhReVw', '', '', 0, 0, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '', 0, 0, '2021-04-27 17:27:11', '08148501756', '', ''),
(128, 'osatohanmwen', 'Osaze', 'osaze147', 'osaze_steve@yahoo.com', 'Alimosan10', 'Gj)}NegBNd', 'jTeSN2B69N', '', '', 0, 1, 0, '', 0, 0, 300, '', '', '', 0, ' Maximum', 2, 40, 20, '0', 200, 0, '2021-04-27 17:38:50', '+2348160651986', '', ''),
(129, 'Good', 'Fred', 'Goodfred', 'chrisemerysteven@gmail.com', 'dani11', '3T56tSa|NJ', 'SV9RUs5lhh', '', '', 0, 1, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '0', 0, 0, '2021-04-27 17:44:34', '08148501756', '', ''),
(130, 'Isaac', 'Ubong', 'Isaac45', 'princewhyte50@gmail.com', 'ubong2012', 'h{fCl]26Ca', 'bdVSS95Bc7', '', '', 0, 1, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '0', 0, 0, '2021-04-28 07:21:54', '+2347086229306', '', ''),
(133, 'Benard', 'Solomon', 'gseun129', 'gseun129@gmail.com', '11111111', 'aeSG75{u8s', 'ShlMUVlNMh', '', '', 0, 1, 0, '', 150, 0, 830, '', '', '', 0, ' STARTER', 50, 20, 1, '0', 100, 300, '2021-05-25 11:39:13', '23456789999', '', ''),
(134, 'Jessetycle', 'Jessetycle', 'Jessetycle', 'i.oox.ver.t.ri.s.@gmail.com', 'O%3fgw8ex3D', 'M\\N5Geky9h', 'BhM9tw1Tb9', '', '', 0, 0, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '', 0, 0, '2021-05-30 17:46:35', '82119284569', '', ''),
(135, 'Olivia', 'Martins', 'Olivia2021', 'oliviarecovesky@gmail.com', '3153882962', 'tM1h4dWCBS', 'd4MBCsDZ1w', '', '', 0, 1, 0, '', 0, 0, 20, '', '', '', 0, ' STARTER', 50, 20, 1, '0', 100, 0, '2021-05-31 17:48:31', '3153882962', '', ''),
(136, 'Solomom', 'Solomon', 'ayoungchief@gmail.com', 'ayoungchief@gmail.com', '11111111', 'Dud5\\hgJ2B', 'sCTgser59M', '', '', 0, 1, 0, '', 0, 0, 20, '', '', '', 0, '', 0, 0, 0, '0', 0, 0, '2021-08-24 08:41:28', '9766766767', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wbtc`
--

CREATE TABLE `wbtc` (
  `id` int(11) NOT NULL,
  `moni` double NOT NULL,
  `mode` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tnx` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `wal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wbtc`
--

INSERT INTO `wbtc` (`id`, `moni`, `mode`, `email`, `status`, `tnx`, `wal`, `date`) VALUES
(29, 500, 'BTC', 'gseun129@gmail.com', 'pending', 'tnx60ae1b7c7eabb', 'Tuuyfgugy', '2021-05-26 09:57:16'),
(30, 200, 'BTC', 'gseun129@gmail.com', 'pending', 'tnx60ae346591224', 'Hdjejdjdndjdheh', '2021-05-26 11:43:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmessage`
--
ALTER TABLE `adminmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btc`
--
ALTER TABLE `btc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messageadmin`
--
ALTER TABLE `messageadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package1`
--
ALTER TABLE `package1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tfa`
--
ALTER TABLE `tfa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbtc`
--
ALTER TABLE `wbtc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminmessage`
--
ALTER TABLE `adminmessage`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `btc`
--
ALTER TABLE `btc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `messageadmin`
--
ALTER TABLE `messageadmin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package1`
--
ALTER TABLE `package1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tfa`
--
ALTER TABLE `tfa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `wbtc`
--
ALTER TABLE `wbtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
