-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 05:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountId` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `gmail` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountId`, `firstname`, `lastname`, `middlename`, `gmail`, `password`, `fullname`) VALUES
(1, 'Michael Jay', 'Sinadjan', 'Damas', 'sinadjanmichaeljay@gmail.com', '123', 'Michael Jay Damas Sinadjan'),
(2, 'Bridget', 'Mendoza', NULL, 'bridgetclairemendoza@gmail.com', 'cuteko', 'Bridget Mendoza'),
(3, 'arjay', 'alarde', 'mapula', 'arjay@gmail.com', '123', 'fhdhmd'),
(4, 'asd', 'asd', 'asd', 'mj', '123', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `accountinginfo`
--

CREATE TABLE `accountinginfo` (
  `accountingInfoId` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `payableStatus` varchar(250) DEFAULT NULL,
  `balance` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountinginfo`
--

INSERT INTO `accountinginfo` (`accountingInfoId`, `patientId`, `payableStatus`, `balance`) VALUES
(136, 19, 'Pending', 1000),
(138, 21, 'Pending', 1000),
(140, 22, 'Pending', 1000),
(141, 25, 'Pending', 1000),
(142, 20, 'Pending', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `adminaccount`
--

CREATE TABLE `adminaccount` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobilenumber` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminaccount`
--

INSERT INTO `adminaccount` (`id`, `fullname`, `address`, `email`, `mobilenumber`, `password`) VALUES
(1, 'asd', 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentId` int(11) NOT NULL,
  `dateApp` varchar(250) NOT NULL,
  `timeApp` varchar(250) NOT NULL,
  `patientId` int(11) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `medicineId` int(11) NOT NULL,
  `cQuantity` int(11) NOT NULL,
  `cMockStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `medicineId`, `cQuantity`, `cMockStock`) VALUES
(40, 42, 10, 100);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(56, 'paracetamol'),
(64, 'mj'),
(66, 'Jems');

-- --------------------------------------------------------

--
-- Table structure for table `coursestrandyear`
--

CREATE TABLE `coursestrandyear` (
  `CourseStrandYearId` int(11) NOT NULL,
  `CourseStrandYearName` varchar(250) NOT NULL,
  `departmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursestrandyear`
--

INSERT INTO `coursestrandyear` (`CourseStrandYearId`, `CourseStrandYearName`, `departmentId`) VALUES
(1, 'BSIT', 4),
(2, 'STEM', 5),
(3, 'GRADE-9', 3),
(4, 'GRADE-7', 5),
(5, 'GRADE-10', 6),
(6, 'nursing', 8),
(7, 'pt', 8),
(8, '4th year', 4),
(9, 'kautugan', 10),
(10, 'GRADE-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `dateID` int(11) NOT NULL,
  `avadate` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`dateID`, `avadate`) VALUES
(14, '2023-12-23'),
(15, '2023-11-05'),
(16, '2023-12-30'),
(17, '2023-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentId`, `departmentName`) VALUES
(2, 'Commerce'),
(3, 'CTE'),
(4, 'CCS'),
(5, 'SHS');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorId` int(11) NOT NULL,
  `doctorFirstName` varchar(250) NOT NULL,
  `doctorLastName` varchar(250) NOT NULL,
  `doctorAddress` varchar(250) NOT NULL,
  `doctorGmailAcc` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorId`, `doctorFirstName`, `doctorLastName`, `doctorAddress`, `doctorGmailAcc`, `status`) VALUES
(4, 'mj', 'sinadjan', 'zcc', 'sinadjan@gmail.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employeehealthinformation`
--

CREATE TABLE `employeehealthinformation` (
  `ephiId` int(11) NOT NULL,
  `EPI_ID` int(11) NOT NULL,
  `hospitalnumber` varchar(250) NOT NULL,
  `cbcphysician` varchar(250) NOT NULL,
  `cbcdatetimerequested` varchar(250) NOT NULL,
  `cbcdrawdatetime` varchar(250) NOT NULL,
  `wbc` float NOT NULL,
  `wbcunits` varchar(250) NOT NULL,
  `neutrophils` float NOT NULL,
  `neutrophilsunits` varchar(250) NOT NULL,
  `lymphocyte` float NOT NULL,
  `lymphocyteunits` varchar(250) NOT NULL,
  `monocyte` float NOT NULL,
  `monocyteunits` varchar(250) NOT NULL,
  `eosinophil` decimal(10,0) NOT NULL,
  `eosinophilunits` varchar(250) NOT NULL,
  `basophil` float NOT NULL,
  `basophilunits` varchar(250) NOT NULL,
  `hemoglobin` float NOT NULL,
  `hemoglobinunits` varchar(250) NOT NULL,
  `hematocrit` float NOT NULL,
  `hematocritunits` varchar(250) NOT NULL,
  `rbc` float NOT NULL,
  `rbcunits` varchar(250) NOT NULL,
  `mcv` float NOT NULL,
  `mcvunits` varchar(250) NOT NULL,
  `mch` float NOT NULL,
  `mchunits` varchar(250) NOT NULL,
  `mchc` float NOT NULL,
  `mchcunits` varchar(250) NOT NULL,
  `rcdw` float NOT NULL,
  `rcdwunits` varchar(250) NOT NULL,
  `plateletcount` float NOT NULL,
  `plateletcountunits` varchar(250) NOT NULL,
  `mpv` float NOT NULL,
  `mpvunits` varchar(250) NOT NULL,
  `datet` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeehealthinformation`
--

INSERT INTO `employeehealthinformation` (`ephiId`, `EPI_ID`, `hospitalnumber`, `cbcphysician`, `cbcdatetimerequested`, `cbcdrawdatetime`, `wbc`, `wbcunits`, `neutrophils`, `neutrophilsunits`, `lymphocyte`, `lymphocyteunits`, `monocyte`, `monocyteunits`, `eosinophil`, `eosinophilunits`, `basophil`, `basophilunits`, `hemoglobin`, `hemoglobinunits`, `hematocrit`, `hematocritunits`, `rbc`, `rbcunits`, `mcv`, `mcvunits`, `mch`, `mchunits`, `mchc`, `mchcunits`, `rcdw`, `rcdwunits`, `plateletcount`, `plateletcountunits`, `mpv`, `mpvunits`, `datet`) VALUES
(21, 20, '09701530736', ' mj damas sinadjan,  ALEX romero DAMAS', '12/6/2023, 3:17 PM', '12/6/2023, 3:20 PM', 122, 'x(10^22)/L', 122, '%', 122, '%', 122, '%', 122, '%', 122, '%', 122, 'mg/dl', 1222, 'mg/dl', 1222, '10^12/L', 1222, 'fL', 122, 'pg', 1222, 'g/dL', 1222, '%', 122, 'x(10^9)/L', 1222, 'fL', '2023-12-6');

-- --------------------------------------------------------

--
-- Table structure for table `employeepersonalinformation`
--

CREATE TABLE `employeepersonalinformation` (
  `EPI_ID` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `birthdate` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gmailaddress` varchar(250) NOT NULL,
  `EPI_CODE` int(11) NOT NULL,
  `addressProvince` varchar(250) NOT NULL,
  `addressMunicipality` varchar(250) NOT NULL,
  `addressBarangay` varchar(250) NOT NULL,
  `addressPurok` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `courseStrandYearId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeepersonalinformation`
--

INSERT INTO `employeepersonalinformation` (`EPI_ID`, `firstname`, `lastname`, `middlename`, `birthdate`, `gender`, `age`, `address`, `gmailaddress`, `EPI_CODE`, `addressProvince`, `addressMunicipality`, `addressBarangay`, `addressPurok`, `fullname`, `courseStrandYearId`, `departmentId`, `status`) VALUES
(20, 'Alex', 'Damas', 'R.', '1992-02-29', 'Male', 31, 'Purok zxc, Cabadiangan, Alcantara, Cebu', 'Purok Tugas, Malingin Bogo', 40299649, 'Cebu', 'Alcantara', 'Cabadiangan', 'zxc', 'Alex R. Damas', 2, 5, 'Approved'),
(21, 'Cliff Richard', 'Languido', 'N.', '1999-02-06', 'Male', 24, 'Purok asdss, Cabadiangan, Alcantara, Cebu', 'mj@gmail.com', 84441082, 'Cebu', 'Alcantara', 'Cabadiangan', 'asdss', 'Cliff N. Languido', 5, 5, 'Approved'),
(22, 'Bridget ', 'Mendoza', 'U.', '2001-12-07', 'Male', 23, 'Purok chanel, Cayang, City of Bogo, Cebu', 'arjhayalarde06@gmail.com', 90558632, 'Cebu', 'City of Bogo', 'Cayang', 'chanel', 'Bridget U. Mendoza', 2, 5, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipmentId` int(11) NOT NULL,
  `equipmentName` varchar(250) NOT NULL,
  `equipmentStock` varchar(11) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipmentId`, `equipmentName`, `equipmentStock`, `status`) VALUES
(1, 'charls', '35', 'Active'),
(21, 'mjs', '1', 'Inactive'),
(23, 'mj', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `illness`
--

CREATE TABLE `illness` (
  `illnessId` int(11) NOT NULL,
  `illnessname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `illness`
--

INSERT INTO `illness` (`illnessId`, `illnessname`) VALUES
(1, 'hilanat'),
(2, 'toothache');

-- --------------------------------------------------------

--
-- Table structure for table `logbook`
--

CREATE TABLE `logbook` (
  `logbookid` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `medicineId` int(11) NOT NULL,
  `illnessId` int(11) NOT NULL,
  `datetimePrescribe` varchar(250) NOT NULL,
  `daystotake` int(11) DEFAULT NULL,
  `hmtotake` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logbook`
--

INSERT INTO `logbook` (`logbookid`, `patientId`, `medicineId`, `illnessId`, `datetimePrescribe`, `daystotake`, `hmtotake`) VALUES
(6, 10, 42, 2, '5/1/2024, 1:16:34 PM', 3, 5),
(7, 10, 42, 1, '5/1/2024, 1:40:35 PM', 77, 77),
(8, 9, 42, 1, '5/1/2024, 1:49:49 PM', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `logbookdetail`
--

CREATE TABLE `logbookdetail` (
  `logbookdetailsId` int(11) NOT NULL,
  `logbookid` int(11) NOT NULL,
  `medicineId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logbookdetail`
--

INSERT INTO `logbookdetail` (`logbookdetailsId`, `logbookid`, `medicineId`, `quantity`) VALUES
(1, 6, 42, 10),
(2, 6, 39, 10),
(3, 7, 42, 10),
(4, 7, 39, 10),
(5, 8, 39, 10),
(6, 8, 42, 10);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineId` int(11) NOT NULL,
  `medicineName` varchar(250) NOT NULL,
  `medicineStock` int(11) NOT NULL,
  `units` varchar(250) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `datepurchased` varchar(250) NOT NULL,
  `expirydate` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `dosage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineId`, `medicineName`, `medicineStock`, `units`, `category`, `status`, `datepurchased`, `expirydate`, `description`, `dosage`) VALUES
(39, 'biogesic', 200, '1', 56, 'Active', '2023-12-21', '2025-12-30', 'A trusted brand of paracetamol, Paracetamol (Biogesic) is a medication that is typically used to relieve mild to moderate pain such as headache, backache, menstrual cramps, muscular strain, minor arthritis pain, toothache, and reduce fevers caused by', 'tbsp'),
(42, 'paracetamol for kids', 110, NULL, 56, 'Expired', '2023-12-25', '2024-06-29', '', 'tablet');

-- --------------------------------------------------------

--
-- Table structure for table `medicinestockhistory`
--

CREATE TABLE `medicinestockhistory` (
  `medicineStockId` int(11) NOT NULL,
  `medicineId` int(11) NOT NULL,
  `addedStock` int(11) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicinestockhistory`
--

INSERT INTO `medicinestockhistory` (`medicineStockId`, `medicineId`, `addedStock`, `date`) VALUES
(103, 42, 10, '5/1/2024, 2:03:23 PM');

-- --------------------------------------------------------

--
-- Table structure for table `normalrange`
--

CREATE TABLE `normalrange` (
  `normalrangeId` int(11) NOT NULL,
  `test` varchar(250) NOT NULL,
  `MinRange` float NOT NULL,
  `MaxRange` float NOT NULL,
  `UnitId` int(11) NOT NULL,
  `MinAge` int(11) DEFAULT NULL,
  `MaxAge` int(11) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normalrange`
--

INSERT INTO `normalrange` (`normalrangeId`, `test`, `MinRange`, `MaxRange`, `UnitId`, `MinAge`, `MaxAge`, `Gender`) VALUES
(3, 'Neutrophils', 47, 80, 7, NULL, NULL, NULL),
(5, 'WBC', 4.1, 10.9, 6, NULL, NULL, NULL),
(6, 'Lymphocyte', 13, 40, 7, NULL, NULL, NULL),
(7, 'Monocyte', 2, 11, 7, NULL, NULL, NULL),
(8, 'Eosinophil', 0, 5, 7, NULL, NULL, NULL),
(9, 'Basophil', 0, 2, 7, NULL, NULL, NULL),
(10, 'Hemoglobin', 12, 16, 1, NULL, NULL, NULL),
(11, 'Hematocrit', 36, 46, 1, NULL, NULL, NULL),
(12, 'RBC', 4.5, 9.5, 13, NULL, NULL, NULL),
(13, 'MCV', 80, 100, 14, NULL, NULL, NULL),
(14, 'MCH', 26, 34, 15, NULL, NULL, NULL),
(15, 'MCHC', 31, 36, 12, NULL, NULL, NULL),
(16, 'RCDW', 11.6, 14.8, 7, NULL, NULL, NULL),
(17, 'Platelet Count', 140, 440, 6, NULL, NULL, NULL),
(18, 'MPV', 6.9, 11, 14, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurseId` int(11) NOT NULL,
  `nurseFirstName` varchar(250) NOT NULL,
  `nurseLastName` varchar(250) NOT NULL,
  `nurseAddress` varchar(250) NOT NULL,
  `nurseGmail` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `physicianId` int(11) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `fullname` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `pcode` int(11) DEFAULT NULL,
  `gmail` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`physicianId`, `lastname`, `middlename`, `fullname`, `firstname`, `gender`, `pcode`, `gmail`) VALUES
(1, 'sinadjan', 'damas', ' mj damas sinadjan', 'mj', 'Male', 123456, 'mj@gmail.com'),
(2, 'DAMAS', 'romero', ' ALEX romero DAMAS', 'ALEX', 'Male', 123, 'v@gmailcom'),
(4, 'he', 'hi', ' ha hi he', 'ha', 'Male', NULL, NULL),
(5, 'alarde', 'mapula', ' arhay mapula alarde', 'arhay', 'Male', NULL, NULL),
(6, 'alarde', 'mapula', ' arhaysfsdf mapula alarde', 'arhaysfsdf', 'Male', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `address`, `password`) VALUES
(1, 'asdasdsd', 'silvestermj1973@gmail.com', 'fga@gmail.com', 'asdasd'),
(2, 'jjjjjjjjj', 'sdgsdgdgdfg1973@gmail.com', 'fgdfgdgd@dgmail.com', 'dfg'),
(3, 'asdasdsd', 'silvestermj1973@gmail.com', 'fga@gmail.com', 'asd'),
(4, 'asd', 'asd@gmail.com', 'fga@gmail.com', 'asd'),
(5, 'mj damas sinadjan', 'silvestermj1973@gmail.com', 'nnn@gmail.com', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `studenthealthinformation`
--

CREATE TABLE `studenthealthinformation` (
  `shiId` int(11) NOT NULL,
  `SPI_ID` int(11) NOT NULL,
  `hospitalnumber` varchar(250) NOT NULL,
  `cbcphysician` varchar(250) NOT NULL,
  `cbcdatetimerequested` varchar(250) NOT NULL,
  `cbcdrawdatetime` varchar(250) NOT NULL,
  `wbc` float NOT NULL,
  `wbcunits` varchar(250) NOT NULL,
  `neutrophils` float NOT NULL,
  `neutrophilsunits` varchar(250) NOT NULL,
  `lymphocyte` float NOT NULL,
  `lymphocyteunits` varchar(250) NOT NULL,
  `monocyte` float NOT NULL,
  `monocyteunits` varchar(250) NOT NULL,
  `eosinophil` decimal(10,0) NOT NULL,
  `eosinophilunits` varchar(250) NOT NULL,
  `basophil` float NOT NULL,
  `basophilunits` varchar(250) NOT NULL,
  `hemoglobin` float NOT NULL,
  `hemoglobinunits` varchar(250) NOT NULL,
  `hematocrit` float NOT NULL,
  `hematocritunits` varchar(250) NOT NULL,
  `rbc` float NOT NULL,
  `rbcunits` varchar(250) NOT NULL,
  `mcv` float NOT NULL,
  `mcvunits` varchar(250) NOT NULL,
  `mch` float NOT NULL,
  `mchunits` varchar(250) NOT NULL,
  `mchc` float NOT NULL,
  `mchcunits` varchar(250) NOT NULL,
  `rcdw` float NOT NULL,
  `rcdwunits` varchar(250) NOT NULL,
  `plateletcount` float NOT NULL,
  `plateletcountunits` varchar(250) NOT NULL,
  `mpv` float NOT NULL,
  `mpvunits` varchar(250) NOT NULL,
  `datet` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studenthealthinformation`
--

INSERT INTO `studenthealthinformation` (`shiId`, `SPI_ID`, `hospitalnumber`, `cbcphysician`, `cbcdatetimerequested`, `cbcdrawdatetime`, `wbc`, `wbcunits`, `neutrophils`, `neutrophilsunits`, `lymphocyte`, `lymphocyteunits`, `monocyte`, `monocyteunits`, `eosinophil`, `eosinophilunits`, `basophil`, `basophilunits`, `hemoglobin`, `hemoglobinunits`, `hematocrit`, `hematocritunits`, `rbc`, `rbcunits`, `mcv`, `mcvunits`, `mch`, `mchunits`, `mchc`, `mchcunits`, `rcdw`, `rcdwunits`, `plateletcount`, `plateletcountunits`, `mpv`, `mpvunits`, `datet`) VALUES
(24, 9, '081501312323', ' mj damas sinadjan,  ALEX romero DAMAS,  arhay mapula alarde', '12/23/2023, 10:18 PM', '12/13/2023, 10:18 PM', 12, 'x(10^9)/L', 5, '%', 12, '%', 22, '%', 22, '%', 25, '%', 35, 'mg/dl', 4, 'mg/dl', 33, '10^12/L', 2, 'fL', 22, 'pg', 42, 'g/dL', 2, '%', 143, 'x(10^9)/L', 32, 'fL', '2023-12-23'),
(25, 10, '131231', ' mj damas sinadjan,  arhay mapula alarde', '12/30/2023, 9:35 AM', '12/26/2023, 9:35 AM', 22, 'x(10^9)/L', 2, '%', 22, '%', 2, '%', 22, '%', 2, '%', 22, 'mg/dl', 2, 'mg/dl', 22, '10^12/L', 2, 'fL', 22, 'pg', 2, 'g/dL', 22, '%', 2, 'x(10^9)/L', 22, 'fL', '2023-12-25'),
(26, 9, '3123444232', ' mj damas sinadjan', '7/15/2024, 9:06 PM', '7/15/2024, 9:32 PM', 5, 'x(10^9)/L', 5, '%', 5, '%', 5, '%', 5, '%', 5, '%', 5, 'mg/dl', 5, 'mg/dl', 5, '10^12/L', 5, 'fL', 5, 'pg', 5, 'g/dL', 5, '%', 5, 'x(10^9)/L', 5, 'fL', '2024-7-15');

-- --------------------------------------------------------

--
-- Table structure for table `studentpersonalinformation`
--

CREATE TABLE `studentpersonalinformation` (
  `SPI_ID` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `birthdate` varchar(250) NOT NULL,
  `gmailaddress` varchar(250) NOT NULL,
  `addressProvince` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  `SPI_CODE` int(11) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `addressMunicipality` varchar(250) NOT NULL,
  `addressBarangay` varchar(250) NOT NULL,
  `addressPurok` varchar(250) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `courseStrandYearId` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `status` varchar(250) DEFAULT NULL,
  `scholar` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentpersonalinformation`
--

INSERT INTO `studentpersonalinformation` (`SPI_ID`, `firstname`, `lastname`, `middlename`, `birthdate`, `gmailaddress`, `addressProvince`, `age`, `SPI_CODE`, `gender`, `addressMunicipality`, `addressBarangay`, `addressPurok`, `departmentId`, `courseStrandYearId`, `address`, `fullname`, `status`, `scholar`) VALUES
(9, 'MICHELLE', 'Arcillas', 'Sinadjan', '2017-12-12', 'sss@gmail.com', 'Cebu', 6, 12345678, 'Female', 'City of Bogo', 'Gairan', 'aagustin', 4, 1, 'Purok aagustin, Gairan, City of Bogo, Cebu', ' MICHELLE  Sinadjan  Arcillas', 'Approved', 'ESC'),
(10, 'mj', 'sinadjan', 'damas', '2001-09-15', 'zcc@gmail.com', 'Cebu', 22, 52633195, 'Male', 'City of Bogo', 'Malingin', 'Tugas', 3, 3, 'Purok Tugas, Malingin, City of Bogo, Cebu', ' mj  damas  sinadjan', 'Approved', 'ESC'),
(15, 'markel', 'sinadjan', 'damas', '2004-01-01', 'zcc', 'Cebu', 19, 22997760, 'Male', 'Alcantara', 'Cabadiangan', 'Tugas', 5, 2, 'Purok Tugas, Cabadiangan, Alcantara, Cebu', ' markel  damas  sinadjan', 'Approved', 'ESC'),
(16, 'bridget', 'mendoza', 'abacial', '2001-08-21', 'bridgetclairemendoza@gmail.com', 'Cebu', 22, 31733203, 'Female', 'City of Bogo', 'Cayang', 'mh del pilar', 8, 6, 'Purok mh del pilar, Cayang, City of Bogo, Cebu', ' bridget  abacial  mendoza', 'Approved', 'ESC'),
(17, 'arjhay', 'alarde', 'mapula', '2023-12-07', 'arjhayalarde06@gmail.com', 'Cebu', 0, 77479345, 'Male', 'City of Bogo', 'San Vicente (Pob.)', 'chanel', 8, 7, 'Purok chanel, San Vicente (Pob.), City of Bogo, Cebu', ' arjhay  mapula  alarde', 'Approved', 'ESC'),
(18, 'jade', 'alarde', 'mapula', '2023-12-07', 'jadeaaaaalarde06@gmail.com', 'Cebu', 0, 93439652, 'Male', 'City of Bogo', 'Malingin', 'chanel', 3, 3, 'Purok chanel, Malingin, City of Bogo, Cebu', ' jade  mapula  alarde', 'Approved', 'ESC'),
(19, 'Jupiter', 'Balbero', 'S.', '2001-02-19', 'jupiter06@gmail.com', 'Cebu', 22, 25257610, 'Male', 'City of Bogo', 'Banban', 'LPC', 10, 9, 'Purok LPC, Banban, City of Bogo, Cebu', 'Jupiter S. Balbero', 'Approved', 'NA'),
(25, 'Nino', 'Abao', 'U.', '2023-12-30', 'asd', 'Cebu', 0, 43743219, 'Male', 'City of Bogo', 'Cogon (Pob.)', 'Tugas', 5, 2, 'Purok Tugas, Cogon (Pob.), City of Bogo, Cebu', 'Nino U. Abao', 'Approved', 'NA'),
(26, 'fds', 'dsf', 'sdf', '2011-02-28', 'adas@gmail.com', 'Cebu', 13, 44435343, 'Male', 'Alcantara', 'Cabadiangan', 'dsa', 5, 2, 'Purok dsa, Cabadiangan, Alcantara, Cebu', ' fds  sdf  dsf', 'Approved', 'ESC');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `timeID` int(11) NOT NULL,
  `dateId` int(11) NOT NULL,
  `avatime` varchar(250) NOT NULL,
  `timeSlot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`timeID`, `dateId`, `avatime`, `timeSlot`) VALUES
(2, 3, '11:56', 0),
(6, 8, '09:02', 0),
(8, 10, '12:53', 0),
(9, 10, '13:04', 0),
(13, 13, '9:29 PM', 0),
(16, 13, '6:10 PM', 0),
(17, 13, '1:05 PM', 0),
(18, 13, '2:22 AM', 0),
(20, 14, '3:32 AM', 0),
(21, 14, '11:48 PM', 0),
(22, 17, '1:17 PM', 0),
(39, 14, '8:35 PM', 0),
(41, 14, '8:18 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unitId` int(11) NOT NULL,
  `unitname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unitId`, `unitname`) VALUES
(1, 'mg/dl'),
(3, 'S.I. Unit'),
(4, 'pmol/L'),
(5, 'x(10^22)/L'),
(6, 'x(10^9)/L'),
(7, '%'),
(12, 'g/dL'),
(13, '10^12/L'),
(14, 'fL'),
(15, 'pg'),
(16, 'palautog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `accountinginfo`
--
ALTER TABLE `accountinginfo`
  ADD PRIMARY KEY (`accountingInfoId`);

--
-- Indexes for table `adminaccount`
--
ALTER TABLE `adminaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursestrandyear`
--
ALTER TABLE `coursestrandyear`
  ADD PRIMARY KEY (`CourseStrandYearId`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`dateID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorId`);

--
-- Indexes for table `employeehealthinformation`
--
ALTER TABLE `employeehealthinformation`
  ADD PRIMARY KEY (`ephiId`);

--
-- Indexes for table `employeepersonalinformation`
--
ALTER TABLE `employeepersonalinformation`
  ADD PRIMARY KEY (`EPI_ID`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipmentId`);

--
-- Indexes for table `illness`
--
ALTER TABLE `illness`
  ADD PRIMARY KEY (`illnessId`);

--
-- Indexes for table `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`logbookid`);

--
-- Indexes for table `logbookdetail`
--
ALTER TABLE `logbookdetail`
  ADD PRIMARY KEY (`logbookdetailsId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineId`);

--
-- Indexes for table `medicinestockhistory`
--
ALTER TABLE `medicinestockhistory`
  ADD PRIMARY KEY (`medicineStockId`);

--
-- Indexes for table `normalrange`
--
ALTER TABLE `normalrange`
  ADD PRIMARY KEY (`normalrangeId`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nurseId`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`physicianId`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studenthealthinformation`
--
ALTER TABLE `studenthealthinformation`
  ADD PRIMARY KEY (`shiId`);

--
-- Indexes for table `studentpersonalinformation`
--
ALTER TABLE `studentpersonalinformation`
  ADD PRIMARY KEY (`SPI_ID`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`timeID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unitId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accountinginfo`
--
ALTER TABLE `accountinginfo`
  MODIFY `accountingInfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `adminaccount`
--
ALTER TABLE `adminaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `coursestrandyear`
--
ALTER TABLE `coursestrandyear`
  MODIFY `CourseStrandYearId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `dateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employeehealthinformation`
--
ALTER TABLE `employeehealthinformation`
  MODIFY `ephiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employeepersonalinformation`
--
ALTER TABLE `employeepersonalinformation`
  MODIFY `EPI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `illness`
--
ALTER TABLE `illness`
  MODIFY `illnessId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logbook`
--
ALTER TABLE `logbook`
  MODIFY `logbookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logbookdetail`
--
ALTER TABLE `logbookdetail`
  MODIFY `logbookdetailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `medicinestockhistory`
--
ALTER TABLE `medicinestockhistory`
  MODIFY `medicineStockId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `normalrange`
--
ALTER TABLE `normalrange`
  MODIFY `normalrangeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nurseId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `physician`
--
ALTER TABLE `physician`
  MODIFY `physicianId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studenthealthinformation`
--
ALTER TABLE `studenthealthinformation`
  MODIFY `shiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `studentpersonalinformation`
--
ALTER TABLE `studentpersonalinformation`
  MODIFY `SPI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `timeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unitId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
