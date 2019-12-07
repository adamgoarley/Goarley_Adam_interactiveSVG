-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2019 at 10:53 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cameras`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera_info`
--

CREATE TABLE `camera_info` (
  `ID` int(20) NOT NULL,
  `point1` text NOT NULL,
  `point2` text NOT NULL,
  `point3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `camera_info`
--

INSERT INTO `camera_info` (`ID`, `point1`, `point2`, `point3`) VALUES
(1, '- Easy to use modes and also has manual \r\nmodes for more advanced users', '- Usually bigger than mirrorless cameras', '- Have been around a lot longer and set the'),
(2, '- Mirroless cameras are able to shoot fully silent!', '- Mirroless cameras have a screen in the view finder that has lots of features!', '- Mirroless cameras are also getting very small. Your phone is a mirroless camera!'),
(3, '- Polaroid cameras use an film that develops instantly.\r\n ', '- Polaroid cameras have been used for over 100 years!\r\n ', '- Polaroid cameras come in many sizes!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera_info`
--
ALTER TABLE `camera_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera_info`
--
ALTER TABLE `camera_info`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
