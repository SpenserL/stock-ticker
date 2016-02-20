-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2016 at 10:52 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp4711`
--

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `Player` varchar(6) NOT NULL,
  `StockAmount` int(6) NOT NULL,
  `Code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`Player`, `StockAmount`, `Code`) VALUES
('Mickey', 100, 'BOND'),
('Mickey', 10, 'GOLD'),
('Mickey', 50, 'GRAN'),
('Mickey', 0, 'IND'),
('Mickey', 5, 'OIL'),
('Mickey', 170, 'TECH'),
('Henry', 25, 'BOND'),
('Henry', 500, 'GOLD'),
('Henry', 0, 'GRAN'),
('Henry', 1000, 'IND'),
('Henry', 0, 'OIL'),
('Henry', 170, 'TECH'),
('George', 0, 'BOND'),
('George', 0, 'GOLD'),
('George', 0, 'GRAN'),
('George', 1000, 'IND'),
('George', 20, 'OIL'),
('George', 10, 'TECH'),
('Donald', 10, 'BOND'),
('Donald', 10, 'GOLD'),
('Donald', 30, 'GRAN'),
('Donald', 5, 'IND'),
('Donald', 20, 'OIL'),
('Donald', 50, 'TECH');

-- --------------------------------------------------------

--
-- Table structure for table `movements`
--

CREATE TABLE `movements` (
  `Datetime` varchar(19) DEFAULT NULL,
  `Code` varchar(4) DEFAULT NULL,
  `Action` varchar(4) DEFAULT NULL,
  `Amount` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movements`
--

INSERT INTO `movements` (`Datetime`, `Code`, `Action`, `Amount`) VALUES
('2016.02.01-09:01:00', 'BOND', 'down', 5),
('2016.02.01-09:01:02', 'IND', 'div', 5),
('2016.02.01-09:01:04', 'OIL', 'down', 10),
('2016.02.01-09:01:06', 'GOLD', 'div', 5),
('2016.02.01-09:01:08', 'BOND', 'up', 20),
('2016.02.01-09:01:10', 'GOLD', 'div', 5),
('2016.02.01-09:01:12', 'GOLD', 'down', 20),
('2016.02.01-09:01:14', 'IND', 'div', 10),
('2016.02.01-09:01:16', 'OIL', 'up', 20),
('2016.02.01-09:01:18', 'BOND', 'down', 5),
('2016.02.01-09:01:20', 'BOND', 'up', 5),
('2016.02.01-09:01:22', 'BOND', 'div', 20),
('2016.02.01-09:01:24', 'BOND', 'div', 20),
('2016.02.01-09:01:26', 'GOLD', 'div', 20),
('2016.02.01-09:01:28', 'IND', 'up', 20),
('2016.02.01-09:01:30', 'OIL', 'down', 20),
('2016.02.01-09:01:32', 'GRAN', 'down', 20),
('2016.02.01-09:01:34', 'BOND', 'up', 5),
('2016.02.01-09:01:36', 'GOLD', 'down', 20),
('2016.02.01-09:01:38', 'GOLD', 'down', 20),
('2016.02.01-09:01:40', 'TECH', 'down', 20),
('2016.02.01-09:01:42', 'TECH', 'up', 5),
('2016.02.01-09:01:44', 'OIL', 'up', 20),
('2016.02.01-09:01:46', 'BOND', 'up', 5),
('2016.02.01-09:01:48', 'GOLD', 'div', 10),
('2016.02.01-09:01:50', 'GOLD', 'down', 5),
('2016.02.01-09:01:52', 'GOLD', 'up', 20),
('2016.02.01-09:01:54', 'IND', 'down', 10),
('2016.02.01-09:01:56', 'GOLD', 'div', 20);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `Player` varchar(6) DEFAULT NULL,
  `Cash` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`Player`, `Cash`) VALUES
('Mickey', 1000),
('Donald', 3000),
('George', 2000),
('Henry', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `Code` varchar(4) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Category` varchar(1) DEFAULT NULL,
  `Value` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`Code`, `Name`, `Category`, `Value`) VALUES
('BOND', 'Bonds', 'B', 66),
('GOLD', 'Gold', 'B', 110),
('GRAN', 'Grain', 'B', 113),
('IND', 'Industrial', 'B', 39),
('OIL', 'Oil', 'B', 52),
('TECH', 'Tech', 'B', 37);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `DateTime` varchar(19) DEFAULT NULL,
  `Player` varchar(6) DEFAULT NULL,
  `Stock` varchar(4) DEFAULT NULL,
  `Trans` varchar(4) DEFAULT NULL,
  `Quantity` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`DateTime`, `Player`, `Stock`, `Trans`, `Quantity`) VALUES
('2016.02.01-09:01:00', 'Donald', 'BOND', 'buy', 100),
('2016.02.01-09:01:05', 'Donald', 'TECH', 'sell', 1000),
('2016.02.01-09:01:10', 'Henry', 'TECH', 'sell', 1000),
('2016.02.01-09:01:15', 'Donald', 'IND', 'sell', 1000),
('2016.02.01-09:01:20', 'George', 'GOLD', 'sell', 100),
('2016.02.01-09:01:25', 'George', 'OIL', 'buy', 500),
('2016.02.01-09:01:30', 'Henry', 'GOLD', 'sell', 100),
('2016.02.01-09:01:35', 'Henry', 'GOLD', 'buy', 1000),
('2016.02.01-09:01:40', 'Donald', 'TECH', 'buy', 100),
('2016.02.01-09:01:45', 'Donald', 'OIL', 'sell', 100),
('2016.02.01-09:01:50', 'Donald', 'TECH', 'sell', 100),
('2016.02.01-09:01:55', 'George', 'OIL', 'buy', 100),
('2016.02.01-09:01:60', 'George', 'IND', 'buy', 100);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
