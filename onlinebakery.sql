-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 06:18 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Age` varchar(225) DEFAULT NULL,
  `Address` varchar(225) DEFAULT NULL,
  `ContactNo` varchar(225) DEFAULT NULL,
  `ProductChoice` varchar(225) DEFAULT NULL,
  `ItemCode` varchar(225) DEFAULT NULL,
  `MultipleItems` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Login` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `Age`, `Address`, `ContactNo`, `ProductChoice`, `ItemCode`, `MultipleItems`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`, `Login`) VALUES
(1, 'alexa kinner', '21', 'asc', '9165415597', NULL, '200103', NULL, 'root', 'root', '2019-10-22 06:43:57', '2019-10-22 06:43:57', 'Customer123'),
(2, 'Lila Bowman', '29', 'csadc', '9165415599', NULL, '200102', NULL, 'Customer123', 'Customer123', '2019-10-22 06:45:11', '2019-10-22 06:45:11', 'Customer123'),
(5, 'David Warner', '18', 'AUS', '8547859685', NULL, '147852', NULL, 'root', 'root', '2020-08-28 13:31:50', '2020-08-28 13:31:50', 'david123'),
(6, 'Julia', '25', 'fff', '8547152569', NULL, '123657', NULL, 'root', 'root', '2020-08-28 17:03:11', '2020-08-28 17:06:34', 'julia123'),
(9, 'Gayle', '33', 'WI', '8514752536', NULL, '123654', NULL, 'root', 'root', '2020-08-31 03:39:40', '2020-08-31 03:39:40', 'Gayle123'),
(10, 'asha', '44', 'US', '8541256983', NULL, '123654', NULL, 'root', 'root', '2020-08-31 04:09:13', '2020-08-31 04:09:13', 'asha123');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` bigint(20) NOT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `login`, `password`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`, `role`) VALUES
(1, 'Admin123', 'Admin@123', 'root', 'root', '2019-10-02 04:11:47', '2019-10-02 04:11:51', 1),
(2, 'Manager123', 'Man@123', NULL, NULL, '2019-10-02 04:23:47', '2019-10-02 04:21:44', 2),
(3, 'Customer123', '123', NULL, NULL, '2019-10-22 06:44:04', '2019-10-22 06:44:04', 3),
(4, 'Hariom123', '123', NULL, NULL, '2019-10-22 06:49:07', '2019-10-22 06:49:07', 3),
(5, 'James123', 'James@123', NULL, NULL, '2020-08-28 09:50:21', '2020-08-28 09:50:21', 2),
(6, 'Hari@gmail.com', 'Hari@123', NULL, NULL, '2020-08-28 12:39:07', '2020-08-28 12:39:07', 3),
(7, 'david123', 'david@123', NULL, NULL, '2020-08-28 13:32:13', '2020-08-28 13:32:13', 3),
(8, 'joe123', 'Joe@123', NULL, NULL, '2020-08-28 13:52:54', '2020-08-28 13:52:54', 2),
(9, 'julia123', 'Julia@123', NULL, NULL, '2020-08-28 17:06:52', '2020-08-28 17:06:52', 3),
(10, 'Tom123', 'Tom@123', NULL, NULL, '2020-08-29 12:27:04', '2020-08-29 12:27:04', 3),
(11, 'Gayle123', 'Gayle@123', NULL, NULL, '2020-08-31 03:39:42', '2020-08-31 03:39:42', 3),
(12, 'asha123', 'Asha@123', NULL, NULL, '2020-08-31 04:09:15', '2020-08-31 04:09:15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `contactNo` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `Login` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Name`, `emailId`, `contactNo`, `address`, `Login`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(2, 'James', 'james@demo.com', '8547898547', 'UK', 'James123', 'Admin123', 'Admin123', '2020-08-28 09:49:44', '2020-08-28 09:50:20'),
(3, 'Joe Root', 'joe@demo.com', '7589654125', 'Paris', 'joe123', 'Admin123', 'Admin123', '2020-08-28 13:52:35', '2020-08-28 13:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` bigint(20) NOT NULL,
  `paymentId` bigint(20) DEFAULT NULL,
  `customerId` bigint(20) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `paymentId`, `customerId`, `productId`, `paymentDate`, `amount`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`, `login`) VALUES
(1, 1, 10, 3, '2020-08-31', 50, NULL, NULL, '2020-08-31 04:09:15', '2020-08-31 04:09:15', 'asha123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` bigint(20) NOT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `productQuantity` varchar(225) DEFAULT NULL,
  `productChoice` varchar(225) DEFAULT NULL,
  `itemCode` varchar(225) DEFAULT NULL,
  `Image` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `productName`, `productQuantity`, `productChoice`, `itemCode`, `Image`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`, `price`) VALUES
(3, 'Cake', '5', 'Cake-Type', '123654', 'cake.jpg', 'Admin123', 'Admin123', '2020-08-28 12:37:10', '2020-08-28 13:27:59', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
