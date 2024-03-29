-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 04:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
-- Table structure for table `angularuser_tbl`
--

CREATE TABLE `angularuser_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angularuser_tbl`
--

INSERT INTO `angularuser_tbl` (`id`, `name`, `email`, `password`) VALUES
(1, 'zdv', 'xzczxc', 'zxc');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `userId`, `company_name`) VALUES
(1, '27', 'google'),
(2, '28', 'amazon'),
(3, '32', 'microsoft'),
(4, '1', 'microsoft'),
(5, '34', 'microsoft'),
(6, '35', 'google'),
(7, '36', 'amazon'),
(8, '37', 'microsoft'),
(9, '1', 'google');

-- --------------------------------------------------------

--
-- Table structure for table `customer_vss`
--

CREATE TABLE `customer_vss` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_vss`
--

INSERT INTO `customer_vss` (`id`, `email`, `phone`, `name`, `updated_at`, `created_at`) VALUES
(4, 'mondalbidyut38@gmail.com', '3453543534', 'name4', '', ''),
(6, 'vidyut.srat006@gmail.com', '1234567890', 'name6', '', ''),
(7, 'vi7777s.com', '3453453454', 'name7', '', ''),
(8, 'vid76@gmail.com', '1234567890', 'name8', '', ''),
(9, 'vidyut.star006@mostlikers.com', '3453453454', 'name10', '', ''),
(10, 'karthick@mostlikers.com', '1234567891', 'name25', '', ''),
(25, 'vidyut.sr567567at006@gmail.com', '1234654640', 'name25', '', ''),
(26, 'rtyrty@gmail.com', '1023456789', 'name25', '', ''),
(27, 'vidyuttyuty.srat006@gmail.com', '1235675675', 'name27', '', ''),
(28, 'vidy234234ut.srat006@gmail.com', '2342342342', 'name28', '', ''),
(29, 'mond23423albidyut38@gmail.com', '2345436465', 'name29', '', ''),
(30, 'aadmin@gmail.com', '4354354354', 'name30', '', ''),
(31, 'adminccccc@gmail.com', '3242342342', 'name31', '', ''),
(32, 'saho435opravash1997@yahoo.com', '4353454354', 'name32 test', '', ''),
(33, 'admin35@gmail.com', '3454353454', 'name33', '', ''),
(36, 'Test email', 'Test phone', 'Test vidyut', 'e', 'e'),
(37, 'Test email', 'Test phone', 'Test vidyut', 'e', 'e'),
(38, 'testemail@gmail.com', '+91- 8763699746', 'Mr. bidyut kumar', '2021-11-06 09:29:28', '2021-11-06 09:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `livewires`
--

CREATE TABLE `livewires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livewires`
--

INSERT INTO `livewires` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Eugenia', 'Schneider', 'bvolkman@yahoo.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(2, 'Pedro', 'Bailey', 'crawford14@gmail.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(3, 'Abagail', 'Nikolaus', 'kieran48@torp.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(4, 'Paris', 'Moen', 'erik55@zieme.biz', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(5, 'Iliana', 'Kulas', 'armstrong.tyrell@gmail.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(6, 'Dasia', 'Feeney', 'wchristiansen@hotmail.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(7, 'Carmel', 'Ernser', 'junius.terry@kovacek.biz', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(8, 'Thurman', 'Ondricka', 'tobin.schoen@mueller.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(9, 'Hiram', 'Hansen', 'mayert.angelo@kling.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(10, 'Marshall', 'Jacobi', 'marcel.thompson@gmail.com', '1234567890', '2021-11-26 09:39:27', '2021-11-26 09:39:27'),
(11, 'Omer', 'Jenkins', 'wlehner@ryan.info', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(12, 'Karen', 'Dach', 'vernice97@yahoo.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(13, 'Queenie', 'Bins', 'kale.reinger@hotmail.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(14, 'Morgan', 'Becker', 'konopelski.leonardo@gulgowski.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(15, 'Brooks', 'Legros', 'viviane10@gmail.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(16, 'Jennyfer', 'Pfeffer', 'maxwell.hills@will.info', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(17, 'Lillian', 'Mueller', 'hills.braulio@yahoo.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(18, 'Troy', 'Grant', 'wschinner@gmail.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(19, 'Sean', 'Ferry', 'fadel.letitia@gmail.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(20, 'Coty', 'Murazik', 'joana.kutch@boyle.com', '1234567890', '2021-11-26 09:52:06', '2021-11-26 09:52:06'),
(21, 'Rae', 'Robel', 'gulgowski.easter@gmail.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(22, 'Jermey', 'Watsica', 'elijah.lynch@gmail.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(23, 'Wyatt', 'Dare', 'kaleb.brown@gottlieb.org', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(24, 'Alisa', 'Quigley', 'mayer.pascale@gmail.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(25, 'Heidi', 'Mitchell', 'jast.mable@gmail.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(26, 'Helena', 'Crooks', 'pfeffer.aurelie@hotmail.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(27, 'Dillan', 'Rath', 'austin.wisozk@miller.biz', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(28, 'Helmer', 'Rogahn', 'owelch@buckridge.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(29, 'Elvie', 'Morissette', 'ophelia06@lemke.info', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16'),
(30, 'Shad', 'Stehr', 'harris.abel@keebler.com', '1234567890', '2021-11-26 09:52:16', '2021-11-26 09:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `address`) VALUES
(18, 'tunku', 'tunku8@gmail.com', 'ertrey'),
(19, 'minu', 'mondalbidyut38@gmail.com', 'ert -'),
(20, 'hii', 'hii8@gmail.com', 'fgdgdfg'),
(21, 'bey', 'bey@gmail.com', '4564'),
(26, '45656', '456456@gmail.com', '45654'),
(27, 'ck', 'ck@gmail.com', 'ck - IND'),
(28, '5675', 'post@gmail.com', '567567'),
(29, '57', '5@gmail.com', '567'),
(30, 'post@gmail.com', 'post@gmail.com', 'post@gmail.com'),
(31, 'post@gmail.com', 'post@gmail.com', 'post@gmail.com'),
(32, 'post@gmail.com', 'post@gmail.com', 'post@gmail.com'),
(33, 'post@gmail.com', 'post@gmail.com', 'post@gmail.com'),
(34, 'tunku8@gmail.com', 'tunku8@gmail.com', 'tunku8@gmail.com'),
(35, 'adfadfa', 'asdfadf', 'adfafa'),
(36, 'adfadfa', 'asdfadf', 'adfafa'),
(37, 'adfadfa', 'asdfadf', 'adfafa'),
(44, 'name', 'email', 'address'),
(49, 'tunku8@gmail.com', 'tunku8@gmail.com', 'tunku8@gmail.com'),
(50, 'name', 'email', 'address'),
(51, 'name', 'email', 'address'),
(52, 'name', 'email', 'address');

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
(39, '2021_11_04_070246_create_test_tbl', 1),
(40, '2021_11_05_032702_newtest_table1', 1),
(41, '2021_11_17_051157_livewire', 1),
(47, '2021_11_18_033031_multiphoto', 2),
(48, '2014_10_12_000000_create_users_table', 3),
(49, '2014_10_12_100000_create_password_resets_table', 3),
(50, '2019_08_19_000000_create_failed_jobs_table', 3),
(51, '2019_12_14_000001_create_personal_access_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multiphotos`
--

CREATE TABLE `multiphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contentid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiphotos`
--

INSERT INTO `multiphotos` (`id`, `contentid`, `files`, `path`, `created_at`, `updated_at`) VALUES
(1, '95', '41340_5516021.jpg', 'public/multiuploadFiles/41340_5516021.jpg', NULL, NULL),
(2, '96', '97182_75832.jpg', 'public/multiuploadFiles/97182_75832.jpg', NULL, NULL),
(3, '96', '97182_75832.jpg', 'public/multiuploadFiles/97182_75832.jpg', '2021-11-19 03:45:02', '2021-11-19 03:44:06'),
(4, '95', '70099_1102505.jpg', 'public/multiuploadFiles/70099_1102505.jpg', NULL, NULL),
(5, '96', '91720_35655.jpg', 'public/multiuploadFiles/91720_35655.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newcompanys`
--

CREATE TABLE `newcompanys` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `member_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'my-app-token', '2de030586fa200916fcd54f2a81cc80b5da82ad03d28cd4fa5bc260c4e999244', '[\"*\"]', '2022-03-20 08:25:23', '2022-03-20 08:24:54', '2022-03-20 08:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `seedings`
--

CREATE TABLE `seedings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seedings`
--

INSERT INTO `seedings` (`id`, `name`, `email`) VALUES
(1, 'aQNZwCxwdl', '8E1p4@gmail.com'),
(2, 'EL2U7CWVAz', '2JOWV@gmail.com'),
(3, 'gziy8Dybt1', 'OB4aH@gmail.com'),
(4, 'VlcN9qjlhC', 'hehXC@gmail.com'),
(5, 'ra4Mx6lkPl', '9uEwq@gmail.com'),
(6, 'vy9uiInIYY', 'OxEns@gmail.com'),
(7, 'NPnqJaSLR5', '77cCL@gmail.com'),
(8, 'C3DaTbShyf', 'lUV3Y@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `files` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `address`, `files`) VALUES
(95, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(96, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(97, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(113, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(115, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(116, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(117, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(123, '1', '2', '3', '4'),
(124, '1', '2', '3', '4'),
(125, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(126, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(127, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(128, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(129, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(130, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(131, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(132, '1', '2', '3', '4'),
(133, '1', '2', '3', '4'),
(134, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(135, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(136, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(137, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(138, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(139, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(140, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(141, '1', '2', '3', '4'),
(142, '1', '2', '3', '4'),
(143, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(144, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(145, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(146, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(147, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(148, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(149, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(150, '1', '2', '3', '4'),
(151, '1', '2', '3', '4'),
(152, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(153, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(154, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(155, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(156, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(157, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(158, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(159, '1', '2', '3', '4'),
(160, '1', '2', '3', '4'),
(161, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(162, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(163, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(164, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(165, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(166, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(167, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg'),
(168, '1', '2', '3', '4'),
(169, '1', '2', '3', '4'),
(170, 'Bidyut kumar2', 'mondalbidyut38@gmail.com', 'hii 2', '38396_9351329.jpg'),
(171, 'Vidyut kumar', 'vidyut.star006@gmail.com', 'hii', '95925_151695.jpg'),
(172, 'Minu biswas', 'minu@gmail.com', 'minu add', '89797_89192.jpg'),
(173, 'Fgh', 'dfg@gmail.com', 'fhgh', '97457_20649.jpg'),
(174, 'Hf', 'dfg@gmail.com', 'fgh I', '82942_1102505.jpg'),
(175, '4546456', 'grtg@gmail.cpm', '456', '49953_2764854.bmp'),
(176, 'dfg', 'dssf@gmail.com', 'fdgfd', '38627_816285.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test_tbl`
--

CREATE TABLE `test_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `test` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`test`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_tbl`
--

INSERT INTO `test_tbl` (`id`, `name`, `email`, `created_at`, `updated_at`, `test`) VALUES
(1, 'zbidyut', 'test@gmail.com', '2023-01-03 14:52:13', '2023-03-19 03:21:39', '{\"name\":\"bidyut\",\"age\":24}'),
(2, 'bidyut', 'test@gmail.com', '2023-01-03 14:52:48', '2023-01-03 14:52:48', NULL),
(3, 'bidyut', 'test@gmail.com', '2023-01-03 14:56:55', '2023-01-03 14:56:55', NULL),
(4, 'bidyut', 'test@gmail.com', '2023-01-03 14:57:27', '2023-01-03 14:57:27', NULL),
(5, 'bidyut', 'test@gmail.com', '2023-01-03 15:00:25', '2023-01-03 15:00:25', NULL),
(6, 'bidyut', 'test@gmail.com', '2023-01-03 15:01:28', '2023-01-03 15:01:28', NULL),
(7, 'bidyut', 'test@gmail.com', '2023-01-04 02:05:07', '2023-01-04 02:05:07', NULL),
(8, 'bidyut', 'test@gmail.com', '2023-01-04 02:35:10', '2023-01-04 02:35:10', NULL),
(9, 'bidyut', 'test@gmail.com', '2023-01-04 04:36:59', '2023-01-04 04:36:59', NULL),
(10, 'bidyut', 'test@gmail.com', '2023-01-08 14:08:10', '2023-01-08 14:08:10', NULL),
(11, 'bidyut', 'test@gmail.com', '2023-01-08 14:10:36', '2023-01-08 14:10:36', NULL),
(12, 'bidyut', 'test@gmail.com', '2023-01-08 14:17:58', '2023-01-08 14:17:58', NULL),
(13, 'bidyut', 'test@gmail.com', '2023-01-08 14:18:00', '2023-01-08 14:18:00', NULL),
(14, 'bidyut', 'test@gmail.com', '2023-01-08 14:19:34', '2023-01-08 14:19:34', NULL),
(15, 'bidyut', 'test@gmail.com', '2023-01-08 14:20:02', '2023-01-08 14:20:02', NULL),
(16, 'bidyut', 'test@gmail.com', '2023-01-08 14:21:11', '2023-01-08 14:21:11', NULL),
(17, 'bidyut', 'test@gmail.com', '2023-01-08 14:21:23', '2023-01-08 14:21:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'vidyut kumar', 'vidyut.star006@gmail.com', NULL, '$2y$10$We5SRDeC4OATSWaL9.NJIOnMQmtD/aeaVOhsVB0/X9.AixSkgr/ky', NULL, NULL, NULL),
(2, 'test vidyutd', 'testvidyutdg1@gmail.xcom', NULL, '$2y$10$PxfDWNJLzUPZX0OrA1KZXue6UUE8WSRood9N4c0KaKaK8taVQIKEm', NULL, '2022-02-14 02:32:17', '2022-02-14 02:32:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_vss`
--
ALTER TABLE `customer_vss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `google-meet`
--
ALTER TABLE `google-meet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livewires`
--
ALTER TABLE `livewires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `livewires_email_unique` (`email`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multiphotos`
--
ALTER TABLE `multiphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newcompanys`
--
ALTER TABLE `newcompanys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `seedings`
--
ALTER TABLE `seedings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_tbl`
--
ALTER TABLE `test_tbl`
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
-- AUTO_INCREMENT for table `angularuser_tbl`
--
ALTER TABLE `angularuser_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_vss`
--
ALTER TABLE `customer_vss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `google-meet`
--
ALTER TABLE `google-meet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `livewires`
--
ALTER TABLE `livewires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `multiphotos`
--
ALTER TABLE `multiphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newcompanys`
--
ALTER TABLE `newcompanys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seedings`
--
ALTER TABLE `seedings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `test_tbl`
--
ALTER TABLE `test_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
