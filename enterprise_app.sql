-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 29, 2018 at 12:06 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise`
--
CREATE DATABASE IF NOT EXISTS `enterprise` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enterprise`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `UUID` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Salary` varchar(255) NOT NULL,
  `Statue` varchar(255) NOT NULL,
  `RegistrationDate` varchar(255) NOT NULL,
  `Usertype` varchar(1) NOT NULL,
  `State` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UUID` (`UUID`),
  UNIQUE KEY `accounts_UUID_uindex` (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`UUID`, `ID`, `Username`, `Password`, `Email`, `Salary`, `Statue`, `RegistrationDate`, `Usertype`, `State`) VALUES
('c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'null', 'null', 'null', 'null', 'A', 1),
('8b9ed3d1-9b23-11e8-880a-0a0027000012', 5, 'rami', 'a7cd345c00ad379d0b665b72a0bb1a90', 'Borni@rami.com', '526330', 'Abandoned', '2018-08-08 03:55:59 PM', 'U', 1),
('ad625da7-9bd1-11e8-b984-0a0027000012', 6, 'test', 'a7cd345c00ad379d0b665b72a0bb1a90', 'test@test.com', '0', 'Active', '2018-08-09 12:42:28 PM', 'U', 1),
('662108a3-9bd2-11e8-b984-0a0027000012', 7, 'test25', 'a7cd345c00ad379d0b665b72a0bb1a90', 'rami@test.com', '0', 'Active', '2018-08-09 12:47:38 PM', 'U', 0),
('09590699-9bd4-11e8-b984-0a0027000012', 9, 'test754', 'a7cd345c00ad379d0b665b72a0bb1a90', 'tt@tt.tt', '0', 'Active', '2018-08-09 12:59:22 PM', 'U', 1),
('5425c254-1973-4530-b324-e37bc00512d8', 10, 'test5520', 'a7cd345c00ad379d0b665b72a0bb1a90', 'ttt@tt.tt', '0', 'Active', '2018-08-14 11:51:06 AM', 'U', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(50) NOT NULL,
  `IMEI` varchar(50) DEFAULT NULL,
  `IP` varchar(50) NOT NULL,
  `LoginDate` varchar(100) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_login_log`
--

DROP TABLE IF EXISTS `users_login_log`;
CREATE TABLE IF NOT EXISTS `users_login_log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `IMEI` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL,
  `Login_Date` varchar(50) NOT NULL,
  `Logout_Date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_login_log`
--

INSERT INTO `users_login_log` (`id`, `UserID`, `IMEI`, `IP`, `Login_Date`, `Logout_Date`) VALUES
(5, '8f4d2eab-9965-11e8-9e0f-0a0027000012', '358240051111110', '105.106.37.180', '2018-08-07 05:31:04 PM', '2018-08-07 17:31:17'),
(6, '8f4d2eab-9965-11e8-9e0f-0a0027000012', '358240051111110', '105.106.37.180', '2018-08-07 06:06:23 PM', '2018-08-07 18:06:29'),
(7, '8f4d2eab-9965-11e8-9e0f-0a0027000012', '358240051111110', '105.106.37.180', '2018-08-07 06:27:47 PM', '2018-08-07 18:27:53'),
(8, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '105.106.60.135', '2018-08-08 03:56:19 PM', '2018-08-08 16:56:26'),
(9, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '105.106.60.135', '2018-08-08 05:38:17 PM', '2018-08-08 18:38:19'),
(10, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '105.106.60.135', '2018-08-08 05:38:31 PM', '2018-08-08 18:38:36'),
(11, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '105.106.55.255', '2018-08-09 12:45:28 PM', '2018-08-09 13:45:51'),
(12, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '105.106.55.255', '2018-08-09 12:45:56 PM', '2018-08-09 13:46:21'),
(13, '23947645-9bd3-11e8-b984-0a0027000012', '358240051111110', '105.106.55.255', '2018-08-09 01:04:33 PM', '2018-08-09 14:04:51'),
(14, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 11:44:49 AM', '2018-08-11 12:46:05'),
(17, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 11:59:26 AM', '2018-08-11 12:59:29'),
(18, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-11 12:02:20 PM', '2018-08-11 13:02:29'),
(19, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 01:00:09 PM', '2018-08-11 14:00:30'),
(20, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 01:24:50 PM', '2018-08-11 14:27:13'),
(21, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 01:27:22 PM', '2018-08-11 14:29:12'),
(22, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-11 01:29:20 PM', '2018-08-11 14:30:25'),
(23, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 01:30:40 PM', '2018-08-11 14:41:57'),
(24, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 03:22:32 PM', '2018-08-11 16:22:35'),
(25, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-11 03:25:11 PM', '2018-08-11 16:26:50'),
(26, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 03:27:37 PM', '2018-08-11 16:27:40'),
(27, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-11 03:28:09 PM', '2018-08-11 16:28:19'),
(28, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 03:30:24 PM', '2018-08-11 16:30:31'),
(29, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-11 03:32:15 PM', '2018-08-11 16:32:19'),
(30, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-11 03:32:32 PM', '2018-08-11 16:32:36'),
(31, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-11 03:32:41 PM', '2018-08-11 16:32:44'),
(32, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:16:03 PM', '2018-08-12 13:16:33'),
(33, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:17:06 PM', '2018-08-12 13:18:14'),
(34, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:19:16 PM', '2018-08-12 13:19:47'),
(35, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:19:55 PM', '2018-08-12 13:20:06'),
(36, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:20:14 PM', '2018-08-12 13:35:25'),
(37, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:35:40 PM', '2018-08-12 13:35:43'),
(38, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:35:52 PM', '2018-08-12 13:35:54'),
(39, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:37:16 PM', '2018-08-12 13:37:57'),
(40, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:38:08 PM', '2018-08-12 13:38:11'),
(41, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:38:42 PM', '2018-08-12 13:38:49'),
(42, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:38:59 PM', '2018-08-12 13:39:06'),
(43, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:42:57 PM', '2018-08-12 13:43:05'),
(44, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:47:25 PM', '2018-08-12 13:48:30'),
(45, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:48:36 PM', '2018-08-12 13:49:34'),
(46, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:49:40 PM', '2018-08-12 13:49:45'),
(47, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:50:57 PM', '2018-08-12 13:51:08'),
(48, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:51:19 PM', '2018-08-12 13:51:22'),
(49, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:53:08 PM', '2018-08-12 13:53:12'),
(50, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:53:19 PM', '2018-08-12 13:53:23'),
(51, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:54:28 PM', '2018-08-12 13:54:31'),
(52, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 12:54:38 PM', '2018-08-12 13:54:43'),
(53, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 12:59:40 PM', '2018-08-12 14:00:13'),
(54, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:00:20 PM', '2018-08-12 14:00:22'),
(55, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:00:29 PM', '2018-08-12 14:01:15'),
(56, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:01:22 PM', '2018-08-12 14:01:32'),
(57, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:01:39 PM', '2018-08-12 14:04:30'),
(58, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:04:49 PM', '2018-08-12 14:05:20'),
(59, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:05:27 PM', '2018-08-12 14:05:30'),
(60, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:05:39 PM', '2018-08-12 14:06:57'),
(61, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:07:07 PM', '2018-08-12 14:07:14'),
(62, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:07:22 PM', '2018-08-12 14:08:17'),
(63, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:10:11 PM', '2018-08-12 14:10:14'),
(64, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-12 01:10:22 PM', '2018-08-12 14:10:25'),
(65, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:10:35 PM', '2018-08-12 14:10:45'),
(66, '662108a3-9bd2-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:10:52 PM', '2018-08-12 14:10:57'),
(67, '662108a3-9bd2-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-12 01:11:04 PM', '2018-08-12 14:15:25'),
(68, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 08:02:01 AM', '2018-08-14 13:03:02'),
(69, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 08:03:27 AM', '2018-08-14 13:04:02'),
(70, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 08:04:27 AM', '2018-08-14 13:05:14'),
(71, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 08:09:59 AM', '2018-08-14 13:11:11'),
(72, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 08:14:08 AM', '2018-08-14 13:17:56'),
(73, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 08:20:50 AM', '2018-08-14 13:22:06'),
(74, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 08:22:38 AM', '2018-08-14 13:24:12'),
(75, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 08:24:42 AM', '2018-08-14 13:24:25'),
(76, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 08:25:01 AM', '2018-08-14 13:25:32'),
(77, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', 'OFFLINE', '2018-08-14 09:36:13 AM', '2018-08-14 09:36:15 AM'),
(78, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', 'OFFLINE', '2018-08-14 09:37:05 AM', '2018-08-14 09:37:07 AM'),
(79, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 10:20:34 AM', '2018-08-14 15:22:17'),
(80, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 10:22:22 AM', '2018-08-14 15:23:00'),
(81, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 10:43:49 AM', '2018-08-14 15:43:58'),
(82, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 10:47:00 AM', '2018-08-14 15:47:06'),
(83, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 10:47:11 AM', '2018-08-14 15:47:20'),
(84, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', '0', '2018-08-14 11:46:01 AM', '2018-08-14 16:46:05'),
(85, 'ad625da7-9bd1-11e8-b984-0a0027000012', '358240051111110', '0', '2018-08-14 11:46:09 AM', '2018-08-14 16:46:13'),
(86, '8b9ed3d1-9b23-11e8-880a-0a0027000012', '358240051111110', 'OFFLINE', '2018-08-14 11:47:27 AM', '2018-08-14 11:47:32 AM'),
(87, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 11:49:29 AM', '2018-08-14 16:49:33'),
(88, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-14 11:52:52 AM', '2018-08-26 18:37:25'),
(89, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', 'OFFLINE', '2018-08-28 10:51:04 AM', '2018-08-28 10:51:17 AM'),
(90, 'c61e6442-ef64-4cc3-ac99-1ddcccdd3bd8', '358240051111110', '0', '2018-08-28 02:02:07 PM', '2018-08-28 16:46:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
