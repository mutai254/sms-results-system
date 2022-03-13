-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2022 at 02:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbrq`
--

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courseCode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseTitle` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` double(4,2) NOT NULL,
  `regNo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examresults`
--

INSERT INTO `examresults` (`id`, `courseCode`, `courseTitle`, `marks`, `regNo`, `examId`, `created_at`, `updated_at`) VALUES
(1, 'BIT 421', 'INFORMATION MANAGEMENT', 80.00, 'BIT/0037/15', 1, '2019-05-22 09:13:37', NULL),
(2, 'BIT 422', 'IT ENTREPRENEURSHIP', 70.00, 'BIT/0037/15', 1, '2019-05-22 09:13:37', NULL),
(3, 'BIT 421', 'INFORMATION MANAGEMENT', 90.00, 'BIT/0039/15', 1, '2019-05-22 09:14:48', NULL),
(4, 'BIT 422', 'IT ENTREPRENEURSHIP', 86.00, 'BIT/0039/15', 1, '2019-05-22 09:14:48', NULL),
(5, 'BIT 421', 'INFORMATION MANAGEMENT', 99.00, 'BIT/0039/12', 1, '2019-05-31 08:46:10', '2019-05-31 08:46:10'),
(6, 'BIT 422', 'IT ENTREPRENEURSHIP', 70.00, 'BIT/0029/15', 1, '2019-05-31 08:46:10', '2019-05-31 08:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `acYear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `acYear`, `status`, `created_at`, `updated_at`) VALUES
(1, '2018/2019', 1, '2019-05-22 08:25:45', '2019-05-22 08:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regNo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `amount`, `balance`, `regNo`, `created_at`, `updated_at`) VALUES
(1, '17500', '0', '0037/15', '2019-05-22 17:10:55', NULL),
(2, '17500', '0', 'BIT/0039/15', '2019-05-22 17:11:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, NULL, NULL, '+254716235834', NULL, NULL, 'RESULTS', NULL, NULL, NULL, NULL, NULL),
(2, '2019-04-24 18:22:48', NULL, 'Safaricom', '', NULL, 'Recharge of 50.00 KSH by Mpesa account 254715535522 was successful. Balance:50.05 KSH,expiry date:2019-07-23.Tariff: Blaze.Dial *460*0#.', NULL, NULL, NULL, NULL, NULL),
(3, '2019-04-24 18:22:51', NULL, 'KochoKocho', '', NULL, '6 days left,what are you waiting for? Top up or use M-PESA there is 1M per COUNTY to be won. Entries awarded 20. Total entries 169. Dial *456*0*4# to STOP', NULL, NULL, NULL, NULL, NULL),
(4, '2019-04-24 18:29:41', NULL, 'Safaricom', '', NULL, 'Congratulations! You have received 25.00 KSH STORO Bonus Airtime expiry midnight. You can use your bonus to Call and SMS.', NULL, NULL, NULL, NULL, NULL),
(5, '2019-04-24 19:05:40', NULL, 'SAFARICOM', '', NULL, 'Congratulations!  You  have  received  200%  bonus  airtime    +  100  Minutes  valid  24hrs  for  topping  up.  Send  BAL  to  144  to  check  balance\r\n', NULL, NULL, NULL, NULL, NULL),
(6, '2019-04-24 19:05:43', NULL, 'SAFARICOM', '', NULL, 'Congratulations!  You  have  received  200%  bonus  airtime    +  100  Minutes  valid  24hrs  for  topping  up.  Send  BAL  to  144  to  check  balance\r\n', NULL, NULL, NULL, NULL, NULL),
(7, '2019-04-24 19:27:25', NULL, 'Safaricom', '', NULL, 'You have transferred 33.00 KSH from your account to 0708058225.New balance:5.43 KSH,expiry date is 23-07-2019.Hit your STORO target and Enjoy 200%bonus.Dial *460#', NULL, NULL, NULL, NULL, NULL),
(8, '2019-04-24 19:44:26', NULL, '0790145892', '', NULL, 'You attempted to call me but I was not available. Please call me. Double Double your airtime! Dial *444*2# now!', NULL, NULL, NULL, NULL, NULL),
(9, '2019-04-24 21:23:05', NULL, '0729552942', '', NULL, 'You attempted to call me but I was not available. Please call me. Double Double your airtime! Dial *444*2# now!', NULL, NULL, NULL, NULL, NULL),
(10, '2019-04-25 11:57:22', NULL, '0710719387', '', NULL, 'You attempted to call me but I was not available. Please call me. Double Double your airtime! Dial *444*2# now!', NULL, NULL, NULL, NULL, NULL),
(11, '2019-04-25 14:02:37', NULL, '+254715166292', '', NULL, 'Unasemaje?', NULL, NULL, NULL, NULL, NULL),
(12, '2019-04-25 14:07:28', NULL, '+254715166292', '', NULL, 'Kwa nyumba but natoka kamvua kakiisha', NULL, NULL, NULL, NULL, NULL),
(13, '2019-04-25 14:11:08', NULL, '+254715166292', '', NULL, 'Nmekuwa but nkapita kwa nyumba tym tulikuwa tunatembea  peace walk', NULL, NULL, NULL, NULL, NULL),
(14, '2019-04-25 14:12:49', NULL, '+254715166292', '', NULL, 'Hatukusaign  anything', NULL, NULL, NULL, NULL, NULL),
(15, '2019-04-25 14:13:11', NULL, '+254715166292', '', NULL, 'Azn hkukuwa na attendance sheet', NULL, NULL, NULL, NULL, NULL),
(16, '2019-04-25 14:15:55', NULL, '+254715166292', '', NULL, 'Cjaona maybe supper after kupanga venues', NULL, NULL, NULL, NULL, NULL),
(17, '2019-04-25 14:19:12', NULL, '+254715166292', '', NULL, 'Naconfirm.', NULL, NULL, NULL, NULL, NULL),
(18, '2019-05-23 10:15:40', NULL, '+254708058225', '0702915621', NULL, 'Help', NULL, NULL, NULL, NULL, NULL),
(19, '2019-04-24 17:46:11', NULL, 'MPESA', '', NULL, 'his message to 456.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2019-05-22 12:40:16', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-05-22 16:00:03', NULL, 300, NULL, '+254716235834', NULL, 'KIBU RESULTS For Koech\nBIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 422- 86.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-05-22 16:05:06', NULL, 300, NULL, '+254712108244', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 422- 86.00,BIT 422- 86.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-05-22 16:05:31', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-05-22 16:07:12', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-05-22 16:07:43', NULL, 300, NULL, '+254712108244', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2019-05-22 19:58:41', NULL, 300, NULL, '+254712108244', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2019-05-22 19:59:43', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-05-22 20:01:09', NULL, 300, NULL, '+254724773475', NULL, 'KIBU RESULTS For Koech\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-05-22 20:01:44', NULL, 300, NULL, '+254716235834', NULL, 'KIBU RESULTS For Koech\nBIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-05-22 20:32:42', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-05-22 20:33:13', NULL, 300, NULL, '+254712108244', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-05-22 20:38:19', NULL, 300, NULL, '+254708058225', NULL, 'HELP CONTENT\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-05-22 20:39:20', NULL, 300, NULL, '+254724773475', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-05-22 20:39:50', NULL, 300, NULL, '+254712108244', NULL, 'Reasons for unavailability of exams can be    fee balances or pending specials. Your fee balance and special application are shown here:\n0KES fee balance.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-05-22 20:48:22', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-05-22 20:50:13', NULL, 300, NULL, '+254712108244', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 90.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2019-05-23 10:16:44', NULL, 300, NULL, '0710719387', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2019-05-23 10:16:49', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2019-05-23 10:16:55', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2019-05-23 10:17:00', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2019-05-23 10:17:05', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2019-05-23 10:17:10', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2019-05-23 10:17:25', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2019-05-23 10:17:30', NULL, 300, NULL, '+254715166292', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2019-05-23 10:17:45', NULL, 300, NULL, '+254708058225', NULL, 'HELP CONTENT\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2019-05-23 11:16:03', NULL, 300, NULL, 'MPESA', NULL, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2019-05-31 17:58:18', NULL, 300, NULL, '+254708058225', NULL, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2019-05-31 18:00:55', NULL, 300, NULL, '+254716235834', NULL, 'Reasons for unavailability of exams can be    fee balances or pending specials. Your fee balance and special application are shown here:\n0KES fee balance.', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_05_21_133710_create_parents_table', 1),
(21, '2019_05_21_133858_create_students_table', 1),
(22, '2019_05_21_133918_create_exams_table', 1),
(23, '2019_05_21_133941_create_examresults_table', 1),
(24, '2019_05_21_133953_create_fees_table', 1),
(25, '2019_05_21_134010_create_requests_table', 1),
(26, '2019_05_21_134022_create_responses_table', 1),
(27, '2019_05_21_134037_create_specials_table', 1),
(28, '2019_10_03_093515_create_units_table', 2),
(29, '2022_02_13_110612_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phoneNo` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idNo` int(10) UNSIGNED NOT NULL,
  `surName` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherName` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `phoneNo`, `email`, `idNo`, `surName`, `otherName`, `created_at`, `updated_at`) VALUES
(1, '+254712108244', 'rcngetich@gmail.com', 20190235, 'Ngetich', 'Rc', '2019-05-21 21:00:00', NULL),
(2, '+254716235834', 'idad@gmail.com', 20989777, 'Kimaiyo', 'David', '2019-05-22 08:58:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dekingetich@gmail.com', '$2y$10$jgKCKS1/KGryYrdhvhMFM.LVBcLd96tpcswllQREsR6lmtT4unVqq', '2019-06-01 05:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shortCode` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `shortCode`, `sender`, `created_at`, `updated_at`) VALUES
(3, 'RESULTS', '+254708058225', '2019-05-22 09:32:59', NULL),
(4, 'RESULTS', '+254716235834', NULL, NULL),
(5, 'RESULTS', '+254712108244', '2019-05-22 13:05:05', NULL),
(6, 'RESULTS', '+254708058225', '2019-05-22 13:05:30', NULL),
(8, 'RESULTS', '+254708058225', '2019-05-21 21:00:00', NULL),
(9, 'RESULTS', '+254712108244', '2019-05-22 13:07:40', NULL),
(10, 'RESULTS', '+254712108244', '2019-05-22 16:58:39', NULL),
(11, 'RESULTS', '+254708058225', '2019-05-22 16:59:38', NULL),
(12, 'RESULTS', '+254724773475', '2019-05-22 17:01:07', NULL),
(13, 'RESULTS', '+254716235834', '2019-05-22 17:01:40', NULL),
(14, 'RESULTS', '+254708058225', '2019-05-22 17:32:40', NULL),
(15, 'RESULTS', '+254712108244', '2019-05-22 17:33:11', NULL),
(16, 'HELP', '+254708058225', '2019-05-22 17:38:15', NULL),
(17, 'FFF', '+254724773475', '2019-05-22 17:39:14', NULL),
(18, 'REASON', '+254712108244', '2019-05-22 17:39:50', NULL),
(19, 'RESULTS', '+254708058225', '2019-05-22 17:48:21', NULL),
(21, 'RESULTS', '+254712108244', '2019-05-22 17:50:11', NULL),
(38, 'Help', '+254708058225', NULL, NULL),
(39, 'his message to 456.', 'MPESA', NULL, NULL),
(40, 'RESULTS', '+254708058225', NULL, NULL),
(42, 'REASON', '+254716235834', NULL, NULL),
(44, 'RESULTS', '2529', '2022-02-13 09:19:04', '2022-02-13 09:19:04'),
(45, 'RESULTS', '2529', '2022-02-13 09:19:35', '2022-02-13 09:19:35'),
(46, 'RESULTS', '2529', '2022-02-13 09:20:09', '2022-02-13 09:20:09'),
(47, 'RESULTS', '2529', '2022-02-13 09:20:49', '2022-02-13 09:20:49'),
(48, 'RESULTS', '2529', '2022-02-13 09:21:26', '2022-02-13 09:21:26'),
(49, 'RESULTS', '2529', '2022-02-13 09:22:20', '2022-02-13 09:22:20'),
(50, 'RESULTS', '2529', '2022-02-13 09:23:33', '2022-02-13 09:23:33'),
(51, 'RESULTS', '2529', '2022-02-13 09:36:39', '2022-02-13 09:36:39'),
(52, 'RESULTS', '0708058225', '2022-02-13 09:37:33', '2022-02-13 09:37:33'),
(53, 'RESULTS', '254708058225', '2022-02-13 09:37:58', '2022-02-13 09:37:58'),
(54, 'RESULTS', '254708058225', '2022-02-13 09:38:54', '2022-02-13 09:38:54'),
(55, 'RESULTS', '254708058225', '2022-02-13 09:42:55', '2022-02-13 09:42:55'),
(56, 'RESULTS', '254708058225', '2022-02-13 09:44:29', '2022-02-13 09:44:29'),
(57, 'RESULTS', '254708058225', '2022-02-13 09:45:14', '2022-02-13 09:45:14'),
(58, 'RESULTS', '254708058225', '2022-02-13 09:46:52', '2022-02-13 09:46:52'),
(59, 'RESULTS', '+254708058225', '2022-02-13 09:48:02', '2022-02-13 09:48:02'),
(60, 'we yhhj', '+254723411264', '2022-02-13 09:54:30', '2022-02-13 09:54:30'),
(61, '1224', '+254723411264', '2022-02-13 09:55:35', '2022-02-13 09:55:35'),
(62, 'kksoks', '+254723411264', '2022-02-13 09:56:47', '2022-02-13 09:56:47'),
(63, 'Help', '+254723411264', '2022-02-13 09:56:57', '2022-02-13 09:56:57'),
(64, 'Results', '+254723411264', '2022-02-13 09:57:58', '2022-02-13 09:57:58'),
(65, 'Results', '+254723411264', '2022-02-13 09:59:20', '2022-02-13 09:59:20'),
(66, 'REASON', '+254708058225', '2022-02-13 10:00:44', '2022-02-13 10:00:44'),
(67, 'Help', '+254723411264', '2022-02-13 10:00:48', '2022-02-13 10:00:48'),
(68, 'Reason', '+254723411264', '2022-02-13 10:01:09', '2022-02-13 10:01:09'),
(69, 'help', '+254708058225', '2022-02-13 10:01:40', '2022-02-13 10:01:40'),
(70, 'result', '+254708058225', '2022-02-13 10:02:01', '2022-02-13 10:02:01'),
(71, 'results', '+254723411264', '2022-02-13 10:03:26', '2022-02-13 10:03:26'),
(72, 'help', '+254723411264', '2022-02-13 10:04:07', '2022-02-13 10:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `message`, `recipient`, `requestId`, `created_at`, `updated_at`) VALUES
(1, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00', '+254708058225', 3, NULL, NULL),
(2, 'KIBU RESULTS For Koech\nBIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 422- 86.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254716235834', 4, NULL, NULL),
(3, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 421- 70.00,BIT 422- 86.00,BIT 422- 86.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254712108244', 5, NULL, NULL),
(4, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 421- 80.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254708058225', 6, NULL, NULL),
(5, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254708058225', 8, NULL, NULL),
(6, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254712108244', 9, NULL, NULL),
(7, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254712108244', 10, NULL, NULL),
(8, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254708058225', 11, NULL, NULL),
(9, 'KIBU RESULTS For Koech\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254724773475', 12, NULL, NULL),
(10, 'KIBU RESULTS For Koech\nBIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254716235834', 13, NULL, NULL),
(11, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254708058225', 14, NULL, NULL),
(12, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 70.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254712108244', 15, NULL, NULL),
(13, 'HELP CONTENT\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n    ', '+254708058225', 16, NULL, NULL),
(14, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254724773475', 17, NULL, NULL),
(15, 'Reasons for unavailability of exams can be    fee balances or pending specials. Your fee balance and special application are shown here:\n0KES fee balance.\n', '+254712108244', 18, NULL, NULL),
(16, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254708058225', 19, NULL, NULL),
(17, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00,BIT 421- 90.00,BIT 422- 86.00\nType HELP or call/SMS 0708058225.', '+254712108244', 21, NULL, NULL),
(18, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'Safaricom', 22, NULL, NULL),
(19, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'KochoKocho', 23, NULL, NULL),
(20, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'Safaricom', 24, NULL, NULL),
(21, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'SAFARICOM', 25, NULL, NULL),
(22, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'SAFARICOM', 26, NULL, NULL),
(23, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'Safaricom', 27, NULL, NULL),
(24, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '0790145892', 28, NULL, NULL),
(25, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '0729552942', 29, NULL, NULL),
(26, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '0710719387', 30, NULL, NULL),
(27, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 31, NULL, NULL),
(28, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 32, NULL, NULL),
(29, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 33, NULL, NULL),
(30, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 34, NULL, NULL),
(31, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 35, NULL, NULL),
(32, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 36, NULL, NULL),
(33, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', '+254715166292', 37, NULL, NULL),
(34, 'HELP CONTENT\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n    ', '+254708058225', 38, NULL, NULL),
(35, 'INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n  ', 'MPESA', 39, NULL, NULL),
(36, 'KIBU RESULTS For Ng\'etich\nBIT 421- 80.00,BIT 422- 70.00\nType HELP or call/SMS 0708058225.', '+254708058225', 40, NULL, NULL),
(37, 'Reasons for unavailability of exams can be    fee balances or pending specials. Your fee balance and special application are shown here:\n0KES fee balance.\n', '+254716235834', 42, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `acYear` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regNo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `regNo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idNo` int(10) UNSIGNED NOT NULL,
  `phoneNo` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surName` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherName` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentPhone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yos` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `regNo`, `idNo`, `phoneNo`, `email`, `surName`, `otherName`, `parentPhone`, `yos`, `created_at`, `updated_at`) VALUES
(1, '0037/15', 3234567, '+254708058225', 'kibet@gmail.com', 'Kibet', 'Dennis', '+254712108244', 4, '2019-05-22 07:00:00', NULL),
(2, 'BIT/0039/15', 34445678, '+254723411264', 'koechisaac62@gmail.com', 'Koech', 'Isaac', '+254716235834', 4, '2019-05-22 08:24:17', '0000-00-00 00:00:00'),
(4, 'COM/0038/18', 34567890, '+254708899646', 'cketer@gmail.com', 'Kibet', 'Carlos', '+254716235834', 1, '2019-05-23 13:30:37', '2019-05-23 13:30:37'),
(11, 'BIT/0030/15', 1098765, '+254704566779', 'sarabernar@gmail.com', 'Magdalene', 'Sarah', '+254716235834', 4, '2019-05-23 17:55:16', '2019-05-23 17:55:16'),
(13, 'BIT/0029/15', 33456780, '+254700795553', 'alexuskemboi@gmail.com', 'Kemboi', 'Alex', '+254716235834', 4, '2019-05-31 05:41:58', '2019-05-31 05:41:58'),
(18, 'BIT/0030/16', 876543, '+254702445551', 'kingetich@gmail.com', 'Kate', 'Sarah', '+254712108244', 3, '2019-06-01 06:10:17', '2019-06-01 06:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kiprotich Ngetich', 'dekingetich@gmail.com', NULL, '$2y$10$SIvl4UfubTpIGGe09yCS2OmxjnNXJpDVRVmM0YDfqjbDCwtjnh/a6', 'yBLPq8RKVUPULaRYVNHRC48jyEdnKN5wLoEEU6yVb2dazcpqmG5rQsxQADUl', '2019-05-22 07:34:41', '2019-05-22 07:34:41'),
(2, 'Ali Manzu', 'alimanzi@gmail.com', NULL, '$2y$10$KAEU2.vYQXJKCK.pQloNCuykTScz3EzGUilXtKoVFEqkmHBPrR8IO', NULL, '2019-05-24 10:41:35', '2019-05-24 10:42:04'),
(3, 'Alex', 'alexkemboi44@gmail.com', NULL, '$2y$10$DiZ0ljRDmWsH0nUdYCPyZ.uTlKxNOa05dQPDf8wfMq8Kg5uQ5T/um', NULL, '2019-05-24 14:33:25', '2019-05-24 14:33:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examresults_id_unique` (`id`),
  ADD KEY `regNo` (`regNo`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_id_unique` (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fees_id_unique` (`id`),
  ADD KEY `studfeekey` (`regNo`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parents_id_unique` (`id`),
  ADD UNIQUE KEY `parents_phoneno_unique` (`phoneNo`),
  ADD UNIQUE KEY `parents_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `requests_id_unique` (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `responses_id_unique` (`id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `specials_id_unique` (`id`),
  ADD KEY `specialstudkey` (`regNo`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_id_unique` (`id`),
  ADD UNIQUE KEY `students_regno_unique` (`regNo`),
  ADD UNIQUE KEY `students_phoneno_unique` (`phoneNo`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD KEY `parentkey` (`parentPhone`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examresults`
--
ALTER TABLE `examresults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `studfeekey` FOREIGN KEY (`regNo`) REFERENCES `students` (`regNo`) ON UPDATE CASCADE;

--
-- Constraints for table `specials`
--
ALTER TABLE `specials`
  ADD CONSTRAINT `specialstudkey` FOREIGN KEY (`regNo`) REFERENCES `students` (`regNo`) ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `parentkey` FOREIGN KEY (`parentPhone`) REFERENCES `parents` (`phoneNo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
