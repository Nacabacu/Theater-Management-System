-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2015 at 12:39 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamond`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` varchar(5) NOT NULL,
  `BranchName` varchar(30) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `TelephoneNumber` varchar(9) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BranchName`, `Address`, `TelephoneNumber`, `Email`) VALUES
('B0001', 'The Mall Bangkapi', '3522 Ladphrao rd. Klongjan Bangkapi Bangkok 10240', '023152463', 'themall_bangkapi@diamond.co.th'),
('B0002', 'Fashion Island', 'Minburi Minburi Bangkok 10510', '021346856', 'fashion@diamond.co.th');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodid` varchar(6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodid`, `description`, `price`) VALUES
('F0001', 'Popcorn M', 80),
('F0002', 'Popcorn L', 100),
('F0003', 'Popcorn XL', 120),
('F0004', 'Softdrink M', 40),
('F0005', 'Softdrink L', 60),
('F0006', 'Softdrink XL', 80),
('F0007', 'Combo set 1 (M)', 100),
('F0008', 'Combo set 2 (L)', 140),
('F0009', 'Combo set 1 (XL)', 180);

-- --------------------------------------------------------

--
-- Table structure for table `foodtransaction`
--

CREATE TABLE `foodtransaction` (
  `transactionid` varchar(6) NOT NULL,
  `foodid` varchar(6) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodtransaction`
--

INSERT INTO `foodtransaction` (`transactionid`, `foodid`, `quantity`) VALUES
('T0001', 'F0002', 1),
('T0002', 'F0006', 1),
('T0003', 'F0007', 1),
('T0013', 'F0001', 1),
('T0018', 'F0006', 2),
('T0019', 'F0002', 2),
('T0019', 'F0005', 3),
('T0030', 'F0002', 2),
('T0030', 'F0007', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` varchar(6) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `TelephoneNumber` varchar(10) NOT NULL,
  `Password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `Name`, `LastName`, `DateOfBirth`, `Sex`, `Email`, `TelephoneNumber`, `Password`) VALUES
('M0001', 'Prasert', 'Arthit', '1968-04-05', 'Male', 'prasert@gmail.com', '0878377156', '1d6a3aef9d8cd0abccfef31c5b5d7892'),
('M0002', 'Mike', 'Anderson', '1984-12-04', 'Male', 'mike_ander@gmail.com', '0841253617', '1d6a3aef9d8cd0abccfef31c5b5d7892'),
('M0003', 'Saijai', 'Maimee', '1994-08-15', 'Female', 'Saimee@hotmail.com', '0878345611', '4d5c344a01c55a0451d2a4f1ad1e560c'),
('M0004', 'Suchart', 'Sangthong', '1990-08-28', 'Male', 'gu_mun_za555@hotmail.com', '0833655424', 'dc757d916afcf9cea3ddc80f10d18389'),
('M0005', 'Ravarich', 'Klongkot', '1995-11-15', 'Male', 'golfza007@hotmail.com', '0844452696', '9e8b91bdc736b0c05a94d1bd1fd5425f'),
('M0006', 'Suthep', 'Napatee', '1995-07-11', 'Male', 'sutep1996@hotmail.com', '085563965', 'e715635d5991de62c638d57d335abd5c'),
('M0007', 'Smith', 'Preedapat', '1987-07-08', 'Male', 'smithichote@hotmail.com', '0855636872', 'dad1342465e161f5f45f632057faae77'),
('M0008', 'Suwapat', 'Preedachai', '1990-12-19', 'Female', 'linlin1554@yahoo.com', '0856369874', 'db814ca904d43d5e92a7fd0b993ccc43'),
('M0009', 'Porun', 'Saetiew', '1994-08-17', 'Male', 'porunchaidee@hotmail.com', '0856369854', '25886b0a3c0a7fa44846205e160bd117'),
('M0010', 'Suchada', 'Chaikwang', '1990-07-11', 'Female', 'suchada_jung@hotmail.com', '0863685441', '96a95bfe473a03bb9d017f86ee35317b'),
('M0011', 'Sompong', 'pongtai', '1975-12-23', 'Male', 'sompong4_jaa@gmail.com', '0856365426', 'c3b2c515ec24312c75a17ac9e64b17c1'),
('M0012', 'Theerapat', 'Chuwit', '1985-12-29', 'Male', 'Theerapat13@yahoo.com', '0856365245', '0ffacf5a4eabd2cb94ffe2a3dde49acf'),
('M0013', 'Natthida', 'somrak', '1987-02-16', 'Female', 'Nathida-ying@hotmail.com', '0856369857', 'f15fedb1441138ae89cf37689f0c5c1b'),
('M0014', 'Suangswan', 'Kaewnoi', '1980-12-16', 'Female', 'aun_555@gmail.com', '0877563698', 'f3e29226163764805c3953dfaec4f882'),
('M0015', 'Pattawan', 'Chaidee', '1990-03-07', 'Female', 'Patawan_narakna', '0836965247', '130ac57b372938f60ad8c176cc4cdd7c'),
('M0016', 'Somchart', 'Rakchart', '1980-08-14', 'Male', 'somchat_handsomejaa', '0863698547', '9d7adb2b59885394ba4f99ec4bb89f8a');

-- --------------------------------------------------------

--
-- Table structure for table `membercard`
--

CREATE TABLE `membercard` (
  `CardID` varchar(6) NOT NULL,
  `MemberID` varchar(6) NOT NULL,
  `Point` int(10) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membercard`
--

INSERT INTO `membercard` (`CardID`, `MemberID`, `Point`, `Type`, `EndDate`) VALUES
('CD0001', 'M0001', 200, 'Gold', '2014-12-06'),
('CD0002', 'M0002', 1055, 'Plantinum', '2015-06-12'),
('CD0003', 'M0003', 16, 'Plantinum', '2016-12-06'),
('CD0004', 'M0001', 0, 'Plantinum', '2014-12-09'),
('CD0005', 'M0003', 17, 'Plantinum', '2016-12-10'),
('CD0006', 'M0004', 60, 'Silver', '2016-12-10'),
('CD0007', 'M0005', 7, 'Gold', '2015-12-10'),
('CD0008', 'M0006', 6, 'Plantinum', '2016-12-10'),
('CD0009', 'M0007', 14, 'Plantinum', '2016-12-10'),
('CD0010', 'M0008', 185, 'Gold', '2016-12-10'),
('CD0011', 'M0009', 0, 'Silver', '2016-12-10'),
('CD0012', 'M0010', 12, 'Plantinum', '2016-12-10'),
('CD0013', 'M0011', 9, 'Silver', '2016-12-10'),
('CD0014', 'M0012', 0, 'Gold', '2016-12-10'),
('CD0015', 'M0013', 9, 'Silver', '2016-12-10'),
('CD0016', 'M0014', 15, 'Silver', '2016-12-10'),
('CD0017', 'M0015', 100, 'Plantinum', '2016-12-10'),
('CD0018', 'M0016', 500, 'Plantinum', '2016-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `membercardtype`
--

CREATE TABLE `membercardtype` (
  `Type` varchar(15) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membercardtype`
--

INSERT INTO `membercardtype` (`Type`, `Discount`) VALUES
('Gold', 10),
('Plantinum', 15),
('Silver', 5);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MovieID` varchar(6) NOT NULL,
  `MovieName` varchar(30) NOT NULL,
  `Length` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MovieID`, `MovieName`, `Length`) VALUES
('MV0001', 'Harry Potter 4', '03:15:00'),
('MV0002', 'The Hunger Game 3.2', '02:30:00'),
('MV0003', 'Starwar Episode : III', '03:30:00'),
('MV0004', 'ATM Errak Error', '01:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `SeatID` varchar(6) NOT NULL,
  `TheaterID` varchar(6) NOT NULL,
  `SeatNO` varchar(6) NOT NULL,
  `SeatType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`SeatID`, `TheaterID`, `SeatNO`, `SeatType`) VALUES
('SE0001', 'TH0001', 'A1', 'Deluxe'),
('SE0002', 'TH0001', 'A2', 'Deluxe'),
('SE0003', 'TH0001', 'A3', 'Deluxe'),
('SE0004', 'TH0001', 'A4', 'Deluxe'),
('SE0005', 'TH0001', 'A5', 'Deluxe'),
('SE0006', 'TH0001', 'B1', 'Deluxe'),
('SE0007', 'TH0001', 'B2', 'Deluxe'),
('SE0008', 'TH0001', 'B3', 'Deluxe'),
('SE0009', 'TH0001', 'B4', 'Deluxe'),
('SE0010', 'TH0001', 'B5', 'Deluxe'),
('SE0011', 'TH0001', 'C1', 'Normal'),
('SE0012', 'TH0001', 'C2', 'Normal'),
('SE0013', 'TH0001', 'C3', 'Normal'),
('SE0014', 'TH0001', 'C4', 'Normal'),
('SE0015', 'TH0001', 'C5', 'Normal'),
('SE0016', 'TH0001', 'D1', 'Normal'),
('SE0017', 'TH0001', 'D2', 'Normal'),
('SE0018', 'TH0001', 'D3', 'Normal'),
('SE0019', 'TH0001', 'D4', 'Normal'),
('SE0020', 'TH0001', 'D5', 'Normal'),
('SE0021', 'TH0001', 'E1', 'Normal'),
('SE0022', 'TH0001', 'E2', 'Normal'),
('SE0023', 'TH0001', 'E3', 'Normal'),
('SE0024', 'TH0001', 'E4', 'Normal'),
('SE0025', 'TH0001', 'E5', 'Normal'),
('SE0026', 'TH0002', 'A1', 'Deluxe'),
('SE0027', 'TH0002', 'A2', 'Deluxe'),
('SE0028', 'TH0002', 'A3', 'Deluxe'),
('SE0029', 'TH0002', 'A4', 'Deluxe'),
('SE0030', 'TH0002', 'A5', 'Deluxe'),
('SE0031', 'TH0002', 'B1', 'Deluxe'),
('SE0032', 'TH0002', 'B2', 'Deluxe'),
('SE0033', 'TH0002', 'B3', 'Deluxe'),
('SE0034', 'TH0002', 'B4', 'Deluxe'),
('SE0035', 'TH0002', 'B5', 'Deluxe'),
('SE0036', 'TH0002', 'C1', 'Normal'),
('SE0037', 'TH0002', 'C2', 'Normal'),
('SE0038', 'TH0002', 'C3', 'Normal'),
('SE0039', 'TH0002', 'C4', 'Normal'),
('SE0040', 'TH0002', 'C5', 'Normal'),
('SE0041', 'TH0002', 'D1', 'Normal'),
('SE0042', 'TH0002', 'D2', 'Normal'),
('SE0043', 'TH0002', 'D3', 'Normal'),
('SE0044', 'TH0002', 'D4', 'Normal'),
('SE0045', 'TH0001', 'D5', 'Normal'),
('SE0046', 'TH0002', 'E1', 'Normal'),
('SE0047', 'TH0002', 'E2', 'Normal'),
('SE0048', 'TH0002', 'E3', 'Normal'),
('SE0049', 'TH0002', 'E4', 'Normal'),
('SE0050', 'TH0002', 'E5', 'Normal'),
('SE0051', 'TH0004', 'A1', 'Deluxe'),
('SE0052', 'TH0004', 'A2', 'Deluxe'),
('SE0053', 'TH0004', 'A3', 'Deluxe'),
('SE0054', 'TH0004', 'A4', 'Deluxe'),
('SE0055', 'TH0004', 'A5', 'Deluxe'),
('SE0056', 'TH0004', 'B1', 'Deluxe'),
('SE0057', 'TH0004', 'B2', 'Deluxe'),
('SE0058', 'TH0004', 'B3', 'Deluxe'),
('SE0059', 'TH0004', 'B4', 'Deluxe'),
('SE0060', 'TH0004', 'B5', 'Deluxe'),
('SE0061', 'TH0004', 'C1', 'Normal'),
('SE0062', 'TH0004', 'C2', 'Normal'),
('SE0063', 'TH0004', 'C3', 'Normal'),
('SE0064', 'TH0004', 'C4', 'Normal'),
('SE0065', 'TH0004', 'C5', 'Normal'),
('SE0066', 'TH0004', 'D1', 'Normal'),
('SE0067', 'TH0004', 'D2', 'Normal'),
('SE0068', 'TH0004', 'D3', 'Normal'),
('SE0069', 'TH0004', 'D4', 'Normal'),
('SE0070', 'TH0004', 'D5', 'Normal'),
('SE0071', 'TH0004', 'E1', 'Normal'),
('SE0072', 'TH0004', 'E2', 'Normal'),
('SE0073', 'TH0004', 'E3', 'Normal'),
('SE0074', 'TH0004', 'E4', 'Normal'),
('SE0075', 'TH0004', 'E5', 'Normal'),
('SE0076', 'TH0003', 'A1', 'Deluxe'),
('SE0077', 'TH0003', 'A2', 'Deluxe'),
('SE0078', 'TH0003', 'A3', 'Deluxe'),
('SE0079', 'TH0003', 'A4', 'Deluxe'),
('SE0080', 'TH0003', 'A5', 'Deluxe'),
('SE0081', 'TH0003', 'B1', 'Deluxe'),
('SE0082', 'TH0003', 'B2', 'Deluxe'),
('SE0083', 'TH0003', 'B3', 'Deluxe'),
('SE0084', 'TH0003', 'B4', 'Deluxe'),
('SE0085', 'TH0003', 'B5', 'Deluxe'),
('SE0086', 'TH0003', 'C1', 'Normal'),
('SE0087', 'TH0003', 'C2', 'Normal'),
('SE0088', 'TH0003', 'C3', 'Normal'),
('SE0089', 'TH0003', 'C4', 'Normal'),
('SE0090', 'TH0003', 'C5', 'Normal'),
('SE0091', 'TH0003', 'D1', 'Normal'),
('SE0092', 'TH0003', 'D2', 'Normal'),
('SE0093', 'TH0003', 'D3', 'Normal'),
('SE0094', 'TH0003', 'D4', 'Normal'),
('SE0095', 'TH0003', 'D5', 'Normal'),
('SE0096', 'TH0003', 'E1', 'Normal'),
('SE0097', 'TH0003', 'E2', 'Normal'),
('SE0098', 'TH0003', 'E3', 'Normal'),
('SE0099', 'TH0003', 'E4', 'Normal'),
('SE0100', 'TH0003', 'E5', 'Normal'),
('SE0101', 'TH0005', 'A1', 'Deluxe'),
('SE0102', 'TH0005', 'A2', 'Deluxe'),
('SE0103', 'TH0005', 'A3', 'Deluxe'),
('SE0104', 'TH0005', 'A4', 'Deluxe'),
('SE0105', 'TH0005', 'A5', 'Deluxe'),
('SE0106', 'TH0005', 'B1', 'Deluxe'),
('SE0107', 'TH0005', 'B2', 'Deluxe'),
('SE0108', 'TH0005', 'B3', 'Deluxe'),
('SE0109', 'TH0005', 'B4', 'Deluxe'),
('SE0110', 'TH0005', 'B5', 'Deluxe'),
('SE0111', 'TH0005', 'C1', 'Normal'),
('SE0112', 'TH0005', 'C2', 'Normal'),
('SE0113', 'TH0005', 'C3', 'Normal'),
('SE0114', 'TH0005', 'C4', 'Normal'),
('SE0115', 'TH0005', 'C5', 'Normal'),
('SE0116', 'TH0005', 'D1', 'Normal'),
('SE0117', 'TH0005', 'D2', 'Normal'),
('SE0118', 'TH0005', 'D3', 'Normal'),
('SE0119', 'TH0005', 'D4', 'Normal'),
('SE0120', 'TH0005', 'D5', 'Normal'),
('SE0121', 'TH0005', 'E1', 'Normal'),
('SE0122', 'TH0005', 'E2', 'Normal'),
('SE0123', 'TH0005', 'E3', 'Normal'),
('SE0124', 'TH0005', 'E4', 'Normal'),
('SE0125', 'TH0005', 'E5', 'Normal'),
('SE0126', 'TH0006', 'A1', 'Deluxe'),
('SE0127', 'TH0006', 'A2', 'Deluxe'),
('SE0128', 'TH0006', 'A3', 'Deluxe'),
('SE0129', 'TH0006', 'A4', 'Deluxe'),
('SE0130', 'TH0006', 'A5', 'Deluxe'),
('SE0131', 'TH0006', 'B1', 'Deluxe'),
('SE0132', 'TH0006', 'B2', 'Deluxe'),
('SE0133', 'TH0006', 'B3', 'Deluxe'),
('SE0134', 'TH0006', 'B4', 'Deluxe'),
('SE0135', 'TH0006', 'B5', 'Deluxe'),
('SE0136', 'TH0006', 'C1', 'Normal'),
('SE0137', 'TH0006', 'C2', 'Normal'),
('SE0138', 'TH0006', 'C3', 'Normal'),
('SE0139', 'TH0006', 'C4', 'Normal'),
('SE0140', 'TH0006', 'C5', 'Normal'),
('SE0141', 'TH0006', 'D1', 'Normal'),
('SE0142', 'TH0006', 'D2', 'Normal'),
('SE0143', 'TH0006', 'D3', 'Normal'),
('SE0144', 'TH0006', 'D4', 'Normal'),
('SE0145', 'TH0006', 'D5', 'Normal'),
('SE0146', 'TH0006', 'E1', 'Normal'),
('SE0147', 'TH0006', 'E2', 'Normal'),
('SE0148', 'TH0006', 'E3', 'Normal'),
('SE0149', 'TH0005', 'E4', 'Normal'),
('SE0150', 'TH0005', 'E5', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `seatprice`
--

CREATE TABLE `seatprice` (
  `SeatType` varchar(15) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatprice`
--

INSERT INTO `seatprice` (`SeatType`, `Price`) VALUES
('Deluxe', 220),
('Normal', 170);

-- --------------------------------------------------------

--
-- Table structure for table `seattransaction`
--

CREATE TABLE `seattransaction` (
  `TransactionID` varchar(6) NOT NULL,
  `SeatID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seattransaction`
--

INSERT INTO `seattransaction` (`TransactionID`, `SeatID`) VALUES
('T0004', 'SE0008'),
('T0004', 'SE0012'),
('T0004', 'SE0014'),
('T0005', 'SE0034'),
('T0005', 'SE0037'),
('T0005', 'SE0038'),
('T0005', 'SE0044'),
('T0006', 'SE0007'),
('T0006', 'SE0009'),
('T0006', 'SE0013'),
('T0007', 'SE0113'),
('T0007', 'SE0118'),
('T0007', 'SE0122'),
('T0008', 'SE0126'),
('T0008', 'SE0127'),
('T0008', 'SE0128'),
('T0008', 'SE0129'),
('T0009', 'SE0126'),
('T0009', 'SE0127'),
('T0010', 'SE0032'),
('T0010', 'SE0033'),
('T0011', 'SE0062'),
('T0011', 'SE0063'),
('T0011', 'SE0064'),
('T0012', 'SE0032'),
('T0012', 'SE0033'),
('T0014', 'SE0057'),
('T0014', 'SE0058'),
('T0014', 'SE0059'),
('T0015', 'SE0062'),
('T0015', 'SE0063'),
('T0016', 'SE0107'),
('T0016', 'SE0108'),
('T0016', 'SE0109'),
('T0017', 'SE0131'),
('T0017', 'SE0132'),
('T0017', 'SE0133'),
('T0017', 'SE0134'),
('T0017', 'SE0135'),
('T0020', 'SE0056'),
('T0021', 'SE0111'),
('T0021', 'SE0112'),
('T0021', 'SE0113'),
('T0021', 'SE0114'),
('T0021', 'SE0115'),
('T0026', 'SE0055'),
('T0027', 'SE0051'),
('T0027', 'SE0052'),
('T0027', 'SE0053'),
('T0027', 'SE0054'),
('T0027', 'SE0055'),
('T0027', 'SE0056'),
('T0027', 'SE0057'),
('T0027', 'SE0058'),
('T0027', 'SE0059'),
('T0027', 'SE0060'),
('T0027', 'SE0061'),
('T0027', 'SE0064'),
('T0027', 'SE0065'),
('T0027', 'SE0066'),
('T0027', 'SE0067'),
('T0027', 'SE0068'),
('T0027', 'SE0069'),
('T0027', 'SE0070'),
('T0027', 'SE0071'),
('T0027', 'SE0072'),
('T0027', 'SE0073'),
('T0027', 'SE0074'),
('T0027', 'SE0075'),
('T0028', 'SE0031'),
('T0028', 'SE0036'),
('T0029', 'SE0027'),
('T0029', 'SE0028'),
('T0029', 'SE0029');

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE `sex` (
  `Sex` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`Sex`) VALUES
('Female'),
('Male');

-- --------------------------------------------------------

--
-- Table structure for table `showtime`
--

CREATE TABLE `showtime` (
  `showtimeID` varchar(6) NOT NULL,
  `TheaterID` varchar(6) NOT NULL,
  `MovieID` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `StartTime` time NOT NULL,
  `SoundLanguage` varchar(20) NOT NULL,
  `SubtitleLanguage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showtime`
--

INSERT INTO `showtime` (`showtimeID`, `TheaterID`, `MovieID`, `date`, `StartTime`, `SoundLanguage`, `SubtitleLanguage`) VALUES
('ST0001', 'TH0001', 'MV0001', '2015-12-11', '10:00:00', 'English', 'Thai'),
('ST0002', 'TH0001', 'MV0003', '2015-12-11', '13:00:00', 'Thai', 'English'),
('ST0003', 'TH0001', 'MV0004', '2015-12-11', '20:00:00', 'English', 'Thai'),
('ST0004', 'TH0002', 'MV0002', '2015-12-11', '11:00:00', 'Thai', 'English'),
('ST0005', 'TH0002', 'MV0003', '2015-12-11', '16:00:00', 'English', 'Thai'),
('ST0006', 'TH0002', 'MV0004', '2015-12-11', '18:30:00', 'Thai', 'English'),
('ST0007', 'TH0004', 'MV0002', '2015-12-11', '13:00:00', 'Thai', 'English'),
('ST0008', 'TH0004', 'MV0001', '2015-12-11', '17:00:00', 'English', 'Thai'),
('ST0009', 'TH0004', 'MV0001', '2015-12-11', '22:00:00', 'Thai', 'English'),
('ST0010', 'TH0003', 'MV0002', '2015-12-11', '11:00:00', 'English', 'Thai'),
('ST0011', 'TH0003', 'MV0003', '2015-12-11', '14:00:00', 'Thai', 'English'),
('ST0012', 'TH0003', 'MV0004', '2015-12-11', '18:00:00', 'English', 'Thai'),
('ST0013', 'TH0005', 'MV0002', '2015-12-11', '15:00:00', 'Thai', 'English'),
('ST0014', 'TH0005', 'MV0001', '2015-12-11', '20:15:00', 'English', 'Thai'),
('ST0015', 'TH0005', 'MV0001', '2015-12-11', '23:30:00', 'Thai', 'English'),
('ST0016', 'TH0006', 'MV0004', '2015-12-11', '10:30:00', 'Thai', 'English'),
('ST0017', 'TH0006', 'MV0003', '2015-12-11', '13:00:00', 'English', 'Thai'),
('ST0018', 'TH0006', 'MV0002', '2015-12-11', '19:00:00', 'Thai', 'English'),
('ST0019', 'TH0001', 'MV0001', '2015-12-12', '10:00:00', 'English', 'Thai'),
('ST0020', 'TH0001', 'MV0003', '2015-12-12', '13:00:00', 'Thai', 'English'),
('ST0021', 'TH0001', 'MV0004', '2015-12-12', '20:00:00', 'English', 'Thai'),
('ST0022', 'TH0002', 'MV0002', '2015-12-12', '11:00:00', 'Thai', 'English'),
('ST0023', 'TH0002', 'MV0003', '2015-12-12', '16:00:00', 'English', 'Thai'),
('ST0024', 'TH0002', 'MV0004', '2015-12-12', '18:30:00', 'Thai', 'English'),
('ST0025', 'TH0004', 'MV0002', '2015-12-12', '13:00:00', 'Thai', 'English'),
('ST0026', 'TH0004', 'MV0001', '2015-12-12', '17:00:00', 'English', 'Thai'),
('ST0027', 'TH0004', 'MV0001', '2015-12-12', '22:00:00', 'Thai', 'English'),
('ST0028', 'TH0003', 'MV0002', '2015-12-12', '11:00:00', 'English', 'Thai'),
('ST0029', 'TH0003', 'MV0003', '2015-12-12', '14:00:00', 'Thai', 'English'),
('ST0030', 'TH0003', 'MV0004', '2015-12-12', '18:00:00', 'English', 'Thai'),
('ST0031', 'TH0005', 'MV0002', '2015-12-12', '15:00:00', 'Thai', 'English'),
('ST0032', 'TH0005', 'MV0001', '2015-12-12', '20:15:00', 'English', 'Thai'),
('ST0033', 'TH0005', 'MV0001', '2015-12-12', '23:30:00', 'Thai', 'English'),
('ST0034', 'TH0006', 'MV0004', '2015-12-12', '10:30:00', 'Thai', 'English'),
('ST0035', 'TH0006', 'MV0003', '2015-12-12', '13:00:00', 'English', 'Thai'),
('ST0036', 'TH0006', 'MV0002', '2015-12-12', '19:00:00', 'Thai', 'English'),
('ST0037', 'TH0001', 'MV0001', '2015-12-13', '10:00:00', 'English', 'Thai'),
('ST0038', 'TH0001', 'MV0003', '2015-12-13', '13:00:00', 'Thai', 'English'),
('ST0039', 'TH0001', 'MV0004', '2015-12-13', '20:00:00', 'English', 'Thai'),
('ST0040', 'TH0002', 'MV0002', '2015-12-13', '11:00:00', 'Thai', 'English'),
('ST0041', 'TH0002', 'MV0003', '2015-12-13', '16:00:00', 'English', 'Thai'),
('ST0042', 'TH0002', 'MV0004', '2015-12-13', '18:30:00', 'Thai', 'English'),
('ST0043', 'TH0004', 'MV0002', '2015-12-13', '13:00:00', 'Thai', 'English'),
('ST0044', 'TH0004', 'MV0001', '2015-12-13', '17:00:00', 'English', 'Thai'),
('ST0045', 'TH0004', 'MV0001', '2015-12-13', '22:00:00', 'Thai', 'English'),
('ST0046', 'TH0003', 'MV0002', '2015-12-13', '11:00:00', 'English', 'Thai'),
('ST0047', 'TH0003', 'MV0003', '2015-12-13', '14:00:00', 'Thai', 'English'),
('ST0048', 'TH0003', 'MV0004', '2015-12-13', '18:00:00', 'English', 'Thai'),
('ST0049', 'TH0005', 'MV0002', '2015-12-13', '15:00:00', 'Thai', 'English'),
('ST0050', 'TH0005', 'MV0001', '2015-12-13', '20:15:00', 'English', 'Thai'),
('ST0051', 'TH0005', 'MV0001', '2015-12-13', '23:30:00', 'Thai', 'English'),
('ST0052', 'TH0006', 'MV0004', '2015-12-13', '10:30:00', 'Thai', 'English'),
('ST0053', 'TH0006', 'MV0003', '2015-12-13', '13:00:00', 'English', 'Thai'),
('ST0054', 'TH0006', 'MV0002', '2015-12-13', '19:00:00', 'Thai', 'English'),
('ST0055', 'TH0001', 'MV0001', '2015-12-14', '10:00:00', 'English', 'Thai'),
('ST0056', 'TH0001', 'MV0003', '2015-12-14', '13:00:00', 'Thai', 'English'),
('ST0057', 'TH0001', 'MV0004', '2015-12-14', '20:00:00', 'English', 'Thai'),
('ST0058', 'TH0002', 'MV0002', '2015-12-14', '11:00:00', 'Thai', 'English'),
('ST0059', 'TH0002', 'MV0003', '2015-12-14', '16:00:00', 'English', 'Thai'),
('ST0060', 'TH0002', 'MV0004', '2015-12-14', '18:30:00', 'Thai', 'English'),
('ST0061', 'TH0004', 'MV0002', '2015-12-14', '13:00:00', 'Thai', 'English'),
('ST0062', 'TH0004', 'MV0001', '2015-12-14', '17:00:00', 'English', 'Thai'),
('ST0063', 'TH0004', 'MV0001', '2015-12-14', '22:00:00', 'Thai', 'English'),
('ST0064', 'TH0003', 'MV0002', '2015-12-14', '11:00:00', 'English', 'Thai'),
('ST0065', 'TH0003', 'MV0003', '2015-12-14', '14:00:00', 'Thai', 'English'),
('ST0066', 'TH0003', 'MV0004', '2015-12-14', '18:00:00', 'English', 'Thai'),
('ST0067', 'TH0005', 'MV0002', '2015-12-14', '15:00:00', 'Thai', 'English'),
('ST0068', 'TH0005', 'MV0001', '2015-12-14', '20:15:00', 'English', 'Thai'),
('ST0069', 'TH0005', 'MV0001', '2015-12-14', '23:30:00', 'Thai', 'English'),
('ST0070', 'TH0006', 'MV0004', '2015-12-14', '10:30:00', 'Thai', 'English'),
('ST0071', 'TH0006', 'MV0003', '2015-12-14', '13:00:00', 'English', 'Thai'),
('ST0072', 'TH0006', 'MV0002', '2015-12-14', '19:00:00', 'Thai', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(6) NOT NULL,
  `BranchID` varchar(6) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Salary` int(10) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `TelephoneNumber` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `BranchID`, `Name`, `LastName`, `DateOfBirth`, `Sex`, `Position`, `Salary`, `Address`, `TelephoneNumber`, `Email`, `Password`) VALUES
('S0001', 'B0001', 'Punn', 'Nararatwong', '1996-05-30', 'Male', 'Director', 150000, 'Bangkok 10510', '0878377156', 'punnclub@hotmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('S0002', 'B0001', 'Somporn', 'Kamon', '1975-10-21', 'Female', 'Manager', 42000, 'Bangkok ', '0985632541', 'somporn@hotmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('S0003', 'B0001', 'Somsak', 'Preecha', '1984-04-11', 'Male', 'Staff', 12000, 'Bangkok ', '0865239657', 'somsak@hotmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('S0004', 'B0002', 'Kulap', 'Srisai', '1968-02-14', 'Female', 'Manager', 45000, 'Bangkok ', '0863254158', 'kulap@hotmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('S0005', 'B0002', 'Sanan', 'Phongam', '1989-07-20', 'Male', 'Staff', 13000, 'Bangkok ', '0876315478', 'sanan@gmail.com', '098f6bcd4621d373cade4e832627b4f6'),
('S0006', 'B0002', 'Somying', 'Preecha', '1967-07-01', 'Female', 'Staff', 12000, 'Bangkok', '0864125324', 'somying@gmail.com', 'd95ed36cb6dfe0668af4456e1998a9f2'),
('S0007', 'B0001', 'Annop', 'Thongmee', '1973-02-11', 'Male', 'Staff', 17000, '123/45 Bangkok', '0865234863', 'annop@gmail.com', '661973ccca5921826fc4643dfd578df5'),
('S0008', 'B0002', 'Ranasa', 'Bangpakong', '1984-05-11', 'Female', 'Staff', 15000, 'Bangkok', '0865231425', 'ranasaka@gmail.com', 'cde4dee255774443dfa7ce322bb22076'),
('S0009', 'B0001', 'Kunakorn', 'Mungchukiatsakul', '1995-12-11', 'Male', 'Staff', 20000, 'Bangkok', '0856354265', 'kunakorn@hotmail.com', '8fdb8130ac5aecad6f8580c6519a9517'),
('S0010', 'B0001', 'Tawan', 'Ratpanusit', '1995-12-21', 'Male', 'Staff', 19800, 'Bangkok', '0856536542', 'Tawan1995@hotmail.com', 'dcbb44787000eb5d96e7b229e709abb3'),
('S0011', 'B0001', 'Tanawat', 'Toskul', '2015-12-23', 'Male', 'Staff', 17000, 'Bangkok', '0863632542', 'Tanawat1995@yahoo.com', 'ac92e3eacec22885c0dff95ec4131871'),
('S0012', 'B0001', 'Rattakan', 'Yuwattana', '1995-07-17', 'Male', 'Staff', 15000, 'Bangkok', '0826363598', 'Mile_love_you@hotmail.com', '9fa197dafa56ab4d6d4f53b3181feaac'),
('S0013', 'B0001', 'Sahawait', 'Kahmpieam', '1992-07-15', 'Female', 'Staff', 21000, 'Bangkok', '0848388596', 'Sahawit_yiam@hotmail.com', 'fe7a2290aa6d4fdbd7e15745272f792c'),
('S0014', 'B0001', 'Sirikarn', 'Kamtanal', '1990-07-16', 'Female', 'Staff', 16000, 'Bangkok', '0844253656', 'Sirikan_love_you@hotmail.com', '61b9adc88135a9e6e61795a5dc8d9698'),
('S0015', 'B0002', 'Sukrit', 'Chumchuychart', '1990-07-16', 'Male', 'Staff', 16000, 'Ratchaburi', '0833652744', 'Bee_Sukrit@gmail.com', '25e62969718cb8628333a1aaac39a6a8'),
('S0016', 'B0002', 'Noppaklao', 'kaosuit', '1988-07-18', 'Female', 'Staff', 15000, 'Bangkok', '0855426333', 'Noppaklao13@hotmail.com', 'c3500057d91a5e1848e61207a61cd24f'),
('S0017', 'B0002', 'Chariya', 'Tubsang', '1988-07-18', 'Female', 'Staff', 16000, 'Bangkok', '0825633644', 'Chariya_paruru@hotmail.com', '8372e20a8d49f76dae5d4740919ef9c9'),
('S0018', 'B0002', 'Kritsuda ', 'Sangdutum', '1988-07-18', 'Male', 'Staff', 16500, 'Bangkok', '0855633657', 'Kritsuda1414@hotmail.com', 'b15c9f8c23786500ee555b1d1edbf771'),
('S0019', 'B0002', 'Suchart', 'Pieanchongkol', '1980-07-09', 'Male', 'Staff', 14000, 'Chiangmai', '0855699634', 'Suchart_handsome@hotmail.com', '0579d979baa5490a67021495d94f0d23'),
('S0020', 'B0002', 'Pittaya', 'Chamchoy', '1980-07-09', 'Male', 'Staff', 17000, 'Bangkok', '0923695286', 'Champza_555@hotmail.com', 'cd8ddd162716c3ac2292a66e2ff893f3');

-- --------------------------------------------------------

--
-- Table structure for table `staffposition`
--

CREATE TABLE `staffposition` (
  `Position` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffposition`
--

INSERT INTO `staffposition` (`Position`) VALUES
('Director'),
('Manager'),
('Staff');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `TheaterID` varchar(6) NOT NULL,
  `BranchID` varchar(6) NOT NULL,
  `TheaterNO` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`TheaterID`, `BranchID`, `TheaterNO`) VALUES
('TH0001', 'B0001', '1'),
('TH0002', 'B0001', '2'),
('TH0003', 'B0002', '1'),
('TH0004', 'B0001', '3'),
('TH0005', 'B0002', '2'),
('TH0006', 'B0002', '3');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionID` varchar(6) NOT NULL,
  `CardID` varchar(6) DEFAULT NULL,
  `ShowtimeID` varchar(6) DEFAULT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionID`, `CardID`, `ShowtimeID`, `Price`) VALUES
('T0001', NULL, NULL, 100),
('T0002', NULL, NULL, 80),
('T0003', 'CD0002', NULL, 85),
('T0004', NULL, 'ST0001', 532),
('T0005', NULL, 'ST0005', 730),
('T0006', 'CD0002', 'ST0001', 518.5),
('T0007', 'CD0003', 'ST0014', 433.5),
('T0008', NULL, 'ST0016', 880),
('T0009', NULL, 'ST0017', 440),
('T0010', NULL, 'ST0006', 396),
('T0011', NULL, 'ST0008', 510),
('T0012', NULL, 'ST0005', 440),
('T0013', 'cd0002', NULL, 68),
('T0014', NULL, 'ST0007', 660),
('T0015', NULL, 'ST0009', 340),
('T0016', NULL, 'ST0015', 660),
('T0017', 'CD0002', 'ST0016', 935),
('T0018', 'CD0002', NULL, 136),
('T0019', NULL, NULL, 380),
('T0020', NULL, 'ST0007', 198),
('T0021', 'CD0002', 'ST0015', 722.5),
('T0026', NULL, 'ST0008', 220),
('T0027', NULL, 'ST0009', 4410),
('T0028', 'CD0003', 'ST0005', 331.5),
('T0029', NULL, 'ST0005', 660),
('T0030', 'CD0002', NULL, 255);

-- --------------------------------------------------------

--
-- Table structure for table `worktime`
--

CREATE TABLE `worktime` (
  `StaffID` varchar(5) NOT NULL,
  `Month` varchar(15) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Absence` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worktime`
--

INSERT INTO `worktime` (`StaffID`, `Month`, `StartTime`, `EndTime`, `Absence`) VALUES
('S0001', 'December 2015', '09:00:00', '15:00:00', 0),
('S0002', 'December 2015', '09:00:00', '21:00:00', 1),
('S0003', 'December 2015', '09:00:00', '21:00:00', 5),
('S0004', 'December 2015', '09:00:00', '22:00:00', 2),
('S0005', 'December 2015', '09:00:00', '20:00:00', 5),
('S0006', 'December 2015', '11:30:00', '22:00:00', 4),
('S0007', 'December 2015', '09:00:00', '12:00:00', 0),
('S0008', 'December 2015', '09:00:00', '20:00:00', 0),
('S0009', 'December 2015', '09:00:00', '09:00:00', 0),
('S0010', 'December 2015', '15:00:00', '09:00:00', 0),
('S0011', 'December 2015', '09:00:00', '16:00:00', 0),
('S0012', 'December 2015', '09:00:00', '16:00:00', 0),
('S0013', 'December 2015', '09:00:00', '13:00:00', 0),
('S0014', 'December 2015', '09:00:00', '15:00:00', 0),
('S0015', 'December 2015', '10:00:00', '15:00:00', 0),
('S0016', 'December 2015', '10:00:00', '15:00:00', 0),
('S0017', 'December 2015', '10:00:00', '15:00:00', 0),
('S0018', 'December 2015', '10:00:00', '15:00:00', 0),
('S0019', 'December 2015', '10:00:00', '15:00:00', 0),
('S0020', 'December 2015', '10:00:00', '15:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodid`);

--
-- Indexes for table `foodtransaction`
--
ALTER TABLE `foodtransaction`
  ADD PRIMARY KEY (`transactionid`,`foodid`),
  ADD KEY `foodid` (`foodid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD KEY `Sex` (`Sex`);

--
-- Indexes for table `membercard`
--
ALTER TABLE `membercard`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `membercardtype`
--
ALTER TABLE `membercardtype`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `TheaterID` (`TheaterID`),
  ADD KEY `SeatType` (`SeatType`);

--
-- Indexes for table `seatprice`
--
ALTER TABLE `seatprice`
  ADD PRIMARY KEY (`SeatType`);

--
-- Indexes for table `seattransaction`
--
ALTER TABLE `seattransaction`
  ADD PRIMARY KEY (`TransactionID`,`SeatID`),
  ADD KEY `SeatID` (`SeatID`);

--
-- Indexes for table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`Sex`);

--
-- Indexes for table `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`showtimeID`),
  ADD KEY `TheaterID` (`TheaterID`),
  ADD KEY `MovieID` (`MovieID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `Position` (`Position`),
  ADD KEY `Position_2` (`Position`),
  ADD KEY `BranchID` (`BranchID`),
  ADD KEY `Sex` (`Sex`);

--
-- Indexes for table `staffposition`
--
ALTER TABLE `staffposition`
  ADD PRIMARY KEY (`Position`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`TheaterID`),
  ADD KEY `BranchID` (`BranchID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionID`),
  ADD KEY `ShowtimeID` (`ShowtimeID`),
  ADD KEY `CardID` (`CardID`);

--
-- Indexes for table `worktime`
--
ALTER TABLE `worktime`
  ADD PRIMARY KEY (`StaffID`,`Month`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foodtransaction`
--
ALTER TABLE `foodtransaction`
  ADD CONSTRAINT `foodtransaction_ibfk_1` FOREIGN KEY (`transactionid`) REFERENCES `transaction` (`transactionID`),
  ADD CONSTRAINT `foodtransaction_ibfk_2` FOREIGN KEY (`foodid`) REFERENCES `food` (`foodid`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`Sex`) REFERENCES `sex` (`Sex`);

--
-- Constraints for table `membercard`
--
ALTER TABLE `membercard`
  ADD CONSTRAINT `membercard_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`),
  ADD CONSTRAINT `membercard_ibfk_2` FOREIGN KEY (`Type`) REFERENCES `membercardtype` (`Type`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `theater` (`TheaterID`),
  ADD CONSTRAINT `seat_ibfk_2` FOREIGN KEY (`SeatType`) REFERENCES `seatprice` (`SeatType`);

--
-- Constraints for table `seattransaction`
--
ALTER TABLE `seattransaction`
  ADD CONSTRAINT `seattransaction_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transaction` (`transactionID`),
  ADD CONSTRAINT `seattransaction_ibfk_2` FOREIGN KEY (`SeatID`) REFERENCES `seat` (`SeatID`);

--
-- Constraints for table `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`TheaterID`) REFERENCES `theater` (`TheaterID`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Position`) REFERENCES `staffposition` (`Position`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`),
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`Sex`) REFERENCES `sex` (`Sex`);

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `theater_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`ShowtimeID`) REFERENCES `showtime` (`showtimeID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`CardID`) REFERENCES `membercard` (`CardID`);

--
-- Constraints for table `worktime`
--
ALTER TABLE `worktime`
  ADD CONSTRAINT `worktime_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
