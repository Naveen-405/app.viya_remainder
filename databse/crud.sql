-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2025 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assigned`
--

CREATE TABLE `tbl_assigned` (
  `pk_asgn_id` int(11) NOT NULL,
  `fk_task_id` int(11) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_assigned`
--

INSERT INTO `tbl_assigned` (`pk_asgn_id`, `fk_task_id`, `fk_user_id`, `title`, `description`, `status`, `priority`, `created_at`, `modified_at`) VALUES
(1, 1, 2, 'Design Homepage', 'Design homepage as per UI spec.', 'pending', 'high', '2025-05-08 16:31:39', '2025-05-08 16:31:39'),
(2, 1, 3, 'Design Homepage', 'Review and finalize homepage layout.', 'pending', 'medium', '2025-05-08 16:31:39', '2025-05-08 16:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_master`
--

CREATE TABLE `tbl_tasks_master` (
  `pk_task_id` int(11) NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tasks_master`
--

INSERT INTO `tbl_tasks_master` (`pk_task_id`, `fk_user_id`, `title`, `description`, `status`, `due_date`, `priority`, `created_at`) VALUES
(1, 1, 'Design Homepage', 'Create the homepage layout for the website.', 'pending', '2025-05-15', 'high', '2025-05-08 16:30:33'),
(2, 1, 'Write Documentation', 'Complete technical documentation for the backend.', 'pending', '2025-05-18', 'medium', '2025-05-08 16:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_master`
--

CREATE TABLE `tbl_users_master` (
  `pk_user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users_master`
--

INSERT INTO `tbl_users_master` (`pk_user_id`, `name`, `email`, `phone`, `created_at`) VALUES
(1, 'naveen', 'naveen@gmail.com', '9087654432', '2025-05-07 16:47:01'),
(2, 'kaviya', 'kaviya@gmail.com', '8976524361', '2025-05-07 16:47:01'),
(3, 'arun', 'arun@gmail.com', '9012345678', '2025-05-07 16:47:01'),
(4, 'divya', 'divya@gmail.com', '9123456780', '2025-05-07 16:47:01'),
(5, 'ravi', 'ravi@gmail.com', '9345678901', '2025-05-07 16:47:01'),
(6, 'meena', 'meena@gmail.com', '9456789012', '2025-05-07 16:47:01'),
(7, 'suresh', 'suresh@gmail.com', '9567890123', '2025-05-07 16:47:01'),
(8, 'priya', 'priya@gmail.com', '9678901234', '2025-05-07 16:47:01'),
(9, 'vinod', 'vinod@gmail.com', '9789012345', '2025-05-07 16:47:01'),
(10, 'anitha', 'anitha@gmail.com', '9890123456', '2025-05-07 16:47:01'),
(11, 'Alice Johnson', 'alice@example.com', '1234567890', '2025-05-08 16:29:48'),
(12, 'Bob Smith', 'bob@example.com', '2345678901', '2025-05-08 16:29:48'),
(13, 'Charlie Davis', 'charlie@example.com', '3456789012', '2025-05-08 16:29:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_assigned`
--
ALTER TABLE `tbl_assigned`
  ADD PRIMARY KEY (`pk_asgn_id`),
  ADD KEY `fk_task_id` (`fk_task_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `tbl_tasks_master`
--
ALTER TABLE `tbl_tasks_master`
  ADD PRIMARY KEY (`pk_task_id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

--
-- Indexes for table `tbl_users_master`
--
ALTER TABLE `tbl_users_master`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_assigned`
--
ALTER TABLE `tbl_assigned`
  MODIFY `pk_asgn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tasks_master`
--
ALTER TABLE `tbl_tasks_master`
  MODIFY `pk_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users_master`
--
ALTER TABLE `tbl_users_master`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_assigned`
--
ALTER TABLE `tbl_assigned`
  ADD CONSTRAINT `tbl_assigned_ibfk_1` FOREIGN KEY (`fk_task_id`) REFERENCES `tbl_tasks_master` (`pk_task_id`),
  ADD CONSTRAINT `tbl_assigned_ibfk_2` FOREIGN KEY (`fk_user_id`) REFERENCES `tbl_users_master` (`pk_user_id`);

--
-- Constraints for table `tbl_tasks_master`
--
ALTER TABLE `tbl_tasks_master`
  ADD CONSTRAINT `tbl_tasks_master_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `tbl_users_master` (`pk_user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
