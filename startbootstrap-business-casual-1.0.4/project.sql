-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2015 at 04:02 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Final`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `company_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company`, `company_code`) VALUES
(1, 'McKinsey', '0001'),
(2, 'Goldman Sachs', '0002'),
(3, 'Goldman Sachs', '0001'),
(4, 'MI6', '007'),
(5, 'McKinsey', '001');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `school` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `company` varchar(255) NOT NULL,
  `company_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `school`, `location`, `event_date`, `event_time`, `company`, `company_code`) VALUES
(5, 16, 'Yale University', 'New Haven', '2018-03-04', '16:00:00', 'McKinsey', '0001');

-- --------------------------------------------------------

--
-- Table structure for table `faq3`
--

CREATE TABLE IF NOT EXISTS `faq3` (
  `answer` longtext NOT NULL,
  `keyword0` varchar(20) NOT NULL,
  `keyword1` varchar(180) NOT NULL,
  `keyword2` varchar(100) NOT NULL,
  `keyword3` varchar(20) NOT NULL,
  `keyword4` varchar(100) NOT NULL,
  `keyword5` varchar(20) NOT NULL,
  `keyword6` varchar(100) NOT NULL,
  `keyword7` varchar(20) NOT NULL,
  `keyword8` varchar(20) NOT NULL,
  KEY `keyword0_4` (`keyword0`,`keyword1`,`keyword2`,`keyword3`,`keyword4`,`keyword5`,`keyword6`,`keyword7`,`keyword8`),
  KEY `keyword0_6` (`keyword0`,`keyword1`,`keyword2`,`keyword3`,`keyword4`,`keyword5`,`keyword6`,`keyword7`,`keyword8`),
  KEY `keyword0_7` (`keyword0`,`keyword1`,`keyword2`,`keyword3`,`keyword4`,`keyword5`,`keyword6`,`keyword7`,`keyword8`),
  FULLTEXT KEY `keyword8` (`keyword8`),
  FULLTEXT KEY `keyword7` (`keyword7`),
  FULLTEXT KEY `keyword6` (`keyword6`),
  FULLTEXT KEY `keyword5` (`keyword5`),
  FULLTEXT KEY `keyword4` (`keyword4`),
  FULLTEXT KEY `keyword3` (`keyword3`),
  FULLTEXT KEY `keyword2` (`keyword2`),
  FULLTEXT KEY `keyword1` (`keyword1`),
  FULLTEXT KEY `keyword0` (`keyword0`),
  FULLTEXT KEY `answer` (`answer`),
  FULLTEXT KEY `keyword0_2` (`keyword0`),
  FULLTEXT KEY `keyword1_2` (`keyword1`),
  FULLTEXT KEY `keyword2_2` (`keyword2`),
  FULLTEXT KEY `keyword3_2` (`keyword3`),
  FULLTEXT KEY `keyword4_2` (`keyword4`),
  FULLTEXT KEY `keyword5_2` (`keyword5`),
  FULLTEXT KEY `keyword6_2` (`keyword6`),
  FULLTEXT KEY `keyword7_2` (`keyword7`),
  FULLTEXT KEY `keyword8_2` (`keyword8`),
  FULLTEXT KEY `keyword7_3` (`keyword7`),
  FULLTEXT KEY `keyword8_3` (`keyword8`),
  FULLTEXT KEY `keyword8_4` (`keyword8`),
  FULLTEXT KEY `keyword0_3` (`keyword0`),
  FULLTEXT KEY `keyword1_3` (`keyword1`),
  FULLTEXT KEY `keyword2_3` (`keyword2`),
  FULLTEXT KEY `keyword3_3` (`keyword3`),
  FULLTEXT KEY `keyword4_3` (`keyword4`),
  FULLTEXT KEY `keyword5_3` (`keyword5`),
  FULLTEXT KEY `keyword6_3` (`keyword6`),
  FULLTEXT KEY `keyword7_4` (`keyword7`),
  FULLTEXT KEY `keyword8_5` (`keyword8`),
  FULLTEXT KEY `keyword0_5` (`keyword0`,`keyword1`,`keyword2`,`keyword3`,`keyword4`,`keyword5`,`keyword6`,`keyword7`,`keyword8`),
  FULLTEXT KEY `keyword0_8` (`keyword0`,`keyword1`,`keyword2`,`keyword3`,`keyword4`,`keyword5`,`keyword6`,`keyword7`,`keyword8`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq3`
--

INSERT INTO `faq3` (`answer`, `keyword0`, `keyword1`, `keyword2`, `keyword3`, `keyword4`, `keyword5`, `keyword6`, `keyword7`, `keyword8`) VALUES
('Can I use my LinkedIn Profile? Yes you can! You can integrate your existing professional networks by giving us permission through our app.', 'LinkedIN', 'Link', 'Facebook', 'Face', 'book', 'Twitter', 'Instagram', 'InstaGRAM ', 'LinkedIn'),
('Do I need to make a new cover letter for every application? You can just upload your resume and relevant metrics to our site through our simple integration tools. There will be sections for industry standard questions that we encourage you to answer. Of course a specific recruiter might have a separate supplement for you to fill out!', 'cover', 'letter', 'executive', 'summary', 'supplement', 'specific', 'industry', 'standard', 'generic'),
('Does this service integrate with my calendar? Yes! LinkUpWith.Me is designed to work with your phone’s calendar. We will automatically send you timely reminders on event times and due dates. In addition there will be a separate feed where you can see what your friends do.', 'calendar', 'phone', 'time', 'due', 'date', 'deadline', 'reminder', 'alert', 'alert'),
('Will my information be made public? You’ll always be in total control of your information! We take data security and privacy very seriously. You are in total control of what the world sees or doesn’t see. If you give us permission we’ll take your information and match you up with ideal candidates for your relevant interests and career fields.', 'privacy', 'security', 'control', 'info', 'information', 'career', 'fields', 'share', 'measures'),
('Can my friend recommend me? We’re all about increasing interactions between students and recruiters. We’ll have sections (if a recruiter wants outside input) for your friends to vouch for you.', 'recommend', 'recommendations', ' friend', 'friends', 'contacts', 'contact', 'vouch', 'input', 'inputs'),
('Can I restrict who gets invited to my event? We are all about helping you maximize your talent search. You are in total control of who you invite to your event with powerful filters to find the exact candidate pool you desire. Of course if you’ll allow us we’ll maximize your search capabilities by bringing in students from all over who fit your desired criteria.', 'restrict', 'restrictions', 'specific', 'university', 'control', 'controls', 'filter', 'filters', 'exact'),
('Can I manage my recruiters through the app? Yes you can! We make it easy for recruiters to coordinate corporate activities through personalized logins with centralized information sharing. You can continuously get updates on what your recruiters feel about students from all over the country.', 'corporate', 'coordinate', 'personalized', 'individual', 'login', 'central', 'centralized', 'updates', 'updated');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_update`
--

CREATE TABLE IF NOT EXISTS `recruiter_update` (
  `id` int(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_update`
--

INSERT INTO `recruiter_update` (`id`, `FirstName`, `LastName`, `Email`, `Company`) VALUES
(0, 'Richard', 'Leigh', 'richard.leigh@yale.edu', 'McKinsey'),
(0, 'Adam', 'Gerard', 'adam.gerard@yale.edu', 'LinkUpWith.Me'),
(0, 'a', 'a', 'a', ''),
(0, 'Adam', 'Gerard', 'adam.gerard@yale.edu', ''),
(0, 'a', 'a', 'a', ''),
(0, '', '', '', ''),
(0, '', '', '', ''),
(0, 'a', 'a', 'a', 'a'),
(0, 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_userss`
--

CREATE TABLE IF NOT EXISTS `recruiter_userss` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `company_code` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `recruiter_userss`
--

INSERT INTO `recruiter_userss` (`id`, `company`, `company_code`, `username`, `hash`, `email`) VALUES
(1, 'McKinsey', '0001', 'rleigh', '$1$bxW4v90s$4ebEkWZugEkFpI9xp0xFm0', 'rleigh1413@gmail.com'),
(2, 'McKinsey', '0001', 'rel54', '$1$bXktEBhf$NbLuAT9p97mAj1ivsN7BL/', 'richard.leigh@yale.edu'),
(3, 'Rich', '0001', 'rel54', '$1$Lrrbnu4B$3nc1yqOCBbu7jmYGvAh/z/', 'richard.leigh@yale.edu'),
(4, 'Rich', '0001', 'rel54', '$1$gH8.2pTA$DvW8/j2Bx5dcfrhtKZ.xI1', 'richard.leigh@yale.edu'),
(5, 'Rich', '0001', 'rel54', '$1$q/s8nUbQ$PwQi6WOTl6kS2PhPJTWDk1', 'richard.leigh@yale.edu'),
(6, 'Rich', '0001', 'rel54', '$1$YWD/fpsc$x19mYWTic2CW4waJkSqqN1', 'richard.leigh@yale.edu'),
(7, 'Rich', '0001', 'rel54', '$1$Rm1QQTzH$6lFz6Gu03Ai4EH4pLlL1o.', 'richard.leigh@yale.edu'),
(8, 'Rich', '0001', 'rel54', '$1$uMVnXIud$PD6KXldVUCOlBGGPIzk2X.', 'richard.leigh@yale.edu'),
(9, 'Rich', '0001', 'rel54', '$1$pEBsqv/X$gTrtpMLGsygJ5fplGc2gK.', 'richard.leigh@yale.edu'),
(10, 'Rich', '0001', 'rel54', '$1$cJQt.QJr$zBqfD1prevQFHSDdcdQkl.', 'richard.leigh@yale.edu'),
(11, 'Rich', '0001', 'rel54', '$1$qjHIybW0$.SNLnqoLRW3IlUHydVo2E0', 'richard.leigh@yale.edu'),
(12, 'Rich', '0001', 'rel54', '$1$vXhjAJQn$xcTqC90RyxxBWt3G0V4.J/', 'richard.leigh@yale.edu'),
(13, 'Rich', '0001', 'rel54', '$1$EghJ6Nkm$ceowy521WsnI4mQxJ5E3d.', 'richard.leigh@yale.edu'),
(14, 'Rich', '0001', 'rel54', '$1$HiVvLhPh$F1ycmFpc8PH43Wxvc5a0p0', 'richard.leigh@yale.edu'),
(15, 'Trey', '0001', 'rel54', '$1$22pFqaYN$RizBOOMWhZYAWVL3cQoiN.', 'richard.leigh@yale.edu'),
(16, 'Rich', '0001', 'richard.leigh@yale.edu', '$1$oHXm4G5p$32mIwum.xC1OL0bw40k0u1', 'richard.leigh@yale.edu'),
(17, 'MI6', '007', 'James Bond', '$1$3Di5hYNv$WbTQIsqyiPaW4A7lJhiWI/', 'munam@linkupwith.me');

-- --------------------------------------------------------

--
-- Table structure for table `student_update`
--

CREATE TABLE IF NOT EXISTS `student_update` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `University` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `E-mail` (`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_update`
--

INSERT INTO `student_update` (`id`, `FirstName`, `LastName`, `Email`, `University`) VALUES
(1, 'Richard', 'Leigh', 'richard.leigh@yale.edu', 'Yale');

-- --------------------------------------------------------

--
-- Table structure for table `users_students`
--

CREATE TABLE IF NOT EXISTS `users_students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `interest` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_students`
--

INSERT INTO `users_students` (`id`, `username`, `hash`, `email`, `gpa`, `major`, `interest`, `school`) VALUES
(2, 'rel54', '$1$yo1gmmU1$RcrznbNEYg1UsR2Z4SfBd1', 'richard.leigh@yale.edu', '3.6', 'Economics', 'Consulting', 'Yale University'),
(3, 'adam', '$1$u36TKbxw$JO4rZKSZ1ENBlkU2Xdqil1', 'adam.gerard@yale.edu', '3.92', 'Global Affairs', 'Consulting', 'Yale'),
(4, 'adam', '$1$BmcFwgq1$R0dhJTDHWJ92BX400UPOF.', 'adam.gerard@yale.edu', '3.92', 'Global Affairs', 'Consulting', 'Yale');

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

CREATE TABLE IF NOT EXISTS `user_events` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `company` varchar(255) NOT NULL,
  `event_time` time NOT NULL,
  `event_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_events`
--

INSERT INTO `user_events` (`id`, `user_id`, `company`, `event_time`, `event_date`) VALUES
(1, 2, 'McKinsey', '16:00:00', '2018-03-04'),
(2, 2, 'McKinsey', '00:00:00', '0000-00-00'),
(3, 2, 'boos', '00:00:00', '0000-00-00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
