-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2025 at 12:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 8080808080, 'admin14@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2024-08-31 18:30:00', 1),
(9, 'ali sajid ', 'Sajid husain', 8080808080, 'alisajid9157530@gmail.com', 'd47268e9db2e9aa3827bba3afb7ff94a', '2024-12-19 13:03:45', 0),
(11, 'Nijamuddin Patel', 'Patel', 7171717171, 'nijumaddin71@gmail.com', 'a591024321c5e2bdbd23ed35f0574dde', '2025-01-15 13:30:58', 0),
(12, 'sunasara abrar basir', 'abrar', 5555555555, 'abrar@gmail.com', 'd47268e9db2e9aa3827bba3afb7ff94a', '2025-01-17 12:21:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblboat`
--

CREATE TABLE `tblboat` (
  `ID` int(5) NOT NULL,
  `BoatName` varchar(250) DEFAULT NULL,
  `Image` varchar(250) NOT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Capacity` varchar(100) DEFAULT NULL,
  `Source` varchar(250) DEFAULT NULL,
  `Destination` varchar(250) DEFAULT NULL,
  `Route` varchar(250) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `AddedBy` int(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblboat`
--

INSERT INTO `tblboat` (`ID`, `BoatName`, `Image`, `Size`, `Capacity`, `Source`, `Destination`, `Route`, `Price`, `Description`, `AddedBy`, `CreationDate`) VALUES
(4, 'Ektaaaaa', 'bus_image_6.jpg', 'Small', '1-75', 'Sidhpur', 'any place', 'via Nitional highway', 700, 'for ride', 2, '2024-09-25 06:36:33'),
(5, 'Meta Travels', 'bus_image_3.jpg', 'Large', '1-75', 'Sidhpur', 'Mehsana\n', 'via National highway', 900, 'Test', 2, '2024-09-26 04:55:19'),
(8, 'Meta Travels', 'bus_image_6.jpg', 'Small', '1-75', 'palanpur', 'any place', 'via National highway', 670, 'ak number', 2, '2024-09-26 06:30:06'),
(15, 'Meta Travels', 'bus_image_1.jpg', 'Small', '1-75', 'Chhapi', 'Rajasthan\n', 'via National highway', 700, 'kdk', 2, '2024-12-19 10:53:11'),
(16, 'Meta Travels', 'bus_image_2.jpg', 'Medium', '1-75', 'Sidhpur', 'any place ', 'via National highway', 999, 'rdgdgdf', 2, '2024-12-19 11:53:56'),
(22, 'mj dalu', 'bus_image_5.jpg', 'Medium', '1-75', 'Chhapis', 'any places', 'via national highways', 672, 'nice bus', 2, '2025-01-16 10:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `ID` int(5) NOT NULL,
  `BoatID` int(10) DEFAULT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `BookingDateFrom` varchar(250) DEFAULT NULL,
  `BookingDateTo` varchar(250) DEFAULT NULL,
  `BookingTime` varchar(100) DEFAULT NULL,
  `NumnerofPeople` int(5) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(250) DEFAULT NULL,
  `BookingStatus` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`ID`, `BoatID`, `BookingNumber`, `FullName`, `EmailId`, `PhoneNumber`, `BookingDateFrom`, `BookingDateTo`, `BookingTime`, `NumnerofPeople`, `Notes`, `postingDate`, `AdminRemark`, `BookingStatus`, `UpdationDate`) VALUES
(5, 15, 9491067205, 'nizammudin', 'patelnj@gmail.com', 1234567890, '2024-12-24', '2024-12-31', '04:25', 12, '1212', '2024-12-19 10:54:32', 'naaa ', 'Rejected', '2025-02-21 10:55:48'),
(6, 4, 5294389689, 'ali sajid', 'alisajid9157530@gmail.com', 1233211233, '2024-12-19', '2024-12-31', '04:27', 14, '23122asdasdasdasd', '2024-12-19 10:57:59', 'sdasd', 'Rejected', '2025-02-21 10:56:00'),
(7, 8, 612825137, 'sasa', 'alisajid9157530@gmail.com', 1111111111, '2024-12-12', '2024-12-25', '17:23', 111, 'dsfdsf', '2024-12-19 11:49:42', 'asad', 'Rejected', '2025-02-19 13:19:14'),
(8, 16, 1141718860, 'nizammudin', 'al222isajid9157530@gmail.com', 2323232323, '2024-12-19', '2024-12-31', '05:25', 12, '112asas', '2024-12-19 11:57:02', 'no update', 'Rejected', '2025-02-19 13:19:17'),
(9, 4, 5265899155, 'faizz', '11alisajid9157530@gmail.com', 2347654323, '2024-12-21', '2024-12-27', '17:48', 40, 'ssjjiidd', '2024-12-19 12:14:57', 'ok', 'Rejected', '2025-02-19 13:19:24'),
(10, 5, 5128400033, 'aa', '11alisajid9157530@gmail.com', 2323232323, '2024-12-19', '2024-12-27', '11:11', 11, 'sasas', '2024-12-27 10:15:03', 'hmmm', 'Rejected', '2025-02-19 13:19:28'),
(11, 5, 9955626051, 'de', 'alisajid9157530@gmail.com', 1233211233, '2024-12-12', '2025-01-31', '11:11', 13, 'hnnnn', '2025-01-06 14:03:39', 'chatgpt', 'Rejected', '2025-02-21 10:50:52'),
(12, 22, 5181828014, 'sakera', 'sasas@gmail.com', 1223656325, '2024-12-19', '2025-01-30', '00:00', 12, 'sdfsdfsadf adf', '2025-01-16 11:36:52', NULL, 'Rejected', '2025-02-21 10:28:06'),
(13, 22, 8818115278, 'ss', 'eerererer@gmail.com', 8282828282, '2024-12-12', '2024-12-25', '14:32', 111, 'dewqedqw', '2025-01-16 11:41:04', 'asasdas', 'Rejected', '2025-02-21 10:50:30'),
(15, 16, 5174371674, 'ali sajid', 'alisajid9157530@gmail.com', 1233211233, '2024-12-19', '2024-12-25', '12:12', 12, 'sadasdasd', '2025-01-16 12:03:02', 'wewrwrewrewre', 'Rejected', '2025-02-21 10:51:50'),
(16, 16, 2705700959, 'nizammudin', 'nij@gmail.com', 6969696969, '2025-01-15', '2025-01-16', '00:12', 111, 'sfsdfsdfsdfwerewrwer', '2025-01-16 12:19:43', 'sdfsafsd2wqesd2d', 'Rejected', '2025-02-19 10:50:50'),
(17, 16, 6292159650, 'abrar', 'abrar@gmail.com', 5555555555, '2025-01-27', '2025-01-28', '12:12', 111, '2005', '2025-01-16 12:25:28', 'accept', 'Rejected', '2025-02-19 10:51:28'),
(19, 15, 8743727852, 'abrar', 'sajid14@gmail.com', 1123456789, '2025-02-01', '2025-02-02', '12:12', 5, 'nice bus', '2025-02-03 10:35:00', 'nice\r\n', 'Rejected', '2025-02-03 10:37:46'),
(20, 4, 2468846134, 'ali sajid', 'sajid14@gmail.com', 1123456789, '2025-02-01', '2025-02-05', '12:12', 14, 'nice\r\n', '2025-02-03 10:35:45', 'nice\r\n', 'Rejected', '2025-02-19 10:50:42'),
(21, 16, 980435366, 'nizammudin', 'sajid14@gmail.com', 1123456789, '2025-02-03', '2025-02-04', '12:12', 14, 'nice\r\n', '2025-02-03 10:36:35', NULL, NULL, '2025-02-03 10:36:35'),
(22, 5, 6763998090, 'naaa', '12121nana@gmail.com', 1111111111, '2025-02-05', '2025-02-06', '11:11', 111, 'dfdsf', '2025-02-04 13:58:48', NULL, NULL, '2025-02-04 13:58:48'),
(23, 22, 9996031669, 'aa', '111aaa@gmail.com', 1212121211, '2025-02-01', '2025-02-12', '11:11', 14, 'weasdasd', '2025-02-12 10:36:08', NULL, NULL, '2025-02-12 10:36:08'),
(24, 22, 3442224005, 'ddd', '222ddd@gmail.com', 2132141234, '2025-02-01', '2025-02-12', '23:21', 11, 'sdsaewfdf', '2025-02-12 10:36:54', NULL, NULL, '2025-02-12 10:36:54'),
(25, 5, 4199566707, 'abrar', '121212@gmail.com', 1231231231, '2025-02-01', '2025-02-18', '12:12', 76, 'dsfasdf', '2025-02-18 13:05:27', NULL, NULL, '2025-02-18 13:05:27'),
(26, 8, 6808730823, 'abrar', 'alasasisajid9157530@gmail.com', 12121, '2024-12-19', '2025-02-12', '00:12', 1212, 'qqweqw', '2025-02-18 13:05:55', NULL, NULL, '2025-02-18 13:05:55'),
(27, 16, 5981162188, 'abrar', 'alisajid9157530gmail.com', 1123232323, '2024-12-19', '2024-12-31', '12:12', 12, '1212', '2025-02-18 13:20:10', NULL, NULL, '2025-02-18 13:20:10'),
(28, 8, 8308119000, 'abrar', '23323', 1233211231, '2025-02-01', '2025-02-24', '14:32', 23, 'weeq', '2025-02-19 13:18:45', NULL, NULL, '2025-02-19 13:18:45'),
(29, 8, 2895531938, '1212122', '1212121212@gmail.com', 1111111111, '02/19/2025', '02/21/2025', '00:12', 12, '1212', '2025-02-19 13:31:13', NULL, NULL, '2025-02-19 13:31:13'),
(30, 8, 7023080201, 'ss', 'asaslisajid9157530@gmail.com', 1111111111, '02/19/2025', '02/20/2025', '11:11', 12, 'asasa', '2025-02-19 13:32:16', NULL, NULL, '2025-02-19 13:32:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblboat`
--
ALTER TABLE `tblboat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bid` (`BoatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblboat`
--
ALTER TABLE `tblboat`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD CONSTRAINT `bid` FOREIGN KEY (`BoatID`) REFERENCES `tblboat` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
