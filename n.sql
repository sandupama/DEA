-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 01:35 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(12) NOT NULL,
  `pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('add', '123');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fori`
--

CREATE TABLE `fori` (
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `country` varchar(56) NOT NULL,
  `contact` varchar(56) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hoteldetail`
--

CREATE TABLE `hoteldetail` (
  `hotelname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `hotelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question` varchar(78) NOT NULL,
  `options` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question`, `options`) VALUES
('How would you rate activities to your friends?', 'Good'),
('How much help was our website? ', 'Good'),
('Interesting?', 'Good'),
('Activitie material sufficient?', 'Good'),
('Challenging?', 'Good'),
('How would you rate activities to your friends?', 'Good'),
('How much help was our website? ', 'Good'),
('Interesting?', 'Good'),
('Activitie material sufficient?', 'Average'),
('Challenging?', 'Average'),
('How would you rate activities to your friends?', 'Good'),
('How much help was our website? ', 'Good'),
('Interesting?', 'Good'),
('Activitie material sufficient?', 'Average'),
('Challenging?', 'Average'),
('How would you rate activities to your friends?', 'Good'),
('How much help was our website? ', 'Good'),
('Interesting?', 'Good'),
('Activitie material sufficient?', 'Average'),
('Challenging?', 'Average'),
('How would you rate activities to your friends?', 'null'),
('How much help was our website? ', 'null'),
('Interesting?', 'null'),
('Activitie material sufficient?', 'null'),
('Challenging?', 'null'),
('How would you rate activities to your friends?', 'null'),
('How much help was our website? ', 'null'),
('Interesting?', 'null'),
('Activitie material sufficient?', 'null'),
('Challenging?', 'null'),
('How would you rate activities to your friends?', 'null'),
('How much help was our website? ', 'null'),
('Interesting?', 'null'),
('Activitie material sufficient?', 'null'),
('Challenging?', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `regi`
--

CREATE TABLE `regi` (
  `first_name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `EmailAddress` varchar(34) NOT NULL,
  `Contact` varchar(56) NOT NULL,
  `Country` varchar(32) NOT NULL,
  `UserName` varchar(34) NOT NULL,
  `Password` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `email` varchar(56) NOT NULL,
  `sex` varchar(56) NOT NULL,
  `hotel` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `uid`, `email`, `sex`, `hotel`) VALUES
('s', 'we', 'bv@12', 'male', 'hotel A'),
('s', 'we', 'bv@12', 'male', 'hotel A');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `pwd` varchar(34) NOT NULL,
  `name` varchar(56) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `user_id`, `pwd`, `name`, `email`) VALUES
(1, 'qqq', 'sss', 'sss', 'as@123'),
(2, '22', '12', 'df', 'qqq@dd'),
(3, '23', 'dd', 'er', 'vcj@1'),
(4, '12', '123', 'df', 'ss'),
(5, '13', '12', 's', 'qq'),
(6, '1', '12', 'qw', 'as'),
(7, '3', 'w', 'er', 'wee@1'),
(8, '1', '13', 'qw', 'qqq@12'),
(9, '9', '3', 'w', '2@'),
(10, '2', '2345', 'qqssdd', 'ddddd'),
(11, '22', '12', 'ad', '2@1'),
(12, '33', '', '', ''),
(13, 'ee', 'rrr', '', ''),
(14, '12', '', '', 'sd@12'),
(15, '4', '34', 'r', 'we@12'),
(16, '129', '90', 'rt', 'er@12'),
(17, '105', '4', 'sd', 'c@1'),
(18, '100', '566', 'ty', 'a@12'),
(19, '3', '345', 'sc', 'as@12'),
(20, '45', '23', 'we', 'er@1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(78) NOT NULL,
  `hotel_name` varchar(45) NOT NULL,
  `room_name` varchar(34) NOT NULL,
  `email` varchar(87) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `hotel_name`, `room_name`, `email`) VALUES
('ee', 'nn', 'hh', 'n@12'),
('ee', 'nn', 'hh', 'n@12'),
('san', 'null', 'sm', 'sd@12'),
('ww', 'null', 'fg', 'as@12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `hoteldetail`
--
ALTER TABLE `hoteldetail`
  ADD PRIMARY KEY (`hotelId`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoteldetail`
--
ALTER TABLE `hoteldetail`
  MODIFY `hotelId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
