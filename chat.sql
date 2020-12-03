-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 08:46 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 2, 'hi', '2020-01-25 19:20:41', 0),
(2, 1, 2, 'i need same ', '2020-01-25 19:20:51', 0),
(3, 1, 2, 'sd', '2020-01-25 19:26:41', 0),
(4, 1, 2, 'sd', '2020-01-25 19:26:45', 0),
(5, 1, 2, 'KJH', '2020-01-25 19:39:24', 0),
(6, 2, 1, 'HI', '2020-01-25 19:41:22', 1),
(7, 2, 1, 'lskjd', '2020-01-25 20:25:50', 1),
(8, 2, 1, 'adsdsd', '2020-01-25 20:27:06', 1),
(9, 2, 1, 'fuck you ', '2020-01-25 20:27:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'fadhl', '1234'),
(2, 'admin@admin.com', '123123'),
(3, 'lskdjlksjd;lkj', 'kljsd;ljks;ldjkf'),
(4, '12', 'kljsd;ljks;ldjkf'),
(5, '123123', 'kljsd;ljks;ldjkf'),
(6, '9898', 'kljsd;ljks;ldjkf'),
(7, '87236', 'kljsd;ljks;ldjkf'),
(8, 's;ldkjlk', 'lkjsd;lkj'),
(9, 's;ldkjlk', 'lkjsd;lkj'),
(10, 's;ldkjlk', 'lkjsd;lkj'),
(11, 's;ldkjlk', 'lkjsd;lkj'),
(12, 's;ldkjlk', 'lkjsd;lkj'),
(13, 's;ldkjlk', 'lkjsd;lkj'),
(14, 's;ldkjlk', 'lkjsd;lkj'),
(15, 's;ldkjlk', 'lkjsd;lkj'),
(16, 's;ldkjlk', 'lkjsd;lkj'),
(17, 's;ldkjlk', 'lkjsd;lkj'),
(18, 's;ldkjlk', 'lkjsd;lkj'),
(19, 's;ldkjlk', 'lkjsd;lkj'),
(20, 's;ldkjlk', 'lkjsd;lkj'),
(21, 's;ldkjlk', 'lkjsd;lkj'),
(22, 's;ldkjlk', 'lkjsd;lkj'),
(23, 's;ldkjlk', 'lkjsd;lkj'),
(24, 's;ldkjlk', 'lkjsd;lkj'),
(25, 's;ldkjlk', 'lkjsd;lkj'),
(26, 's;ldkjlk', 'lkjsd;lkj'),
(27, 's;ldkjlk', 'lkjsd;lkj'),
(28, 's;ldkjlk', 'lkjsd;lkj'),
(29, 's;ldkjlk', 'lkjsd;lkj'),
(30, 's;ldkjlk', 'lkjsd;lkj'),
(31, 's;ldkjlk', 'lkjsd;lkj'),
(32, 's;ldkjlk', 'lkjsd;lkj'),
(33, 's;ldkjlk', 'lkjsd;lkj'),
(34, 's;ldkjlk', 'lkjsd;lkj'),
(35, 's;ldkjlk', 'lkjsd;lkj'),
(36, 's;ldkjlk', 'lkjsd;lkj'),
(37, 's;ldkjlk', 'lkjsd;lkj'),
(38, 's;ldkjlk', 'lkjsd;lkj'),
(39, 's;ldkjlk', 'lkjsd;lkj'),
(40, 's;ldkjlk', 'lkjsd;lkj');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-01-25 19:20:06', 'no'),
(2, 2, '2020-01-25 19:40:53', 'no'),
(3, 1, '2020-01-25 20:27:24', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
