-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gofit`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailfood`
--

CREATE TABLE `detailfood` (
  `idDetailFood` int(11) NOT NULL,
  `idFood` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `idFood` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listsubmuscle`
--

CREATE TABLE `listsubmuscle` (
  `idDetailMuscle` int(11) NOT NULL,
  `idMuscle` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `set` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listsubworkout`
--

CREATE TABLE `listsubworkout` (
  `idWorkoutDetail` int(11) NOT NULL,
  `idWorkout` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `set` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listsubworkout`
--

INSERT INTO `listsubworkout` (`idWorkoutDetail`, `idWorkout`, `name`, `image`, `set`, `duration`, `rest`) VALUES
(1, 1, 'gopal', '/asset/au/popo.png', 2, 3, 10),
(2, 2, 'dosa', '/asset/su/popo.png', 3, 4, 10),
(3, 1, 'nada', '/asset/au/popo.png', 4, 5, 2),
(4, 2, 'yori', '/asset/su/opo.png', 5, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `listworkout`
--

CREATE TABLE `listworkout` (
  `idWorkout` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `rounds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listworkout`
--

INSERT INTO `listworkout` (`idWorkout`, `image`, `name`, `type`, `total`, `duration`, `rounds`) VALUES
(1, '/asset/asu/popo.png', 'halo', 'lala', 20000, 23, 2),
(2, '/asset/asu/pop.png', 'plias', 'tsa', 230000, 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `muscle`
--

CREATE TABLE `muscle` (
  `idMuscle` int(11) NOT NULL,
  `muscle` varchar(30) NOT NULL,
  `duration` int(11) NOT NULL,
  `tool` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `name`, `date`, `gender`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '2020-09-09', 'man', 1),
(2, 'farras', 'farras', 'farras', '2020-09-09', 'man', 0),
(3, 'faros', 'faros', 'farraso', '2020-09-09', 'woman', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailfood`
--
ALTER TABLE `detailfood`
  ADD PRIMARY KEY (`idDetailFood`),
  ADD KEY `idFood` (`idFood`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`idFood`);

--
-- Indexes for table `listsubmuscle`
--
ALTER TABLE `listsubmuscle`
  ADD PRIMARY KEY (`idDetailMuscle`),
  ADD KEY `idMuscle` (`idMuscle`);

--
-- Indexes for table `listsubworkout`
--
ALTER TABLE `listsubworkout`
  ADD PRIMARY KEY (`idWorkoutDetail`),
  ADD KEY `idWorkout` (`idWorkout`);

--
-- Indexes for table `listworkout`
--
ALTER TABLE `listworkout`
  ADD PRIMARY KEY (`idWorkout`);

--
-- Indexes for table `muscle`
--
ALTER TABLE `muscle`
  ADD PRIMARY KEY (`idMuscle`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailfood`
--
ALTER TABLE `detailfood`
  MODIFY `idDetailFood` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `idFood` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listsubmuscle`
--
ALTER TABLE `listsubmuscle`
  MODIFY `idDetailMuscle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listsubworkout`
--
ALTER TABLE `listsubworkout`
  MODIFY `idWorkoutDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `listworkout`
--
ALTER TABLE `listworkout`
  MODIFY `idWorkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `muscle`
--
ALTER TABLE `muscle`
  MODIFY `idMuscle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailfood`
--
ALTER TABLE `detailfood`
  ADD CONSTRAINT `detailfood_ibfk_1` FOREIGN KEY (`idFood`) REFERENCES `food` (`idFood`);

--
-- Constraints for table `listsubmuscle`
--
ALTER TABLE `listsubmuscle`
  ADD CONSTRAINT `listsubmuscle_ibfk_1` FOREIGN KEY (`idMuscle`) REFERENCES `muscle` (`idMuscle`);

--
-- Constraints for table `listsubworkout`
--
ALTER TABLE `listsubworkout`
  ADD CONSTRAINT `listsubworkout_ibfk_1` FOREIGN KEY (`idWorkout`) REFERENCES `listworkout` (`idWorkout`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
