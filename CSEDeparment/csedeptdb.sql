-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2021 at 01:33 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csedeptdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `absentstudent`
--

CREATE TABLE IF NOT EXISTS `absentstudent` (
  `rollno` varchar(10) NOT NULL,
  `doc` date NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absentstudent`
--

INSERT INTO `absentstudent` (`rollno`, `doc`, `semester`) VALUES
('19UCSE4001', '2021-09-22', 6),
('19UCSE4003', '2021-09-22', 6),
('19UCSE4006', '2021-09-24', 6),
('19UCSE4005', '2021-09-24', 6),
('19UCSE4003', '2021-09-24', 6),
('19UCSE4002', '2021-09-24', 6),
('19UCSE4001', '2021-09-24', 6);

-- --------------------------------------------------------

--
-- Table structure for table `absenttable`
--

CREATE TABLE IF NOT EXISTS `absenttable` (
  `totalabsent` int(11) NOT NULL,
  `doc` date DEFAULT NULL,
  `semester` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absenttable`
--

INSERT INTO `absenttable` (`totalabsent`, `doc`, `semester`) VALUES
(2, '2021-09-22', 6),
(0, '2021-09-25', 6),
(5, '2021-09-24', 6);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) DEFAULT NULL,
  `scode` varchar(5) DEFAULT NULL,
  `ldate` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `stotal` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`aid`, `semester`, `scode`, `ldate`, `description`, `stotal`) VALUES
(1, 6, '325A', '2021-10-10', 'Question 1\r\nQuestion 2\r\nQuestion 3', 2),
(2, 6, '325B', '2021-10-06', 'LAb Question 1\r\nLab Question 2\r\nLab Question 3', 0),
(3, 6, '325A', '2021-10-05', 'Question 1\r\nQuestion 2\r\nQuestion 3', 2),
(4, 6, '325B', '2021-10-14', 'AI LAB Question : 1\r\nAI LAB Question : 2\r\nAI LAB Question : 3\r\n\r\n\r\n\r\n\r\n\r\nAI LAB Question : 4\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAI LAB Question : 5', 0),
(5, 6, '325B', '2021-10-15', 'Who is invented C Programming Language ?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `mail` varchar(35) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `adhar` varchar(12) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  `qual` varchar(10) NOT NULL,
  `spec` varchar(70) DEFAULT NULL,
  `profile` varchar(35) DEFAULT 'FacultyProfile/faculty.png',
  `password` varchar(15) DEFAULT 'faculty@123',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1024 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `dob`, `mail`, `mobile`, `adhar`, `post`, `qual`, `spec`, `profile`, `password`) VALUES
(1000, 'Admin', '1990-01-01', 'admin@gmail.com', '1234567890', '123412341234', 'Admin', 'B.E.', 'Management', 'FacultyProfile/1000.jpg', 'admin@123'),
(1001, 'Dr. Rakesh Kumar', '1990-01-01', 'rakesh@gmail.com', '1234567890', '123412341234', 'HOD', 'Ph.D', 'Data Science ML AI', 'FacultyProfile/1001.png', 'faculty@123'),
(1002, 'Dr. Divya', '1990-01-01', 'divya@gmail.com', '1234567890', '123412341234', 'Professor', 'Ph.D', 'Networking CyberSecurity', 'FacultyProfile/1002.png', 'faculty@123'),
(1003, 'Manoj Kumar', '1990-01-01', 'manoj@gmail.com', '1234567890', '123412341234', 'Professor', 'M.E.', 'Web Development', 'FacultyProfile/1003.png', 'faculty@123'),
(1004, 'Sangeeta Kumari', '1990-01-01', 'sangeeta@gmail.com', '1234567890', '123412341234', 'Professor', 'M.E.', 'Computer Vision', 'FacultyProfile/faculty.png', 'faculty@123'),
(1005, 'Kuldeep Gehlot', '1990-01-01', 'kuldeep@gmail.com', '1234567890', '123412341234', 'Professor', 'M.E.', 'Robotics', 'FacultyProfile/faculty.png', 'faculty@123'),
(1006, 'Manvendra Singh', '1990-01-01', 'manvendra@gmail.com', '1234567890', '123412341234', 'Associate Professor', 'M.Tech.', 'Neural Network , Algorithm', 'FacultyProfile/faculty.png', 'faculty@123'),
(1007, 'Manisha Agrwal', '1990-01-01', 'manisha@gmail.com', '1234567890', '123412341234', 'Associate Professor', 'M.Tech.', 'Computer Vision,Embedded Systems', 'FacultyProfile/faculty.png', 'faculty@123'),
(1008, 'Nitesh Tiwari', '1990-01-01', 'nitesh@gmail.com', '1234567890', '123412341234', 'Associate Professor', 'B.E.', 'Computer Vision', 'FacultyProfile/faculty.png', 'faculty@123'),
(1009, 'Mohit Kumar', '1990-01-01', 'mohit@gmail.com', '1234567890', '123412341234', 'Assistant Professor', 'MCA', 'Cryptography', 'FacultyProfile/faculty.png', 'faculty@123'),
(1010, 'Simran choudhary', '1990-01-01', 'simran@gmail.com', '1234567890', '123412341234', 'Assistant Professor', 'M.E.', 'ML,Networking', 'FacultyProfile/faculty.png', 'faculty@123');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_timetable`
--

CREATE TABLE IF NOT EXISTS `faculty_timetable` (
  `Fid` varchar(4) NOT NULL,
  `Period` varchar(8) DEFAULT NULL,
  `Monday` varchar(5) DEFAULT NULL,
  `Tuesday` varchar(5) DEFAULT NULL,
  `Wednesday` varchar(5) DEFAULT NULL,
  `Thursday` varchar(5) DEFAULT NULL,
  `Friday` varchar(5) DEFAULT NULL,
  `Saturday` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_timetable`
--

INSERT INTO `faculty_timetable` (`Fid`, `Period`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`) VALUES
('1001', 'First', '201A', '201A', '201A', ' ', ' ', ' '),
('1001', 'Second', ' ', ' ', ' ', '411A', '411A', '411A'),
('1001', 'Third', '202A', '202A', ' ', ' ', ' ', ' '),
('1001', 'Fourth', ' ', ' ', '202A', '421A', '421A', ' '),
('1001', 'Fifth', ' ', '429B', ' ', ' ', ' ', ' '),
('1001', 'Sixth', ' ', '429B', ' ', ' ', ' ', ' '),
('1002', 'First', '311A', '311A', '311A', ' ', ' ', ' '),
('1002', 'Second', ' ', ' ', ' ', '422A', '422A', '422A'),
('1002', 'Third', '212A', '212A', ' ', ' ', ' ', ' '),
('1002', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1002', 'Fifth', '422B', ' ', '212B', '212B', ' ', '422B'),
('1002', 'Sixth', '422B', ' ', '212B', '212B', ' ', '422B'),
('1003', 'First', '323A', '323A', '435B', ' ', ' ', ' '),
('1003', 'Second', '415B', '415B', '435B', ' ', ' ', ' '),
('1003', 'Third', '415B', '415B', ' ', ' ', '214A', '214A'),
('1003', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1003', 'Fifth', '323B', '323B', ' ', '435B', '214B', '214B'),
('1003', 'Sixth', '323B', '323B', ' ', '435B', '214B', '214B'),
('1004', 'First', ' ', ' ', ' ', ' ', ' ', ' '),
('1004', 'Second', '322B', '322B', '213A', '213A', ' ', ' '),
('1004', 'Third', '322B', '322B', ' ', '413A', '413A', '413A'),
('1004', 'Fourth', ' ', ' ', ' ', ' ', '322A', '322A'),
('1004', 'Fifth', '213B', '213B', '413B', '413B', ' ', ' '),
('1004', 'Sixth', '213B', '213B', '413B', '413B', ' ', ' '),
('1005', 'First', ' ', ' ', '321A', '321A', ' ', ' '),
('1005', 'Second', '222A', '222A', ' ', ' ', ' ', ' '),
('1005', 'Third', ' ', ' ', ' ', '222A', ' ', ' '),
('1005', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1005', 'Fifth', ' ', ' ', '222B', '222B', '321B', '321B'),
('1005', 'Sixth', ' ', ' ', '222B', '222B', '321B', '321B'),
('1006', 'First', '412A', '412A', '412A', '215A', '325A', '325A'),
('1006', 'Second', ' ', ' ', ' ', ' ', ' ', ' '),
('1006', 'Third', ' ', ' ', '215A', '215A', ' ', ' '),
('1006', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1006', 'Fifth', '412B', '412B', '325B', '325B', ' ', ' '),
('1006', 'Sixth', '412B', '412B', '325B', '325B', ' ', ' '),
('1008', 'First', '436B', ' ', ' ', ' ', '225A', '225A'),
('1008', 'Second', '436B', ' ', '328A', '328A', '328B', '328B'),
('1008', 'Third', ' ', '316A', '316A', '316A', '328B', '328B'),
('1008', 'Sixth', ' ', ' ', '316B', '316B', ' ', ' '),
('1008', 'Fifth', ' ', ' ', '316B', '316B', ' ', ' '),
('1008', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1007', 'First', ' ', ' ', '223B', '223B', ' ', ' '),
('1007', 'Second', ' ', ' ', '223B', '223B', ' ', ' '),
('1007', 'Third', '312A', '312A', ' ', ' ', '223A', '223A'),
('1007', 'Fourth', ' ', ' ', '414A', '414A', ' ', ' '),
('1007', 'Fifth', '312B', '312B', ' ', ' ', '414B', '414B'),
('1007', 'Sixth', '312B', '312B', ' ', ' ', '414B', '414B'),
('1009', 'First', ' ', ' ', ' ', ' ', '313B', '313B'),
('1009', 'Second', '313A', '313A', ' ', ' ', '313B', '313B'),
('1009', 'Third', ' ', ' ', ' ', ' ', ' ', ' '),
('1009', 'Fourth', ' ', ' ', ' ', '313A', ' ', ' '),
('1009', 'Fifth', ' ', ' ', ' ', ' ', '226A', '226A'),
('1009', 'Sixth', ' ', ' ', ' ', ' ', '226A', '226A'),
('1010', 'First', '221A', '221A', ' ', ' ', '216B', '216B'),
('1010', 'Second', ' ', ' ', '314A', '314A', '216B', '216B'),
('1010', 'Third', ' ', ' ', ' ', ' ', ' ', ' '),
('1010', 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
('1010', 'Fifth', '221B', '221B', ' ', ' ', '314B', '314B'),
('1010', 'Sixth', '221B', '221B', ' ', ' ', '314B', '314B');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `noticeid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(400) NOT NULL,
  `udate` date NOT NULL,
  PRIMARY KEY (`noticeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeid`, `description`, `udate`) VALUES
(1, 'The Practical Examination 2021 of BE CBCS Third Year VI semester will be held on 21-09-2021.', '2021-08-25'),
(3, 'The Practical Examination 2021 of BE CBCS Second Year VI semester will be held on 21-09-2021.', '2021-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rollno` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `adhar` varchar(12) DEFAULT NULL,
  `batch` varchar(4) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `profile` varchar(35) DEFAULT 'StudentProfile/user.png',
  `password` varchar(15) DEFAULT 'student@123',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `rollno`, `name`, `dob`, `mail`, `mobile`, `adhar`, `batch`, `semester`, `profile`, `password`) VALUES
(100, '19UCSE4001', 'Alok Bharat', '2000-01-01', 'alok@gmail.com', '1234567890', 'XXXXXXXXX100', '2022', 6, 'StudentProfile/100.png', 'student@123'),
(101, '19UCSE4002', 'Amit mangle', '2000-01-01', 'amit@gmail.com', '1234567890', 'XXXXXXXXX101', '2022', 6, '  ', 'student@123'),
(102, '19UCSE4003', 'Ankit Singh Rathore', '2000-01-01', 'ankit@gmail.com', '1234567890', 'XXXXXXXXX102', '2022', 6, 'StudentProfile/user.png', 'student@123'),
(103, '19UCSE4005', 'Dharmendra Tanwar', '2000-01-01', 'dharmendra@gmail.com', '1234567890', 'XXXXXXXXX103', '2022', 6, 'StudentProfile/dharmendra.jpg', 'student@123'),
(104, '19UCSE4006', 'Himanshu Agrwal', '2000-01-01', 'himanshu@gmail.com', '1234567890', 'XXXXXXXXX104', '2022', 6, 'StudentProfile/user.png', 'student@123'),
(105, '2022CSE105', 'Hitesh', '1999-02-11', 'hitesh@123', '1234567890', 'XXXXXXXXX105', '2022', 6, 'StudentProfile/user.png', 'student@123');

-- --------------------------------------------------------

--
-- Table structure for table `student_timetable`
--

CREATE TABLE IF NOT EXISTS `student_timetable` (
  `Semester` int(11) NOT NULL,
  `Period` varchar(8) NOT NULL,
  `Monday` varchar(5) DEFAULT NULL,
  `Tuesday` varchar(5) DEFAULT NULL,
  `Wednesday` varchar(5) DEFAULT NULL,
  `Thursday` varchar(5) DEFAULT NULL,
  `Friday` varchar(5) DEFAULT NULL,
  `Saturday` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_timetable`
--

INSERT INTO `student_timetable` (`Semester`, `Period`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`) VALUES
(3, 'First', '201A', '201A', '201A', '215A', '216B', '216B'),
(3, 'Second', '211A', '211A', '213A', '213A', '216B', '216B'),
(3, 'Third', '212A', '212A', '215A', '215A', '214A', '214A'),
(3, 'Fourth', ' ', ' ', ' ', ' ', ' ', ' '),
(3, 'Fifth', '213B', '213B', '212B', '212B', '214B', '214B'),
(3, 'Sixth', '213B', '213B', '212B', '212B', '214B', '214B'),
(4, 'First', '221A', '221A', '223B', '223B', '225A', '225A'),
(4, 'Second', '222A', '222A', '223B', '223B', ' ', ' '),
(4, 'Third', '202A', '202A', ' ', '222A', '223A', '223A'),
(4, 'Fourth', ' ', ' ', '202A', ' ', ' ', ' '),
(4, 'Fifth', '221B', '221B', '222B', '222B', '226B', '226B'),
(4, 'Sixth', '221B', '221B', '222B', '222B', '226B', '226B'),
(5, 'First', '311A', '311A', '311A', ' ', '313B', '313B'),
(5, 'Second', '313A', '313A', '314A', '314A', '313B', '313B'),
(5, 'Third', '312A', '312A', '316A', '316A', '316A', ' '),
(5, 'Fourth', ' ', ' ', ' ', '313A', ' ', ' '),
(5, 'Fifth', '312B', '312B', '316B', '316B', '314B', '314B'),
(5, 'Sixth', '312B', '312B', '316B', '316B', '314B', '314B'),
(6, 'First', '323A', '323A', '321A', '321A', '325A', '325A'),
(6, 'Second', '322B', '322B', '328A', '328A', '328B', '328B'),
(6, 'Third', '322B', '322B', ' ', ' ', '328B', '328B'),
(6, 'Fourth', ' ', ' ', ' ', ' ', '322A', '322A'),
(6, 'Fifth', '323B', '323B', '325B', '325B', '321B', '321B'),
(6, 'Sixth', '323B', '323B', '325B', '325B', '321B', '321B'),
(7, 'First', '412A', '412A', '412A', ' ', ' ', ' '),
(7, 'Second', '415B', '415B', ' ', '411A', '411A', '411A'),
(7, 'Third', '415B', '415B', ' ', '413A', '413A', '413A'),
(7, 'Fourth', ' ', ' ', '414A', '414A', ' ', ' '),
(7, 'Fifth', '412B', '412B', '413B', '413B', '414B', '414B'),
(7, 'Sixth', '412B', '412B', '413B', '413B', '414B', '414B'),
(8, 'First', '436B', ' ', '435B', ' ', ' ', ' '),
(8, 'Second', '436B', ' ', '435B', '422A', '422A', '422A'),
(8, 'Third', ' ', ' ', ' ', ' ', ' ', ' '),
(8, 'Fourth', ' ', ' ', ' ', '421A', '421A', ' '),
(8, 'Fifth', '422B', '429B', ' ', '435B', ' ', '422A'),
(8, 'Sixth', '422B', '429B', ' ', '435B', ' ', '422A');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `semester` int(11) DEFAULT NULL,
  `code` varchar(5) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `facultyid` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`semester`, `code`, `sname`, `name`, `facultyid`) VALUES
(3, '201A', 'Adv. Math.-1', 'Advance Engineering Mathematics - 1', '1001'),
(3, '211A', 'DS', 'Discrete Structures', '1005'),
(3, '212A', 'OOP', 'Object Oriented Programming', '1002'),
(3, '213A', 'DSA', 'Data Structure and Algorithm', '1004'),
(3, '214A', 'LD', 'Logic Design', '1003'),
(3, '215A', 'COSM', 'Computer Oriented Statistical Methods', '1006'),
(3, '212B', 'OOP LAB', 'Object Oriented Programming Laboratory', '1002'),
(3, '213B', 'DSA LAB', 'Data Structure and Algorithm Laboratory', '1004'),
(3, '214B', 'LD LAB', 'Logic Design Laboratory', '1003'),
(3, '216B', 'PYTHON LAB', 'Python Laboratory', '1010'),
(4, '202A', 'Adv. Math.-2', 'Advance Engineering Mathematics-2', '1001'),
(4, '221A', 'PPL', 'Principles of Programming Language', '1010'),
(4, '222A', 'COA', 'Computer Organization and Architecture', '1005'),
(4, '223A', 'DB & FS', 'DataBase and File System', '1007'),
(4, '225A', 'CE', 'Communication Engineering', '1008'),
(4, '221B', 'PPL LAB', 'Principles of Programming Languages Laboratory', '1010'),
(4, '222B', 'COA LAB', 'Computer Organization & Architecture Laboratory', '1005'),
(4, '223B', 'DB & FS LAB', 'Database & File Systems Laboratory', '1007'),
(4, '226B', 'LINUX LAB', 'Linux Laboratory', '1009'),
(5, '311A', 'TOC', 'Theory of Computation', '1002'),
(5, '312A', 'DBMS', 'Database Management System', '1007'),
(5, '313A', 'SP', 'System Programming', '1009'),
(5, '314A', 'MP', 'Microprocessors', '1010'),
(5, '316A', 'CN', 'Computer Networks', '1008'),
(5, '312B', 'DBMS LAB', 'Database Management System Laboratory', '1007'),
(5, '313B', 'SP LAB', 'System Programming Laboratory', '1009'),
(5, '314B', 'MP LAB', 'Microprocessors Laboratory', '1010'),
(5, '316B', 'CN LAB', 'Computer Networks Laboratory', '1008'),
(6, '321A', 'CGVC', 'Computer Graphics & Visual Computing', '1005'),
(6, '322A', 'OSD', 'Operating System Design', '1004'),
(6, '323A', 'JAVA', 'Java Programming', '1003'),
(6, '325A', 'AI', 'Artificial Intelligence', '1006'),
(6, '328A', 'ROBOTICS', 'Robotics', '1008'),
(6, '321B', 'CGVC LAB', 'Computer Graphics & Visual Computing Laboratory', '1005'),
(6, '322B', 'OSD LAB', 'Operating System Design Laboratory', '1004'),
(6, '323B', 'MINOR PROJECT LAB', 'Minor Project Laboratory', '1003'),
(6, '325B', 'AI LAB', 'Artificial Intelligence Laboratory', '1006'),
(6, '328B', 'ROBOTICS LAB', 'Robotics Laboratory', '1008'),
(7, '411A', 'DAA', 'Design & Analysis of Algoritm', '1001'),
(7, '412A', 'BDA', 'Big Data Analysis', '1006'),
(7, '413A', 'SE', 'Software Engineering', '1004'),
(7, '414A', 'CD', 'Principles of Compiler Design', '1007'),
(7, '412B', 'BDA LAB', 'Big Data Analysis Laboratory', '1006'),
(7, '413B', 'SE LAB', 'Software Engineering Laboratory', '1004'),
(7, '414B', 'CD LAB', 'Compiler Design Laboratory', '1007'),
(7, '415B', 'ELECTIVE LAB', 'Elective Laboratory', '1003'),
(8, '421A', 'Adv. CA', 'Advance Computer Architecture', '1001'),
(8, '422A', 'ES', 'Embedded System', '1002'),
(8, '422B', 'ES LAB', 'Embedded System Laboratory', '1002'),
(8, '429B', 'PROJECT LAB', 'PROJECT Laboratory', '1001'),
(8, '435B', 'PRACT. TRAIN.', 'Practical Training', '1003'),
(8, '436B', 'EDU. TOUR.', 'Educational Tour', '1008');

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE IF NOT EXISTS `submit_assignment` (
  `rollno` varchar(12) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `scode` varchar(5) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit_assignment`
--

INSERT INTO `submit_assignment` (`rollno`, `aid`, `semester`, `scode`, `sdate`, `description`, `file`) VALUES
('19UCSE4005', 3, 6, '325A', '2021-10-01', 'Answer 1\r\nAnswer 2\r\nAnswer 3\r\nAnswer 4', 'SubmitedAssignment/19UCSE4005AI3.txt'),
('19UCSE4005', 1, 6, '325A', '2021-10-01', 'Answer1\r\nAnswer2\r\nAnswer3', 'SubmitedAssignment/19UCSE4005AI1.pdf'),
('19UCSE4003', 3, 6, '325A', '2021-10-01', 'Ankit Singh 1\r\nAnkit Singh 2\r\nAnkit Singh 3', 'SubmitedAssignment/19UCSE4003AI3.txt'),
('19UCSE4003', 1, 6, '325A', '2021-10-01', 'Ankit Singh 1', 'SubmitedAssignment/19UCSE4003AI1.txt'),
('19UCSE4006', 5, 6, '325B', '2021-10-02', 'Dennis Ritchie', 'SubmitedAssignment/19UCSE4006AI LAB5.txt');
