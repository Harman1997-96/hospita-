-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2022 at 07:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `apt1`
--

CREATE TABLE `apt1` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  `sym` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apt1`
--

INSERT INTO `apt1` (`id`, `name`, `email`, `tel`, `sym`, `date`) VALUES
(1, 'harleenk', 'harman11@gmail.com', 876543311, 'gg', '2022-07-04'),
(2, 'harleenk', 'harman11@gmail.com', 876543311, 'gg', '2022-07-04'),
(3, 'harleenk', 'harman11@gmail.com', 876543311, 'gg', '2022-07-04'),
(4, 'harleenk', 'harman11@gmail.com', 876543311, 'gg', '2022-07-04'),
(5, 'harleenk', 'harman11@gmail.com', 876543311, 'gg', '2022-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `cap`
--

CREATE TABLE `cap` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `symptoms` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cap`
--

INSERT INTO `cap` (`id`, `name`, `email`, `tel`, `symptoms`) VALUES
(1, 'nandani', 'nan123@gmail.com', 2147483647, 'ff'),
(2, 'nandani', 'nan123@gmail.com', 2147483647, 'ff');

-- --------------------------------------------------------

--
-- Table structure for table `capapt`
--

CREATE TABLE `capapt` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  `sym` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capapt`
--

INSERT INTO `capapt` (`id`, `name`, `email`, `tel`, `sym`, `date`) VALUES
(1, 'harleenk', 'harman11@gmail.com', 2147483647, 'gg', '2022-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nhs`
--

CREATE TABLE `nhs` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `symptoms` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhs`
--

INSERT INTO `nhs` (`id`, `name`, `email`, `tel`, `symptoms`) VALUES
(1, 'harleenk', 'har123@gmail.com', 2147483647, 'ggg'),
(2, 'harleenk', 'har123@gmail.com', 2147483647, 'ggg'),
(3, 'harleenk', 'har123@gmail.com', 2147483647, 'gg');

-- --------------------------------------------------------

--
-- Table structure for table `nhsapt`
--

CREATE TABLE `nhsapt` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  `sym` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhsapt`
--

INSERT INTO `nhsapt` (`id`, `name`, `email`, `tel`, `sym`, `date`) VALUES
(1, 'harleenk', 'harman11@gmail.com', 876543211, 'ggg', '2022-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `pims`
--

CREATE TABLE `pims` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `symptoms` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pims`
--

INSERT INTO `pims` (`id`, `name`, `email`, `tel`, `symptoms`) VALUES
(1, 'simran', 'sim123@gmail.com', 2147483647, 'hh');

-- --------------------------------------------------------

--
-- Table structure for table `pimsapt`
--

CREATE TABLE `pimsapt` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  `sym` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `email`, `pswd`) VALUES
(1, '', '', ''),
(2, 'harleen kaur', 'lin123@gmail.com', '123456'),
(3, 'nandani', 'nan12@gmail.com', '12345'),
(4, 'nandani', 'nan11@gmail.com', '12345'),
(5, 'nandani', 'lin123@gmail.com', '12345'),
(6, 'harleenk', 'lin123@gmail.com', '12345'),
(7, 'harleenk', 'lin123@gmail.com', '12345'),
(8, 'hhhh', 'hhhhj!@hmail.com', 'ggu'),
(9, 'harleenk', 'lin123@gmail.com', '1234'),
(10, 'nandani', 'nan123@gmail.com', '12345'),
(11, 'nandani', 'nan11@gmail.com', '12345'),
(12, 'harleenk', 'har123@gmail.com', '12345'),
(13, 'harleenk', 'har123@gmail.com', '12345'),
(14, 'harleenk', 'har123@gmail.com', '12345'),
(15, 'simran', 'sim123@gmail.com', 'sim12345'),
(16, 'simran', 'sim123@gmail.com', '12345'),
(17, 'simran', 'simran123gmail.com', '123'),
(18, 'harman', 'har11@gmail.com', '12345'),
(19, 'harleenkaur', 'har123@gmail.com', '12345'),
(20, 'harleenk', 'har123@gmail.com', '12345'),
(21, 'harleenk', 'har123@gmail.com', '12345'),
(22, 'harleenk', 'harman11@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `shri`
--

CREATE TABLE `shri` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `symptoms` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shri`
--

INSERT INTO `shri` (`id`, `name`, `email`, `tel`, `symptoms`) VALUES
(1, 'nandani', 'nan123@gmail.com', 2147483647, 'dd'),
(2, 'nandani', 'nan123@gmail.com', 2147483647, 'ff');

-- --------------------------------------------------------

--
-- Table structure for table `shriapt`
--

CREATE TABLE `shriapt` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` int(10) NOT NULL,
  `sym` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wstrnavail`
--

CREATE TABLE `wstrnavail` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `symptoms` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wstrnavail`
--

INSERT INTO `wstrnavail` (`id`, `name`, `email`, `tel`, `symptoms`) VALUES
(1, 'harleenk', 'lin123@gmail.com', '0', 'hug'),
(2, 'nandani', 'nan123@gmail.com', '1234567890', 'ddd'),
(3, 'nandani', 'nan123@gmail.com', '1234567890', 'hh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apt1`
--
ALTER TABLE `apt1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cap`
--
ALTER TABLE `cap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capapt`
--
ALTER TABLE `capapt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhs`
--
ALTER TABLE `nhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhsapt`
--
ALTER TABLE `nhsapt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pims`
--
ALTER TABLE `pims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pimsapt`
--
ALTER TABLE `pimsapt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shri`
--
ALTER TABLE `shri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shriapt`
--
ALTER TABLE `shriapt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wstrnavail`
--
ALTER TABLE `wstrnavail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apt1`
--
ALTER TABLE `apt1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cap`
--
ALTER TABLE `cap`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `capapt`
--
ALTER TABLE `capapt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nhs`
--
ALTER TABLE `nhs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhsapt`
--
ALTER TABLE `nhsapt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pims`
--
ALTER TABLE `pims`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pimsapt`
--
ALTER TABLE `pimsapt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shri`
--
ALTER TABLE `shri`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shriapt`
--
ALTER TABLE `shriapt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wstrnavail`
--
ALTER TABLE `wstrnavail`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
