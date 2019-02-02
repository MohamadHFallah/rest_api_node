-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 09:29 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagram_fake`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_tbl`
--

CREATE TABLE `comment_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` char(20) NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `isDeleted` int(11) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment_tbl`
--

INSERT INTO `comment_tbl` (`id`, `post_id`, `user_id`, `content`, `created`, `isDeleted`, `isActive`) VALUES
(1, 2, '1000', 'like', '2019-01-01 00:00:00', 0, 1),
(2, 2, '1001', 'big like', '2019-01-08 00:00:00', 0, 1),
(3, 2, '1000', 'big like', '2019-01-08 00:00:00', 0, 1),
(4, 1, '1003', 'gooooood', '2019-01-08 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tbl`
--

CREATE TABLE `post_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(20) NOT NULL,
  `content` text NOT NULL,
  `media_type` int(11) NOT NULL,
  `media_name` char(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `liked` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_tbl`
--

INSERT INTO `post_tbl` (`id`, `user_id`, `content`, `media_type`, `media_name`, `created`, `liked`, `comments`, `isDeleted`, `isActive`) VALUES
(1, '1000', 'Programmable devices have existed at least as far back as 1206 AD, when the automata of Al-Jazari were programmable, via pegs and cams, to play various rhythms and drum patterns;[3] and the 1801 Jacquard loom could produce entirely different weaves by changing the "program" - a series of pasteboard cards with holes punched in them. ', 1, '1.jpg', '2019-01-01 00:00:00', 20, 1, 0, 1),
(2, '1001', 'High-level languages allow the programmer to write programs in terms that are syntactically richer, and more capable of abstracting the code, making it targetable to varying machine instruction sets via compilation declarations and heuristics.', 1, '1.jpg', '2018-11-06 00:00:00', 2, 3, 0, 1),
(3, '1002', 'Programs were mostly still entered using punched cards or paper tape', 1, '1.jpg', '2018-11-06 00:00:00', 3, 0, 0, 1),
(4, '1000', 'Following a consistent programming style often helps readability. However, readability is more than just programming style. Many factors, having little or nothing to do with the ability of the computer to efficiently compile and execute the code, contribute to readability.[26] Some of these factors include:\n\n    Different indent styles (whitespace)\n    Comments\n    Decomposition\n    Naming conventions for objects (such as variables, classes, procedures, etc.)', 1, '1.jpg', '2018-12-20 00:00:00', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `userName` char(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `user_id`, `name`, `userName`, `sex`, `created`, `modified`, `isActive`) VALUES
(1, '1000', 'sara', 'sara', 1, '2019-01-02 00:00:00', '2019-01-02 00:00:00', 1),
(2, '1001', 'AmirAhmadi', 'amir', 0, '2019-01-02 00:00:00', '2019-01-02 00:00:00', 1),
(3, '1002', 'Ali Rezvani', 'ali123', 0, '2019-01-02 00:00:00', '2019-01-02 00:00:00', 1),
(4, '1003', 'Mina', 'mina_rahmani', 1, '2019-01-02 00:00:00', '2019-01-02 00:00:00', 1),
(5, '1005', 'Ehsan Mohamadi', 'ehsan768', 0, '2019-01-02 00:00:00', '2019-01-02 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_tbl`
--
ALTER TABLE `comment_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tbl`
--
ALTER TABLE `post_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_tbl`
--
ALTER TABLE `comment_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `post_tbl`
--
ALTER TABLE `post_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
