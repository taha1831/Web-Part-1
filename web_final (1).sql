-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 03:30 PM
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
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `likes` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `content`, `created_at`, `likes`, `views`) VALUES
(572, 1, 'Just finished a great book on PHP development!', '2025-01-12 08:14:27', 87, 95),
(573, 2, 'Happy New Year everyone!', '2025-01-01 00:00:00', 193, 155),
(574, 3, 'Working on a new project. Feeling excited!', '2025-03-05 14:47:11', 56, 492),
(575, 4, 'I can\'t believe it\'s already June.', '2025-02-22 08:52:33', 271, 994),
(576, 5, 'Happy birthday to my best friend!', '2025-04-10 19:30:45', 114, 493),
(577, 6, 'Coffee is life.', '2025-05-09 07:18:00', 149, 482),
(578, 7, 'PHP or Python? Let the debate begin!', '2025-03-15 12:00:00', 67, 932),
(579, 8, 'Having a productive day at the library.', '2025-04-02 16:21:11', 102, 214),
(580, 9, 'Sunny days make me so happy!', '2025-03-27 11:34:00', 143, 271),
(581, 10, 'Starting a 30-day coding challenge today!', '2025-01-18 09:45:00', 208, 715),
(582, 11, 'Feeling grateful for everything.', '2025-02-14 18:22:22', 98, 761),
(583, 12, 'Watching a great movie tonight.', '2025-05-01 20:15:00', 134, 658),
(584, 13, 'Exams are coming. Time to hit the books.', '2025-05-20 10:00:00', 59, 8),
(585, 14, 'Just got my first freelance gig!', '2025-01-05 13:13:13', 176, 67),
(586, 15, 'Rainy days and warm tea.', '2025-04-16 17:20:20', 132, 308),
(587, 16, 'Celebrating my friend\'s graduation today!', '2025-02-28 14:44:44', 200, 338),
(588, 17, 'Listening to my favorite playlist.', '2025-03-10 21:21:00', 88, 769),
(589, 18, 'Went hiking this weekend. Amazing views!', '2025-04-14 06:30:00', 165, 827),
(590, 19, 'Just hit 1k followers! Thank you!', '2025-05-25 10:10:10', 251, 827),
(591, 20, 'Need more sleep and less stress.', '2025-01-30 22:00:00', 142, 656),
(592, 21, 'Life is beautiful.', '2025-02-02 02:02:02', 105, 799),
(593, 22, 'Coding late into the night.', '2025-03-03 03:03:03', 91, 24),
(594, 23, 'Attended an amazing tech conference.', '2025-04-05 11:11:11', 173, 722),
(595, 24, 'Pizza night with the family!', '2025-05-11 19:00:00', 126, 539),
(596, 1, 'Time flies!', '2025-01-23 21:33:10', 100, 530),
(597, 1, 'Pizza makes everything better 🍕', '2025-01-22 09:15:23', 11, 30),
(598, 1, 'Pizza makes everything better 🍕', '2025-05-04 21:44:09', 25, 559),
(599, 1, 'Learning PHP is fun!', '2025-05-20 01:42:57', 290, 704),
(600, 1, 'So grateful for today!', '2025-03-19 02:03:13', 257, 844),
(601, 1, 'Stay positive, work hard, make it happen!', '2025-03-29 00:44:06', 56, 108),
(602, 1, 'Having a great day 😄', '2025-05-28 02:09:15', 68, 9),
(603, 1, 'Coding late into the night.', '2025-05-11 11:09:08', 34, 717),
(604, 1, 'Just finished an awesome project!', '2025-04-26 08:49:50', 128, 560),
(605, 2, 'Life is a journey 🚀', '2025-04-27 09:45:07', 253, 647),
(606, 2, 'Nature is beautiful 🌲', '2025-01-25 19:33:07', 269, 555),
(607, 2, 'Excited for the weekend!', '2025-04-14 13:03:49', 73, 835),
(608, 2, 'New blog post is up!', '2025-03-12 09:47:04', 0, 507),
(609, 2, 'Learning PHP is fun!', '2025-02-19 00:18:16', 3, 31),
(610, 2, 'Coding late into the night.', '2025-01-14 13:05:46', 33, 635),
(611, 2, 'Monday mood 😴', '2025-01-01 00:38:42', 164, 79),
(612, 2, 'Time flies!', '2025-01-22 02:32:31', 115, 490),
(613, 2, 'Time flies!', '2025-03-31 06:41:53', 19, 211),
(614, 2, 'Feeling motivated 💪', '2025-02-01 04:43:24', 278, 584),
(615, 3, 'Throwback to the beach 🏖️', '2025-01-11 06:05:47', 187, 289),
(616, 3, 'Coding late into the night.', '2025-03-14 06:14:06', 188, 691),
(617, 3, 'So grateful for today!', '2025-03-27 22:07:47', 48, 588),
(618, 3, 'Nature is beautiful 🌲', '2025-03-19 23:04:14', 63, 868),
(619, 3, 'Throwback to the beach 🏖️', '2025-05-02 02:17:12', 142, 575),
(620, 3, 'Having a great day 😄', '2025-04-23 15:10:34', 116, 271),
(621, 3, 'New blog post is up!', '2025-01-04 07:55:52', 44, 629),
(622, 3, 'New blog post is up!', '2025-05-18 16:44:08', 44, 330),
(623, 3, 'Having a great day 😄', '2025-05-27 21:56:08', 162, 765),
(624, 3, 'Life is a journey 🚀', '2025-01-15 22:56:41', 165, 835),
(625, 4, 'Just finished an awesome project!', '2025-02-05 21:27:23', 228, 877),
(626, 4, 'Just watched an amazing movie!', '2025-04-06 06:59:53', 297, 882),
(627, 4, 'Having a great day 😄', '2025-01-09 19:54:34', 90, 776),
(628, 4, 'Pizza makes everything better 🍕', '2025-04-10 01:55:11', 274, 235),
(629, 4, 'Stay positive, work hard, make it happen!', '2025-02-23 07:37:36', 44, 846),
(630, 4, 'Learning PHP is fun!', '2025-03-21 19:51:12', 281, 523),
(631, 4, 'Feeling motivated 💪', '2025-02-15 15:29:45', 100, 76),
(632, 4, 'Life is a journey 🚀', '2025-05-19 18:16:26', 163, 810),
(633, 4, 'Coffee is life ☕', '2025-04-05 22:48:03', 64, 821),
(634, 4, 'Nature is beautiful 🌲', '2025-01-10 03:26:12', 185, 676),
(635, 5, 'So grateful for today!', '2025-02-06 23:49:59', 10, 918),
(636, 5, 'Learning PHP is fun!', '2025-01-15 18:58:32', 103, 558),
(637, 5, 'Life is a journey 🚀', '2025-05-27 10:14:57', 82, 38),
(638, 5, 'Pizza makes everything better 🍕', '2025-01-04 20:19:53', 0, 515),
(639, 5, 'Cant believe its already June.', '2025-02-22 08:52:33', 271, 461),
(640, 5, 'Pizza makes everything better 🍕', '2025-04-10 07:27:20', 190, 760),
(641, 5, 'Happy birthday to me!', '2025-04-07 20:10:47', 125, 414),
(642, 5, 'Coding late into the night.', '2025-01-23 14:17:10', 218, 791),
(643, 5, 'Throwback to the beach 🏖️', '2025-04-05 07:04:30', 129, 713),
(644, 5, 'Throwback to the beach 🏖️', '2025-03-14 22:23:08', 284, 190),
(645, 6, 'Feeling motivated 💪', '2025-01-25 21:59:23', 138, 812),
(646, 6, 'Coding late into the night.', '2025-03-25 00:36:32', 86, 489),
(647, 6, 'Just watched an amazing movie!', '2025-01-08 09:27:40', 250, 8),
(648, 6, 'Stay positive, work hard, make it happen!', '2025-02-26 18:50:45', 277, 572),
(649, 6, 'Happy birthday to me!', '2025-02-23 19:44:01', 25, 838),
(650, 6, 'Nature is beautiful 🌲', '2025-01-16 21:02:02', 198, 472),
(651, 6, 'Coding late into the night.', '2025-03-18 01:07:41', 91, 845),
(652, 6, 'Coffee is life ☕', '2025-05-19 22:21:23', 84, 807),
(653, 6, 'Enjoying the little things in life.', '2025-02-23 23:56:10', 150, 500),
(654, 6, 'Excited for the weekend!', '2025-05-20 05:51:33', 264, 80),
(655, 7, 'Coffee is life ☕', '2025-04-11 00:36:18', 91, 898),
(656, 7, 'Learning PHP is fun!', '2025-04-29 02:34:41', 176, 252),
(657, 7, 'Coffee is life ☕', '2025-01-13 00:44:20', 28, 563),
(658, 7, 'Time flies!', '2025-04-07 23:49:07', 197, 59),
(659, 7, 'Coding late into the night.', '2025-04-23 20:51:35', 237, 607),
(660, 7, 'Just finished an awesome project!', '2025-03-23 22:28:28', 52, 857),
(661, 7, 'Feeling motivated 💪', '2025-03-24 07:23:44', 284, 462),
(662, 7, 'Pizza makes everything better 🍕', '2025-03-10 18:44:20', 207, 739),
(663, 7, 'Just finished an awesome project!', '2025-01-12 03:06:10', 44, 310),
(664, 7, 'Enjoying the little things in life.', '2025-04-09 00:27:33', 95, 332),
(665, 8, 'Pizza makes everything better 🍕', '2025-04-26 10:18:04', 297, 730),
(666, 8, 'Coding late into the night.', '2025-04-06 02:10:18', 74, 653),
(667, 8, 'Coding late into the night.', '2025-05-22 22:01:01', 212, 73),
(668, 8, 'Coffee is life ☕', '2025-03-29 06:45:16', 274, 408),
(669, 8, 'Nature is beautiful 🌲', '2025-04-02 16:54:40', 44, 820),
(670, 8, 'Happy birthday to me!', '2025-03-06 15:03:37', 13, 877),
(671, 8, 'Throwback to the beach 🏖️', '2025-01-27 18:11:14', 113, 924),
(672, 8, 'Pizza makes everything better 🍕', '2025-02-19 14:51:22', 11, 986),
(673, 8, 'Nature is beautiful 🌲', '2025-01-09 17:51:22', 172, 161),
(674, 8, 'Monday mood 😴', '2025-02-22 09:17:05', 109, 843),
(675, 9, 'Pizza makes everything better 🍕', '2025-01-12 05:39:23', 88, 733),
(676, 9, 'New blog post is up!', '2025-04-20 01:39:18', 42, 137),
(677, 9, 'Monday mood 😴', '2025-03-22 23:44:14', 55, 484),
(678, 9, 'Enjoying the little things in life.', '2025-03-20 04:28:28', 157, 10),
(679, 9, 'Happy birthday to me!', '2025-01-20 19:07:46', 21, 598),
(680, 9, 'Monday mood 😴', '2025-01-05 01:01:32', 174, 957),
(681, 9, 'Excited for the weekend!', '2025-05-16 04:53:43', 205, 990),
(682, 9, 'Stay positive, work hard, make it happen!', '2025-01-31 13:06:22', 6, 82),
(683, 9, 'Life is a journey 🚀', '2025-05-01 19:59:26', 205, 436),
(684, 9, 'Cant believe its already June.', '2025-02-09 20:56:03', 60, 936),
(685, 10, 'Nature is beautiful 🌲', '2025-02-07 18:24:36', 274, 370),
(686, 10, 'So grateful for today!', '2025-02-02 01:14:54', 97, 43),
(687, 10, 'Just watched an amazing movie!', '2025-02-15 21:39:19', 148, 104),
(688, 10, 'Coffee is life ☕', '2025-05-22 14:48:49', 261, 388),
(689, 10, 'Time flies!', '2025-01-27 09:02:43', 143, 631),
(690, 10, 'Time flies!', '2025-04-16 05:17:22', 154, 989),
(691, 10, 'Throwback to the beach 🏖️', '2025-02-27 08:37:47', 93, 50),
(692, 10, 'Just finished an awesome project!', '2025-01-14 01:29:19', 48, 284),
(693, 10, 'Time flies!', '2025-05-10 11:53:17', 129, 269),
(694, 10, 'Coffee is life ☕', '2025-01-07 14:50:03', 205, 491),
(695, 11, 'Nature is beautiful 🌲', '2025-04-21 20:37:18', 67, 650),
(696, 11, 'Stay positive, work hard, make it happen!', '2025-01-31 00:33:00', 235, 774),
(697, 11, 'Having a great day 😄', '2025-02-03 20:00:22', 118, 920),
(698, 11, 'Nature is beautiful 🌲', '2025-05-27 22:57:12', 281, 277),
(699, 11, 'Time flies!', '2025-01-30 23:20:26', 266, 625),
(700, 11, 'Nature is beautiful 🌲', '2025-01-04 20:15:32', 184, 292),
(701, 11, 'Enjoying the little things in life.', '2025-03-21 10:00:35', 120, 587),
(702, 11, 'Having a great day 😄', '2025-06-01 04:52:12', 32, 56),
(703, 11, 'Coding late into the night.', '2025-05-17 16:11:18', 265, 518),
(704, 11, 'Enjoying the little things in life.', '2025-04-07 13:04:32', 162, 422),
(705, 12, 'Just finished an awesome project!', '2025-01-16 23:40:25', 85, 555),
(706, 12, 'Pizza makes everything better 🍕', '2025-01-26 12:27:29', 129, 508),
(707, 12, 'Just finished an awesome project!', '2025-03-07 11:16:56', 33, 876),
(708, 12, 'Monday mood 😴', '2025-04-23 04:51:05', 94, 854),
(709, 12, 'Coding late into the night.', '2025-03-14 02:19:57', 14, 644),
(710, 12, 'Time flies!', '2025-05-01 19:58:29', 181, 657),
(711, 12, 'New blog post is up!', '2025-02-05 09:43:56', 35, 352),
(712, 12, 'Monday mood 😴', '2025-02-13 21:19:25', 279, 790),
(713, 12, 'Enjoying the little things in life.', '2025-05-15 03:56:16', 148, 893),
(714, 12, 'Life is a journey 🚀', '2025-03-22 23:28:02', 90, 93),
(715, 13, 'Stay positive, work hard, make it happen!', '2025-04-18 22:53:18', 209, 786),
(716, 13, 'Cant believe its already June.', '2025-04-19 08:21:22', 158, 651),
(717, 13, 'Feeling motivated 💪', '2025-05-04 09:54:57', 251, 895),
(718, 13, 'So grateful for today!', '2025-04-11 00:51:58', 254, 524),
(719, 13, 'Nature is beautiful 🌲', '2025-05-31 16:21:31', 203, 932),
(720, 13, 'Life is a journey 🚀', '2025-03-17 16:31:41', 66, 87),
(721, 13, 'Throwback to the beach 🏖️', '2025-01-10 09:15:47', 259, 639),
(722, 13, 'So grateful for today!', '2025-05-03 05:20:48', 196, 933),
(723, 13, 'New blog post is up!', '2025-03-10 02:32:37', 236, 747),
(724, 13, 'Just finished an awesome project!', '2025-02-19 13:42:04', 20, 938),
(725, 14, 'Just finished an awesome project!', '2025-05-11 03:53:30', 130, 449),
(726, 14, 'Stay positive, work hard, make it happen!', '2025-05-17 06:14:29', 235, 427),
(727, 14, 'Coffee is life ☕', '2025-05-06 07:25:45', 145, 790),
(728, 14, 'Nature is beautiful 🌲', '2025-02-11 01:35:51', 181, 669),
(729, 14, 'Time flies!', '2025-04-15 02:59:08', 18, 975),
(730, 14, 'Happy birthday to me!', '2025-05-31 20:35:18', 198, 865),
(731, 14, 'Having a great day 😄', '2025-04-30 07:06:43', 87, 403),
(732, 14, 'Excited for the weekend!', '2025-01-22 16:34:54', 190, 417),
(733, 14, 'Throwback to the beach 🏖️', '2025-04-19 04:53:19', 34, 875),
(734, 14, 'Monday mood 😴', '2025-05-16 13:03:20', 191, 124),
(735, 15, 'Happy birthday to me!', '2025-02-15 15:24:07', 168, 994),
(736, 15, 'Life is a journey 🚀', '2025-01-21 15:37:59', 50, 596),
(737, 15, 'Having a great day 😄', '2025-04-01 03:56:20', 49, 1000),
(738, 15, 'Stay positive, work hard, make it happen!', '2025-03-08 10:58:55', 58, 211),
(739, 15, 'Nature is beautiful 🌲', '2025-05-20 00:52:57', 289, 54),
(740, 15, 'Just finished an awesome project!', '2025-01-04 12:19:29', 195, 638),
(741, 15, 'Having a great day 😄', '2025-04-30 13:46:30', 281, 27),
(742, 15, 'Happy birthday to me!', '2025-01-04 13:03:39', 87, 220),
(743, 15, 'Happy birthday to me!', '2025-03-24 13:36:51', 190, 20),
(744, 15, 'Coffee is life ☕', '2025-02-25 07:31:21', 254, 438),
(745, 16, 'Coffee is life ☕', '2025-02-25 23:45:40', 18, 128),
(746, 16, 'Having a great day 😄', '2025-03-09 18:19:05', 12, 327),
(747, 16, 'New blog post is up!', '2025-04-09 01:01:23', 194, 249),
(748, 16, 'Feeling motivated 💪', '2025-03-29 09:43:42', 235, 264),
(749, 16, 'Excited for the weekend!', '2025-03-06 21:48:32', 168, 573),
(750, 16, 'Coding late into the night.', '2025-02-03 10:13:02', 79, 72),
(751, 16, 'Just watched an amazing movie!', '2025-02-07 02:57:45', 17, 640),
(752, 16, 'Learning PHP is fun!', '2025-02-04 02:11:22', 6, 985),
(753, 16, 'Having a great day 😄', '2025-02-10 20:52:27', 298, 3),
(754, 16, 'Throwback to the beach 🏖️', '2025-03-29 04:31:33', 88, 61),
(755, 17, 'Learning PHP is fun!', '2025-01-15 20:39:55', 206, 294),
(756, 17, 'So grateful for today!', '2025-02-17 10:35:50', 173, 285),
(757, 17, 'New blog post is up!', '2025-02-04 18:06:15', 173, 546),
(758, 17, 'Happy birthday to me!', '2025-04-01 09:43:03', 164, 873),
(759, 17, 'Monday mood 😴', '2025-05-12 06:51:51', 242, 725),
(760, 17, 'Just watched an amazing movie!', '2025-01-03 03:32:03', 191, 7),
(761, 17, 'Coffee is life ☕', '2025-03-03 10:51:01', 126, 861),
(762, 17, 'Time flies!', '2025-03-09 14:09:31', 115, 281),
(763, 17, 'Stay positive, work hard, make it happen!', '2025-02-12 02:40:21', 60, 822),
(764, 17, 'Learning PHP is fun!', '2025-01-11 00:08:54', 17, 266),
(765, 18, 'Excited for the weekend!', '2025-04-22 06:20:42', 106, 862),
(766, 18, 'Just watched an amazing movie!', '2025-01-30 23:59:47', 224, 513),
(767, 18, 'Just finished an awesome project!', '2025-02-25 08:49:08', 114, 977),
(768, 18, 'Time flies!', '2025-05-24 11:26:51', 199, 348),
(769, 18, 'New blog post is up!', '2025-05-09 13:59:49', 147, 806),
(770, 18, 'Enjoying the little things in life.', '2025-05-03 21:30:07', 197, 984),
(771, 18, 'Excited for the weekend!', '2025-02-07 05:14:57', 176, 505),
(772, 18, 'Life is a journey 🚀', '2025-02-06 19:46:47', 162, 571),
(773, 18, 'Cant believe its already June.', '2025-01-11 19:26:50', 288, 340),
(774, 18, 'Feeling motivated 💪', '2025-01-12 20:05:16', 94, 988),
(775, 19, 'Happy birthday to me!', '2025-01-05 06:51:27', 221, 919),
(776, 19, 'Excited for the weekend!', '2025-04-05 19:29:33', 198, 632),
(777, 19, 'Feeling motivated 💪', '2025-01-04 04:11:32', 280, 401),
(778, 19, 'Learning PHP is fun!', '2025-03-14 10:02:37', 236, 107),
(779, 19, 'New blog post is up!', '2025-03-22 19:33:08', 66, 333),
(780, 19, 'Happy birthday to me!', '2025-03-17 01:20:45', 158, 343),
(781, 19, 'Having a great day 😄', '2025-04-19 20:31:11', 88, 715),
(782, 19, 'Having a great day 😄', '2025-03-02 07:26:14', 130, 545),
(783, 19, 'Pizza makes everything better 🍕', '2025-01-07 18:14:13', 242, 579),
(784, 19, 'Throwback to the beach 🏖️', '2025-01-12 18:32:24', 166, 260),
(785, 20, 'Happy birthday to me!', '2025-01-22 21:40:25', 83, 564),
(786, 20, 'Enjoying the little things in life.', '2025-01-02 08:49:07', 214, 40),
(787, 20, 'Having a great day 😄', '2025-04-16 01:24:12', 110, 506),
(788, 20, 'Feeling motivated 💪', '2025-04-05 09:05:45', 98, 411),
(789, 20, 'Learning PHP is fun!', '2025-03-28 14:04:10', 245, 537),
(790, 20, 'Learning PHP is fun!', '2025-05-28 04:56:24', 83, 449),
(791, 20, 'Nature is beautiful 🌲', '2025-02-26 09:24:57', 66, 634),
(792, 20, 'Just finished an awesome project!', '2025-05-25 11:04:46', 113, 825),
(793, 20, 'Excited for the weekend!', '2025-05-31 04:04:28', 42, 220),
(794, 20, 'Learning PHP is fun!', '2025-02-20 23:40:53', 219, 625),
(795, 21, 'New blog post is up!', '2025-01-31 14:36:48', 1, 467),
(796, 21, 'Excited for the weekend!', '2025-05-15 03:06:26', 135, 457),
(797, 21, 'Learning PHP is fun!', '2025-02-16 20:50:23', 244, 884),
(798, 21, 'Coffee is life ☕', '2025-05-24 04:52:55', 268, 47),
(799, 21, 'Throwback to the beach 🏖️', '2025-04-27 19:34:55', 189, 585),
(800, 21, 'Excited for the weekend!', '2025-02-06 08:07:22', 114, 782),
(801, 21, 'Coding late into the night.', '2025-04-15 13:53:03', 16, 155),
(802, 21, 'Excited for the weekend!', '2025-04-18 22:23:15', 89, 430),
(803, 21, 'Enjoying the little things in life.', '2025-04-19 01:30:05', 42, 685),
(804, 21, 'Feeling motivated 💪', '2025-05-17 17:47:01', 127, 133),
(805, 22, 'Stay positive, work hard, make it happen!', '2025-04-25 12:02:30', 86, 611),
(806, 22, 'Stay positive, work hard, make it happen!', '2025-04-23 00:13:16', 300, 656),
(807, 22, 'Nature is beautiful 🌲', '2025-02-24 12:45:36', 8, 445),
(808, 22, 'Cant believe its already June.', '2025-02-24 10:46:49', 114, 256),
(809, 22, 'Enjoying the little things in life.', '2025-02-23 14:56:08', 13, 944),
(810, 22, 'Stay positive, work hard, make it happen!', '2025-05-15 04:40:17', 282, 953),
(811, 22, 'Just watched an amazing movie!', '2025-03-17 03:06:28', 183, 933),
(812, 22, 'Cant believe its already June.', '2025-04-25 01:29:48', 155, 803),
(813, 22, 'So grateful for today!', '2025-02-21 02:55:15', 69, 219),
(814, 22, 'Throwback to the beach 🏖️', '2025-05-04 08:19:36', 2, 682),
(815, 23, 'Just watched an amazing movie!', '2025-01-20 11:01:14', 30, 755),
(816, 23, 'Stay positive, work hard, make it happen!', '2025-02-15 01:30:49', 36, 729),
(817, 23, 'Enjoying the little things in life.', '2025-04-07 01:37:50', 100, 379),
(818, 23, 'Monday mood 😴', '2025-05-18 03:02:29', 202, 708),
(819, 23, 'Feeling motivated 💪', '2025-05-22 07:54:05', 298, 401),
(820, 23, 'Learning PHP is fun!', '2025-02-12 15:34:35', 4, 880),
(821, 23, 'New blog post is up!', '2025-02-17 04:35:12', 82, 199),
(822, 23, 'Cant believe its already June.', '2025-05-17 07:37:48', 297, 352),
(823, 23, 'So grateful for today!', '2025-05-01 09:26:49', 149, 163),
(824, 23, 'Coffee is life ☕', '2025-04-26 22:33:52', 260, 758),
(825, 24, 'Pizza makes everything better 🍕', '2025-03-13 20:28:38', 147, 302),
(826, 24, 'Enjoying the little things in life.', '2025-03-09 09:42:02', 135, 235),
(827, 24, 'So grateful for today!', '2025-04-20 19:46:55', 120, 266),
(828, 24, 'Life is a journey 🚀', '2025-04-12 01:45:30', 50, 628),
(829, 24, 'Cant believe its already June.', '2025-04-22 01:00:57', 291, 340),
(830, 24, 'Just watched an amazing movie!', '2025-01-15 10:44:41', 121, 816),
(831, 24, 'Nature is beautiful 🌲', '2025-03-14 19:19:55', 181, 58),
(832, 24, 'Monday mood 😴', '2025-04-11 16:28:48', 50, 841),
(833, 24, 'Feeling motivated 💪', '2025-02-08 20:20:59', 42, 30),
(834, 24, 'Happy birthday to me!', '2025-04-27 09:51:00', 126, 629);

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
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=836;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
