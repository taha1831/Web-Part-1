-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 11:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `likes` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `content`, `created_at`, `likes`, `views`) VALUES
(1, 41, 'Exploring the new update!', '2025-05-01 14:32:00', 10, 123),
(2, 41, 'Loving this app so far.', '2025-05-03 09:10:00', 5, 97),
(3, 41, 'Does anyone have tips on boosting engagement?', '2025-05-05 17:20:00', 12, 141),
(4, 8, 'Just got back from a hike. Beautiful views!', '2025-04-29 10:25:00', 8, 112),
(5, 8, 'Sunsets make everything better.', '2025-05-01 19:10:00', 7, 89),
(6, 8, 'Any nature lovers here?', '2025-05-02 07:55:00', 4, 60),
(7, 2, 'Working on a new project.', '2025-05-01 12:00:00', 9, 132),
(8, 2, 'Need feedback on this design!', '2025-05-03 15:45:00', 6, 74),
(9, 2, 'Coffee is my fuel.', '2025-05-04 08:30:00', 3, 55),
(10, 48, 'Throwback to the beach days.', '2025-05-01 13:15:00', 11, 115),
(11, 48, 'When can I go back?', '2025-05-02 16:40:00', 4, 58),
(12, 48, 'Best vacation ever.', '2025-05-04 11:00:00', 10, 106),
(13, 18, 'What’s your favorite book?', '2025-04-28 14:10:00', 7, 73),
(14, 18, 'Reading time is sacred.', '2025-04-30 18:00:00', 5, 67),
(15, 18, 'Currently hooked on sci-fi.', '2025-05-01 20:22:00', 6, 88),
(16, 38, 'I love rainy days.', '2025-04-29 09:50:00', 3, 49),
(17, 38, 'Mood = cozy and chill.', '2025-05-01 17:18:00', 4, 54),
(18, 38, 'Hot tea and a good book.', '2025-05-02 12:05:00', 5, 66),
(19, 29, 'Back to gym grind!', '2025-05-01 07:15:00', 9, 101),
(20, 29, 'Protein shake recipes?', '2025-05-02 08:20:00', 3, 45),
(21, 29, 'Leg day pain is real.', '2025-05-04 09:35:00', 8, 90),
(22, 10, 'New artwork drop!', '2025-05-03 14:22:00', 11, 134),
(23, 10, 'Digital art is so fun.', '2025-05-04 16:30:00', 7, 92),
(24, 10, 'Working on commissions.', '2025-05-05 19:00:00', 10, 101),
(25, 25, 'Let’s talk music!', '2025-05-01 10:00:00', 5, 55),
(26, 25, 'This playlist is 🔥', '2025-05-02 11:10:00', 6, 69),
(27, 25, 'Who’s your favorite artist?', '2025-05-03 13:45:00', 4, 52),
(28, 9, 'Cooking adventures today.', '2025-04-30 09:00:00', 6, 61),
(29, 9, 'Trying out a new recipe!', '2025-05-01 18:00:00', 5, 57),
(30, 9, 'Dinner turned out great.', '2025-05-02 19:30:00', 7, 80),
(31, 23, 'Starting a journal again.', '2025-05-01 06:45:00', 3, 40),
(32, 23, 'Helps with mental clarity.', '2025-05-02 07:50:00', 4, 44),
(33, 23, 'Highly recommend journaling.', '2025-05-03 08:55:00', 5, 63),
(34, 11, 'Anyone up for gaming tonight?', '2025-05-01 15:15:00', 9, 98),
(35, 11, 'Ranked grind begins!', '2025-05-02 20:00:00', 6, 83),
(36, 11, 'Need teammates for co-op.', '2025-05-03 22:10:00', 7, 88),
(37, 28, 'Minimalism is underrated.', '2025-04-29 16:20:00', 5, 70),
(38, 28, 'Decluttering my space.', '2025-05-01 14:10:00', 4, 61),
(39, 28, 'Feels freeing already.', '2025-05-03 17:00:00', 3, 46),
(40, 33, 'Let’s talk productivity.', '2025-05-01 13:10:00', 7, 85),
(41, 33, 'Pomodoro timer is great.', '2025-05-02 10:10:00', 6, 71),
(42, 33, 'Stay focused, stay sharp.', '2025-05-03 09:00:00', 5, 69),
(43, 26, 'Anime recommendations?', '2025-05-01 18:45:00', 9, 102),
(44, 26, 'I just finished JJK 😭', '2025-05-02 20:15:00', 8, 95),
(45, 26, 'Need something new to binge.', '2025-05-03 21:30:00', 7, 87),
(46, 46, 'Pet photos incoming!', '2025-05-01 11:11:00', 5, 60),
(47, 46, 'My cat runs this house.', '2025-05-02 12:22:00', 7, 72),
(48, 46, 'Sleepy doggo vibes.', '2025-05-03 13:33:00', 8, 85),
(49, 19, 'Learning guitar chords.', '2025-05-01 08:00:00', 6, 62),
(50, 19, 'My fingers hurt 😂', '2025-05-02 09:15:00', 5, 55),
(51, 19, 'Still loving the progress!', '2025-05-03 10:30:00', 7, 79),
(52, 40, 'Who else does morning yoga?', '2025-05-01 06:30:00', 4, 41),
(53, 40, 'Great start to the day.', '2025-05-02 07:45:00', 5, 49),
(54, 40, 'Feeling energized!', '2025-05-03 08:55:00', 6, 58),
(55, 36, 'Weekend getaway soon.', '2025-05-01 17:00:00', 5, 66),
(56, 36, 'Packing light this time.', '2025-05-02 18:20:00', 3, 42),
(57, 36, 'Can’t wait for the mountains.', '2025-05-03 19:45:00', 7, 73),
(58, 37, 'Trying photography 📸', '2025-05-01 11:00:00', 6, 68),
(59, 37, 'Nature shots are hard!', '2025-05-02 12:20:00', 4, 59),
(60, 37, 'Got a cool sunset photo.', '2025-05-03 13:40:00', 8, 80),
(61, 35, 'Movie night recs?', '2025-05-01 19:00:00', 5, 63),
(62, 35, 'Watched Interstellar again.', '2025-05-02 20:15:00', 6, 77),
(63, 35, 'Cried at the end 😭', '2025-05-03 21:30:00', 7, 85),
(64, 24, 'Coding late into the night.', '2025-05-01 22:00:00', 7, 92),
(65, 24, 'Finally fixed the bug!', '2025-05-02 23:15:00', 5, 64),
(66, 24, 'Dark mode is superior.', '2025-05-03 00:30:00', 6, 75),
(67, 22, 'Where’s everyone from?', '2025-05-01 10:10:00', 4, 50),
(68, 22, 'Let’s connect!', '2025-05-02 11:25:00', 3, 42),
(69, 22, 'Great community here.', '2025-05-03 12:40:00', 5, 60),
(70, 14, 'Feeling motivated today!', '2025-05-01 09:00:00', 6, 65);

-- --------------------------------------------------------

--
-- Table structure for table `related`
--

CREATE TABLE `related` (
  `relate_id` int(11) NOT NULL,
  `post_id_1` int(11) DEFAULT NULL,
  `post_id_2` int(11) DEFAULT NULL,
  `views_1` int(11) DEFAULT NULL,
  `views_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `related`
--

INSERT INTO `related` (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES
(1, 15, 21, 88, 90),
(2, 4, 64, 112, 92),
(3, 43, 46, 102, 60),
(4, 35, 42, 83, 69),
(5, 24, 42, 101, 69),
(6, 25, 41, 55, 71),
(7, 65, 70, 64, 65),
(8, 39, 60, 46, 80),
(9, 49, 62, 62, 77),
(10, 14, 40, 67, 85),
(11, 6, 11, 60, 58),
(12, 7, 10, 132, 115),
(13, 17, 60, 54, 80),
(14, 42, 59, 69, 59),
(15, 20, 31, 45, 40),
(16, 32, 60, 44, 80),
(17, 5, 30, 89, 80),
(18, 4, 32, 112, 44),
(19, 29, 70, 57, 65),
(20, 56, 60, 42, 80),
(21, 33, 40, 63, 85),
(22, 27, 54, 52, 58),
(23, 13, 37, 73, 70),
(24, 30, 50, 80, 55),
(25, 44, 49, 95, 62),
(26, 28, 62, 61, 77),
(27, 11, 55, 58, 66),
(28, 29, 45, 57, 87),
(29, 3, 26, 141, 69),
(30, 15, 55, 88, 66),
(31, 35, 67, 83, 50),
(32, 29, 63, 57, 85),
(33, 18, 60, 66, 80),
(34, 23, 56, 92, 42),
(35, 62, 69, 77, 60),
(36, 2, 36, 97, 88),
(37, 25, 38, 55, 61),
(38, 36, 68, 88, 42),
(39, 1, 46, 123, 60),
(40, 2, 54, 97, 58),
(41, 29, 38, 57, 61),
(42, 20, 35, 45, 83),
(43, 6, 45, 60, 87),
(44, 34, 46, 98, 60),
(45, 1, 21, 123, 90),
(46, 45, 55, 87, 66),
(47, 11, 32, 58, 44),
(48, 8, 54, 74, 58),
(49, 42, 56, 69, 42),
(50, 3, 12, 141, 106),
(51, 20, 28, 45, 61),
(52, 44, 65, 95, 64),
(53, 38, 61, 61, 63),
(54, 10, 26, 115, 69),
(55, 24, 25, 101, 55),
(56, 36, 54, 88, 58),
(57, 11, 34, 58, 98),
(58, 54, 69, 58, 60),
(59, 16, 30, 49, 80),
(60, 30, 47, 80, 72),
(61, 26, 34, 69, 98),
(62, 14, 32, 67, 44),
(63, 8, 13, 74, 73),
(64, 4, 40, 112, 85),
(65, 8, 22, 74, 134),
(66, 10, 19, 115, 101),
(67, 16, 69, 49, 60),
(68, 22, 48, 134, 85),
(69, 53, 63, 49, 85),
(70, 47, 56, 72, 42),
(71, 9, 48, 55, 85),
(72, 17, 61, 54, 63),
(73, 32, 52, 44, 41),
(74, 21, 31, 90, 40),
(75, 33, 60, 63, 80),
(76, 4, 33, 112, 63),
(77, 27, 28, 52, 61),
(78, 39, 57, 46, 73),
(79, 17, 36, 54, 88),
(80, 10, 30, 115, 80),
(81, 36, 58, 88, 68),
(82, 28, 63, 61, 85),
(83, 4, 63, 112, 85),
(84, 60, 70, 80, 65),
(85, 33, 62, 63, 77),
(86, 35, 59, 83, 59),
(87, 39, 50, 46, 55),
(88, 25, 67, 55, 50),
(89, 10, 23, 115, 92),
(90, 53, 58, 49, 68),
(91, 17, 38, 54, 61),
(92, 22, 52, 134, 41),
(93, 11, 31, 58, 40),
(94, 29, 67, 57, 50),
(95, 37, 59, 70, 59),
(96, 2, 37, 97, 70),
(97, 61, 62, 63, 77),
(98, 16, 39, 49, 46),
(99, 35, 52, 83, 41),
(100, 16, 57, 49, 73),
(101, 20, 39, 45, 46),
(102, 11, 70, 58, 65),
(103, 36, 44, 88, 95),
(104, 11, 33, 58, 63),
(105, 3, 50, 141, 55),
(106, 41, 43, 71, 102),
(107, 18, 20, 66, 45),
(108, 9, 54, 55, 58),
(109, 55, 69, 66, 60),
(110, 44, 57, 95, 73),
(111, 2, 69, 97, 60),
(112, 34, 49, 98, 62),
(113, 28, 42, 61, 69),
(114, 20, 59, 45, 59),
(115, 4, 51, 112, 79),
(116, 3, 61, 141, 63),
(117, 4, 69, 112, 60),
(118, 44, 50, 95, 55),
(119, 52, 63, 41, 85),
(120, 35, 56, 83, 42),
(121, 23, 39, 92, 46),
(122, 49, 58, 62, 68),
(123, 40, 55, 85, 66),
(124, 31, 61, 40, 63),
(125, 6, 7, 60, 132),
(126, 7, 70, 132, 65),
(127, 14, 63, 67, 85),
(128, 15, 28, 88, 61),
(129, 58, 63, 68, 85),
(130, 7, 24, 132, 101),
(131, 43, 53, 102, 49),
(132, 61, 68, 63, 42),
(133, 16, 54, 49, 58),
(134, 49, 51, 62, 79),
(135, 12, 32, 106, 44),
(136, 40, 48, 85, 85),
(137, 9, 15, 55, 88),
(138, 57, 64, 73, 92),
(139, 37, 40, 70, 85),
(140, 6, 9, 60, 55);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Mobina', 'Amini', 'mobina.amini.web@gmail.com', '$2b$12$lCK/k3D5tq6hrBgqkYcbhuhXZLQAAetDwDZGRABJRYT56rmrtA3da'),
(2, 'amirhossein', 'asadi', 'amirhosseinasadi162@gmail.com', '$2b$12$HFpoDbcMcVG2EzazLAFQkOtkfKHXF0.sf6gxDyL9LUHCFjJcY3lm.'),
(3, 'ali', 'babakordi', 'alibabakordi82@gmail.com', '$2b$12$buYoq5Jps23jBr/qPjNtReaD1VU683429l04DVdtRjCmXmaE4bb3C'),
(4, 'Fatemeh', 'Binesh', 'fatemehbinesh17@gmail.com', '$2b$12$ba8T0o/zhDbMDwkP4TF5KOOZfobvHORyFqzJUeoG2MvBepoOwRWv6'),
(5, 'Ali', 'Daneshmand', 'daneshmanda8@gmail.com', '$2b$12$62jQg/nrVlKnuTnda3xM9.pE/sRieU/MUOXVQUzYnFlw/omi7NJDW'),
(6, 'Abbas', 'Esmaili', 'abbas@gmail.com', '$2b$12$CV5jwIBvQCQqodB96o3SK.exARPiIm1V4TH9d5TV7tlmhGoOHQCsS'),
(7, 'Mobina', 'Fallah', 'flhmobinaa@gmail.com', '$2b$12$.STATf8asLhzDBQWHPnY0.uVRa/BjHf/TulYC7yvZUb3yngi6iyVe'),
(8, 'Omid', 'Haghgoo', 'O.Haghgoo@gmail.com', '$2b$12$FULLpIGsdT5GZ/Bonr2ryeDNumZUflWnRoRm2zA2CR5aPW6UFXUrm'),
(9, 'Danial', 'Isaabadi', 'danial.isaabadi81@gmail.com', '$2b$12$J8/bsVH.bVMDzU.nH5cLIOGpdmjqismgZMBmlRTZgPiQhCfGjbTjO'),
(10, 'fatemeh', 'khajeh', 'fatemeh.khajeh1404@gmail.com', '$2b$12$knlaATWmXVL557sonS8IxOBZ3GRinepFf/4.z2dSD75o5lVHaC/li'),
(11, 'Mobina', 'mahdavi', 'mobina.mahdavi.web@gmail.com', '$2b$12$SXvWWaYtm8.gcZIXUMegCuJQAm2P1Xu1X5p7mCzYnBWOOhnHQAUfS'),
(12, 'Parmida', 'Mehrnikoo', 'Mehrnikoo.net@gmail.com', '$2b$12$snKyyaszESAtlzQZdJwvsOR/STufZMkQEjCx5JWmq.2Mhh2pSiKrG'),
(13, 'Mostafa', 'Montazery', 'Mostafamtz@gmail.com', '$2b$12$qbPHS5GO9DTvsVAuYOJ1kODJBv3rv/NCDUM9eI.j9Ja7SvTI8Gfi.'),
(14, 'Matineh', 'Mousavi', 'matineh.mousavi8200@gmail.com', '$2b$12$PH.qSWZQdK9ErgX6z8ENZO3B3PrG9IWptBlvjV4muTzIqo6xaRzmW'),
(15, 'Mahdieh', 'panjei', 'mahdiehpanjei@gmail.com', '$2b$12$tiQaFM8uOn7n31VEUPr/ne8k2eOLEnaTbdMXFSxiL2OGNkOWcgnde'),
(16, 'Ghazal', 'Rezaei', 'rezaeighazal432@gmail.com', '$2b$12$BcUIU3N92d/AV.XREsls4uc0ZRgGudqT8XJs8Jm72s.gMGTwbmZU6'),
(17, 'Sadjad', 'Rezagholizadeh', 'sajjad.rz@gmail.com', '$2b$12$TkcgamPifVsjFBHlntG19O8Qd7kfqNSIXsNadk0OwY08sp4ZckUDa'),
(18, 'Aida', 'Sadeghi', 'asv94974@gmail.com', '$2b$12$8rLZPXxoCtbk2DLiHhWKNOiuYWKPCxVAxa22uArJf6R/ys9J/Z41.'),
(19, 'taha', 'sadeghi', 'taha18319113@gmail.com', '$2b$12$PNDuizpc/CYubXn8ZTOA1u/2WSyz.vMBpuflx.xzv0BAuw0jBf7VG'),
(20, 'Sara', 'Sarfi', 'sarasarfi79@gmail.com', '$2b$12$Zz998chAZkFTn5oC3ZQcmOLPeT07Rpdf.8e6sfHDvo4qE.K/oxzOC'),
(21, 'Shakila', 'Shaker', 'shakilashaker80@gmail.com', '$2b$12$yesDy1aVpfZ0xUU7MmqUPuIJ2G1/5Jafgsf8wCYTroflj20lFKA3e'),
(22, 'Shahed', 'Shirazi', 'shirazishaheds926@gmail.com', '$2b$12$iMSLIsuY0ldu0qnRtr10j..sFryALYkT6Wj4LmDNuTXHb9ybQsFCu'),
(23, 'Masoud', 'Taghipour', 'mtaghipourj@gmail.com', '$2b$12$.2Xy3K7KYHDaewcGSbNwM.UTaayIpsZ1EGlP2VgPOvnZkO4PAEne2'),
(24, 'Amirhosein', 'Tasharrofi', 'amirhosein.tasharrofi@gmail.com', '$2b$12$kSsMlr6k23MAoVo.i3Vfd.thATB/Euibcc2A8NqiRhur2s4et8aTG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `fk_posts_user_id` (`user_id`);

--
-- Indexes for table `related`
--
ALTER TABLE `related`
  ADD PRIMARY KEY (`relate_id`),
  ADD KEY `post_id_1` (`post_id_1`),
  ADD KEY `post_id_2` (`post_id_2`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `related`
--
ALTER TABLE `related`
  MODIFY `relate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `related`
--
ALTER TABLE `related`
  ADD CONSTRAINT `related_ibfk_1` FOREIGN KEY (`post_id_1`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_ibfk_2` FOREIGN KEY (`post_id_2`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
