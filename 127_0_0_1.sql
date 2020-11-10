-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 06:45 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--
CREATE DATABASE IF NOT EXISTS `hms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hms`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoaintment ID` int(11) NOT NULL,
  `Sr.No` int(255) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Deseuse` varchar(255) NOT NULL,
  `Symptoms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` varchar(255) NOT NULL,
  `Doctorname` varchar(255) NOT NULL,
  `f/ name` varchar(255) NOT NULL,
  `phone no` varchar(255) NOT NULL,
  `specializition` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` varchar(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact information` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user ID` int(11) NOT NULL,
  `user name` varchar(255) NOT NULL,
  `f/ name` varchar(255) NOT NULL,
  `data of birth` varchar(255) NOT NULL,
  `CNIC` varchar(255) NOT NULL,
  `phone number` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoaintment ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoaintment ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `oas`
--
CREATE DATABASE IF NOT EXISTS `oas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oas`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_accounttype`
--

CREATE TABLE `accounts_accounttype` (
  `id` int(11) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_accounttype`
--

INSERT INTO `accounts_accounttype` (`id`, `account_type`, `user`) VALUES
(1, 'doctor', 'usama'),
(2, 'doctor', 'nasir'),
(3, 'user', 'Ahmad'),
(4, 'user', 'user1'),
(5, 'user', 'doctor1'),
(6, 'doctor', 'doctor2'),
(7, 'doctor', 'doctor3'),
(8, 'user', 'user4'),
(9, 'user', 'mahera'),
(10, 'doctor', 'balqes'),
(11, 'doctor', 'saeed'),
(12, 'user', 'salal'),
(13, 'doctor', 'Dr. Arshad'),
(15, 'doctor', 'idrees'),
(17, 'doctor', 'muzamil'),
(18, 'admin', 'saira'),
(19, 'doctor', 'mudasir'),
(20, 'user', 'junaid'),
(21, 'doctor', 'waheed'),
(25, 'user', 'ihsan'),
(29, 'doctor', 'dr haris'),
(30, 'doctor', 'dr salman'),
(32, 'doctor', 'dr abbas'),
(33, 'doctor', 'haseeba'),
(34, 'user', 'muhammd zakariya'),
(35, 'user', 'Dr salman'),
(36, 'doctor', 'zakriya'),
(37, 'doctor', 'Dr shazaman'),
(38, 'doctor', 'Dr Rahmat'),
(39, 'user', 'wasim'),
(40, 'user', 'WASIM SAJJAD'),
(41, 'user', 'DR anwar'),
(42, 'doctor', 'DR wasim'),
(43, 'doctor', 'Dr Anwer '),
(44, 'doctor', 'khalil'),
(45, 'doctor', 'Dr abozar'),
(46, 'doctor', 'ahmed'),
(47, 'doctor', 'wasimfaraz'),
(48, 'doctor', 'Haseena'),
(49, 'doctor', 'khalil khan'),
(50, 'doctor', 'zia'),
(51, 'doctor', 'Abas khan'),
(52, 'user', 'mudasir'),
(53, 'doctor', 'kaleem'),
(54, 'user', 'khan'),
(55, 'doctor', 'Anwar'),
(56, 'doctor', 'farhan'),
(57, 'doctor', 'Dr anwar ali'),
(58, 'doctor', 'Dr yamin rashed'),
(59, 'doctor', 'Dr Rehmat'),
(60, 'doctor', 'Dr Hakeem Khan'),
(61, 'doctor', 'Dr Fazal Ghaffar'),
(62, 'doctor', 'Dr Mushtaq khalil'),
(63, 'user', 'ikram'),
(64, 'doctor', 'Dr saifullah'),
(65, 'user', 'addullah malik'),
(66, 'user', 'hasan'),
(67, 'user', 'hassan');

-- --------------------------------------------------------

--
-- Table structure for table `appointments_appointmentnumber`
--

CREATE TABLE `appointments_appointmentnumber` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments_appointmentnumber`
--

INSERT INTO `appointments_appointmentnumber` (`id`, `username`, `date`) VALUES
(1, 'salal', '2020-10-01'),
(2, 'salal', '2020-10-01'),
(3, 'ihsan', '2020-10-02'),
(4, 'salal', '2020-10-08'),
(5, 'khan', '2020-10-17'),
(6, 'khan', '2020-10-18'),
(7, 'salal', '2020-10-19'),
(8, 'ikram', '2020-11-05'),
(9, 'ikram', '2020-11-05'),
(10, 'hassan', '2020-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `appointments_appointments`
--

CREATE TABLE `appointments_appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments_appointments`
--

INSERT INTO `appointments_appointments` (`id`, `name`, `father_name`, `gender`, `doctor`, `age`, `phone`, `email`, `date`, `description`, `status`, `user_id`) VALUES
(1, 'saira', 'azadbakht khan', 'female', 'muzamil', '60', '1234567890', '2020-10-01', '2020-10-01', 'mental disturbance ', 'canceled', 16),
(2, 'salal khan', 'admad', 'male', 'muzamil', '23', '2345678987', '2020-10-01', '2020-10-01', 'illness', 'done', 16),
(3, 'Ihsan Ullah', 'My Father Name', 'male', 'muzamil', '24', '0764323456789', 'ihsan@gmail.com', '2020-10-02', 'illness', 'done', 29),
(4, 'Ihsan Ullah', 'habib ur rahman', 'male', 'mudasir', '24', '03462100165', 'ihsan@gmail.com', '2020-10-08', 'illness', 'done', 16),
(5, 'khan', 'M khan', 'male', 'khalil khan', '23', '030576768', 'khna@gmail.com', '2020-10-17', 'i have some harsh temperature', 'done', 58),
(6, 'khalil ullah', 'Sh khan', 'male', 'khalil khan', '23', '75689057464', 'salal@gmail.com', '2020-10-18', 'i have heartache and temperature', 'canceled', 58),
(7, 'yaman', 'azadbakht khan', 'male', 'Dr Hakeem Khan', '24', '1234567890', 'yaman@gmil.com', '2020-10-21', 'corona', 'pending', 16),
(8, 'ikram', 'ikram ullah', 'male', 'Haseena', '23', '0345829763', 'ikram@gmail.com', '2020-11-06', 'corona', 'pending', 67),
(9, 'yasar', 'yasar ullah', 'male', 'Dr anwar ali', '23', '0345823947', 'ySAR@GMAIL.COM', '2020-11-06', 'CORONA', 'pending', 67),
(10, 'hassan', 'hassan ullah', 'male', 'Dr Rehmat', '23', '0345675432', 'hassan@gmil.com', '2020-11-07', 'corona', 'pending', 71);

-- --------------------------------------------------------

--
-- Table structure for table `appointments_doctor`
--

CREATE TABLE `appointments_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `clinical_address` longtext DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments_doctor`
--

INSERT INTO `appointments_doctor` (`id`, `name`, `specialization`, `image`, `clinical_address`, `username`) VALUES
(29, 'ahmed', 'arthro', 'img/IMG-20201014-WA0013.jpg', 'abc', 'ahmed'),
(30, 'wasim faraz', 'cardiology', 'img/doctor-thumb-01.jpg', 'ttmg khaza bypass', 'wasimfaraz'),
(31, 'Dr Haseena wajid', 'gaynee', 'img/doctor-thumb-05.jpg', 'ramora near uom', 'Haseena'),
(32, 'khalil ullah', 'phsiotherapy', 'img/doctor-thumb-09.jpg', 'maidan lal qilla', 'khalil khan'),
(34, 'M abas khan', 'Child specialist', 'img/doctor-thumb-03.jpg', 'Dir(L)', 'Abas khan'),
(35, 'Kaleem ullah', 'Cordialogy', 'img/doctor-thumb-01_bftOhrE.jpg', 'maidan', 'kaleem'),
(36, 'Dr Anwar', 'children s', 'img/doctor-thumb-01_gtd6mfh.jpg', 'timergara', 'Anwar'),
(38, 'Dr anwar ali', 'Nephrologist', 'img/doctor1_IpoJqd5.jpg', 'swat', 'Dr anwar ali'),
(39, 'Dr yamin rashed', 'Rheumatologist', 'img/doctor1_9k01m9C.jpg', 'saido swat', 'Dr yamin rashed'),
(40, 'Dr Rehmat', 'Nephrologist', 'img/IMG-20201014-WA0009.jpg', 'saido swat', 'Dr Rehmat'),
(41, 'Dr Hakeem khan', 'Paediatrician', 'img/IMG-20201014-WA0013_m5EmRmM.jpg', 'swat', 'Dr Hakeem Khan'),
(42, 'Dr Fazal Ghaffar', 'Rediologist', 'img/IMG-20201014-WA0015.jpg', 'saido swat', 'Dr Fazal Ghaffar'),
(43, 'Dr Mushtaq khalil', 'eye specialist', 'img/IMG-20201014-WA0007.jpg', 'saido swat', 'Dr Mushtaq khalil'),
(44, 'Dr saifullah', 'Cordialogy', 'img/IMG-20201014-WA0015_8xMEZ72.jpg', 'saido swat', 'Dr saifullah');

-- --------------------------------------------------------

--
-- Table structure for table `appointments_schedule`
--

CREATE TABLE `appointments_schedule` (
  `id` int(11) NOT NULL,
  `dr_name` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments_schedule`
--

INSERT INTO `appointments_schedule` (`id`, `dr_name`, `days`, `time`) VALUES
(1, 'muzamil', 'Monday, Friday', '10:00am - 02:00pm'),
(2, 'muzamil', 'Sunday, Tuesday', '08:00am - 01:00pm'),
(3, 'muzamil', 'Sunday, Tuesday', '08:00am - 01:00pm'),
(4, 'abubakar', 'monday, friday', '08:00am-01:00pm'),
(6, '2', 'Monday, Friday', '10:00am-01:00pm'),
(7, 'ayaz khan', 'Monday, Friday', '10:00am - 02:00pm'),
(8, 'haseeba', 'Monday, Friday', '10:00am - 02:00pm'),
(9, 'Dr Rehmat', 'Monday, Friday', '10:00am - 02:00pm');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add account types', 7, 'add_accounttypes'),
(26, 'Can change account types', 7, 'change_accounttypes'),
(27, 'Can delete account types', 7, 'delete_accounttypes'),
(28, 'Can view account types', 7, 'view_accounttypes'),
(29, 'Can add account type', 7, 'add_accounttype'),
(30, 'Can change account type', 7, 'change_accounttype'),
(31, 'Can delete account type', 7, 'delete_accounttype'),
(32, 'Can view account type', 7, 'view_accounttype'),
(33, 'Can add doctor', 8, 'add_doctor'),
(34, 'Can change doctor', 8, 'change_doctor'),
(35, 'Can delete doctor', 8, 'delete_doctor'),
(36, 'Can view doctor', 8, 'view_doctor'),
(37, 'Can add appointments', 9, 'add_appointments'),
(38, 'Can change appointments', 9, 'change_appointments'),
(39, 'Can delete appointments', 9, 'delete_appointments'),
(40, 'Can view appointments', 9, 'view_appointments'),
(41, 'Can add appointment number', 10, 'add_appointmentnumber'),
(42, 'Can change appointment number', 10, 'change_appointmentnumber'),
(43, 'Can delete appointment number', 10, 'delete_appointmentnumber'),
(44, 'Can view appointment number', 10, 'view_appointmentnumber'),
(45, 'Can add schedule', 11, 'add_schedule'),
(46, 'Can change schedule', 11, 'change_schedule'),
(47, 'Can delete schedule', 11, 'delete_schedule'),
(48, 'Can view schedule', 11, 'view_schedule');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$216000$6l5iOlXy3woY$+88+QUqF/6BmgGgVZjy6wJ43AWNvTNSbsI4Mq1VdlfA=', NULL, 0, 'sumbal', '', '', 'sumbal@gmail.com', 0, 1, '2020-09-16 07:30:01.400098'),
(7, 'pbkdf2_sha256$216000$E69G7I3qCseW$ZWXSycN7iX2toMDp+2/I5WT5mFjopnyXRpry6zrEpus=', NULL, 0, 'Ahmad', '', '', 'Ahmad@gmail.com', 0, 1, '2020-09-25 06:11:59.735326'),
(9, 'pbkdf2_sha256$216000$0wwmGqH2ZuQb$5MqotI3pEnj28OE0ReajEGdpfTmPD10n3a8IgcnzQ88=', '2020-09-30 04:28:39.393897', 0, 'doctor1', '', '', 'doctor1@gmail.com', 0, 1, '2020-09-29 05:00:31.071998'),
(14, 'pbkdf2_sha256$216000$aEUKsGbdOeFK$159ciHBuPea/BQ4liHhkclQ7fEeDlHoD5ukI0j6mkJ8=', NULL, 0, 'balqes', '', '', 'balqess@gmikl', 0, 1, '2020-09-29 06:27:45.758383'),
(15, 'pbkdf2_sha256$216000$OyhjrNlzDMPV$Eua1Y6QQuNLAaAVZgw4gjRgAQNYxxLy+uJbUywHzxho=', '2020-09-29 06:55:32.695815', 0, 'saeed', '', '', 'saeed@gmail.com', 0, 1, '2020-09-29 06:54:46.104857'),
(16, 'pbkdf2_sha256$216000$lCStEou9JpYA$3z6TnTqge+33rweBwUBrHnnCZ5rLcmxUiub2FHQnoQ8=', '2020-10-28 13:09:40.107522', 0, 'salal', '', '', 'salal@gmail.com', 0, 1, '2020-09-29 07:35:05.344763'),
(17, 'pbkdf2_sha256$216000$7jMgK5fTrYic$VeAMQWGpQG5HA1mGQTkAlU+MvmY3KRJCjtlzTTGZin8=', '2020-09-30 04:38:04.968451', 0, 'Dr. Arshad', '', '', 'arshad@gmail.com', 0, 1, '2020-09-30 04:33:59.684615'),
(21, 'pbkdf2_sha256$216000$2IoGnHRXqV7y$WCxLTbTObSkcsGWWuvp5qs1Du3U2E1TbogafLt0zslo=', '2020-11-06 05:51:29.870542', 0, 'muzamil', '', '', 'muzamil@gmail.com', 0, 1, '2020-09-30 05:56:40.128002'),
(22, 'pbkdf2_sha256$216000$tDWWTvxuQnXw$3pXqsSSbdp+sxFo1jeSMKBylu8vbMQ/p4zsIb7m9Bvk=', '2020-11-06 05:40:16.356794', 0, 'saira', '', '', 'saira@gmail.com', 0, 1, '2020-09-30 06:14:44.755805'),
(25, 'pbkdf2_sha256$216000$ynhPY4BggWKk$bDrKqaBiwk2hMEIUgMOO8PtM5vLl3WkHnX70nTBXrkQ=', NULL, 0, 'waheed', '', '', 'waheed@gmail.com', 0, 1, '2020-09-30 08:12:18.609910'),
(28, 'pbkdf2_sha256$216000$tjCqToo06BJq$7GhMf5/7T1T0XVrk5N8lchzqMgr+zvFDUEfe9Okl+7U=', '2020-09-30 08:33:08.882492', 0, 'arsalan', '', '', 'arsalan@gmail.com', 0, 1, '2020-09-30 08:27:35.500694'),
(29, 'pbkdf2_sha256$216000$ZjMLvGr7dVg2$w2GTzTZNoWdz+Ya091ceD4ULgwqJbUwiemaqyA6rvmQ=', '2020-10-02 05:26:43.235976', 0, 'ihsan', '', '', 'ihsan@gmail.com', 0, 1, '2020-10-02 05:26:30.888526'),
(35, 'pbkdf2_sha256$216000$E5WDwCL9Mnf2$YrMLniPVJgFwoF+aNI0iy+PRjonFRJLDrAuPjR07TmM=', '2020-10-06 14:06:05.464870', 0, 'dr farhana', '', '', 'frahana@gmail.com', 0, 1, '2020-10-06 13:41:43.509456'),
(37, 'pbkdf2_sha256$216000$iLuUjZZiWcJD$81mqIDK+Lie5wY3GJyyc7ote4BOrdiHc48bYME3lKWI=', '2020-10-08 06:40:18.382914', 0, 'haseeba', '', '', 'haseeba@gmail.com', 0, 1, '2020-10-08 06:37:30.558656'),
(38, 'pbkdf2_sha256$216000$Pi1iozKhcoNi$MsksYwDdBOkue1OyV5JbYrh0zMgmRFgoBJGuKjb9um8=', '2020-10-13 16:43:32.381380', 0, 'muhammd zakariya', '', '', 'zakariya@gmail.com', 0, 1, '2020-10-13 16:43:13.171722'),
(39, 'pbkdf2_sha256$216000$W1mM7AFIROeU$E3G9Sl/+hzj0FDQNPYv6FSFzG4l5kIl+/zUeF8prDlM=', NULL, 0, 'Dr salman', '', '', 'Drsalman@gmail.com', 0, 1, '2020-10-14 07:21:04.286265'),
(40, 'pbkdf2_sha256$216000$zKKcQeeo3w17$525BRIsQYNqWVdqLoHDW1fhFGqKDB3qVwWpt0HbpR7Y=', NULL, 0, 'zakriya', '', '', 'zakriya@gmail.com', 0, 1, '2020-10-14 07:30:56.432291'),
(41, 'pbkdf2_sha256$216000$fgAIG3xCvZuu$ikhLRB6LUq3ERuV0LrQj1oDMXy19onlEXGgjT3nBkTQ=', NULL, 0, 'Dr shazaman', '', '', 'drshahzaman@gmail.com', 0, 1, '2020-10-14 09:11:06.454428'),
(42, 'pbkdf2_sha256$216000$gtegACtUNEpM$Dg2t25s/qzi7OXKCgtoNdlqSGLdl1rdx/AZ8BtSKCuc=', NULL, 0, 'Dr Rahmat', '', '', 'Drrahmat@gmail.com', 0, 1, '2020-10-14 09:59:16.637270'),
(43, 'pbkdf2_sha256$216000$ixeTEDwVzkCq$0YQtBmtS/OpFj1jpXeuChayuWg6pqFmGyTMNt+fEWe4=', '2020-10-15 09:50:14.829904', 0, 'wasim', '', '', 'wasimfaraz1997@gmail.com', 0, 1, '2020-10-15 09:49:08.720851'),
(44, 'pbkdf2_sha256$216000$NgiQ4zYyfF6o$nDNV1bDxHmBypTSc3qCteEVz50Lt93esMJzxhmg8gXs=', '2020-10-15 09:57:38.469359', 0, 'WASIM SAJJAD', '', '', 'wasimfaraz1998@gmail.com', 0, 1, '2020-10-15 09:57:20.009973'),
(45, 'pbkdf2_sha256$216000$8KD1oBKc6hd4$lT+Pw44Bo6p5aRyUkdqAZ5z1RIEvxuPiaTfks4leL8U=', '2020-10-15 10:07:41.890843', 0, 'DR anwar', '', '', 'Dranwar@gmail.com', 0, 1, '2020-10-15 10:06:26.878873'),
(46, 'pbkdf2_sha256$216000$xyEaxVyeRZfE$RKXpWwedoesJ9yPV0Bi3EVYW2weijfX946vqvKk2Y10=', NULL, 0, 'DR wasim', '', '', 'wasimfaraz@gmail.com', 0, 1, '2020-10-15 10:14:43.506463'),
(47, 'pbkdf2_sha256$216000$TIIU7rzcK7SB$M9XzGiFtt2YKKydUOi0KRDJvJaLCuGjRJioUBFpCaNQ=', NULL, 0, 'Dr Anwer ', '', '', 'anwer@gmail.com', 0, 1, '2020-10-15 10:15:50.889080'),
(48, 'pbkdf2_sha256$216000$PpfMfiyE6kLa$20QoMANz/lWE+CIWHFESPEbXjlkJGN7mLh6K1dwyOBo=', NULL, 0, 'khalil', '', '', 'kh@gmail.com', 0, 1, '2020-10-15 10:17:13.861263'),
(49, 'pbkdf2_sha256$216000$UUtDKipJjjjg$es+SSkJH1Ien9KfXiXw0AmUbb9HOd+QherAa69Vn9sE=', '2020-10-15 18:00:28.717917', 0, 'Dr abozar', '', '', 'abozar@gmail.com', 0, 1, '2020-10-15 17:59:41.455701'),
(50, 'pbkdf2_sha256$216000$pK9F7U7R23Ix$V5uCvqExcI2vj6wOPEHfaujW3CcFwJe/XCixbcdPM8A=', '2020-10-15 18:43:50.215148', 0, 'ahmed', '', '', 'ahmed@gmail.com', 0, 1, '2020-10-15 18:43:12.771269'),
(51, 'pbkdf2_sha256$216000$rBPK2hiEvQ3b$vsD3U+1YJ0qgfVnJgxRO6sKUjJwZoQjvqzQcokz/O+s=', '2020-10-15 18:57:06.396654', 0, 'wasimfaraz', '', '', 'wasim@gmail.com', 0, 1, '2020-10-15 18:53:47.098126'),
(52, 'pbkdf2_sha256$216000$NLnl1esNcP60$psfCd6KuOdx261D1iSVEotVdKc8a+MUDhdFQewGlL4E=', '2020-10-15 19:01:09.977929', 0, 'Haseena', '', '', 'haseena@gmail.com', 0, 1, '2020-10-15 19:00:28.230621'),
(53, 'pbkdf2_sha256$216000$ru4Tu2tKl47q$B6Iq2sy4uPpDzKlEYZf/aotrub7E9D0LcUUJCCDTd2A=', '2020-10-18 08:53:47.654271', 0, 'khalil khan', '', '', 'khansoft955@gmail.com', 0, 1, '2020-10-17 17:29:59.697589'),
(54, 'pbkdf2_sha256$216000$R51roKGrXM6l$DqrqUn49/A4jBdFbVXzkBnyT39e8abtBSEdOV/FrS1E=', NULL, 0, 'zia', '', '', 'zia@gmail.com', 0, 1, '2020-10-17 17:34:35.476185'),
(55, 'pbkdf2_sha256$216000$RhSiob8mwhM9$Qdz6LaIIKTQ5u4LfUNkC9rXvUp0Y9Ldn3NzQtPGqnpw=', '2020-10-17 18:10:11.377577', 0, 'Abas khan', '', '', 'abas@gmail.com', 0, 1, '2020-10-17 17:41:20.357411'),
(56, 'pbkdf2_sha256$216000$rkBDinBoobXU$bMfNwCMgG17v41zl7rGnQEPSyrb9ZCs5L6qNbYJ8YH0=', '2020-10-17 17:50:56.595723', 0, 'mudasir', '', '', 'mudasir@gmail.com', 0, 1, '2020-10-17 17:50:03.432317'),
(57, 'pbkdf2_sha256$216000$CabCADCgRJFt$2QtDsern4oDCt0bMdlM9QUOMbt72GFy8lD4SltNOGVU=', '2020-10-17 18:00:42.110240', 0, 'kaleem', '', '', 'kaleem@gmail.com', 0, 1, '2020-10-17 17:59:13.210187'),
(58, 'pbkdf2_sha256$216000$opiGAXR81et5$aQSdZ9fuLWj6GQpavOraQwzDE1RgkhkHnH68Lizb/c8=', '2020-10-19 06:27:50.704597', 0, 'khan', '', '', 'khan@gmail.com', 0, 1, '2020-10-17 18:06:51.046816'),
(59, 'pbkdf2_sha256$216000$PFwLaZgMLwu4$+ex4hpqMwqxeq1OCDsuIC7YafFPaWLJQ72WVPKFBnB0=', '2020-10-19 06:30:30.963532', 0, 'Anwar', '', '', 'anwar@gmail.com', 0, 1, '2020-10-19 06:29:38.838992'),
(60, 'pbkdf2_sha256$216000$1q3Fun0PxAf8$abXiqX3gjj6iIdxMDU9XSlVj6ryglfBdfAMPbWUH2As=', NULL, 0, 'farhan', '', '', 'farhan@gmail.com', 0, 1, '2020-10-19 06:32:55.211949'),
(61, 'pbkdf2_sha256$216000$Fu7xfCDaDzhv$RjZFRlaQB5WgUBeosSwQ6Ta4YxQyLtjI3RM+zWPilx0=', '2020-10-19 07:34:55.012868', 0, 'Dr anwar ali', '', '', 'ali@gmail.com', 0, 1, '2020-10-19 07:34:26.471553'),
(62, 'pbkdf2_sha256$216000$8CtrOnh1ptMi$0HxXAKzldO8FM8BVF85pHULiTbEw1o4XAbgt2yWkpdo=', '2020-10-19 14:30:20.546292', 0, 'Dr yamin rashed', '', '', 'yamin@gmil.com', 0, 1, '2020-10-19 14:29:49.908791'),
(63, 'pbkdf2_sha256$216000$MmrcA2Pg5hAF$27rzrivI83l1y/RIGvWNpm9x5IGiGV1rnj6zuxEWqtc=', '2020-10-19 15:07:47.245355', 0, 'Dr Rehmat', '', '', 'rehmat@gmil.com', 0, 1, '2020-10-19 14:38:19.020005'),
(64, 'pbkdf2_sha256$216000$tPMHbPFb59sP$pzXV6PU+degAvoZySB+ZhJDAV7pyNaU7lJWYI05B/o0=', '2020-10-19 15:06:26.736279', 0, 'Dr Hakeem Khan', '', '', 'hakeem@gmil.com', 0, 1, '2020-10-19 14:42:29.952487'),
(65, 'pbkdf2_sha256$216000$moFmBTInUTD9$LmstVf8b3DIfMXHsDDqLWi5dyjrl+ZWfHrB17oEqMqU=', '2020-10-19 14:47:41.726968', 0, 'Dr Fazal Ghaffar', '', '', 'fazal@gmil.com', 0, 1, '2020-10-19 14:46:57.524706'),
(66, 'pbkdf2_sha256$216000$tp76gQpRtAzJ$1vAfiFpU1WlaYHTlG5FNqqSZJvGJyxvgyKaj4f25NJs=', '2020-10-19 14:52:28.986795', 0, 'Dr Mushtaq khalil', '', '', 'mushtaq@gmil.com', 0, 1, '2020-10-19 14:52:03.939150'),
(67, 'pbkdf2_sha256$216000$YNs2qRKlLtF0$1wVPhUMXrvW7VDV77i0aUKkFS8mu6ZjPlKVj/xkXr2g=', '2020-11-05 06:05:57.144335', 0, 'ikram', '', '', 'ikram@gmail.com', 0, 1, '2020-11-05 06:05:32.941410'),
(68, 'pbkdf2_sha256$216000$WWpIOuURbJ6F$va4dRdQ+D4ZDNPjfu9Kiv4rNnaXDYmmocoaps0j+OmQ=', '2020-11-05 06:17:52.718976', 0, 'Dr saifullah', '', '', 'saifullah@gmail.com', 0, 1, '2020-11-05 06:17:23.866666'),
(69, 'pbkdf2_sha256$216000$VCweezSo8mgT$dbZ3J9n+9v9hnHvZEBpT6ahiMVEzrkF5Vh8hkXj2xUc=', NULL, 0, 'addullah malik', '', '', 'abdullah@gmail.com', 0, 1, '2020-11-06 05:42:45.903327'),
(70, 'pbkdf2_sha256$216000$vdwx6FPLhLtY$8vAOW+/ElxQqdh881Iv7Y67eE+Yt6s5mw65I1heB4Vw=', NULL, 0, 'hasan', '', '', 'hasan@gmail.com', 0, 1, '2020-11-06 05:46:24.045153'),
(71, 'pbkdf2_sha256$216000$AIvRSc1Btxxw$zepHhfG1DZYH5adzymv19P6DRxiWnrDhmMTC6m0A46E=', '2020-11-06 05:48:07.269135', 0, 'hassan', '', '', 'hassan@gmail.com', 0, 1, '2020-11-06 05:47:50.157380');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'accounttype'),
(1, 'admin', 'logentry'),
(10, 'appointments', 'appointmentnumber'),
(9, 'appointments', 'appointments'),
(8, 'appointments', 'doctor'),
(11, 'appointments', 'schedule'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-16 07:10:21.485961'),
(2, 'auth', '0001_initial', '2020-09-16 07:10:23.114861'),
(3, 'admin', '0001_initial', '2020-09-16 07:10:30.917031'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-16 07:10:32.161397'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-16 07:10:32.208322'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-16 07:10:32.839785'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-16 07:10:33.933871'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-16 07:10:34.246237'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-16 07:10:34.277629'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-16 07:10:34.747327'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-16 07:10:34.763046'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-16 07:10:34.794159'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-16 07:10:34.903722'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-16 07:10:35.012966'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-16 07:10:35.169204'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-16 07:10:35.200451'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-16 07:10:35.325451'),
(18, 'sessions', '0001_initial', '2020-09-16 07:10:35.481791'),
(19, 'accounts', '0001_initial', '2020-09-17 05:10:32.914522'),
(20, 'accounts', '0002_auto_20200917_1012', '2020-09-17 05:12:41.489385'),
(21, 'accounts', '0003_auto_20200917_1022', '2020-09-17 05:22:44.886685'),
(22, 'appointments', '0001_initial', '2020-09-28 08:18:52.809361'),
(23, 'appointments', '0002_auto_20200929_1005', '2020-09-29 05:05:52.993277'),
(24, 'appointments', '0003_doctor_user_id', '2020-09-29 05:15:40.777618'),
(25, 'appointments', '0004_auto_20200929_1016', '2020-09-29 05:16:47.569590'),
(26, 'appointments', '0005_auto_20200930_0949', '2020-09-30 04:49:57.307678'),
(27, 'appointments', '0006_auto_20200930_1040', '2020-09-30 05:40:20.908568'),
(28, 'appointments', '0007_appointments', '2020-09-30 06:56:31.692147'),
(29, 'appointments', '0008_appointments_status', '2020-10-01 04:41:26.749516'),
(30, 'appointments', '0009_appointments_user', '2020-10-01 04:57:23.695410'),
(31, 'appointments', '0010_appointmentnumber', '2020-10-02 05:06:09.432587'),
(32, 'appointments', '0011_schedule', '2020-10-05 06:44:17.764636');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3kjlstvnavxdgfua309zhpv4ri81h0sq', '.eJxVjEEOwiAQRe_C2hBARsCl-56BDAwjVUOT0q6Md7dNutDtf-_9t4i4LjWuvcxxJHEVAOL0OybMz9J2Qg9s90nmqS3zmOSuyIN2OUxUXrfD_Tuo2OtWo-YAoCGpFC4ODaCywJ4400aMZyb0-uy8VQ4Yg83OoivJmBQMcBCfLwvuOB4:1kTqEW:VA2Y1px_NBDKskpnH5XKgSJ7ej9CowqRaVmkE8bhTus', '2020-10-31 17:43:08.052586'),
('9r2e8okvezg9l6kvm7jfmd2hviox3h04', '.eJxVjDsOwjAQBe_iGln-xQ6U9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIijBan3xEhPbjuhO5Qb02mVtdlRrkr8qBdTo34eT3cv4MCvXzrkQOBT946TxZHRHYKlDKYNGlnERCNxXPOg-Mha1bWe3KgQs46-ATi_QEjDTjW:1kauen:L8q-m8hNfN1UluT0P8kmWbmypz4NPNuwLBvfmpKMeyQ', '2020-11-20 05:51:29.964542');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_accounttype`
--
ALTER TABLE `accounts_accounttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments_appointmentnumber`
--
ALTER TABLE `appointments_appointmentnumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments_appointments`
--
ALTER TABLE `appointments_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_appointments_user_id_395af6a2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `appointments_doctor`
--
ALTER TABLE `appointments_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments_schedule`
--
ALTER TABLE `appointments_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_accounttype`
--
ALTER TABLE `accounts_accounttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `appointments_appointmentnumber`
--
ALTER TABLE `appointments_appointmentnumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointments_appointments`
--
ALTER TABLE `appointments_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointments_doctor`
--
ALTER TABLE `appointments_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `appointments_schedule`
--
ALTER TABLE `appointments_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments_appointments`
--
ALTER TABLE `appointments_appointments`
  ADD CONSTRAINT `appointments_appointments_user_id_395af6a2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'appointments_appointmentnumber', 'table', 'oas', ''),
('root', 'auth_user', 'table', 'oas', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"oas\",\"table\":\"appointments_doctor\"},{\"db\":\"oas\",\"table\":\"appointments_appointments\"},{\"db\":\"oas\",\"table\":\"accounts_accounttype\"},{\"db\":\"oas\",\"table\":\"django_admin_log\"},{\"db\":\"oas\",\"table\":\"django_content_type\"},{\"db\":\"oas\",\"table\":\"appointments_schedule\"},{\"db\":\"oas\",\"table\":\"django_migrations\"},{\"db\":\"oas\",\"table\":\"django_session\"},{\"db\":\"phpmyadmin\",\"table\":\"pma__column_info\"},{\"db\":\"phpmyadmin\",\"table\":\"pma__export_templates\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'oas', 'auth_user', '{\"sorted_col\":\"`auth_user`.`password`  DESC\"}', '2020-10-13 10:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-11-10 05:45:07', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":303}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `saira`
--
CREATE DATABASE IF NOT EXISTS `saira` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `saira`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoaintment ID` varchar(255) NOT NULL,
  `Sr.No` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `appoaintment ID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor ID` int(255) NOT NULL,
  `Doctorname` varchar(255) NOT NULL,
  `f/ name` varchar(255) NOT NULL,
  `phone no` varchar(255) NOT NULL,
  `specializition` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital ID` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact information` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user ID` int(255) NOT NULL,
  `user name` varchar(255) NOT NULL,
  `f/ name` varchar(255) NOT NULL,
  `data of birth` varchar(255) NOT NULL,
  `CNIC` varchar(255) NOT NULL,
  `phone number` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor ID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user ID` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
