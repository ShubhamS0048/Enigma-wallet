-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 06:15 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorization`
--

CREATE TABLE `authorization` (
  `authorization_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `login_time` datetime NOT NULL,
  `authorization_code` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE `transcation` (
  `transcation_id` bigint(20) NOT NULL,
  `from_user_id` int(11) DEFAULT '0',
  `to_user_id` int(11) DEFAULT '0',
  `transcation_type` varchar(30) DEFAULT '',
  `time` datetime DEFAULT '0000-00-00 00:00:00',
  `from_address` varchar(50) DEFAULT NULL,
  `to_address` varchar(50) DEFAULT '0',
  `opening_amount` float DEFAULT '0',
  `trans_amount` float DEFAULT '0',
  `closing_amount` float DEFAULT '0',
  `fee` double DEFAULT '0',
  `confirmations` varchar(200) DEFAULT '',
  `txid` varchar(500) DEFAULT '',
  `info` varchar(500) DEFAULT '',
  `otp_value` varchar(10) DEFAULT '',
  `is_processed` tinyint(4) DEFAULT '0',
  `creation_ip` varchar(20) DEFAULT '',
  `creation_date` datetime DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(4) DEFAULT '0',
  `last_modification_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` varchar(300) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `username` varchar(65) NOT NULL,
  `encrypt_username` varchar(500) DEFAULT '',
  `password` varchar(300) NOT NULL,
  `transcation_password` varchar(500) DEFAULT '',
  `email` varchar(200) DEFAULT '',
  `wallet_address` varchar(255) DEFAULT '',
  `admin` varchar(1) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  `supportpin` varchar(6) DEFAULT NULL,
  `secret` varchar(16) DEFAULT NULL,
  `authused` varchar(1) DEFAULT NULL,
  `otp_value` varchar(500) DEFAULT '',
  `is_email_verify` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `ip`, `username`, `encrypt_username`, `password`, `transcation_password`, `email`, `wallet_address`, `admin`, `locked`, `supportpin`, `secret`, `authused`, `otp_value`, `is_email_verify`) VALUES
(16, '2018-04-15 12:23:38', '::1', 'rishabh@gmail.com', '6752eafd5462dc86492f91094bf6bb75d4c0b4726228b9eca523fdd180c001a3', '5d76a5797a98d6d028f1895b2f4e09cde043199512b0af493f4414b15c22ad74', 'ed175b293eb7681b969ea9ccd9ad17821f6f7c75edcea1ed066c834b4c74b830', 'rishabh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`authorization_id`);

--
-- Indexes for table `transcation`
--
ALTER TABLE `transcation`
  ADD PRIMARY KEY (`transcation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorization`
--
ALTER TABLE `authorization`
  MODIFY `authorization_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
  MODIFY `transcation_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
