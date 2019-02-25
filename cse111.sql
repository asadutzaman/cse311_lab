-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 05:02 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse111`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Department_ID` int(4) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `MAnager_ID` int(6) DEFAULT NULL,
  `Location_ID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Department_ID`, `Department_Name`, `MAnager_ID`, `Location_ID`) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(50, 'Shipping', 124, 1500),
(60, 'IT', 103, 1400),
(80, 'Sales', 149, 2500),
(90, 'Executive', 100, 1700),
(110, 'Accounting', 205, 1700),
(190, 'Contracting', NULL, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employee_ID` int(6) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Hire_Date` date NOT NULL,
  `Job_ID` varchar(10) NOT NULL,
  `Salary` float(8,2) DEFAULT NULL,
  `Commission_pct` float(2,2) DEFAULT NULL,
  `MAnager_ID` int(6) DEFAULT NULL,
  `Department_ID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employee_ID`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Hire_Date`, `Job_ID`, `Salary`, `Commission_pct`, `MAnager_ID`, `Department_ID`) VALUES
(100, 'Steven', 'king', 'SKING', '515.123.4567', '2006-06-17', 'AD_PRESS', 24000.00, NULL, NULL, 90),
(101, 'Neena', 'Kochar', 'NKOCHAR', '515.123.4568', '2008-09-21', 'AD_VP', 17000.00, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'DEHAAN', '515.123.4569', '2009-01-13', 'AD_VP', 17000.00, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2008-01-03', 'IT_PROG', 9000.00, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2009-05-21', 'IT_PROG', 6000.00, NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2008-02-07', 'IT_PROG', 4200.00, NULL, 103, 60),
(124, 'Kevin', 'Mourgos', 'KMORGOS', '650.123.5234', '2012-11-16', 'ST_MAN', 5800.00, NULL, 100, 50),
(141, 'Treena', 'Rajs', 'RRAJS', '650.121.5234', '2004-10-29', 'ST_CLERK', 3500.00, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '121.123.5234', '2007-01-29', 'ST_CLERK', 3100.00, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '121.123.5234', '2008-03-15', 'ST_CLERK', 2600.00, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '121.123.5234', '2008-07-09', 'ST_CLERK', 2500.00, NULL, 124, 50),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '44.1344.429018', '2014-01-29', 'SA_MAN', 10500.00, 0.20, 100, 80),
(174, 'Ellen', 'Abel', 'EABEL', '44.1644.429017', '2014-05-11', 'SA_REP', 11000.00, 0.30, 149, 80),
(176, 'Jnathon', 'Taylor', 'JTAYLOR', '44.1644.429021', '2008-03-24', 'SA_MAN', 8600.00, 0.20, 149, 80),
(179, 'Kimberely', 'Grant', 'KGRANT', '44.1644.429023', '2009-05-24', 'SA_MAN', 7000.00, 0.15, 149, NULL),
(200, 'Jennifer', 'Whalem', 'JWHALEN', '515.123.4444', '2003-09-17', 'ADD_ASST', 4400.00, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTEIN', '515.123.5555', '2008-02-17', 'MK_MAN', 13000.00, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PHAY', '603.123.6666', '2010-08-17', 'MK_REP', 6000.00, NULL, 201, 20),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8050', '2007-06-07', 'AC_MGR', 12000.00, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2007-06-07', 'AC_ACCOUNT', 8300.00, NULL, 205, 110);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_id` int(4) NOT NULL,
  `Street_Address` varchar(30) NOT NULL,
  `Postal_code` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State_Province` varchar(20) NOT NULL,
  `Country_is` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_id`, `Street_Address`, `Postal_code`, `City`, `State_Province`, `Country_is`) VALUES
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500, '2011 Interiors Vlvd', '99236', 'South San Francisco', 'California', 'US'),
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800, '460 Bloor St. W', 'ON M5S 1X8', 'Torronto', 'Ontario', 'US'),
(2500, 'Magdalen Center- The Oxford Sc', 'OX9 9ZB', 'Oxford', 'Oxford', 'US');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
