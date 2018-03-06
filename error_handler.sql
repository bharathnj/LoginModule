-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 09:04 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `error_handler`
--

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
  `error_id` int(200) NOT NULL,
  `project` varchar(200) NOT NULL,
  `application_name` varchar(200) NOT NULL,
  `flow_name` varchar(200) NOT NULL,
  `host` varchar(500) NOT NULL,
  `error` varchar(1000) NOT NULL,
  `status` int(2) NOT NULL,
  `resolved_by` varchar(100) NOT NULL,
  `resolved_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `errors`
--

INSERT INTO `errors` (`error_id`, `project`, `application_name`, `flow_name`, `host`, `error`, `status`, `resolved_by`, `resolved_time`) VALUES
(1, 'R12 iBase_SERIAL NUMBER DATA', 'R12 111- aseSERIAL NUMBER DATA', 'r12ibaseserialnumberdataxml', 'iklapppms04.mot.com', 'com.mulesoft.module.batch.exception.BatchErception: Cant create new contexts after factory is closed (java.lang-BlegalStateException) \r\n', 0, 'bharath', '2018-02-23 18:57:05'),
(2, 'R12 iBase_SERIAL NUMBER DATA', 'R12 114- aseSERIAL NUMBER DATA', 'r12ibaseserialnumberdataxml', 'iklapppms04.mot.com', 'com.mulesoft.module.batch.exception.BatchErception: Cant create new contexts after factory is closed (java.lang-BlegalStateException) \r\n', 1, 'prasanjit', '2018-02-23 20:19:56'),
(3, 'R12 iBase_SERIAL NUMBER DATA', 'R12 113- aseSERIAL NUMBER DATA', 'r12ibaseserialnumberdataxml', 'iklapppms04.mot.com', 'com.mulesoft.module.batch.exception.BatchErception: Cant create new contexts after factory is closed (java.lang-BlegalStateException) \r\n', 0, 'bharath', '2018-02-23 18:57:05'),
(4, 'R12 iBase_SERIAL NUMBER DATA', 'R12 115- aseSERIAL NUMBER DATA', 'r12ibaseserialnumberdataxml', 'iklapppms04.mot.com', 'com.mulesoft.module.batch.exception.BatchErception: Cant create new contexts after factory is closed (java.lang-BlegalStateException) \r\n', 1, 'bharath', '2018-02-23 19:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `slno` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`slno`, `username`, `password`, `type`) VALUES
(1, 'bharath', '111', 'user'),
(1, 'prasanjit', '111', 'user'),
(1, 'shiva', '111', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`error_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
