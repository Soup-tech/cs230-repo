-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 10:57 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'loaf', 'loaf', '../gallery/604a4a21be2580.57882465.jpg', '2021-03-11 11:49:37', NULL),
(2, 'coin', 'coin', '../gallery/604a4a423cad92.48529506.jpg', '2021-03-11 11:50:10', NULL),
(3, 'ram', 'ram', '../gallery/604a4a528eb1d6.33877235.jpg', '2021-03-11 11:50:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, 'max', 'user', '../images/default.jpg'),
(2, 'doge', 'doge', '../images/default.jpg'),
(3, '123', '123', '../images/default.jpg'),
(4, 'doge', 'doge1', '../images/default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 3, '', 'fuck this class', 'eat shit and die', '2021-03-18 16:04:35', 3, 1),
(2, 3, '', 'I WANT TO FUCKING DIE', 'AHHHHHHHHHHHHHHHHLKADFH;ABJEWAB VJOJ FOAWHVH SFDSHBVAIHBV AYIOEBF ACA GCWYS VCBXHVKAHB', '2021-03-18 16:06:26', 4, 1),
(3, 3, '', 'fucking work dammit', 'gy', '2021-03-18 16:06:57', 1, 1),
(4, 3, '', 'SHOW ME MY PROFILE PIC DAMMIT', 'FUCKING FUCK', '2021-03-18 17:04:04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'max', 'campbell', 'user', '$2y$10$cYw/GP9J1nDz2hGXa9xAyuYWeAttx6q3Nf.y.jXff84y.DoQYyz4u', 'myemail@email.com'),
(2, 'doge', 'doge', 'doge', '$2y$10$1SvSXNMCQ45m65KQsrNrOO0cC0PcAF/6If96DhPHqonz5ScJXsnTC', 'doge@email.com'),
(3, '123', '123', '123', '$2y$10$wJkTokZ5Q8wZwxvFt74nkOgZRf.VvCijr8MoDM5RnJ87rcA4LBB2a', '123@mail.com'),
(4, 'doge', 'doge', 'doge1', '$2y$10$tk4E.i.4TbUSOf04yI3V1.xzPLhMcoJyp1.IQJJZ/10TbFKnkSIBe', 'doge@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
