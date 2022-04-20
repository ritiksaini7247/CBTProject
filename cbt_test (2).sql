-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 05:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_test_questions`
--

CREATE TABLE `cbt_test_questions` (
  `question_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `question_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_test_questions`
--

INSERT INTO `cbt_test_questions` (`question_id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `question_type`) VALUES
(1, '	\r\n	\r\nSenators from urban areas are very concerned about assuring that there will be funding for a new international airport. Senators from rural areas refuse to fund anything until money for agricultural subsidies is appropriated. If the legislature funds these two programs, on which of the following could they spend the rest of the money?', 'the school music program and national radio\r\n', 'hurricane preparedness\r\n', 'harbor improvements and the school music program\r\n', 'small business loan program\r\n', '3', 'Reasoning'),
(2, '	\r\nLook at this series: 2, 1, (1/2), (1/4), ... What number should come next?', '(1/3)', '(1/8)', '(2/8)', '(1/16)', '3', 'Reasoning'),
(3, 'SCD, TEF, UGH, ____, WKL', 'CMN', 'JHN', 'KLS', 'NNM', '4', 'Programming'),
(4, 'Which word does NOT belong with the others?', 'parsley\r\n', 'dill', 'basil', 'mayonnaise\r\n', '4', 'Programming'),
(24, 'In each question below is given a statement followed by two courses of action numbered I and II. You have to assume everything in the statement to be true and on the basis of the information given in the statement, decide which of the suggested courses of action logically follow(s) for pursuing.', '(A) If only I follows\r\n', '(B) If only II follows\r\n', '(C) If either I or II follows\r\n', '(D) If neither I nor II follows\r\n', '1', 'Pseudocode'),
(25, '	\r\nB2CD, _____, BCD4, B5CD, BC6D', 'B2C2D', 'BC3D', 'B2C3D\r\n', 'B2C3', '1', 'Pseudocode'),
(26, 'ierdjdk', 'fgggf', 'fggf', 'hgth', 'gfgth', '2', 'Pseudocode');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_trainee`
--

CREATE TABLE `cbt_trainee` (
  `trainee_id` int(11) NOT NULL,
  `trainee_name` varchar(100) NOT NULL DEFAULT 'no_trainee_name',
  `trainee_email` varchar(100) NOT NULL DEFAULT 'no_email',
  `trainee_password` varchar(100) NOT NULL DEFAULT 'no_pass',
  `trainee_contact_number` varchar(30) NOT NULL DEFAULT 'no_contact_no',
  `trainee_technology_name` varchar(100) NOT NULL DEFAULT 'no_technology',
  `trainee_university_name` varchar(100) NOT NULL DEFAULT 'no_university',
  `trainee_college_name` varchar(100) NOT NULL DEFAULT 'no_college',
  `trainee_visited_college_name` varchar(100) NOT NULL DEFAULT 'no_visited_college',
  `trainee_college_roll_no` varchar(100) NOT NULL DEFAULT 'no_roll_no',
  `trainee_10th_percentage` varchar(20) NOT NULL DEFAULT 'no_10th',
  `trainee_12th_percentage` varchar(20) NOT NULL DEFAULT 'no_12th',
  `trainee_HR_name` varchar(100) NOT NULL DEFAULT 'no_hr',
  `trainee_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trainee_attemt` int(11) NOT NULL DEFAULT '0',
  `trainee_documents` varchar(100) NOT NULL DEFAULT 'no_docs',
  `trainee_result` varchar(100) NOT NULL DEFAULT 'no_result'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_trainee`
--

INSERT INTO `cbt_trainee` (`trainee_id`, `trainee_name`, `trainee_email`, `trainee_password`, `trainee_contact_number`, `trainee_technology_name`, `trainee_university_name`, `trainee_college_name`, `trainee_visited_college_name`, `trainee_college_roll_no`, `trainee_10th_percentage`, `trainee_12th_percentage`, `trainee_HR_name`, `trainee_created_at`, `trainee_attemt`, `trainee_documents`, `trainee_result`) VALUES
(1, 'akshay', 'akshay@gmail.com', '12345', '89374664478', 'c#', 'CCSU', 'RoopRam Institue', 'MS College', '7434737397456738', '85', '70', 'Vishal', '2022-04-03 10:04:13', 0, 'no document selected', 'fail'),
(2, 'Ritik', 'ritik@gmail.com', 'ritik', '48478454784', 'java', 'CCSU', 'UP Group Of Colleges', 'MS College', '8474538397593', '81', '79', 'maim', '2022-04-03 11:32:11', 0, 'no_docs', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_test_questions`
--
ALTER TABLE `cbt_test_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `cbt_trainee`
--
ALTER TABLE `cbt_trainee`
  ADD PRIMARY KEY (`trainee_id`),
  ADD UNIQUE KEY `trainee_email` (`trainee_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_test_questions`
--
ALTER TABLE `cbt_test_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cbt_trainee`
--
ALTER TABLE `cbt_trainee`
  MODIFY `trainee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
