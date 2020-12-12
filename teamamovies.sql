-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 07:45 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_27394024_teamamovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `verification_code` varchar(7) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`admin_id`, `username`, `password`, `first_name`, `last_name`, `email`, `mobile`, `verification_code`, `code`) VALUES
(32, 'priffy', '2af9b1ba42dc5eb01743e6b3759b6e4b', 'prif', 'priffy', 'priff@dinas.com', 1234567890, 'IM10444', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_verification`
--

CREATE TABLE `tbl_admin_verification` (
  `verification_id` int(11) NOT NULL,
  `verification_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_verification`
--

INSERT INTO `tbl_admin_verification` (`verification_id`, `verification_code`) VALUES
(13, 'IM10009'),
(15, 'IM11030'),
(21, 'IM34244'),
(22, 'IM35355'),
(25, 'IM43434'),
(26, 'IM53534');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `booking_id` int(255) NOT NULL,
  `booking_time` datetime NOT NULL DEFAULT current_timestamp(),
  `ticket_id` varchar(1000) NOT NULL,
  `user_id` int(255) NOT NULL,
  `show_id` int(10) NOT NULL,
  `show_date` date NOT NULL,
  `showtime_id` int(10) NOT NULL,
  `ticket_category` varchar(100) NOT NULL,
  `ticket_type` varchar(100) NOT NULL,
  `ticket_price` float NOT NULL,
  `seat_id` int(11) NOT NULL,
  `seat_number` varchar(100) NOT NULL,
  `total_seat_count` int(10) NOT NULL,
  `full_seat_count` int(10) NOT NULL,
  `kids_seat_count` int(10) NOT NULL,
  `total_amount` float NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`booking_id`, `booking_time`, `ticket_id`, `user_id`, `show_id`, `show_date`, `showtime_id`, `ticket_category`, `ticket_type`, `ticket_price`, `seat_id`, `seat_number`, `total_seat_count`, `full_seat_count`, `kids_seat_count`, `total_amount`, `status`) VALUES
(158, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Full', 36, 3262, 'E1', 6, 3, 3, 168, 0),
(159, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Full', 36, 3268, 'D1', 6, 3, 3, 168, 0),
(160, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Full', 36, 3274, 'C1', 6, 3, 3, 168, 0),
(161, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Kids', 20, 3280, 'B1', 6, 3, 3, 168, 0),
(162, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Kids', 20, 3281, 'B2', 6, 3, 3, 168, 0),
(163, '2020-12-06 00:11:48', 'IM1607193P16708', 33, 118, '2020-12-06', 54, 'VIP', 'Kids', 20, 3275, 'C2', 6, 3, 3, 168, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings_publish`
--

CREATE TABLE `tbl_bookings_publish` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings_purchase`
--

CREATE TABLE `tbl_bookings_purchase` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings_temporary`
--

CREATE TABLE `tbl_bookings_temporary` (
  `id` int(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `show_id` int(11) NOT NULL,
  `show_date` date NOT NULL,
  `showtime_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carousel`
--

CREATE TABLE `tbl_carousel` (
  `id` int(10) NOT NULL,
  `movie_id` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carousel`
--

INSERT INTO `tbl_carousel` (`id`, `movie_id`) VALUES
(17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_common_seat_categories`
--

CREATE TABLE `tbl_common_seat_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_common_seat_categories`
--

INSERT INTO `tbl_common_seat_categories` (`category_id`, `category_name`) VALUES
(1, 'ODC'),
(2, 'BOX'),
(3, 'BALCONY'),
(4, 'PLATINUM'),
(5, 'GOLD'),
(6, 'SILVER'),
(7, 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_us`
--

CREATE TABLE `tbl_contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(10) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `category` varchar(200) NOT NULL,
  `running_time` time NOT NULL,
  `release_date` date NOT NULL,
  `language` varchar(200) NOT NULL,
  `director` varchar(100) NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `casts` varchar(500) NOT NULL, 
  `trailer_url` varchar(1000) NOT NULL,
  `status` int(1) NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `avg_ratings` float NOT NULL,
  `total_ratings` float NOT NULL,
  `num_of_ratings` int(11) NOT NULL,
  `user_ip_addresses` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `year`, `category`, `running_time`, `release_date`, `language`, `director`, `synopsis`, `casts`, `trailer_url`, `status`, `starting_date`, `ending_date`, `avg_ratings`, `total_ratings`, `num_of_ratings`, `user_ip_addresses`) VALUES
(9, 'SpiderMan: Far From Home - 3D', 2019, 'Action, Adventure', '02:09:00', '2019-07-02', 'English', 'Jon Watts', 'Shortly after the events of Avengers: Endgame, Peter Parker, mourning the death of his mentor Tony Stark, goes on a school trip to Europe with his friends. While abroad, he is recruited by Nick Fury to team up with a mysterious superhero known as Mysterio to battle the Elementals.', 'Tom Holland, Samuel L. Jackson, Jake Gyllenhaal', 'https://www.youtube.com/watch?v=Nt9L1jCKGnE', 1, '2019-07-16', '2019-12-31', 0, 0, 0, '');
INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `year`, `category`, `running_time`, `release_date`, `language`, `director`, `synopsis`, `casts`, `trailer_url`, `status`, `starting_date`, `ending_date`, `avg_ratings`, `total_ratings`, `num_of_ratings`, `user_ip_addresses`) VALUES
(12, 'Wonder Woman 1984', 2020, 'Adventure/Action', '02:31:00', '2020-12-01', 'English', 'Patty Jenkins', 'Wonder Woman squares off against Maxwell Lord and the Cheetah, a villainess who possesses superhuman strength and agility.', 'Gal Gadot, Patty Jenkins, Zack Snyder, Deborah','https://www.youtube.com/watch?v=psFf4KXJZoQ', 1, '2020-12-04', '2020-12-12', 3.6, 3.6, 1, ',::1');
INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `year`, `category`, `running_time`, `release_date`, `language`, `director`, `synopsis`, `casts`, `trailer_url`, `status`, `starting_date`, `ending_date`, `avg_ratings`, `total_ratings`, `num_of_ratings`, `user_ip_addresses`) VALUES
(13, 'Mulan', 2020, 'Action/Adventure', '02:00:00', '2020-03-03', 'English', 'Niki Caro', 'To save her ailing father from serving in the Imperial Army, a fearless young woman disguises herself as a man to battle northern invaders in China.', 'Liu Yefei, Jet Li, Donnie Yen, Gong Li, Yoson An', 'https://www.youtube.com/watch?v=KK8FHdFluOQ', 1, '2020-12-05', '2021-01-07', 2.7, 2.7, 1, ',::1');

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `year`, `category`, `running_time`, `release_date`, `language`, `director`, `synopsis`, `casts`, `trailer_url`, `status`, `starting_date`, `ending_date`, `avg_ratings`, `total_ratings`, `num_of_ratings`, `user_ip_addresses`) VALUES
(14, 'Freaky', 2020, 'Horror/Comedy', '01:47:00', '2020-11-20', 'English', 'Christopher Landon', 'Seventeen-year-old Millie Kessler spends her days trying to survive high school and the cruel actions of the popular crowd. But when she becomes the latest target of the Butcher, the towns infamous serial killer, her senior year becomes the least of her worries. When the Butchers mystical dagger causes him and Millie to magically switch bodies, the frightened teen learns she has just 24 hours to get her identity back before she looks like a middle-aged maniac forever.', 'Kathryn Newton, Vince Vaughn, Uriah Shelton', 'https://www.youtube.com/watch?v=qhEIL_-4HZM', 1, '2020-12-05', '2021-02-01', 3.7, 3.7, 1, ',::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `offer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `payment_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` varchar(1000) NOT NULL,
  `process` varchar(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `sub_total` float NOT NULL,
  `service_tax` float NOT NULL,
  `paid_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`payment_id`, `timestamp`, `user_id`, `ticket_id`, `process`, `customer_name`, `customer_phone`, `customer_email`, `payment_type`, `sub_total`, `service_tax`, `paid_amount`) VALUES
(105, '2020-12-06 00:11:48', 33, 'IM1607193P16708', 'booking', 'ntreee', 709876512, 'new@test.com', 'visa_mastercard', 168, 9.85, 177.85);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refunds`
--

CREATE TABLE `tbl_refunds` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `ticket_id` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat_maps`
--

CREATE TABLE `tbl_seat_maps` (
  `seat_id` int(200) NOT NULL,
  `seat_category_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_seat_maps`
--

INSERT INTO `tbl_seat_maps` (`seat_id`, `seat_category_id`, `seat_number`) VALUES
(3256, 46, 'F1'),
(3257, 46, 'F2'),
(3258, 46, 'F3'),
(3259, 46, 'F4'),
(3260, 46, 'F5'),
(3261, 46, 'F6'),
(3262, 46, 'E1'),
(3263, 46, 'E2'),
(3264, 46, 'E3'),
(3265, 46, 'E4'),
(3266, 46, 'E5'),
(3267, 46, 'E6'),
(3268, 46, 'D1'),
(3269, 46, 'D2'),
(3270, 46, 'D3'),
(3271, 46, 'D4'),
(3272, 46, 'D5'),
(3273, 46, 'D6'),
(3274, 46, 'C1'),
(3275, 46, 'C2'),
(3276, 46, 'C3'),
(3277, 46, 'C4'),
(3278, 46, 'C5'),
(3279, 46, 'C6'),
(3280, 46, 'B1'),
(3281, 46, 'B2'),
(3282, 46, 'B3'),
(3283, 46, 'B4'),
(3284, 46, 'B5'),
(3285, 46, 'B6'),
(3286, 46, 'A1'),
(3287, 46, 'A2'),
(3288, 46, 'A3'),
(3289, 46, 'A4'),
(3290, 46, 'A5'),
(3291, 46, 'A6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `show_id` int(2) NOT NULL,
  `theatre_id` int(10) NOT NULL,
  `movie_id` int(10) NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`show_id`, `theatre_id`, `movie_id`, `starting_date`, `ending_date`) VALUES
(118, 7, 13, '2020-12-06', '2021-01-07'),
(119, 7, 12, '2020-12-06', '2020-12-12'),
(120, 7, 14, '2020-12-06', '2021-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_showtimes`
--

CREATE TABLE `tbl_showtimes` (
  `showtime_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `starting_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_showtimes`
--

INSERT INTO `tbl_showtimes` (`showtime_id`, `show_id`, `starting_time`) VALUES
(49, 115, '06:00:00'),
(50, 116, '20:27:00'),
(54, 118, '12:00:00'),
(55, 118, '21:00:00'),
(56, 119, '12:00:00'),
(57, 119, '15:00:00'),
(58, 120, '02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_ticket_rates`
--

CREATE TABLE `tbl_show_ticket_rates` (
  `id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `ticket_category_id` int(11) NOT NULL,
  `ticket_type` varchar(50) NOT NULL,
  `ticket_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_ticket_rates`
--

INSERT INTO `tbl_show_ticket_rates` (`id`, `show_id`, `ticket_category_id`, `ticket_type`, `ticket_price`) VALUES
(83, 115, 43, 'Full', 2000),
(84, 115, 43, 'Kids', 2000),
(85, 116, 43, 'Full', 200),
(86, 116, 43, 'Kids', 200),
(87, 116, 44, 'Full', 200),
(88, 116, 44, 'Kids', 200),
(91, 118, 46, 'Full', 36),
(92, 118, 46, 'Kids', 20),
(93, 119, 46, 'Full', 32),
(94, 119, 46, 'Kids', 22),
(95, 120, 46, 'Full', 40),
(96, 120, 46, 'Kids', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theater_seat_categories`
--

CREATE TABLE `tbl_theater_seat_categories` (
  `seat_category_id` int(10) NOT NULL,
  `theatre_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `num_of_rows` int(11) NOT NULL,
  `num_of_columns` int(11) NOT NULL,
  `num_of_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theater_seat_categories`
--

INSERT INTO `tbl_theater_seat_categories` (`seat_category_id`, `theatre_id`, `category_id`, `category_name`, `num_of_rows`, `num_of_columns`, `num_of_seats`) VALUES
(46, 7, 7, 'VIP', 6, 6, 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatres`
--

CREATE TABLE `tbl_theatres` (
  `theatre_id` int(10) NOT NULL,
  `theatre_name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `telephone` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `facilities` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `avg_ratings` float NOT NULL,
  `total_ratings` float NOT NULL,
  `num_of_ratings` int(11) NOT NULL,
  `user_ip_addresses` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatres`
--

INSERT INTO `tbl_theatres` (`theatre_id`, `theatre_name`, `city`, `address`, `telephone`, `email`, `description`, `facilities`, `status`, `admin_id`, `avg_ratings`, `total_ratings`, `num_of_ratings`, `user_ip_addresses`) VALUES
(7, 'TeamAPark', 'Almatu', 'Almatu, Tolibi St, 200', 712345678, 'teamapark@teamamovie.com', 'Team A\'s Awesome Movie Theater', 'Fast Food, Bar, Music', 1, 32, 0, 0, 0, '');'

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` int(11) NOT NULL,
  `status` enum('inactive','active') NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `mobile`, `status`, `code`) VALUES
(30, 'tester', '2af9b1ba42dc5eb01743e6b3759b6e4b', 'tester', 'test', 'gg@go.com', 987654321, 'active', 'kKs9X3QaP5'),
(31, 'ttep', '2af9b1ba42dc5eb01743e6b3759b6e4b', 'tester2', 'tester2', 't@t.com', 1234567890, 'inactive', 'TH8bA8K3J5'),
(32, 'cocance', '2af9b1ba42dc5eb01743e6b3759b6e4b', 'cancer', 'covid', 'cc@cc.com', 1234567980, 'inactive', 'r9DKE4I642'),
(33, 'ntee', '2af9b1ba42dc5eb01743e6b3759b6e4b', 'newtest', 'testnew', 'new@test.com', 2147483647, 'active', 'verify');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `verification_code` (`verification_code`);

--
-- Indexes for table `tbl_admin_verification`
--
ALTER TABLE `tbl_admin_verification`
  ADD PRIMARY KEY (`verification_id`);

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_bookings_publish`
--
ALTER TABLE `tbl_bookings_publish`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `tbl_bookings_purchase`
--
ALTER TABLE `tbl_bookings_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookings_temporary`
--
ALTER TABLE `tbl_bookings_temporary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_common_seat_categories`
--
ALTER TABLE `tbl_common_seat_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD UNIQUE KEY `movie_name` (`movie_name`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD UNIQUE KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_refunds`
--
ALTER TABLE `tbl_refunds`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `tbl_seat_maps`
--
ALTER TABLE `tbl_seat_maps`
  ADD PRIMARY KEY (`seat_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `tbl_showtimes`
--
ALTER TABLE `tbl_showtimes`
  ADD PRIMARY KEY (`showtime_id`);

--
-- Indexes for table `tbl_show_ticket_rates`
--
ALTER TABLE `tbl_show_ticket_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theater_seat_categories`
--
ALTER TABLE `tbl_theater_seat_categories`
  ADD PRIMARY KEY (`seat_category_id`);

--
-- Indexes for table `tbl_theatres`
--
ALTER TABLE `tbl_theatres`
  ADD PRIMARY KEY (`theatre_id`),
  ADD UNIQUE KEY `theatre_name` (`theatre_name`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_admin_verification`
--
ALTER TABLE `tbl_admin_verification`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `booking_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_bookings_publish`
--
ALTER TABLE `tbl_bookings_publish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bookings_purchase`
--
ALTER TABLE `tbl_bookings_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bookings_temporary`
--
ALTER TABLE `tbl_bookings_temporary`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_common_seat_categories`
--
ALTER TABLE `tbl_common_seat_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_contact_us`
--
ALTER TABLE `tbl_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_refunds`
--
ALTER TABLE `tbl_refunds`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_seat_maps`
--
ALTER TABLE `tbl_seat_maps`
  MODIFY `seat_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3292;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `show_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tbl_showtimes`
--
ALTER TABLE `tbl_showtimes`
  MODIFY `showtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_show_ticket_rates`
--
ALTER TABLE `tbl_show_ticket_rates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_theater_seat_categories`
--
ALTER TABLE `tbl_theater_seat_categories`
  MODIFY `seat_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_theatres`
--
ALTER TABLE `tbl_theatres`
  MODIFY `theatre_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
