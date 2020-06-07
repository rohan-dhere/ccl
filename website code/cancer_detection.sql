-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2020 at 12:27 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cancer_detection`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` varchar(1000) NOT NULL,
  `password` varchar(500) NOT NULL,
  `salt` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `date of birth` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `medical_history` text NOT NULL,
  `cell_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `password`, `salt`, `name`, `age`, `date of birth`, `sex`, `blood_group`, `contact`, `email_id`, `address`, `medical_history`, `cell_image`) VALUES
('1882d', 'e10adc3949ba59abbe56e057f20f883e', 'edea298442a67de045e88dfb6e5ea4a2', 'Ketan ', 25, '1998-02-17', 'Male', 'A+', 7977365215, 'ketanm.csk@gmail.com', 'yuftffkygknygybgj', 'NONE', 'uploads/ketanm.csk@gmail.com/5e8e39a4d04764.69421996.tif'),
('303ed', 'a25a6cb241dbe44d927ea9eac5a61172', '07bba581a2dd8d098a3be0f683560643', 'Rohan Dhere', 22, '1998-02-17', 'Male', 'A+', 789456123, '17rohandhere@gmail.com', 'xyz.....', 'Nope.....................', 'uploads/17rohandhere@gmail.com/5e8e3a33c7a498.05509980.tif');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `email` varchar(100) NOT NULL,
  `path` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`email`, `path`, `date`, `time`, `result`) VALUES
('17rohandhere@gmail.com', 'uploads/17rohandhere@gmail.com/5e8e3a33c7a498.05509980.tif', '2020-04-09', '02:25:58am', 'Negative'),
('ketanm.csk@gmail.com', 'uploads/ketanm.csk@gmail.com/5e8e39a4d04764.69421996.tif', '2020-04-09', '02:23:36am', 'Positive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`,`email_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
