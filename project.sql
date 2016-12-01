-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 04:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `LECTURER` varchar(60) NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `DUE DATE` varchar(6) NOT NULL,
  `INSTRUCTIONS` varchar(500) NOT NULL,
  `TOTAL MARKS` float NOT NULL,
  `MARK SCHEME` varchar(255) NOT NULL,
  `UPLOAD LINK` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains info on assignments given to students';

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`LECTURER`, `TITLE`, `DUE DATE`, `INSTRUCTIONS`, `TOTAL MARKS`, `MARK SCHEME`, `UPLOAD LINK`) VALUES
('Ssyade Gayle', 'Working with CSS', '2016-12-05 11:59:00.000000', 'The Object of this assignment is to use CSS to style web pages.\r\n1. Create a resume using HTML.\r\n2. Ensure to include a Photo.\r\n3. Use CSS to style.\r\n4.Submit online.\r\nGOOD LUCK!!!', 100, 'HTML 40\r\nCSS 60', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CODE` varchar(15) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LECTURER` varchar(60) NOT NULL,
  `STUDENTS` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains info on courses being taught';

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CODE`, `NAME`, `LECTURER`, `STUDENTS`) VALUES
('Graphics1000', 'Introduction to Graphic Design', 'Glenora May', '"620001","620002"'),
('SWEN2000', 'Software Testing', 'Glenora May', '"620001","620003"'),
('Web3000', 'Dynamic Web Building', 'Ssyade Gayle', '620001'),
('Networking110', 'Network Security (Cisco)', 'Phillip Byfield', '"620002"'),
('C330', 'Advance C Programming', 'Ssyade Gayle', '"620003"'),
('Java800', 'Advance Java Programming', 'Ssyade Gayle', '620003');

-- --------------------------------------------------------

--
-- Table structure for table `grade sheet`
--

CREATE TABLE `grade sheet` (
  `LECTURER` varchar(60) NOT NULL,
  `FILE NAME` varchar(50) NOT NULL,
  `FILE TYPE` text NOT NULL,
  `ASSIGNMENT` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains info on grades uploaded by lecturer';

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `USERNAME` int(255) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `TEACHING AREA` varchar(50) NOT NULL,
  `COURSE(S)` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contain info on lecturers';

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`USERNAME`, `FIRSTNAME`, `LASTNAME`, `DEPARTMENT`, `TEACHING AREA`, `COURSE(S)`) VALUES
(600001, 'Phillip', 'Byfield', 'ICT', 'Networking', 'Networking110'),
(600002, 'Glenora', 'May', 'ICT', 'Software Engineering', '"SWEN2000","Graphics1000"'),
(600003, 'Ssyade ', 'Gayle', 'ICT', 'Object Oriented Programming', '"Web3000","C330","Java800"');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `USERNAME` int(255) NOT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `MAJOR` varchar(50) NOT NULL,
  `YEAR` int(1) NOT NULL,
  `CURRENT COURSES` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains info on students';

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`USERNAME`, `FIRSTNAME`, `LASTNAME`, `DEPARTMENT`, `MAJOR`, `YEAR`, `CURRENT COURSES`) VALUES
(620001, 'Sean', 'Redwood', 'ICT', 'Programming', 2, '"SWEN2000", "Web3000", "Graphics1000"  '),
(620002, 'Nathaniel', 'Jones', 'ICT', 'Software Engineering', 1, '"Graphics1000","Networking110"'),
(620003, 'Renae', 'Morris', 'ICT', 'Programming', 2, '"SWEN2000","C330","Java800"');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `STUDENT ID` int(255) NOT NULL,
  `FILE NAME` varchar(50) NOT NULL,
  `FILE TYPE` varchar(10) NOT NULL,
  `TIME` varchar(6) NOT NULL,
  `ASSIGNMENT` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains info on submissions uploaded for assignments';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERNAME` int(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Structure for user table (contain all users of the system)';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`) VALUES
(600001, 'byfield01'),
(600002, 'May02'),
(600003, 'Gayle03'),
(620001, 'Redwood01'),
(620002, 'Jones02'),
(620003, 'Morris03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`TITLE`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CODE`);

--
-- Indexes for table `grade sheet`
--
ALTER TABLE `grade sheet`
  ADD PRIMARY KEY (`FILE NAME`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`FILE NAME`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USERNAME`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
