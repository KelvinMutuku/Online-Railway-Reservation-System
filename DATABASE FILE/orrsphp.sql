-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `orrs_admin`
--

CREATE TABLE `orrs_admin` (
  `admin_id` int(20) NOT NULL,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_uname` varchar(200) NOT NULL,
  `admin_pwd` varchar(200) NOT NULL,
  `admin_dpic` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_admin`
--

INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
(1, 'System ', 'Admin', 'admin@mail.com', 'Administrator', '953eca9d2cf76a52fe148a52b87907e442660a87', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_employee`
--

CREATE TABLE `orrs_employee` (
  `emp_id` int(20) NOT NULL,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` varchar(200) NOT NULL,
  `emp_phone` varchar(200) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(200) NOT NULL,
  `emp_dept` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_employee`
--

INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`) VALUES
(2, 'Mark', 'Musili', '38889698', '+2547129912', 'P.O Box 284, Valley View estate ', 'markili', 'markmusili13@gmail.com', '67a74306b06d0c01624fe0d0249a570f4d093747', '', 'Ticketing');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passenger`
--

CREATE TABLE `orrs_passenger` (
  `pass_id` int(20) NOT NULL,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(200) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `pass_train_number` varchar(200) NOT NULL,
  `pass_train_name` varchar(200) NOT NULL,
  `pass_dep_station` varchar(200) NOT NULL,
  `pass_dep_time` varchar(200) NOT NULL,
  `pass_arr_station` varchar(200) NOT NULL,
  `pass_train_fare` varchar(200) NOT NULL,
  `pass_fare_payment_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passwordresets`
--

CREATE TABLE `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_passwordresets`
--

INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
(1, 'employee@mail.com', 'Approved'),
(2, 'test21@mail.com', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train`
--

CREATE TABLE `orrs_train` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `passengers` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train`
--

INSERT INTO `orrs_train` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) VALUES
(18, 'SGR-Nairobi - Mombasa 1st Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '8.00 a.m', '150', 'SGR-001', '4500'),
(19, 'SGR-Nairobi - Mombasa Economy Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '8.00 a.m', '300', 'SGR-002', '2250'),
(20, 'SGR-Nairobi - Mombasa 1st Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '1.00 p.m', '150', 'SGR-003', '4500'),
(21, 'SGR-Nairobi - Mombasa Economy Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '1.00 p.m', '300', 'SGR-004', '2250'),
(22, 'SGR-Nairobi - Mombasa 1st Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '6.00 p.m', '150', 'SGR-005', '4500'),
(23, 'SGR-Nairobi - Mombasa Economy Class', 'Nairobi - Mombasa', 'Nairobi', 'Mombasa', '6.00 p.m', '300', 'SGR-006', '2250'),
(24, 'DMU-Nairobi - Syokimau', 'Nairobi - Syokimau', 'Nairobi', 'Syokimau', '6.20 p.m', '300', 'DMU-001', '70'),
(25, 'DMU-Syokimau - Nairobi', 'Syokimau - Nairobi', 'Syokimau', 'Nairobi', '6.00 a.m', '300', 'DMU-002', '100');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_tickets`
--

CREATE TABLE `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_dep_stat` varchar(200) NOT NULL,
  `train_arr_stat` varchar(200) NOT NULL,
  `train_fare` varchar(200) NOT NULL,
  `fare_payment_code` varchar(200) NOT NULL,
  `confirmation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  ADD PRIMARY KEY (`pass_id`);

--
-- Indexes for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  ADD PRIMARY KEY (`pwd_id`);

--
-- Indexes for table `orrs_train`
--
ALTER TABLE `orrs_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  MODIFY `pass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  MODIFY `pwd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orrs_train`
--
ALTER TABLE `orrs_train`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
