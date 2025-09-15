-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(1, 'gilbertmar.semana', 'gbertmarsemana@gmail.com', 'awdasdawdawdaw', '2025-04-19 12:07:56'),
(2, 'awdas', 'awdas@awaw', 'awdasdawd', '2025-04-19 12:08:04'),
(3, 'gilbertmar.semana', 'awdasd@gmm', 'awdasd22d', '2025-04-19 12:30:32'),
(4, 'awdasd', 'brando@gmail.com', 'awd122d', '2025-04-19 12:39:09'),
(5, 'kissha', 'kissha@gmail.com', 'loveeyouu babyyy', '2025-04-21 14:57:29'),
(6, 'gilbertmar.semana', 'gmmm@gmail.com', 'dgdrgdgdrt', '2025-04-22 04:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `license_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `name`, `license_number`) VALUES
(4, 'john gemao', '2023-0634'),
(5, 'gillie ', '2021-25634'),
(6, 'nickson', '2023'),
(7, 'omolon', '0632'),
(8, 'gemao', '0632');

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `username`, `password`) VALUES
(1, 'operator', 'driver123');

-- --------------------------------------------------------

--
-- Table structure for table `operator_income`
--

CREATE TABLE `operator_income` (
  `id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `ride_date` date NOT NULL,
  `trip_desc` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operator_income`
--

INSERT INTO `operator_income` (`id`, `operator_id`, `ride_date`, `trip_desc`, `amount`) VALUES
(1, 0, '2025-05-17', NULL, 123.00),
(2, 0, '2025-05-17', NULL, 1323.00),
(3, 0, '2025-05-17', NULL, 323231.00),
(4, 1, '2025-05-17', NULL, 341.00),
(5, 1, '2025-05-17', NULL, 132.00),
(6, 1, '2025-05-17', 'mags - butuan', 2000.00),
(7, 1, '2025-05-17', 'mags - butuan', 2000.00),
(8, 1, '2025-05-18', 'mags - butuan', 1000.00),
(9, 1, '2025-05-19', 'butuam - mags', 2000.00),
(10, 1, '2025-05-19', 'mags - butuan', 1234.00),
(11, 1, '2025-05-12', 'mags - bxu', 123.00),
(12, 1, '2025-05-13', 'butuam - mags', 100.00),
(13, 1, '2025-05-14', 'mags - butuan', 1234.00),
(14, 1, '2025-05-15', 'butuam - mags', 2000.00),
(15, 1, '2025-05-16', 'mags - bxu', 1000.00),
(16, 1, '2025-05-19', 'mags - butuan', 2000.00),
(17, 1, '2025-05-19', 'mags - butuan', 1500.00),
(18, 1, '2025-05-19', 'mags - butuan', 1233.00),
(19, 1, '2025-05-20', 'mags - bxu', 2000.00),
(20, 1, '2025-05-21', 'mags - butuan', 3000.00),
(21, 1, '2025-05-22', 'butuam - mags', 1000.00),
(22, 1, '2025-05-23', 'mags - bxu', 1500.00),
(23, 1, '2025-05-23', 'butuam - mags', 2500.00),
(24, 1, '2025-05-24', 'mags - butuan', 500.00),
(25, 1, '2025-05-25', 'mags - bxu', 1000.00),
(26, 1, '2025-06-01', 'mags - butuan', 3500.00),
(27, 1, '2025-05-26', 'mags - butuan', 1232.00),
(28, 1, '2025-05-27', 'butuam - mags', 3121.00),
(29, 1, '2025-05-28', 'butuam - mags', 123.00),
(30, 1, '2025-05-29', 'mags - butuan', 1234.00),
(31, 1, '2025-05-30', 'mags - bxu', 1234.00),
(32, 1, '2025-05-31', 'butuam - mags', 1234.00),
(33, 1, '2025-06-02', 'mags - butuan', 123.00),
(34, 1, '2025-06-03', 'butuam - mags', 1234.00),
(35, 1, '2025-06-04', 'mags - butuan', 1500.00),
(36, 1, '2025-06-05', 'mags - bxu', 1750.00),
(37, 1, '2025-06-06', 'butuam - mags', 2000.00),
(38, 1, '2025-06-07', 'mags - butuan', 2250.00),
(39, 1, '2025-06-08', 'mags - bxu', 2500.00),
(40, 1, '2025-06-09', 'mags - butuan', 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `schedule_id`, `name`) VALUES
(97, 31, 'nickson omolon'),
(98, 31, 'gemao'),
(99, 31, 'nico'),
(148, 49, 'ddw'),
(149, 49, 'edwd'),
(150, 49, 'wedw'),
(153, 46, 'semaan'),
(155, 46, 'nickson omolon');

-- --------------------------------------------------------

--
-- Table structure for table `pumboats`
--

CREATE TABLE `pumboats` (
  `pumboat_id` int(11) NOT NULL,
  `boat_name` varchar(100) NOT NULL,
  `boat_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pumboats`
--

INSERT INTO `pumboats` (`pumboat_id`, `boat_name`, `boat_capacity`) VALUES
(1604, 'princess_bea', 20),
(125781, 'queen lolita', 60),
(125782, 'princess', 30),
(125783, 'bea', 5),
(125784, 'prince_dee', 5),
(125785, 'lolita', 10),
(125786, 'lolita', 10);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `route` varchar(100) NOT NULL,
  `departure` datetime(6) NOT NULL,
  `arrival` datetime(6) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pumboat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `route`, `departure`, `arrival`, `status`, `driver_id`, `pumboat_id`) VALUES
(31, 'magallanes - butuan', '2025-05-16 11:26:00.000000', '2025-05-16 00:00:00.000000', 'Available', 6, 125782),
(45, 'butuan -  mags', '2025-05-16 02:30:00.000000', '2025-05-16 03:00:00.000000', 'Available', 4, 125783),
(46, 'magallanes - butuan', '2025-05-16 10:00:00.000000', '2025-05-16 10:30:00.000000', 'Available', 4, 125783),
(47, 'magallanes - butuan', '2025-05-16 10:00:00.000000', '2025-05-16 10:30:00.000000', 'Available', 5, 125782),
(49, 'cebu - mags', '2025-05-18 04:13:00.000000', '2025-05-18 04:13:00.000000', 'Available', 7, 125784),
(50, 'dweqw - ffwe', '2025-05-19 03:10:00.000000', '2025-05-19 04:10:00.000000', 'Available', 7, 125784),
(51, 'butuan -  mags', '2025-05-20 19:00:00.000000', '2025-05-20 20:00:00.000000', 'Available', 6, 1604),
(52, 'cebu - mags', '2025-05-20 21:08:00.000000', '2025-05-20 22:08:00.000000', 'Available', 7, 125781),
(53, 'mags - bxu', '2025-06-01 20:08:00.000000', '2025-06-01 21:08:00.000000', 'Available', 8, 125786);

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `Id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`Id`, `fname`, `lname`, `address`, `email`, `password`) VALUES
(54, 'nickson', 'omolon', 'buhang', 'nickson@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(55, 'qwed', 'sdasd', 'magss', 'gbert@gmail.com', 'd10906c3dac1172d4f60bd41f224ae75'),
(56, 'awdasdwdad', 'wdasd', 'awdasd', 'gbertmarsemana@gmail.com', 'a8ae104615cb4e966ddb435f3e575a02'),
(57, 'awdawdawd', 'sdwda', 'brgy buhang', 'brando@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(58, 'gmmmm', 'semannn', 'gmghgh', 'gmmm@gmail.com', 'd6a527504e5032cad5344926714d1299'),
(59, 'kissha', 'lozada', 'marcoss', 'kissha@gmail.com', 'd6a527504e5032cad5344926714d1299'),
(60, 'princess', 'agdeppa', 'manila', 'agdeppa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(61, 'admin', 'admin', 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator_income`
--
ALTER TABLE `operator_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `pumboats`
--
ALTER TABLE `pumboats`
  ADD PRIMARY KEY (`pumboat_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_driver` (`driver_id`),
  ADD KEY `fk_pumboat` (`pumboat_id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operator_income`
--
ALTER TABLE `operator_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `pumboats`
--
ALTER TABLE `pumboats`
  MODIFY `pumboat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125787;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `fk_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`),
  ADD CONSTRAINT `fk_pumboat` FOREIGN KEY (`pumboat_id`) REFERENCES `pumboats` (`pumboat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
