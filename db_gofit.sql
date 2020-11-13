-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 11:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `idFood` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `portion` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `calories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`idFood`, `name`, `image`, `portion`, `time`, `calories`) VALUES
(1, 'adadad', 'adadad', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ingridients`
--

CREATE TABLE `ingridients` (
  `idIngridients` int(11) NOT NULL,
  `idFood` int(11) NOT NULL,
  `ingridients` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingridients`
--

INSERT INTO `ingridients` (`idIngridients`, `idFood`, `ingridients`) VALUES
(1, 1, 'asdasdsad'),
(2, 1, 'qeqeqwe'),
(3, 1, 'wqrqtq');

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
  `rest` int(11) NOT NULL,
  `link` text NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listsubmuscle`
--

INSERT INTO `listsubmuscle` (`idDetailMuscle`, `idMuscle`, `name`, `image`, `set`, `duration`, `rest`, `link`, `start`, `end`) VALUES
(1, 1, 'hoolla', '', 2, 3, 4, 'https://www.youtube.com/watch?v=DgGSjLE-hb8&list=RDDgGSjLE-hb8&start_radio=1&ab_channel=aestheticmelody', 10, 20),
(2, 1, 'bismillah', 'http://res.cloudinary.com/gofit2/image/upload/v1605281165/hmdhn2uyzqnruvm4cmlh.png', 1, 2, 3, '', 0, 0);

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
  `rest` int(11) NOT NULL,
  `link` varchar(50) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listsubworkout`
--

INSERT INTO `listsubworkout` (`idWorkoutDetail`, `idWorkout`, `name`, `image`, `set`, `duration`, `rest`, `link`, `start`, `end`) VALUES
(1, 1, 'gopal', '/asset/au/popo.png', 2, 3, 10, '', 0, 0),
(2, 2, 'dosa', '/asset/su/popo.png', 3, 4, 10, '', 0, 0),
(3, 1, 'nada', '/asset/au/popo.png', 4, 5, 2, '', 0, 0),
(4, 2, 'yori', '/asset/su/opo.png', 5, 4, 5, '', 0, 0),
(5, 2, 'bismillah', 'http://res.cloudinary.com/gofit2/image/upload/v1605280926/snyhmi3sthko4uhgmm62.png', 1, 2, 3, '', 0, 0);

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
  `rounds` int(11) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listworkout`
--

INSERT INTO `listworkout` (`idWorkout`, `image`, `name`, `type`, `total`, `duration`, `rounds`, `link`) VALUES
(1, '/asset/asu/popo.png', 'halo', 'lala', 20000, 23, 2, ''),
(2, '/asset/asu/pop.png', 'plias', 'tsa', 230000, 21, 2, ''),
(3, 'http://res.cloudinary.com/gofit2/image/upload/v1604919828/txhtjpeud4zg3wlsjkzy.jpg', 'bismillah', '1', 2, 3, 4, ''),
(4, '', 'bismillah', '1', 2, 3, 4, ''),
(5, 'http://res.cloudinary.com/gofit2/image/upload/v1604920189/pq8uxlamoguas3spq8vd.jpg', 'bismillah', '12', 23, 32, 41, ''),
(6, 'http://res.cloudinary.com/gofit2/image/upload/v1605280706/rljvseyxdgmfkt27riiv.png', 'bismillah', 'alhamdulillah', 1, 2, 3, ''),
(7, 'http://res.cloudinary.com/gofit2/image/upload/v1605280788/ycvd9codgk8oeu6nhvzm.png', 'alhamdulillah', 'bismillah', 1, 2, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `idMethods` int(11) NOT NULL,
  `idFood` int(11) NOT NULL,
  `methods` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`idMethods`, `idFood`, `methods`) VALUES
(1, 1, 'asdasdasd'),
(2, 1, 'sadasdasdv');

-- --------------------------------------------------------

--
-- Table structure for table `muscle`
--

CREATE TABLE `muscle` (
  `idMuscle` int(11) NOT NULL,
  `muscle` varchar(30) NOT NULL,
  `duration` int(11) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muscle`
--

INSERT INTO `muscle` (`idMuscle`, `muscle`, `duration`, `tool`, `image`, `video`) VALUES
(1, 'halo', 1, 'loha', '', 'https://www.youtube.com/watch?v=DgGSjLE-hb8&list=RDDgGSjLE-hb8&start_radio=1&ab_channel=aestheticmelody');

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
  `tinggi` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `umur` int(11) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `username`, `password`, `name`, `date`, `gender`, `tinggi`, `berat`, `umur`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '2020-09-09', 'man', 0, 0, 0, 1),
(2, 'farras', 'farras', 'farras', '2020-09-09', 'man', 0, 0, 0, 0),
(3, 'faros', 'faros', 'farraso', '2020-09-09', 'woman', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`idFood`);

--
-- Indexes for table `ingridients`
--
ALTER TABLE `ingridients`
  ADD PRIMARY KEY (`idIngridients`),
  ADD KEY `idFood` (`idFood`);

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
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`idMethods`),
  ADD KEY `idFood` (`idFood`);

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
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `idFood` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ingridients`
--
ALTER TABLE `ingridients`
  MODIFY `idIngridients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `listsubmuscle`
--
ALTER TABLE `listsubmuscle`
  MODIFY `idDetailMuscle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `listsubworkout`
--
ALTER TABLE `listsubworkout`
  MODIFY `idWorkoutDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listworkout`
--
ALTER TABLE `listworkout`
  MODIFY `idWorkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `idMethods` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `muscle`
--
ALTER TABLE `muscle`
  MODIFY `idMuscle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ingridients`
--
ALTER TABLE `ingridients`
  ADD CONSTRAINT `ingridients_ibfk_1` FOREIGN KEY (`idFood`) REFERENCES `food` (`idFood`);

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

--
-- Constraints for table `methods`
--
ALTER TABLE `methods`
  ADD CONSTRAINT `methods_ibfk_1` FOREIGN KEY (`idFood`) REFERENCES `food` (`idFood`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
