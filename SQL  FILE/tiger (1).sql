-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2022 at 03:32 PM
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
-- Database: `tiger`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descrp` varchar(500) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `descrp`, `image`) VALUES
(1, 'ABOUT ME v', 'Lorem ipsum dolor sit amet, jjjj consectetur adipisicing elit. Rerum, sed repudiandae odit deserunt, quas quibusdam necessitatibus nesciunt eligendi esse sit non reprehenderit ', 'about.png');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desp` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `sub_title`, `title`, `desp`, `status`) VALUES
(3, 'Quos velit est occae', 'Id accusamus In deleniti ea qui qId accusamus In deleniti ea qui q', 'In deleniti ea qui q', 0),
(5, 'HI', 'I\'m Jobayer. ', 'Web design and developer.Still trying to learn new things to beacome a beast!', 1),
(7, 'A possimus et neque', 'Proident vitae cons', 'Sunt est laboriosam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`) VALUES
(2, 'Martha Johnson   ', '2.png'),
(3, 'Sean Greer', '3.png'),
(4, 'tonoy jakson2', '4.png'),
(5, 'tonoy jakson3', '5.png'),
(6, 'tonoy jakson4', '6.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone_number`, `email`) VALUES
(1, 'Address deyar somoy nai. togo boro bhai der jiga deloyar kidaa', 123456789, 'unknown@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `percentage` int(100) NOT NULL,
  `year` int(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `title`, `percentage`, `year`, `status`) VALUES
(2, 'SSC', 85, 2016, 1),
(3, 'Diploma In Engineering  ', 85, 2021, 1),
(4, 'B.Sc. In CSE', 80, 2026, 1),
(5, 'dolorem harum ', 70, 2007, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(11) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `count` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `icon`, `count`, `title`, `status`) VALUES
(2, 'fa fab fa-facebook', '245', ' FEATURE ITEM', 1),
(3, 'fa fab fa-instagram', '345 ', 'ACTIVE PRODUCTS', 1),
(4, 'fa fab fa-yahoo', '39 ', 'YEAR EXPERIENCE', 1),
(5, 'fa fab fa-skype', '3', 'OUR CLIENTS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `user_image` varchar(80) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `title`, `feedback`, `user_image`, `status`) VALUES
(2, '', 'Sunt odit qui place', 'Voluptate accusantiu', '2.jpg', 0),
(3, '', 'Velit facilis cupid', 'Nobis proident minu', '3.jpg', 0),
(10, 'Jobayer Shikder', 'head of idea', 'An event is a message sent by an object to signal the occur rence of an action. The action can causd', '10.jpg', 1),
(11, 'tonoy jakson', 'head of idea', 'An event is a messag sent by an object to signal the occur rence of an action. The action can causd', '11.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(60) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `icon`, `link`, `status`) VALUES
(1, 'fa fab fa-facebook', 'facebook.com', 1),
(2, 'fa fab fa-google', 'google.com', 1),
(3, 'fa fab fa-tumblr', 'tumbir.com', 1),
(4, 'fa fab fa-linkedin', 'linkedin.com', 1),
(5, 'fa fab fa-youtube', 'youtube.com', 1),
(8, 'fa fab fa-flickr', 'facebook.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `status`) VALUES
(8, 'tonoy jakson', 'pivuqy@mailinator.com', 'fjasldjaogfoasd \r\n\r\n', 1),
(9, 'Fletcher Le', 'gabywubok@mailinator.com', 'Praesentium dolore m', 1),
(10, 'Delilah Woodard', 'jebiryku@mailinator.com', 'Possimus voluptate ', 1),
(11, 'Aphrodite Ochoa', 'zyxilazed@mailinator.com', 'Reprehenderit do do', 1),
(12, 'Jada Mcneil', 'vohiw@mailinator.com', 'Aspernatur fugiat essghwsrtghsfghsrthsadthadfh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desp` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `desp`, `status`) VALUES
(1, 'fa fa-wordpress', 'Wordpress Development ', '1 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(2, 'fa fa-github', 'Web Development', '2 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply 2 dummy text of the printing and 2 typesetting industry. Lorem Ipsum indust.', 1),
(3, 'fa fa-wifi', 'Wifi Services', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(4, 'fa fa-youtube-play', 'Youtube star making', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(5, 'fa fa-database', 'Hosting Service', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1),
(6, 'fa fa-cc-visa', 'Student visa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_photo` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_photo`, `role`) VALUES
(1, 'Sean Greer ', 'pivuqy@mailinator.com', '$2y$10$w452WAaAXSrovJOOBZ4V.uuRUSnNxE1Zs02sGqUY3l55aNm2e3Lsq', '4.jpg', 3),
(2, 'Dustin Cobb', 'wyky@mailinator.com', '$2y$10$Uzktzw8c4B/RKjAWm9htlehKoS0Z4rt1a0jymtcm0EiVTDPw7WDJG', '6.jpg', 2),
(7, 'Odette Maddoxxxx', 'mitebuk@mailinator.com', '$2y$10$/IOj4E7PyHoAGbqrTNoCzOVn0U9AddQHaDyNRHvDY0gx42GEh4DS.', '7.jpg', 1),
(8, 'Xander Mcguire', 'sebulicame@mailinator.com', '$2y$10$5WlUaBSSqMkgUaz6B2kUSuHWQXoCQPbVwnzd1hrM6keejUfDNvdhO', '8.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `desp` text NOT NULL,
  `project_image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `added_by`, `category`, `project_name`, `title`, `desp`, `project_image`, `status`) VALUES
(2, 1, 'web', 'vespa official Website design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2.jpg', 1),
(3, 1, 'Apple', 'Zia Finch', 'Lorem Ipsum is simply dummy text of the', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions o', 'VAXBZ749.jpg', 1),
(4, 1, 'Quasi', 'Hannah Mendoza', 'Qui amet ipsam sint Qui amet ipsam sint', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions o', 'KTERH286.jpg', 1),
(5, 1, 'Sapient', 'Shaeleigh Ingram', 'Quas excepturi dolor Quas excepturi dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions o', 'PARYC253.jpg', 1),
(6, 1, 'null', 'Andrew Guthrie', 'Vel soluta animi se Vel soluta animi se', 'Vel soluta animi seLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions o', 'LYVQK335.jpg', 1),
(7, 1, 'inventore ', 'Brent Mays', 'Numquam architecto v Numquam architecto v', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including ', 'NEIZJ579.jpg', 1),
(9, 2, 'Ducimus officiis ni', 'Uma Parks', 'Pariatur Autem vel ', 'Enim magna voluptas ', 'JWFBG119.jpg', 0),
(10, 1, 'Perspiciatis provid', 'Daquan Clay', 'Recusandae Fugit e', 'Qui voluptatum fugia', 'LPVNJ353.png', 0),
(14, 4, 'Blanditiis ', 'Ciaran ', 'Impedit ', 'Voluptate', 'RDTYB477.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
