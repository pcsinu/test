-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2019 at 03:41 PM
-- Server version: 5.5.61-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sharedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ach_codes`
--

CREATE TABLE `ach_codes` (
  `id` int(11) NOT NULL,
  `ach_code` varchar(10) NOT NULL,
  `message` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ach_codes`
--

INSERT INTO `ach_codes` (`id`, `ach_code`, `message`) VALUES
(1, 'R01', 'Insufficient Funds'),
(2, 'R02', 'Account Closed'),
(3, 'R03', 'No Account/Unable to Locate Account'),
(4, 'R04', 'Invalid Account #'),
(5, 'R05', 'Unauthorized Corporate Debit to Consumer Account'),
(6, 'R06', 'Returned per ODFI Request'),
(7, 'R07', 'Authorization Revoked By Customer'),
(8, 'R08', 'Payment Stopped'),
(9, 'R09', 'Uncollected Funds'),
(10, 'R10', 'Customer Advises Not Authorized'),
(11, 'R11', 'Check Truncation Entry Return (Specify)'),
(12, 'R12', 'Account Sold to Another DFI'),
(13, 'R13', 'Invalid ACH Routing Number'),
(14, 'R14', 'Rep. Payee Deceased/Incapacitated'),
(15, 'R15', 'Beneficiary or Account Holder Deceased'),
(16, 'R16', 'Account Frozen/Entry returned per OFAC instruction'),
(17, 'R17', 'File Record Edit Criteria (Specify)'),
(18, 'R18', 'Improper Effective Entry Date'),
(19, 'R19', 'Amount Field Error'),
(20, 'R20', 'Non-Transaction Account'),
(21, 'R21', 'Invalid Company Identification'),
(22, 'R22', 'Invalid Individual ID Number'),
(23, 'R23', 'Credit Entry Refused by Receiver'),
(24, 'R24', 'Duplicate Entry'),
(25, 'R25', 'Addenda Error'),
(26, 'R26', 'Mandatory Field Error'),
(27, 'R27', 'Trace number error'),
(28, 'R28', 'Routing number or check digit error'),
(29, 'R29', 'Corporate Customer Advises Not Authorized'),
(30, 'R30', 'RDFI not participant in check truncation program'),
(31, 'R31', 'Permissible Return Entry (CCD, CTX)'),
(32, 'R32', 'RDFI non-settlement'),
(33, 'R33', 'Return of XCK Entry'),
(34, 'R34', 'Limited Participation DFI'),
(35, 'R35', 'Return of improper debit entry'),
(36, 'R36', 'Return of improper credit entry'),
(37, 'R37', 'Source Document Presented for Payment (ARC, POP, BOC)'),
(38, 'R38', 'Stop Payment on Source Document (ARC, BOC)'),
(39, 'R39', 'Improper Source Document (ARC, POP, BOC)'),
(40, 'R40', 'Return of ENR Entry by Federal Government Agency'),
(41, 'R41', 'Invalid Transaction Code'),
(42, 'R42', 'Routing Number/Check Digit error'),
(43, 'R43', 'Invalid DFI Account number'),
(44, 'R44', 'Invalid individual ID Number/Identification number'),
(45, 'R45', 'Invalid Individual Name/Company Name'),
(46, 'R46', 'Invalid Representative Payee Indicator'),
(47, 'R47', 'Duplicate Enrollment'),
(48, 'R50', 'State Law Affecting RCK Acceptance'),
(49, 'R51', '	\r\nItem related to RCK entry is ineligible or RCK entry is improper'),
(50, 'R52', 'Stop Payment on Item (RCK)'),
(51, 'R53', 'Item and RCK entry presented for payment'),
(52, 'R61', 'Misrouted Return'),
(53, 'R62', 'Return of erroneous or reversing debit'),
(54, 'R67', 'Duplicate return'),
(55, 'R68', 'Untimely return'),
(56, 'R69', 'Field Error(s)'),
(57, 'R70', 'Permissible return entry not accepted/return not requested by ODFI'),
(58, 'R71', 'Misrouted dishonored return'),
(59, 'R72', 'Untimely dishonored return'),
(60, 'R73', 'Timely Original Return'),
(61, 'R74', 'Corrected Return'),
(62, 'R75', 'Return not a duplicate'),
(63, 'R76', 'No errors found'),
(64, 'R77', 'Non-acceptance of R62 Dishonored Return'),
(65, 'C01', 'Incorrect DFI Account Number'),
(66, 'C02', 'Incorrect Routing Number'),
(67, 'C03', 'Incorrect Routing Number and Incorrect DFI Account Number'),
(68, 'C05', 'Incorrect Transaction Code'),
(69, 'C06', 'Incorrect DFI Account Number and Incorrect Transaction Code'),
(70, 'C07', 'Incorrect Routing Number, Incorrect DFI Account Number and Incorrect Transaction Code'),
(71, 'C08', '	\r\nIncorrect Receiving DFI identification (IAT Only)'),
(72, 'C09', 'Incorrect Individual Identification Number'),
(73, 'C13', 'Addenda Format Error'),
(74, 'C61', 'Misrouted notification of change'),
(75, 'C62', 'Incorrect trace number'),
(76, 'C63', 'Incorrect company identification number'),
(77, 'C64', 'Incorrect individual identification number/identification number'),
(78, 'C65', 'Incorrectly formatted corrected data'),
(79, 'C66', 'Incorrect discretionary data'),
(80, 'C67', 'Routing number not from original entry detail record'),
(81, 'C68', 'DFI Account number not from original entry detail record'),
(82, 'C69', 'Incorrect transaction code');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ach_codes`
--
ALTER TABLE `ach_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ach_codes`
--
ALTER TABLE `ach_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
