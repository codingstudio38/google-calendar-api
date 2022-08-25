-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 12:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `google-meet`
--

CREATE TABLE `google-meet` (
  `id` int(11) NOT NULL,
  `eid` varchar(350) DEFAULT NULL,
  `summary` varchar(350) DEFAULT NULL,
  `location` varchar(350) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `attendees` varchar(350) DEFAULT NULL,
  `start_date_time` varchar(350) DEFAULT NULL,
  `end_date_time` varchar(350) DEFAULT NULL,
  `html_link` varchar(350) DEFAULT NULL,
  `hangout_link` varchar(350) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `google-meet`
--

INSERT INTO `google-meet` (`id`, `eid`, `summary`, `location`, `description`, `attendees`, `start_date_time`, `end_date_time`, `html_link`, `hangout_link`, `created_at`, `updated_at`) VALUES
(1, 'smslocvjoegi09nsurludlbf9g_20220822T053100Z', 'tet', 'delhi', '546456', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-22T12:01:00+05:30', '2022-08-22T13:01:00+05:30', 'https://www.google.com/calendar/event?eid=c21zbG9jdmpvZWdpMDluc3VybHVkbGJmOWdfMjAyMjA4MjJUMDUzMTAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/tsn-ebxq-oxu', '2022-08-22 07:21:05', '2022-08-23 12:49:24'),
(2, 'qeh6lt0ap669m4f37n4ctp50i0_20220822T042100Z', 'final test', 'bhubaneswar', 'final test. Ok...', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-22T13:21:00+05:30', '2022-08-22T15:00:00+05:30', 'https://www.google.com/calendar/event?eid=cWVoNmx0MGFwNjY5bTRmMzduNGN0cDUwaTBfMjAyMjA4MjJUMDQyMTAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/vaz-ffju-yus', '2022-08-22 07:21:05', '2022-08-23 12:49:24'),
(3, '3mo4sd4b6rj5qoc62isjml0lr1', 'final test 2', 'Bhubaneswar, Odisha, India', 'helo', 'vidyut.star006@gmail.com,bidyutpolosoft38@gmail.com', '2022-08-22T15:30:00+05:30', '2022-08-22T16:30:00+05:30', 'https://www.google.com/calendar/event?eid=M21vNHNkNGI2cmo1cW9jNjJpc2ptbDBscjEgYmlkeXV0cG9sb3NvZnQzOEBt', 'https://meet.google.com/upa-ibba-emk', '2022-08-22 07:21:05', '2022-08-23 12:49:24'),
(4, 'hn7vhgufphtvm9jt72ip9pgg90_20220822T093900Z', 'test 1', 'delhi', 'ok', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-22T16:54:00+05:30', '2022-08-22T17:54:00+05:30', 'https://www.google.com/calendar/event?eid=aG43dmhndWZwaHR2bTlqdDcyaXA5cGdnOTBfMjAyMjA4MjJUMDkzOTAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/knr-wzki-ieo', '2022-08-22 07:48:14', '2022-08-23 12:49:24'),
(5, '8rr78cvoj885e0q022cbm1e4k8_20220822T115600Z', 'test 3 4444', 'delhi', 'ok', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-22T17:26:00+05:30', '2022-08-22T18:26:00+05:30', 'https://www.google.com/calendar/event?eid=OHJyNzhjdm9qODg1ZTBxMDIyY2JtMWU0azhfMjAyMjA4MjJUMTE1NjAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/khd-vmac-pkv', '2022-08-22 08:07:53', '2022-08-23 12:49:24'),
(6, 'avd0jevuhmsjg9847csgq05kl4_20220823T054000Z', 'final test 1 12', 'kolkata', 'fgd gd gdf gdf', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-23T19:25:00+05:30', '2022-08-23T20:25:00+05:30', 'https://www.google.com/calendar/event?eid=YXZkMGpldnVobXNqZzk4NDdjc2dxMDVrbDRfMjAyMjA4MjNUMDU0MDAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/gpc-dhto-wvb', '2022-08-23 06:13:40', '2022-08-23 12:53:40'),
(7, '3u4gpalr1pjbf62i681sole36s', 'ok', 'Bhubaneswar, Odisha, India', 'fgfghfh fghfg fghf', '0', '2022-08-23T17:30:00+05:30', '2022-08-23T18:45:00+05:30', 'https://www.google.com/calendar/event?eid=M3U0Z3BhbHIxcGpiZjYyaTY4MXNvbGUzNnMgYmlkeXV0cG9sb3NvZnQzOEBt', 'https://meet.google.com/dxn-znvy-jpd', '2022-08-23 12:53:40', '2022-08-23 12:53:40'),
(8, 'vm019ijnkgahklqc30qbqflbrs_20220823T042100Z', 'event test event test', 'kolkata', 'hello 123, hello 123, hello 123, hello 123, hello 123, hello 123', 'bidyutpolosoft38@gmail.com,vidyut.star006@gmail.com', '2022-08-23T20:36:00+05:30', '2022-08-23T22:00:00+05:30', 'https://www.google.com/calendar/event?eid=dm0wMTlpam5rZ2Foa2xxYzMwcWJxZmxicnNfMjAyMjA4MjNUMDQyMTAwWiBiaWR5dXRwb2xvc29mdDM4QG0', 'https://meet.google.com/gzo-ftqc-fss', '2022-08-23 12:53:40', '2022-08-23 12:53:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `google-meet`
--
ALTER TABLE `google-meet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `google-meet`
--
ALTER TABLE `google-meet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
