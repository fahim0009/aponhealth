-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 09:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliateids`
--

CREATE TABLE `affiliateids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affidcount` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliateids`
--

INSERT INTO `affiliateids` (`id`, `affidcount`, `created_at`, `updated_at`) VALUES
(1, 10000, '2021-10-19 13:34:14', '2021-10-19 13:34:14'),
(2, 10001, '2021-10-19 14:01:26', '2021-10-19 14:01:26'),
(3, 10002, '2021-10-19 14:07:32', '2021-10-19 14:07:32'),
(4, 10003, '2021-10-19 14:09:50', '2021-10-19 14:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `agent_requests`
--

CREATE TABLE `agent_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_requests`
--

INSERT INTO `agent_requests` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 375, '2022-07-02 16:29:19', '2022-07-02 16:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `published`, `created_at`, `updated_at`) VALUES
(7, 'uploads/banners/FgHeZTyrY9p1jpfoyjOOTCa7s4XLIm9LIsFfpLqA.jpeg', '#', 1, '2019-04-28 07:07:02', '2019-04-28 07:07:50'),
(8, 'uploads/banners/dqfjuQihAa5YeV6Mt0jpvuRTejsdm9yyMiRz0QmZ.jpeg', '#', 1, '2019-04-28 07:07:23', '2019-04-28 07:07:50'),
(9, 'uploads/banners/XsrzK5NAbKH640qKuhbUkDinmiDxRLcLeRioTSUw.jpeg', '#', 1, '2019-04-28 07:07:35', '2019-04-28 07:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `create_by`, `created_at`, `updated_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 37, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-02-06 03:53:41', NULL),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-03-06 03:54:21', NULL),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 20, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-04-06 16:04:20', NULL),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 58, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-05-06 16:04:36', NULL),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 4, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-06-03 00:02:30', NULL),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-07-03 00:02:53', NULL),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 9, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 54, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 169, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 12, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 38, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 74, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2018-08-03 00:03:14', NULL),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 35, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:37', NULL);
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `create_by`, `created_at`, `updated_at`) VALUES
(25, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', 'www.geniusocean.com', 41, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', NULL, '2019-01-03 00:03:59', NULL),
(26, 2, 'asfsadfsadf', 'sdfsdaf', '1623839724Untitled-1.jpg', 'sdafasdfsd', 66, 1, NULL, NULL, 'asdfsdff', NULL, '2021-06-15 22:35:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Oil & gas', 'oil-and-gash', NULL, NULL),
(3, 'Manufacturing', 'manufacturing', NULL, NULL),
(4, 'Chemical Research', 'chemical_research', NULL, NULL),
(5, 'Agriculture', 'agriculture', NULL, NULL),
(6, 'Mechanical', 'mechanical', NULL, NULL),
(7, 'Entrepreneurs', 'entrepreneurs', NULL, NULL),
(8, 'Technology', 'technology', NULL, NULL),
(9, 'admin', 'android-charger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `user_id`, `blog_id`, `name`, `email`, `comments`, `status`, `update_by`, `created_at`, `updated_at`) VALUES
(2, NULL, 26, 'Dr. Kodu', 'shakil7d7@gmail.com', 'test1223', 1, NULL, '2021-06-21 04:28:50', '2021-06-21 04:28:50'),
(6, NULL, 26, 'shakil', 'shakil@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:12:17', '2021-06-21 05:12:17'),
(7, NULL, 26, 'Dr fahim', 'shakil7c7@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:23:43', '2021-06-21 05:23:43'),
(8, NULL, 26, 'shakil', 'fahim.amin711@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:25:55', '2021-06-21 05:25:55'),
(9, NULL, 26, 'Supplier1', 'shakil@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 1, NULL, '2021-06-21 05:27:20', '2021-06-21 05:27:20'),
(11, NULL, 26, 'Dr fahim1', '111shakil7c7@gmail.com', '111 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It ha', 1, NULL, '2021-06-22 23:36:46', '2021-06-22 23:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `banner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`, `banner`, `featured`) VALUES
(145, 'Beximco', 'uploads/brands/4PqQYqvfQm253mWo8yWJO9nkYkmpxVhYRUFk6UN6.png', '2021-05-17 08:24:50', '2021-05-17 08:31:11', 'uploads/brands/xcOhpSCM2f67rC0yZY4zr7CAU12lcEe6imdioc8D.png', 0),
(146, 'Aristopharma', 'uploads/brands/llBB4rLzBH3gAPBmrliAVwnHABxSeVwuJgC89k3s.jpg', '2021-05-18 00:04:27', '2021-05-18 00:04:27', 'uploads/brands/OZIw5ZvLHmZ8YzTsC840929mDvwVoPjbhOa36TCe.jpg', 1),
(147, 'Renata Limited', 'uploads/brands/shsyQm3BdDYwLPlK6ZpC7RerSZKVMlzeS78Zx5I4.png', '2021-06-06 00:02:08', '2021-06-06 00:02:08', 'uploads/brands/LaOP23dcNo0Yt2aOQcM6IOBr8xiKklMnQNhBlWTa.png', 1),
(148, 'Alco Pharma Limited', 'uploads/brands/4UApMPgiGaSrJKdxcTb1s7ZoRqU4n4ZAVIGvXJMb.png', '2021-06-06 00:03:41', '2021-06-06 00:03:41', 'uploads/brands/77UKtsf2FhAK2vaFQOsUwkw9yZYFjqVCQUXUUGdx.png', 1),
(149, 'Square Pharmaceuticals Limited', 'uploads/brands/QfqkeOxWsUi6fN1s63T2AkWCeeGfDyi7qFDWTpeb.jpg', '2021-06-06 00:05:21', '2021-06-06 00:05:21', 'uploads/brands/BmunyeX6PGFKGMTBqs2c09wn8Rzn6QTTI4BsBlYd.jpg', 1),
(150, 'Incepta Pharmaceuticals Limited', 'uploads/brands/nga9nbKaHrOzS2yQBtrYNPjLHsfyoCgPYZ1HnmXp.jpg', '2021-06-06 00:06:58', '2021-06-06 00:06:58', 'uploads/brands/GQJdQRnXCtFdJWme2YThBVY0KlvB6FiBkmQxQdO9.jpg', 1),
(151, 'Healthcare Pharmaceuticals Limited', 'uploads/brands/P5GvaAD1jEG31JtyglBjk8AqCqlEo5I5cPvm72em.png', '2021-06-06 00:08:12', '2021-06-06 00:08:12', 'uploads/brands/8TSy1aW5T9QJVU7xlQbZeqpazmIywkNLI3cVrfcO.png', 1),
(152, 'Opsonin Pharma Limited', 'uploads/brands/Iq1W3U6U8118mUcyXHj46rRzsNIvErDX5PnDwLOO.png', '2021-06-06 00:09:40', '2021-06-06 00:09:40', 'uploads/brands/HOvt6Tp97MugDNEG4qKSOt3uKDuovZrWZjXfipIL.png', 1),
(153, 'ACI Pharmaceuticals', 'uploads/brands/F2wEZbkHoAB669dZ9WViTQK08z7d1kb7EZVCC5SE.jpg', '2021-06-06 00:11:10', '2021-06-06 00:11:10', 'uploads/brands/CeBojb6YqPB4KKouZ5MB1aE4ZfDIXtU6LgSetVHJ.jpg', 1),
(154, 'Eskayef Pharmaceuticals Limited', 'uploads/brands/SZ5uFuTKNMFxkTnW3guApKATE5EWP1DdpNfoleIF.jpg', '2021-06-06 00:13:56', '2021-06-06 00:13:56', 'uploads/brands/r1zYYTw4JT9d56pbsvjfvUSxcGCj7WoMGaUx5PgC.jpg', 1),
(155, 'ACME Laboratories Limited', 'uploads/brands/jp4Geq6Y7d3VAor5piRTGFfIFWn6dlfQ5UgKy5YF.jpg', '2021-06-06 00:39:27', '2021-06-06 00:39:27', 'uploads/brands/oWTQEHP2U8zV5BI3nrSq4dwohFumzMgc59gniaRy.jpg', 1),
(156, 'Radiant Pharmaceuticals Limited', 'uploads/brands/4gAsIlhjthN2imdmXpNWGmn2F7jk64NIs1kA68Mq.png', '2021-06-06 00:43:45', '2021-06-06 00:43:45', 'uploads/brands/WRUuz2culLTFE79ZfurtQFdZIln5P8zOHYPezdbA.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '27', '2018-10-16 01:35:52', '2019-05-21 10:04:23'),
(2, 'system_default_currency', '27', '2018-10-16 01:36:58', '2019-03-13 01:49:19'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2021-08-03 07:58:21'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '0', '2018-10-28 07:44:16', '2021-06-02 04:22:31'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2021-06-02 04:22:27'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2021-08-02 08:18:18'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-04-28 19:00:04'),
(14, 'paypal_sandbox', '1', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2021-06-07 04:00:10'),
(16, 'sslcommerz_payment', '1', '2019-01-24 09:39:07', '2021-06-10 00:55:10'),
(17, 'vendor_commission', '10', '2019-01-31 06:18:04', '2019-05-20 01:35:28'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"text\",\"label\":\"Products Type\"},{\"type\":\"file\",\"label\":\"Store Documents (eg: Trade License)\"}]', '2019-02-03 11:36:58', '2019-06-11 11:53:41'),
(19, 'google_analytics', '1', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '0', '2019-02-07 12:51:59', '2021-08-02 08:18:24'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2021-08-02 08:18:25'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2021-08-02 08:18:26'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '1', '2019-04-15 11:45:04', '2021-06-06 05:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `banner`, `icon`, `featured`, `description`, `created_at`, `updated_at`) VALUES
(25, 'Medicine', 'uploads/categories/banner/UwPYUkJrbMNXoswbeedd8z4glEJlg4gwWSDTG97A.jpg', 'uploads/categories/icon/dRvTjVTpW7Msj5B8jqqLDFwIFCnvRRB1MaM5xcWS.jpg', 0, NULL, '2021-09-14 18:33:59', '2021-09-14 18:33:59'),
(26, 'Unani Medicine', 'uploads/categories/banner/X71lTBJhqsh6E7cfRSYjSeKy2oTqXpRJ8xONMmoL.jpg', 'uploads/categories/icon/amI7EFyyl6Q0yTZIpzfF9aJYxfre1A5GZx077TIp.jpg', 0, 'Unani Medicine', '2021-09-14 18:35:16', '2021-09-14 18:35:16'),
(27, 'Ayurvedic Medicine', 'uploads/categories/banner/Ulv2gFgtJfeWXeQTP6lCXZ87r1IWo1e3K2MLffgq.jpg', 'uploads/categories/icon/OFmzcfca2zyHB8lP4kSqBh6CDZ6Ck0urWSHgHn1i.jpg', 0, 'Ayurvedic Medicine', '2021-09-14 18:36:17', '2021-09-14 18:36:17'),
(28, 'Covid-19 Special', 'uploads/categories/banner/ZccC4aQnLk2Mm73zhJapxv1TrjYTWVXdmXT2I2ze.jpg', 'uploads/categories/icon/LGHKf5pfiG9pREF4mpT5HHjuvJD25SxLRfVc7q7C.jpg', 0, 'Covid-19 Special', '2021-09-14 18:49:09', '2021-09-14 18:49:09'),
(29, 'Women Care', 'uploads/categories/banner/C0XLkiylrWFzXaKt2TL9rnYZAu38xA8D5AUnrqUn.png', 'uploads/categories/icon/NpglJMqqJgOHZgLazf7Crho5jhQQr0dpNdLiufTy.png', 0, 'Women Care', '2021-09-14 18:50:09', '2021-09-14 18:50:09'),
(30, 'Supplements and Vitamins', 'uploads/categories/banner/Q5u3qVqACw23iRoBUzs0oS6fDQ4eDPjaOjqwnxuK.jpg', 'uploads/categories/icon/5Lb9FDLJE865mLWuAOsuDK1dbPaieNa4pEDmmaC9.jpg', 0, 'Supplements and Vitamins', '2021-09-14 18:51:22', '2021-09-14 18:51:22'),
(31, 'Baby and Mom care', 'uploads/categories/banner/SlQ05u9vn5GfeaZcN5Fq4aJhUwIHvZVkBhh1KpWR.jpg', 'uploads/categories/icon/fmbrXskQhUcXBsEwJnlthtyTq54Yv6LUrVo4F8v4.jpg', 0, 'Baby and Mom care', '2021-09-14 18:52:43', '2021-09-14 18:52:43'),
(32, 'Devices', 'uploads/categories/banner/w4y82ymLd3V35CgLFsNDoKGAmEYg1tIGG0XaHT2y.jpg', 'uploads/categories/icon/jyAwVtU2ihMkrjQKNSTjp0xoYn5kP71O9vo4ML3W.jpg', 0, 'Devices', '2021-09-14 18:53:23', '2021-09-14 18:53:23'),
(33, 'Sexual Wellness', 'uploads/categories/banner/lgISVQT5qukK2RvmeuuzfDcQtPZFrS7AgR9bjK0b.jpg', 'uploads/categories/icon/vsvHkVsqLAP85yv5aiFsIsRHp4Dz3v2bmvlCLXK0.jpg', 0, 'Sexual Wellness', '2021-09-14 18:54:16', '2021-09-14 18:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'shakil', 'shakil333@gmail.com', 'test', NULL, NULL, '2021-06-07 05:18:56', '2021-06-07 05:18:56'),
(2, 'shakil', 'shakil333@gmail.com', 'test2', NULL, NULL, '2021-06-07 23:09:05', '2021-06-07 23:09:05'),
(3, 'Supplier2', 'shakil2@gmail.com', 'test3', NULL, NULL, '2021-06-07 23:10:26', '2021-06-07 23:10:26'),
(4, 'Gustavo Crain', 'gustavo@bestlocaldata.com', 'It is with sad regret to inform you that because of the Covid pandemic BestLocalData.com is shutting down at the end of the month.\r\n\r\nWe have lost family members and colleagues and have decided to shut down BestLocalData.com\r\n\r\nIt was a pleasure serving y', NULL, NULL, '2021-06-28 19:36:05', '2021-06-28 19:36:05'),
(5, 'Dora', 'armfield.dora49@gmail.com', 'Hello \r\n \r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.com\r\n \r\nThank You, \r\n \r\nDora\r\nContact Us', NULL, NULL, '2021-08-06 17:17:36', '2021-08-06 17:17:36'),
(6, 'Loyd Myres', 'loyd.myres@outlook.com', 'Hello, Apon Health - Online Drug House!\r\n\r\nWe offer qualitative organic SEO services for different types of web resources.\r\n\r\nOrganic SEO is a great marketing strategy to gain top 10 Google, especially for the small business websites.\r\n\r\nWith a small inve', NULL, NULL, '2021-09-11 19:18:50', '2021-09-11 19:18:50'),
(7, 'Eric Jones', 'eric.jones.z.mail@gmail.com', 'My name’s Eric and I just came across your website - aponhealth.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT', NULL, NULL, '2021-09-22 16:25:18', '2021-09-22 16:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(18, 'BD', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2019-04-29 03:03:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2019-04-29 03:05:32'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2019-04-29 03:05:34'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2019-04-29 03:05:51'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2019-04-29 03:05:49'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2019-04-29 03:05:46'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2019-04-29 03:05:44'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2019-04-29 03:05:39'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2019-04-29 03:07:35'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2019-04-29 03:06:09'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2019-04-29 03:06:13'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2019-04-29 03:06:17'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2019-04-29 03:06:21'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2019-04-29 03:06:25'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2019-04-29 03:06:29'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2019-04-29 03:06:33'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2019-04-29 03:06:37'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2019-04-29 03:06:40'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2019-04-29 03:06:45'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2019-04-29 03:06:55'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2019-04-29 03:06:59'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2019-04-29 03:07:02'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 11:35:08', '2021-08-03 08:07:57'),
(28, 'Saudi riyal', 'SR', 22.38000, 0, 'SR', '2018-10-09 11:35:08', '2019-05-26 02:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 18, '2019-04-29 02:44:39', '2019-04-29 02:44:39'),
(12, 47, '2019-05-26 01:55:17', '2019-05-26 01:55:17'),
(58, 66, '2021-04-04 08:53:50', '2021-04-04 08:53:50'),
(59, 69, '2021-04-11 23:32:50', '2021-04-11 23:32:50'),
(60, 84, '2021-05-07 15:56:57', '2021-05-07 15:56:57'),
(61, 85, '2021-05-07 23:55:16', '2021-05-07 23:55:16'),
(62, 86, '2021-05-11 10:35:24', '2021-05-11 10:35:24'),
(63, 87, '2021-05-11 10:37:31', '2021-05-11 10:37:31'),
(64, 88, '2021-05-11 10:38:09', '2021-05-11 10:38:09'),
(65, 91, '2021-05-11 13:00:17', '2021-05-11 13:00:17'),
(66, 100, '2021-05-24 01:47:36', '2021-05-24 01:47:36'),
(67, 101, '2021-05-24 01:48:05', '2021-05-24 01:48:05'),
(68, 102, '2021-05-24 05:20:13', '2021-05-24 05:20:13'),
(69, 103, '2021-05-24 05:20:42', '2021-05-24 05:20:42'),
(70, 104, '2021-05-24 05:27:40', '2021-05-24 05:27:40'),
(71, 107, '2021-05-24 05:40:49', '2021-05-24 05:40:49'),
(72, 109, '2021-05-24 08:40:58', '2021-05-24 08:40:58'),
(73, 111, '2021-05-24 08:42:04', '2021-05-24 08:42:04'),
(74, 112, '2021-05-24 08:49:02', '2021-05-24 08:49:02'),
(75, 242, '2021-08-05 00:15:05', '2021-08-05 00:15:05'),
(76, 248, '2021-08-09 22:57:50', '2021-08-09 22:57:50'),
(77, 251, '2021-08-09 23:00:40', '2021-08-09 23:00:40'),
(78, 255, '2021-08-10 22:39:38', '2021-08-10 22:39:38'),
(79, 259, '2021-08-12 01:44:49', '2021-08-12 01:44:49'),
(80, 261, '2021-08-12 03:19:52', '2021-08-12 03:19:52'),
(81, 262, '2021-08-12 03:44:38', '2021-08-12 03:44:38'),
(82, 265, '2021-08-12 06:19:48', '2021-08-12 06:19:48'),
(83, 302, '2021-08-26 04:20:25', '2021-08-26 04:20:25'),
(84, 303, '2021-08-26 05:43:58', '2021-08-26 05:43:58'),
(85, 305, '2021-08-26 06:13:23', '2021-08-26 06:13:23'),
(86, 306, '2021-08-26 06:26:20', '2021-08-26 06:26:20'),
(87, 307, '2021-08-26 06:28:50', '2021-08-26 06:28:50'),
(88, 308, '2021-08-26 07:06:49', '2021-08-26 07:06:49'),
(89, 309, '2021-08-26 07:16:22', '2021-08-26 07:16:22'),
(90, 310, '2021-08-29 00:02:20', '2021-08-29 00:02:20'),
(91, 311, '2021-08-29 00:06:53', '2021-08-29 00:06:53'),
(92, 312, '2021-08-29 00:09:26', '2021-08-29 00:09:26'),
(93, 313, '2021-08-29 01:40:51', '2021-08-29 01:40:51'),
(94, 314, '2021-09-06 13:14:33', '2021-09-06 13:14:33'),
(95, 315, '2021-09-06 22:08:59', '2021-09-06 22:08:59'),
(96, 316, '2021-09-11 01:40:48', '2021-09-11 01:40:48'),
(97, 317, '2021-09-12 13:39:41', '2021-09-12 13:39:41'),
(98, 319, '2021-09-12 22:15:15', '2021-09-12 22:15:15'),
(99, 334, '2021-09-21 02:56:05', '2021-09-21 02:56:05'),
(100, 336, '2021-09-21 21:51:43', '2021-09-21 21:51:43'),
(101, 337, '2021-09-21 22:00:33', '2021-09-21 22:00:33'),
(102, 338, '2021-09-21 22:05:36', '2021-09-21 22:05:36'),
(103, 339, '2021-09-21 22:10:47', '2021-09-21 22:10:47'),
(104, 340, '2021-09-22 09:58:11', '2021-09-22 09:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) NOT NULL,
  `division_id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `shipping_cost` int(11) DEFAULT 100,
  `bn_name` varchar(25) NOT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `shipping_cost`, `bn_name`, `lat`, `lon`, `url`) VALUES
(1, 1, 'Comilla', 100, 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd'),
(2, 1, 'Feni', 100, 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd'),
(3, 1, 'Brahmanbaria', 100, 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd'),
(4, 1, 'Rangamati', 100, 'রাঙ্গামাটি', NULL, NULL, 'www.rangamati.gov.bd'),
(5, 1, 'Noakhali', 100, 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd'),
(6, 1, 'Chandpur', 100, 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd'),
(7, 1, 'Lakshmipur', 100, 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd'),
(8, 1, 'Chattogram', 100, 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd'),
(9, 1, 'Coxsbazar', 100, 'কক্সবাজার', NULL, NULL, 'www.coxsbazar.gov.bd'),
(10, 1, 'Khagrachhari', 100, 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd'),
(11, 1, 'Bandarban', 100, 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd'),
(12, 2, 'Sirajganj', 100, 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd'),
(13, 2, 'Pabna', 100, 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd'),
(14, 2, 'Bogura', 100, 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd'),
(15, 2, 'Rajshahi', 100, 'রাজশাহী', NULL, NULL, 'www.rajshahi.gov.bd'),
(16, 2, 'Natore', 100, 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd'),
(17, 2, 'Joypurhat', 100, 'জয়পুরহাট', NULL, NULL, 'www.joypurhat.gov.bd'),
(18, 2, 'Chapainawabganj', 100, 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd'),
(19, 2, 'Naogaon', 100, 'নওগাঁ', NULL, NULL, 'www.naogaon.gov.bd'),
(20, 3, 'Jashore', 100, 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd'),
(21, 3, 'Satkhira', 100, 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd'),
(22, 3, 'Meherpur', 100, 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd'),
(23, 3, 'Narail', 100, 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd'),
(24, 3, 'Chuadanga', 100, 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd'),
(25, 3, 'Kushtia', 100, 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd'),
(26, 3, 'Magura', 100, 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd'),
(27, 3, 'Khulna', 100, 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd'),
(28, 3, 'Bagerhat', 100, 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd'),
(29, 3, 'Jhenaidah', 100, 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd'),
(30, 4, 'Jhalakathi', 100, 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd'),
(31, 4, 'Patuakhali', 100, 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd'),
(32, 4, 'Pirojpur', 100, 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd'),
(33, 4, 'Barisal', 100, 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd'),
(34, 4, 'Bhola', 100, 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd'),
(35, 4, 'Barguna', 100, 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd'),
(36, 5, 'Sylhet', 100, 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd'),
(37, 5, 'Moulvibazar', 100, 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd'),
(38, 5, 'Habiganj', 100, 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd'),
(39, 5, 'Sunamganj', 100, 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd'),
(40, 6, 'Narsingdi', 100, 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd'),
(41, 6, 'Gazipur', 100, 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd'),
(42, 6, 'Shariatpur', 100, 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd'),
(43, 6, 'Narayanganj', 100, 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd'),
(44, 6, 'Tangail', 100, 'টাঙ্গাইল', NULL, NULL, 'www.tangail.gov.bd'),
(45, 6, 'Kishoreganj', 100, 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd'),
(46, 6, 'Manikganj', 100, 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd'),
(47, 6, 'Outside Dhaka', 100, 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd'),
(48, 6, 'Dhaka-North', 100, '', NULL, NULL, ''),
(49, 6, 'Dhaka-South', 100, '', NULL, NULL, ''),
(50, 6, 'Madaripur', 100, 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd'),
(51, 6, 'Gopalganj', 100, 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd'),
(52, 6, 'Faridpur', 100, 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd'),
(53, 6, 'Munshiganj', 100, 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd'),
(54, 6, 'Rajbari', 100, 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd'),
(55, 7, 'Lalmonirhat', 100, 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd'),
(56, 7, 'Nilphamari', 100, 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd'),
(57, 7, 'Gaibandha', 100, 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd'),
(58, 7, 'Thakurgaon', 100, 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd'),
(59, 7, 'Rangpur', 100, 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd'),
(60, 7, 'Kurigram', 100, 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd'),
(61, 7, 'Dinajpur', 100, 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd'),
(62, 7, 'Panchagarh', 100, 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd'),
(63, 8, 'Jamalpur', 100, 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd'),
(64, 8, 'Netrokona', 100, 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd'),
(65, 8, 'Sherpur', 100, 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd'),
(66, 8, 'Mymensingh', 100, 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram Division', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi Division', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna Division', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal Division', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet Division', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka Division', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur Division', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh Division', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointmnets`
--

CREATE TABLE `doctor_appointmnets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_start` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_count` bigint(10) NOT NULL DEFAULT 1,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_departments`
--

CREATE TABLE `doctor_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dep_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_education`
--

CREATE TABLE `doctor_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_experienceds`
--

CREATE TABLE `doctor_experienceds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_ratings`
--

CREATE TABLE `doctor_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratingNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_time_slots`
--

CREATE TABLE `doctor_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_time_slots`
--

INSERT INTO `doctor_time_slots` (`id`, `slot`, `created_at`, `updated_at`) VALUES
(1, '09:00', '2021-06-24 06:23:46', '2021-06-24 06:23:46'),
(2, '09:15', '2021-06-24 06:25:51', '2021-06-24 06:25:51'),
(3, '09:30', '2021-06-24 06:26:05', '2021-06-24 06:26:05'),
(4, '09:45', '2021-06-24 06:26:29', '2021-06-24 06:26:29'),
(5, '10:00', '2021-06-24 06:28:54', '2021-06-24 06:47:21'),
(6, '10:15', '2021-06-24 06:29:03', '2021-06-24 06:29:03'),
(7, '10:30', '2021-06-24 06:29:18', '2021-06-24 06:29:18'),
(8, '10:45', '2021-06-24 06:29:28', '2021-06-24 06:29:28'),
(9, '11:00', '2021-06-24 06:29:44', '2021-06-24 06:29:44'),
(10, '11:16', '2021-06-24 06:32:09', '2021-08-15 00:52:09'),
(11, '11:30', '2021-06-24 06:32:21', '2021-06-24 06:32:21'),
(12, '11:45', '2021-06-24 06:32:33', '2021-06-24 06:32:33'),
(13, '12:00', '2021-06-24 06:32:43', '2021-06-24 06:32:43'),
(14, '12:15', '2021-06-24 06:32:52', '2021-06-24 06:32:52'),
(15, '12:30', '2021-06-24 06:33:15', '2021-06-24 06:33:15'),
(16, '12:45', '2021-06-24 06:33:22', '2021-06-24 06:33:22'),
(17, '1:00', '2021-06-24 06:33:29', '2021-06-24 06:33:29'),
(18, '1:15', '2021-06-24 06:33:36', '2021-06-24 06:33:36'),
(19, '1:30', '2021-06-24 06:33:42', '2021-06-24 06:33:42'),
(20, '1:45', '2021-06-24 06:33:49', '2021-06-24 06:33:49'),
(22, '2:00', '2021-06-24 06:51:25', '2021-06-24 06:51:25'),
(23, '9:00', '2021-08-14 07:11:04', '2021-08-14 07:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `doc_departments`
--

CREATE TABLE `doc_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dep_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc_departments`
--

INSERT INTO `doc_departments` (`id`, `dep_name`, `dep_code`, `dep_status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(5, 'CARDIOLOGY', '211210', '1', '', '', '2021-06-19 04:56:44', '2021-06-19 04:57:20'),
(6, 'DENTRISTRY', '211211', '1', '', '', '2021-06-20 00:42:57', '2021-06-20 00:42:57'),
(7, 'GENERAL SURGERY', '211212', '1', '', '', '2021-06-20 00:43:39', '2021-06-20 00:43:39'),
(8, 'NEUROLOGY', '211213', '1', '', '', '2021-06-20 00:43:58', '2021-06-20 00:43:58'),
(9, 'ORTHOPEDICS', '211214', '1', '', '', '2021-06-20 00:44:19', '2021-06-20 00:44:19'),
(10, 'CORONA', '211215', '1', '', '', '2021-06-20 00:44:40', '2021-06-20 00:44:40'),
(11, 'DENTRISTRY', '211216', '0', '', '', '2021-08-14 09:30:47', '2021-08-14 09:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `email_templetes`
--

CREATE TABLE `email_templetes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `templete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templetes`
--

INSERT INTO `email_templetes` (`id`, `templete`, `description`, `footer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'invoice', '<h4>Dear,</h4><p>Greetings from Apon Health! Thank you for your order. </p><p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You can shop', '<p style=\"padding-top: 10px\">    Sincerely,</p><p>Aponhealth Team</p><p>Helpline: +8801886335834</p><p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 02:28:59', '2021-07-05 02:28:59'),
(2, 'new_doctor', '<p>Hi dear,</p><p>Thanks for account create</p>', '<p>Sending Mail from Apon Health</p>', '1', '2021-07-05 04:52:40', '2021-07-05 04:52:40'),
(3, 'forget_password', '<h1>Forget Password Email</h1>You can reset password from bellow link:', '<br>    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:54:54', '2021-07-05 04:54:54'),
(4, 'front_order', '<h4>Dear,</h4>    <p>Greetings from Apon Health! Thank you for your order. </p>    <p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You ', '<br>    we will delivered your invoice soon.    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:55:57', '2021-07-05 04:55:57'),
(5, 'medication_order', '<h4>Dear,</h4>    <p>Greetings from Apon Health! Thank you for your order. </p>    <p style=\"padding-top: 10px\">We will contact you very soon to confirm your order. Enjoy hassle free shopping by avoiding traffic, bargaining and crowded shopping mall. You ', '<br> we will delivered your invoice soon.    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Apon Health Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:56:25', '2021-07-05 04:56:25'),
(6, 'welcome_new_user', '<p>Hi dear,</p><p>Thanks for account create</p>', '<br>    <p style=\"padding-top: 10px\">        Sincerely,    </p>    <p>Aponhealth Team</p>    <p>Helpline: +8801886335834</p>    <p>Find us on: http://www.aponhealth.com</p>', '1', '2021-07-05 04:57:29', '2021-07-05 04:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'c4d5f5be-2107-46d9-9d20-e91c50f8cdb3', 'database', 'default', '{\"uuid\":\"c4d5f5be-2107-46d9-9d20-e91c50f8cdb3\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210531-115858\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210531-115858.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210531-115858.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"shakil1231@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58746 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:27'),
(2, '7b53b6d3-66fc-4511-a67f-ec4926845578', 'database', 'default', '{\"uuid\":\"7b53b6d3-66fc-4511-a67f-ec4926845578\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210531-115858\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210531-115858.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210531-115858.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:20:\\\"shakil1231@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58747 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:30'),
(3, '85643bc0-2d1c-4d97-a7ed-a0b5b3d1f53c', 'database', 'default', '{\"uuid\":\"85643bc0-2d1c-4d97-a7ed-a0b5b3d1f53c\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210601-030932\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210601-030932.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210601-030932.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58748 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:33');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(4, '2309137e-ad12-4a1b-9d8f-56ad0a89d072', 'database', 'default', '{\"uuid\":\"2309137e-ad12-4a1b-9d8f-56ad0a89d072\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210601-031027\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210601-031027.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210601-031027.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58750 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:36'),
(5, 'e8e9246a-e1e6-4018-8b37-0a1e0c58341c', 'database', 'default', '{\"uuid\":\"e8e9246a-e1e6-4018-8b37-0a1e0c58341c\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210601-031359\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210601-031359.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210601-031359.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58751 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:39'),
(6, '96e77bdb-98b6-4730-918a-e00597f1de32', 'database', 'default', '{\"uuid\":\"96e77bdb-98b6-4730-918a-e00597f1de32\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210601-031449\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210601-031449.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210601-031449.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58753 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:43');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'd99f07ed-59b5-44e5-868b-5d4b90b5f4d3', 'database', 'default', '{\"uuid\":\"d99f07ed-59b5-44e5-868b-5d4b90b5f4d3\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-072752\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-072752.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-072752.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58754 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:46'),
(8, 'ce28e0ea-5434-40fb-86be-9251789cdd17', 'database', 'default', '{\"uuid\":\"ce28e0ea-5434-40fb-86be-9251789cdd17\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-074014\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-074014.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-074014.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58755 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:49'),
(9, '8702e0fa-e858-422b-af65-a879a0f394a3', 'database', 'default', '{\"uuid\":\"8702e0fa-e858-422b-af65-a879a0f394a3\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-080110\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-080110.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-080110.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58756 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:51');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(10, '33c37bde-28f9-4a22-a81e-7eae9b6165ff', 'database', 'default', '{\"uuid\":\"33c37bde-28f9-4a22-a81e-7eae9b6165ff\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-080446\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-080446.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-080446.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Expected response code 354 but got code \"503\", with message \"503-All RCPT commands were rejected with this error:\r\n503-Please turn on SMTP Authentication in your mail client, or login to the\r\n503-IMAP/POP3 server before sending your message.  ([127.0.0.1])\r\n503-[116.204.230.28]:58763 is not permitted to relay through this server\r\n503-without authentication.\r\n503 Valid RCPT command must precede DATA\r\n\" in E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:459\nStack trace:\n#0 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(344): Swift_Transport_AbstractSmtpTransport->assertResponseCode(\'503-All RCPT co...\', Array)\n#1 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(305): Swift_Transport_AbstractSmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array, false, NULL)\n#2 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(392): Swift_Transport_EsmtpTransport->executeCommand(\'DATA\\r\\n\', Array, Array)\n#3 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(499): Swift_Transport_AbstractSmtpTransport->doDataCommand(Array)\n#4 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(518): Swift_Transport_AbstractSmtpTransport->doMailTransaction(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#5 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(206): Swift_Transport_AbstractSmtpTransport->sendTo(Object(Swift_Message), \'test@letting-ag...\', Array, Array)\n#6 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#8 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#9 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.invoice\', Array, Object(Closure))\n#10 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#33 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 E:\\xampp7.4\\htdocs\\laravel\\apon_ecommerce\\apon_ecom\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-06-02 02:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `feature_brands`
--

CREATE TABLE `feature_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_brands`
--

INSERT INTO `feature_brands` (`id`, `title`, `image`, `description`, `brand_id`, `created_at`, `updated_at`) VALUES
(4, 'Beximco Feature', 'uploads/feature_brand/WsvfKAUKtdmtXXa5ceLm9YPUZUo1Djmnf0B9lqUA.png', 'beximco', 145, '2021-05-17 08:26:02', '2021-05-17 08:26:02'),
(5, 'Aristopharma', 'uploads/feature_brand/QQtfO677CoznjQUkdmXxhkkngwt6w5qIKd9X9zRl.jpg', 'Aristopharma', 146, '2021-05-18 00:05:03', '2021-05-18 00:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Beximco Feature', 1623283200, 1624233600, 0, '2021-06-06 01:23:39', '2021-07-13 04:40:03'),
(6, 'new', 1624492800, 1627084800, 1, '2021-06-23 23:40:17', '2021-07-29 02:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(26, 5, 2830, 10.00, 'percent', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(27, 5, 2831, 10.00, 'percent', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(28, 5, 2832, 10.00, 'percent', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(29, 5, 2833, 10.00, 'percent', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(30, 5, 2834, 10.00, 'percent', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(31, 5, 2835, 0.00, 'amount', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(32, 5, 2839, 0.00, 'amount', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(33, 5, 2847, 0.00, 'amount', '2021-06-10 00:18:32', '2021-06-10 00:18:32'),
(48, 6, 2832, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(49, 6, 2834, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(50, 6, 2843, 0.00, 'amount', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(51, 6, 2844, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(52, 6, 2846, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(53, 6, 2847, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(54, 6, 2854, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56'),
(55, 6, 2865, 5.00, 'percent', '2021-06-23 23:45:56', '2021-06-23 23:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, '3', 'uploads/logo/CqorbP6qjHb2jDDo45l8EWFCcxZGilq5MmA5iZxt.png', 'uploads/admin_logo/zGGkF0VlWvhm7CQOFAzC1aXwCFB50DBlqWtMxCcP.png', NULL, NULL, 'uploads/favicon/Qp5bqlShF14z6oR6ATeTS33vNfyWD5AmRYy33Blb.png', 'Apon Health', 'Section-12, Block-D, Road-31, House-24, Dhaka-1216', 'Best Online Medicine Shop in Bangladesh', '+8801886335834', 'info@aponhealth.com', 'https://www.facebook.com/aponhealth/', 'https://www.instagram.com', NULL, NULL, NULL, '2021-09-20 14:23:05', '2021-09-21 02:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rm_id` int(20) DEFAULT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Admin Message',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `rm_id`, `discription`, `remark`, `remark_date`, `photo`, `status`, `source`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 357, NULL, 'test charunta', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 07:23:26', '2021-10-13 07:23:26'),
(8, 358, NULL, 'kmushakil64', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 07:40:49', '2021-10-13 07:40:49'),
(9, 346, NULL, 'teast fxcvx  dfb cv zbfv', 'negative', '2021-10-14', NULL, 1, NULL, NULL, NULL, '2021-10-13 07:45:28', '2021-10-13 07:45:28'),
(10, 358, NULL, 'Adminn test message', 'positive', '2021-10-15', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 08:03:00', '2021-10-13 08:03:00'),
(11, 358, NULL, 'test redirect', 'positive', '2021-10-27', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 09:20:09', '2021-10-13 09:20:09'),
(12, 359, NULL, 'Fahim', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 10:43:43', '2021-10-13 10:43:43'),
(13, 359, NULL, 'test shakil', 'negative', '2021-10-22', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 10:44:47', '2021-10-13 10:44:47'),
(14, NULL, 2, 'test 1', 'positive', '2021-10-14', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 11:10:06', '2021-10-13 11:10:06'),
(15, NULL, 2, 'test 2', 'hnegative', '2021-10-16', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 11:10:18', '2021-10-13 11:10:18'),
(31, 365, 13, 'kmushakil64 aaa', 'positive', '2021-10-14', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 12:13:42', '2021-10-13 12:15:11'),
(32, 365, 13, 'kmushakil64 aaa', 'negative', '2021-10-29', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 12:13:51', '2021-10-13 12:15:11'),
(33, 365, NULL, 'kmushakil64 aa', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 12:15:07', '2021-10-13 12:15:07'),
(34, 366, NULL, 'aponhealth aponhealth', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 14:39:46', '2021-10-13 14:39:46'),
(37, 367, 16, 'Fahim 01818', 'hpositive', '2021-10-28', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 16:03:46', '2021-10-13 16:04:30'),
(38, 367, 16, 'Fahim 01818', 'negative', '2021-10-22', NULL, 1, 'Admin Message', NULL, NULL, '2021-10-13 16:03:55', '2021-10-13 16:04:30'),
(39, 367, NULL, 'Fahim 01818', NULL, NULL, NULL, NULL, 'Customer Message', NULL, NULL, '2021-10-13 16:04:25', '2021-10-13 16:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 19, '[\"274\"]', 1, '2021-05-29 08:08:54', '2021-05-29 08:08:54'),
(2, 20, '[\"275\"]', 1, '2021-05-29 08:09:40', '2021-05-29 08:09:40'),
(3, 21, '[\"276\"]', 1, '2021-05-29 08:09:56', '2021-05-29 08:09:56'),
(4, 18, '[\"273\"]', 1, '2021-05-29 08:10:09', '2021-05-29 08:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(11, 'default', '{\"uuid\":\"d76f3cd2-bf2b-4acf-9eb5-6c5f11337544\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-113333\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-113333.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-113333.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622633621, 1622633621),
(12, 'default', '{\"uuid\":\"10902352-d473-4ea9-98f8-fd803c09cf29\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-114213\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-114213.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-114213.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634139, 1622634139),
(13, 'default', '{\"uuid\":\"c4c42edf-49f8-48b1-add8-7e66cdc4a13d\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-114939\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-114939.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-114939.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634587, 1622634587),
(14, 'default', '{\"uuid\":\"c486e958-1e3f-421c-9392-875054dacad6\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-115056\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-115056.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-115056.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634675, 1622634675),
(15, 'default', '{\"uuid\":\"3e22b602-2945-46f4-ab29-861db28ebaba\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-115423\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-115423.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-115423.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622634873, 1622634873),
(16, 'default', '{\"uuid\":\"33d14909-dadf-474f-a963-921bb241f147\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120415\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120415.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120415.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635473, 1622635473),
(17, 'default', '{\"uuid\":\"7275d4d8-5c78-46ef-a43a-c8d19bb30248\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120511\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120511.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120511.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635517, 1622635517),
(18, 'default', '{\"uuid\":\"e4b3966f-67ae-49ae-961b-20fe50b626c2\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-120717\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-120717.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-120717.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622635652, 1622635652),
(19, 'default', '{\"uuid\":\"fa9a53ba-7f78-4789-be39-c98174777dd9\",\"displayName\":\"App\\\\Mail\\\\InvoiceEmailManager\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\InvoiceEmailManager\\\":29:{s:5:\\\"array\\\";a:6:{s:4:\\\"view\\\";s:14:\\\"emails.invoice\\\";s:7:\\\"subject\\\";s:30:\\\"Order Placed - 20210602-123847\\\";s:4:\\\"from\\\";s:30:\\\"test@letting-agent.aponlab.com\\\";s:7:\\\"content\\\";s:30:\\\"Hi. Your order has been placed\\\";s:4:\\\"file\\\";s:93:\\\"E:\\\\xampp7.4\\\\htdocs\\\\laravel\\\\apon_ecommerce\\\\apon_ecom\\\\public\\/invoices\\/Order#20210602-123847.pdf\\\";s:9:\\\"file_name\\\";s:25:\\\"Order#20210602-123847.pdf\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:23:\\\"hasib.9437.hu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1622637533, 1622637533);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(4, 'Arabic', 'sa', 1, '2019-04-29 03:47:40', '2019-05-24 01:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `softcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `softcode`, `hardcode`, `image`, `details`, `sort_details`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'sales_commission', '15', '1623133745828121.jpg', NULL, 'customer commission', NULL, '71', NULL, '2021-06-08 00:29:05', '2021-09-21 00:28:31'),
(4, 'ref_commission', '12', '1623145103477908.jpg', NULL, 'sales_commission', NULL, '71', NULL, '2021-06-08 03:38:23', '2021-09-21 00:15:53'),
(6, 'discount', '20', '1623145103477908.jpg', NULL, 'product_discount', NULL, '71', NULL, '2021-06-08 03:38:23', '2021-10-04 13:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` bigint(20) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `code` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `meduserorder` tinyint(1) DEFAULT 0,
  `upcoming` tinyint(1) DEFAULT NULL,
  `upcoming_date` date DEFAULT NULL,
  `confirm_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `shipping_cost`, `grand_total`, `code`, `date`, `viewed`, `meduserorder`, `upcoming`, `upcoming_date`, `confirm_by`, `confirm_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(349, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\"}', 'Cash On Delivery', 'unpaid', NULL, 100.00, 392.30, '20210920-091621', 1632074400, 0, 0, 1, '2021-10-05', NULL, NULL, NULL, '2021-09-21 03:18:38', '2021-09-22 10:09:43'),
(350, 340, NULL, '{\"name\":\"towhid\",\"email\":\"towhid10@gmail.com\",\"phone\":\"07533498883\",\"address\":\"Dhaka\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Mirpur\",\"post_code\":\"1207\"}', 'Cash On Delivery', 'unpaid', NULL, 50.00, 97.00, '20210922-040417', 1632247200, 0, 0, 1, '2021-10-01', NULL, NULL, NULL, '2021-09-22 10:04:55', '2021-09-22 10:11:34'),
(351, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\"}', 'Cash On Delivery', 'unpaid', NULL, 100.00, 185.00, '20210922-020001', 1632247200, 0, 0, 1, '2021-09-23', NULL, NULL, NULL, '2021-09-22 20:00:31', '2021-09-22 20:00:31'),
(352, 343, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"+8801234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Coxsbazar\",\"area\":\"Kutubdia\",\"post_code\":\"3434\"}', 'Cash On Delivery', 'unpaid', NULL, 100.00, 115.69, '20210923-045817', 1632333600, 0, 0, 1, '2021-09-24', NULL, NULL, NULL, '2021-09-23 10:58:35', '2021-09-23 10:58:35'),
(356, 358, NULL, '{\"name\":\"Shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Companiganj\",\"post_code\":\"2255\"}', 'Cash On Delivery', 'unpaid', NULL, 120.00, 135.23, '20211019-050724', 1634580000, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-19 11:11:22', '2021-10-19 11:17:42'),
(358, 365, NULL, '{\"name\":\"shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Comilla\",\"area\":\"Meghna\",\"post_code\":\"1216\"}', 'Cash On Delivery', 'unpaid', NULL, 120.00, 136.23, '20211026-031433', 1635184800, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-26 09:15:15', '2021-10-26 09:20:02'),
(361, 375, NULL, '{\"name\":\"f2\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"hhhhhhh11111\",\"region\":\"Khulna Division\",\"city\":\"Meherpur\",\"area\":\"Meherpur Sadar\",\"post_code\":\"2222\"}', 'Cash On Delivery', 'unpaid', NULL, 120.00, 130.46, '20220703-010927', 1656784800, 0, 0, 1, '2022-07-13', NULL, NULL, NULL, '2022-07-03 07:09:40', '2022-07-03 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `medication_counts`
--

CREATE TABLE `medication_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medication_details`
--

CREATE TABLE `medication_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medication_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medication_details`
--

INSERT INTO `medication_details` (`id`, `medication_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(815, 349, 65, 2905, NULL, '7', NULL, '120', 1, NULL, NULL, '2021-09-21 03:41:29', '2021-09-21 03:41:29'),
(816, 349, 65, 2906, NULL, '7', NULL, '120', 1, NULL, NULL, '2021-09-21 03:41:29', '2021-09-21 03:41:29'),
(817, 349, 65, 2907, NULL, '5.23', NULL, '120', 1, NULL, NULL, '2021-09-21 03:41:29', '2021-09-21 03:41:29'),
(818, 349, 65, 2908, NULL, '10', NULL, '120', 1, NULL, NULL, '2021-09-21 03:41:29', '2021-09-21 03:41:29'),
(823, 350, 340, 2906, NULL, '49', NULL, NULL, 7, NULL, NULL, '2021-09-22 10:11:34', '2021-09-22 10:11:34'),
(824, 350, 340, 2908, NULL, '70', NULL, NULL, 7, NULL, NULL, '2021-09-22 10:11:34', '2021-09-22 10:11:34'),
(825, 351, 341, 2906, NULL, '35', NULL, NULL, 5, NULL, NULL, '2021-09-22 20:00:31', '2021-09-22 20:00:31'),
(826, 351, 341, 2908, NULL, '50', NULL, NULL, 5, NULL, NULL, '2021-09-22 20:00:31', '2021-09-22 20:00:31'),
(827, 352, 343, 2907, NULL, '15.69', NULL, NULL, 3, NULL, NULL, '2021-09-23 10:58:35', '2021-09-23 10:58:35'),
(850, 358, 365, 2905, NULL, '7', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(851, 358, 365, 2906, NULL, '7', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(852, 358, 365, 2908, NULL, '10', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(853, 358, 365, 2962, NULL, '2200', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(854, 358, 365, 2974, NULL, '35', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(855, 358, 365, 2987, NULL, '1.5', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(856, 358, 365, 2912, NULL, '10', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(857, 358, 365, 2909, NULL, '11', NULL, NULL, 1, NULL, NULL, '2021-10-26 09:41:02', '2021-10-26 09:41:02'),
(858, 356, 358, 2905, NULL, '28', NULL, NULL, 4, NULL, NULL, '2021-12-19 15:39:43', '2021-12-19 15:39:43'),
(859, 356, 358, 2905, NULL, '35', NULL, NULL, 5, NULL, NULL, '2021-12-19 15:39:43', '2021-12-19 15:39:43'),
(860, 356, 358, 2909, NULL, '44', NULL, NULL, 4, NULL, NULL, '2021-12-19 15:39:43', '2021-12-19 15:39:43'),
(867, 361, 375, 2907, NULL, '5.23', NULL, NULL, 1, NULL, NULL, '2022-07-03 07:09:40', '2022-07-03 07:09:40'),
(868, 361, 375, 2907, NULL, '5.23', NULL, NULL, 1, NULL, NULL, '2022-07-03 07:09:40', '2022-07-03 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `medication_users`
--

CREATE TABLE `medication_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `patient_id`, `image`, `sms`, `read`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(26, 319, NULL, NULL, 'I need help...', '1', '319', NULL, '2021-09-12 22:29:43', '2021-09-12 22:29:43'),
(27, 319, 65, NULL, 'What kind of help do you need?', '1', '65', NULL, '2021-09-12 22:32:55', '2021-09-12 22:32:55'),
(28, 319, NULL, NULL, 'Thanks.. got it.. ..', '1', '319', NULL, '2021-09-12 22:33:24', '2021-09-12 22:33:24'),
(29, 333, NULL, NULL, 'hlw', '1', '333', NULL, '2021-09-21 03:08:15', '2021-09-21 03:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_04_29_110825_table_extra_brand_field_create', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 3),
(10, '2021_05_03_130738_create_medication_counts_table', 6),
(11, '2021_05_07_172247_create_patient_behalves_table', 7),
(12, '2021_05_09_075547_create_medication_users_table', 8),
(13, '2021_04_26_202544_create_medications_table', 9),
(17, '2021_05_09_111023_create_medication_details_table', 10),
(18, '2021_05_12_230115_create_jobs_table', 11),
(19, '2021_05_18_074227_create_messages_table', 12),
(21, '2021_05_24_153806_create_histories_table', 13),
(23, '2021_06_07_105949_create_contacts_table', 15),
(25, '2021_06_14_092403_create_blog_categories_table', 16),
(26, '2021_06_14_093022_create_blogs_table', 16),
(38, '2021_06_17_060942_create_doc_departments_table', 20),
(40, '2021_06_18_202615_create_doctor_departments_table', 21),
(41, '2021_06_16_202843_create_doctor_ratings_table', 22),
(42, '2021_06_16_203023_create_doctor_experienceds_table', 22),
(43, '2021_06_16_203124_create_doctor_education_table', 22),
(45, '2021_06_21_094513_create_blog_comments_table', 23),
(47, '2021_06_16_203237_create_doctor_appointmnets_table', 24),
(48, '2021_06_24_104203_create_doctor_time_slots_table', 25),
(49, '2021_04_28_100759_create_prescription_images_table', 26),
(52, '2021_06_28_075503_create_request_orders_table', 27),
(54, '2021_07_05_055754_create_email_templetes_table', 28),
(56, '2021_08_01_220301_create_mobile_verifies_table', 29),
(57, '2021_08_04_142102_create_shipping_methods_table', 30),
(58, '2021_08_05_103455_create_shipping_addesses_table', 31),
(60, '2021_08_05_113028_create_special_offers_table', 32),
(61, '2021_10_12_104744_create_regular_medications_table', 33),
(62, '2021_10_19_183705_create_affiliateids_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_verifies`
--

CREATE TABLE `mobile_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_verifies`
--

INSERT INTO `mobile_verifies` (`id`, `user_id`, `code`, `phone`, `created_at`, `updated_at`) VALUES
(17, NULL, '4550', '01738356180', '2021-08-07 07:13:11', '2021-08-07 07:13:11'),
(54, 324, '3278', NULL, '2021-09-18 03:21:15', '2021-09-18 03:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `discount` int(20) DEFAULT NULL,
  `code` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int(20) NOT NULL,
  `complain` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `meduserorder` tinyint(1) DEFAULT 0,
  `upcoming` tinyint(1) DEFAULT NULL,
  `upcoming_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `delivery_status`, `payment_details`, `shipping_cost`, `grand_total`, `discount`, `code`, `date`, `complain`, `viewed`, `meduserorder`, `upcoming`, `upcoming_date`, `created_at`, `updated_at`) VALUES
(215, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 1100.00, NULL, '20210920-081217', 1632074400, NULL, 1, 0, 0, NULL, '2021-09-21 02:12:17', '2021-09-21 02:13:54'),
(216, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":null,\"city\":\"Brahmanbaria\",\"area\":null,\"post_code\":null}', 'Cash On Delivery', 'unpaid', 'refund', NULL, 100.00, 129.23, NULL, '20210920-091621', 1632074400, NULL, 1, 1, 0, '2021-09-21', '2021-09-21 03:41:58', '2021-10-03 09:35:20'),
(217, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 850.00, NULL, '20210920-095044', 1632074400, NULL, 0, 0, 0, NULL, '2021-09-21 03:50:44', '2021-09-21 03:50:44'),
(218, 333, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 970.00, NULL, '20210920-100441', 1632074400, NULL, 1, 0, 0, NULL, '2021-09-21 04:04:41', '2021-09-21 22:19:34'),
(219, 335, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil64@gmail.com\",\"phone\":\"01533186152\",\"address\":null,\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Ramgati\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 900.00, NULL, '20210921-121533', 1632160800, NULL, 0, 0, 0, NULL, '2021-09-21 18:15:33', '2021-09-21 18:15:33'),
(220, 335, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil64@gmail.com\",\"phone\":\"01533186152\",\"address\":null,\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Ramgati\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 580.00, NULL, '20210921-122044', 1632160800, NULL, 0, 0, 0, NULL, '2021-09-21 18:20:44', '2021-09-21 18:20:44'),
(221, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 250.00, NULL, '20210921-011220', 1632160800, NULL, 1, 0, 0, NULL, '2021-09-21 19:12:20', '2021-09-21 21:22:34'),
(222, 335, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil64@gmail.com\",\"phone\":\"01533186152\",\"address\":null,\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Ramgati\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 320.00, NULL, '20210921-011500', 1632160800, NULL, 0, 0, 0, NULL, '2021-09-21 19:15:00', '2021-09-21 19:15:00'),
(223, 335, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil64@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address 2\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Ramgati\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'delivered', NULL, 100.00, 500.00, NULL, '20210921-011705', 1632160800, NULL, 1, 0, 0, NULL, '2021-09-21 19:17:05', '2021-09-21 21:39:58'),
(224, 335, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil64@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address 2\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Ramgati\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 550.00, NULL, '20210921-013035', 1632160800, NULL, 0, 0, 0, NULL, '2021-09-21 19:30:35', '2021-09-21 19:30:35'),
(225, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 850.00, NULL, '20210921-041340', 1632160800, NULL, 0, 0, 0, NULL, '2021-09-21 22:13:40', '2021-09-21 22:13:40'),
(226, 340, NULL, '{\"name\":\"towhid\",\"email\":\"towhid10@gmail.com\",\"phone\":\"07533498883\",\"address\":\"Dhaka\",\"region\":null,\"city\":\"Dhaka-North\",\"area\":null,\"post_code\":null}', 'Cash On Delivery', 'unpaid', 'pending', NULL, 50.00, 67.00, NULL, '20210922-040417', 1632247200, NULL, 0, 1, 0, '2021-09-25', '2021-09-22 10:06:27', '2021-09-22 10:06:27'),
(227, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":null,\"city\":\"Brahmanbaria\",\"area\":null,\"post_code\":null}', 'Cash On Delivery', 'unpaid', 'pending', NULL, 100.00, 129.23, NULL, '20210920-091621', 1632247200, NULL, 1, 1, 0, '2021-09-28', '2021-09-22 10:09:43', '2021-10-03 09:26:57'),
(228, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 420.00, NULL, '20210922-123035', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:30:35', '2021-09-22 18:30:35'),
(229, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 980.00, NULL, '20210922-123321', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:33:21', '2021-09-22 18:33:21'),
(230, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 1000.00, NULL, '20210922-124440', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:44:40', '2021-09-22 18:44:40'),
(231, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 1130.00, NULL, '20210922-124942', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:49:42', '2021-09-22 18:49:42'),
(232, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 320.00, NULL, '20210922-125044', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:50:44', '2021-09-22 18:50:44'),
(233, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 320.00, NULL, '20210922-125142', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 18:51:42', '2021-09-23 00:12:20'),
(234, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'delivered', NULL, 100.00, 850.00, NULL, '20210922-010630', 1632247200, NULL, 1, 0, 0, NULL, '2021-09-22 19:06:30', '2021-09-23 00:12:47'),
(235, 342, NULL, '{\"name\":\"shakil015\",\"email\":\"muhammadullah.shakil@gmail.com\",\"phone\":\"01718160843\",\"address\":\"test address.\",\"region\":\"Chattagram Division\",\"city\":\"Coxsbazar\",\"area\":\"Moheshkhali\",\"post_code\":\"99\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'on_delivery', NULL, 100.00, 850.00, NULL, '20210922-011808', 1632247200, NULL, 1, 0, 0, NULL, '2021-09-22 19:18:08', '2021-09-22 23:31:04'),
(236, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'paid', 'processing', NULL, 100.00, 980.00, NULL, '20210922-012041', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 19:20:41', '2021-09-22 19:20:41'),
(237, 341, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Lakshmipur\",\"area\":\"Raipur\",\"post_code\":\"2233\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 240.00, NULL, '20210922-013131', 1632247200, NULL, 0, 0, 0, NULL, '2021-09-22 19:31:31', '2021-09-22 19:31:31'),
(238, 343, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"+8801234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Coxsbazar\",\"area\":\"Kutubdia\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 850.00, NULL, '20210923-043152', 1632333600, NULL, 0, 0, 0, NULL, '2021-09-23 10:31:52', '2021-09-23 10:31:52'),
(239, 343, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"+8801234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Coxsbazar\",\"area\":\"Kutubdia\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'sslcommerz', 'unpaid', 'pending', NULL, 100.00, 230.00, NULL, '20210923-043316', 1632333600, NULL, 0, 0, 0, NULL, '2021-09-23 10:33:16', '2021-09-23 10:33:16'),
(240, 343, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"+8801234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Coxsbazar\",\"area\":\"Kutubdia\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 450.00, NULL, '20210923-043436', 1632333600, NULL, 0, 0, 0, NULL, '2021-09-23 10:34:36', '2021-09-23 10:34:36'),
(241, 346, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":null,\"city\":\"Jhalakathi\",\"area\":null,\"post_code\":null}', 'Cash On Delivery', 'unpaid', 'refund', NULL, 100.00, 9100.00, NULL, '20211003-035410', 1633197600, NULL, 1, 1, 0, '2021-10-04', '2021-10-03 09:56:00', '2021-10-03 09:59:29'),
(242, 346, NULL, '{\"name\":\"shakil015\",\"email\":\"kmushakil@gmail.com\",\"phone\":\"01533186152\",\"address\":\"test address\",\"region\":null,\"city\":\"Jhalakathi\",\"area\":null,\"post_code\":null}', 'Cash On Delivery', 'unpaid', 'refund', NULL, 100.00, 950.00, NULL, '20211003-041159', 1633197600, NULL, 1, 1, 0, '2021-10-04', '2021-10-03 10:17:01', '2021-10-03 10:17:47'),
(243, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 200.00, NULL, '20211004-035328', 1633284000, NULL, 0, 0, 0, NULL, '2021-10-04 09:53:28', '2021-10-04 09:53:28'),
(244, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 125.00, NULL, '20211004-041427', 1633284000, NULL, 0, 0, 0, NULL, '2021-10-04 10:14:27', '2021-10-04 10:14:27'),
(245, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 208.00, 12, '20211004-055001', 1633284000, NULL, 0, 0, 0, NULL, '2021-10-04 11:50:01', '2021-10-04 11:50:01'),
(246, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 127.00, 3, '20211004-055229', 1633284000, NULL, 0, 0, 0, NULL, '2021-10-04 11:52:29', '2021-10-04 11:52:29'),
(247, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 451.00, 39, '20211004-055435', 1633284000, NULL, 0, 0, 0, NULL, '2021-10-04 11:54:35', '2021-10-04 11:54:35'),
(248, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 298.00, 22, '20211010-063546', 1633802400, NULL, 0, 0, 0, NULL, '2021-10-10 12:35:46', '2021-10-10 12:35:46'),
(249, 345, NULL, '{\"name\":\"shakil\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Ashuganj\",\"post_code\":\"2258\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 700.00, 150, '20211010-064951', 1633802400, NULL, 0, 0, 0, NULL, '2021-10-10 12:49:51', '2021-10-10 12:49:51'),
(250, 358, NULL, '{\"name\":\"Shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Companiganj\",\"post_code\":\"2255\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 163.20, 11, '20211219-094637', 1639850400, NULL, 0, 0, 0, NULL, '2021-12-19 15:46:37', '2021-12-19 15:46:37'),
(251, 333, NULL, '{\"name\":\"shakil\",\"email\":\"shakil@gmail.com\",\"phone\":\"01234567890\",\"address\":\"London\",\"region\":\"Chattagram Division\",\"city\":\"Brahmanbaria\",\"area\":\"Sarail\",\"post_code\":\"3434\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 108.00, 2, '20211221-044334', 1640023200, NULL, 0, 0, 0, NULL, '2021-12-21 10:43:34', '2021-12-21 10:43:34'),
(252, 365, NULL, '{\"name\":\"shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Comilla\",\"area\":\"Meghna\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 124.18, 1, '20211222-035717', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 09:57:17', '2021-12-22 09:57:17'),
(253, 365, NULL, '{\"name\":\"shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Comilla\",\"area\":\"Meghna\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 140.00, 228.00, 22, '20211222-042014', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 10:20:14', '2021-12-22 10:20:14'),
(254, 365, NULL, '{\"name\":\"shakil\",\"email\":\"kmushakil71@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Dhaka Division\",\"city\":\"Dhaka-North\",\"area\":\"Kuril\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 50.00, 146.00, 24, '20211222-091024', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 15:10:24', '2021-12-22 15:10:24'),
(255, 374, NULL, '{\"name\":\"shakil\",\"email\":\"charunta@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Noakhali Sadar\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 224.00, 26, '20211222-094932', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 15:49:32', '2021-12-22 15:49:32'),
(256, 374, NULL, '{\"name\":\"shakil\",\"email\":\"charunta@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Noakhali Sadar\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 352.00, 58, '20211222-095140', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 15:51:40', '2021-12-22 15:51:40'),
(257, 374, NULL, '{\"name\":\"shakil\",\"email\":\"charunta@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Noakhali Sadar\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 240.00, 30, '20211222-095248', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 15:52:48', '2021-12-22 15:52:48'),
(258, 374, NULL, '{\"name\":\"shakil\",\"email\":\"charunta@gmail.com\",\"phone\":\"01676026364\",\"address\":\"test address\",\"region\":\"Chattagram Division\",\"city\":\"Noakhali\",\"area\":\"Noakhali Sadar\",\"post_code\":\"1216\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 100.00, 180.00, 20, '20211222-095403', 1640109600, NULL, 0, 0, 0, NULL, '2021-12-22 15:54:03', '2021-12-22 15:54:03'),
(259, 375, NULL, '{\"name\":\"f2\",\"email\":\"kazimuhammadullah@gmail.com\",\"phone\":\"01676026364\",\"address\":\"hhhhhhh11111\",\"region\":\"Khulna Division\",\"city\":\"Meherpur\",\"area\":\"Meherpur Sadar\",\"post_code\":\"2222\",\"checkout_type\":\"undefined\"}', 'cash_on_delivery', 'unpaid', 'pending', NULL, 120.00, 296.00, 44, '20220308-031330', 1646676000, NULL, 0, 0, 0, NULL, '2022-03-08 09:13:30', '2022-03-08 09:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(373, 215, 65, 2929, 'Garlitab', 1000.00, 0.00, 0.00, 10, 'unpaid', 'pending', '2021-09-21 02:12:17', '2021-09-21 02:12:17'),
(374, 216, 65, 2905, NULL, 7.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-21 03:41:58', '2021-09-21 03:41:58'),
(375, 216, 65, 2906, NULL, 7.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-21 03:41:58', '2021-09-21 03:41:58'),
(376, 216, 65, 2907, NULL, 5.23, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-21 03:41:58', '2021-09-21 03:41:58'),
(377, 216, 65, 2908, NULL, 10.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-21 03:41:58', '2021-09-21 03:41:58'),
(378, 217, 65, 2935, '250gm', 750.00, 0.00, 0.00, 3, 'unpaid', 'pending', '2021-09-21 03:50:44', '2021-09-21 03:50:44'),
(379, 218, 65, 2935, '250gm', 750.00, 0.00, 0.00, 3, 'unpaid', 'pending', '2021-09-21 04:04:41', '2021-09-21 04:04:41'),
(380, 218, 65, 2940, '100gm', 120.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-21 04:04:41', '2021-09-21 04:04:41'),
(381, 219, 65, 2954, '75pc', 800.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-21 18:15:33', '2021-09-21 18:15:33'),
(382, 220, 65, 2940, '100gm', 480.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-21 18:20:44', '2021-09-21 18:20:44'),
(383, 221, 65, 2933, '450ml', 150.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-21 19:12:20', '2021-09-21 19:12:20'),
(384, 222, 65, 2939, '80gm', 220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-21 19:15:00', '2021-09-21 19:15:00'),
(385, 223, 65, 2942, 'White', 400.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-21 19:17:05', '2021-09-21 19:17:05'),
(386, 224, 65, 2945, '200ml', 450.00, 0.00, 0.00, 2, 'unpaid', 'pending', '2021-09-21 19:30:35', '2021-09-21 19:30:35'),
(387, 225, 65, 2937, '100gm', 750.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-21 22:13:40', '2021-09-21 22:13:40'),
(388, 226, 65, 2906, NULL, 7.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:06:27', '2021-09-22 10:06:27'),
(389, 226, 65, 2908, NULL, 10.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:06:27', '2021-09-22 10:06:27'),
(390, 227, 65, 2905, NULL, 7.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:09:43', '2021-09-22 10:09:43'),
(391, 227, 65, 2906, NULL, 7.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:09:43', '2021-09-22 10:09:43'),
(392, 227, 65, 2907, NULL, 5.23, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:09:43', '2021-09-22 10:09:43'),
(393, 227, 65, 2908, NULL, 10.00, 0.00, 120.00, 1, 'unpaid', 'pending', '2021-09-22 10:09:43', '2021-09-22 10:09:43'),
(394, 228, 65, 2941, 'White', 320.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-22 18:30:35', '2021-09-22 18:30:35'),
(395, 229, 65, 2939, '80gm', 880.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-22 18:33:21', '2021-09-22 18:33:21'),
(396, 230, 65, 2945, '200ml', 900.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-22 18:44:40', '2021-09-22 18:44:40'),
(397, 231, 65, 2945, '200ml', 900.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-22 18:49:42', '2021-09-22 18:49:42'),
(398, 231, 65, 2938, '100gm', 130.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 18:49:42', '2021-09-22 18:49:42'),
(399, 232, 65, 2939, '80gm', 220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 18:50:44', '2021-09-22 18:50:44'),
(400, 233, 65, 2939, '80gm', 220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 18:51:42', '2021-09-22 18:51:42'),
(401, 234, 65, 2937, '100gm', 750.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 19:06:30', '2021-09-22 19:06:30'),
(402, 235, 65, 2937, '100gm', 750.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 19:18:08', '2021-09-22 19:18:08'),
(403, 236, 65, 2939, '80gm', 880.00, 0.00, 0.00, 4, 'unpaid', 'pending', '2021-09-22 19:20:41', '2021-09-22 19:20:41'),
(404, 237, 65, 2932, '450ml', 140.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-22 19:31:31', '2021-09-22 19:31:31'),
(405, 238, 65, 2937, '100gm', 750.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-23 10:31:52', '2021-09-23 10:31:52'),
(406, 239, 65, 2938, '100gm', 130.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-23 10:33:16', '2021-09-23 10:33:16'),
(407, 240, 65, 2938, '100gm', 130.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-23 10:34:36', '2021-09-23 10:34:36'),
(408, 240, 65, 2939, '80gm', 220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-09-23 10:34:36', '2021-09-23 10:34:36'),
(409, 241, 65, 2920, NULL, 9000.00, 0.00, 120.00, 2, 'unpaid', 'pending', '2021-10-03 09:56:00', '2021-10-03 09:56:00'),
(410, 242, 65, 2916, NULL, 850.00, 0.00, 120.00, 10, 'unpaid', 'pending', '2021-10-03 10:17:01', '2021-10-03 10:17:01'),
(411, 243, 65, 2912, '10mg', 100.00, 0.00, 0.00, 10, 'unpaid', 'pending', '2021-10-04 09:53:28', '2021-10-04 09:53:28'),
(412, 244, 65, 2914, '2.5mg/ml', 25.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-04 10:14:27', '2021-10-04 10:14:27'),
(413, 245, 65, 2934, '450ml', 120.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-04 11:50:01', '2021-10-04 11:50:01'),
(414, 246, 65, 2912, '10mg', 30.00, 0.00, 0.00, 3, 'unpaid', 'pending', '2021-10-04 11:52:29', '2021-10-04 11:52:29'),
(415, 247, 65, 2933, '450ml', 150.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-04 11:54:35', '2021-10-04 11:54:35'),
(416, 247, 65, 2932, '450ml', 140.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-04 11:54:35', '2021-10-04 11:54:35'),
(417, 247, 65, 2930, '450ml', 100.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-04 11:54:35', '2021-10-04 11:54:35'),
(418, 248, 65, 2908, '10mg+20mg', 30.00, 0.00, 0.00, 3, 'unpaid', 'pending', '2021-10-10 12:35:46', '2021-10-10 12:35:46'),
(419, 248, 65, 2911, '1gm/vial', 190.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-10 12:35:46', '2021-10-10 12:35:46'),
(420, 249, 65, 2937, '100gm', 750.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-10-10 12:49:51', '2021-10-10 12:49:51'),
(421, 250, 65, 2907, '50mg', 30.00, 0.00, 0.00, 5, 'unpaid', 'pending', '2021-12-19 15:46:37', '2021-12-19 15:46:37'),
(422, 250, 65, 2908, '5mg+20mg', 24.00, 0.00, 0.00, 3, 'unpaid', 'pending', '2021-12-19 15:46:37', '2021-12-19 15:46:37'),
(423, 251, 65, 2908, '10mg+20mg', 10.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-21 10:43:34', '2021-12-21 10:43:34'),
(424, 252, 65, 2907, '25mg', 5.23, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 09:57:17', '2021-12-22 09:57:17'),
(425, 253, 65, 2931, '450ml', 110.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 10:20:14', '2021-12-22 10:20:14'),
(426, 254, 65, 2934, '450ml', 120.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:10:24', '2021-12-22 15:10:24'),
(427, 255, 65, 2938, '100gm', 130.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:49:32', '2021-12-22 15:49:32'),
(428, 256, 65, 2933, '450ml', 150.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:51:40', '2021-12-22 15:51:40'),
(429, 256, 65, 2932, '450ml', 140.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:51:40', '2021-12-22 15:51:40'),
(430, 257, 65, 2933, '450ml', 150.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:52:48', '2021-12-22 15:52:48'),
(431, 258, 65, 2930, '450ml', 100.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2021-12-22 15:54:03', '2021-12-22 15:54:03'),
(432, 259, 65, 2939, '80gm', 220.00, 0.00, 0.00, 1, 'unpaid', 'pending', '2022-03-08 09:13:30', '2022-03-08 09:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ipla13332212@gmail.com', '$2y$10$VvRU2RVkgDdJDAZLgWyIVe70r0GV1bq0akPMdtBAaFUthOolO4zh.', '2019-06-16 11:40:37'),
('hasib.9437.hu@gmail.com', 'F6wLeVLncgKlyxsC7YSGZ9jX8MHmJmXIUvknoFKerm9mad3wn1uwV0QHTX0sq4wP', '2021-08-03 12:01:01'),
('hasib.9437.hu@gmail.com', '2poyM2GgtI3oIDEUgdSJGmP9BRh3XajOL9iZPx7L5SBeXdfu2OeFWnqnMHTcvzOn', '2021-08-03 12:17:21'),
('hasib.9437.hu@gmail.com', '9NFnBu8Fveou8BuDl6MMWbllYxbijIzkXqe8ozMh8xIFfMBk5RLde4ysXVzPomql', '2021-08-03 12:19:08'),
('hasib.9437.hu@gmail.com', 'zrP4EbHd1yxW5Mya3OO3cOjIQWzN3Q80exYLBY2NqTxuE6JZrwkfzy6GMFg16yWJ', '2021-08-03 13:16:20'),
('kazimuhammadullah@gmail.com', 'yU1seVNXsghY7juTUjORugFPQ3hBl1dAaO3QHhG7njuzHVjTpIMXapAQy8H8JuIc', '2021-10-03 11:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `patient_behalves`
--

CREATE TABLE `patient_behalves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bphone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2019-06-12 18:34:49', '2019-01-22 05:13:15'),
(2, 'return_policy', 'Create Return Policy', '2021-08-17 07:40:51', '2021-08-17 01:40:51'),
(5, 'terms', 'Term and condition<br>', '2021-07-15 13:13:27', '2021-07-15 07:13:27'),
(6, 'privacy_policy', '<h1>Privacy Policy</h1>\r\n<p>Last updated: June 29, 2021</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\">Privacy Policy Generator</a>.</p>\r\n<h1>Interpretation and Definitions</h1>\r\n<h2>Interpretation</h2>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h2>Definitions</h2>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Next Link Ltd., Address: Section-12, Block-D, Road-21, House-24, Dhaka..</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong> refers to:  Bangladesh</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong> refers to Apon Health., accessible from <a href=\"https://aponhealth.com/\" rel=\"external nofollow noopener\" target=\"_blank\">https://aponhealth.com/</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h1>Collecting and Using Your Personal Data</h1>\r\n<h2>Types of Data Collected</h2>\r\n<h3>Personal Data</h3>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Phone number</p>\r\n</li>\r\n<li>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h3>Usage Data</h3>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h3>Tracking Technologies and Cookies</h3>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<ul>\r\n<li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n<li><strong>Flash Cookies.</strong> Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read \"Where can I change the settings for disabling, or deleting local shared objects?\" available at <a href=\"https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_\" rel=\"external nofollow noopener\" target=\"_blank\">https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_</a></li>\r\n<li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n<p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies: <a href=\"https://www.freeprivacypolicy.com/blog/cookies/\" target=\"_blank\">Cookies: What Do They Do?</a>.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n</li>\r\n</ul>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h2>Use of Your Personal Data</h2>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service,  to contact You.</li>\r\n<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h2>Retention of Your Personal Data</h2>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h2>Transfer of Your Personal Data</h2>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h2>Disclosure of Your Personal Data</h2>\r\n<h3>Business Transactions</h3>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h3>Law enforcement</h3>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h3>Other legal requirements</h3>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h2>Security of Your Personal Data</h2>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h1>Children\'s Privacy</h1>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h1>Links to Other Websites</h1>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h1>Changes to this Privacy Policy</h1>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h1>Contact Us</h1>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email: info@aponhealth.com</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website: [Address: Section-12, Block-D, Road-21, House-24.](Address: Section-12, Block-D, Road-21, House-24.)</p>\r\n</li>\r\n<li>\r\n<p>By phone number: 01866 335834</p>\r\n</li>\r\n</ul><br>', '2021-06-29 05:51:33', '2021-06-29 11:51:33'),
(7, 'seller_policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2019-06-12 18:39:53', '0000-00-00 00:00:00'),
(8, 'security', '<meta charset=\"utf-8\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size: 14pt; font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">WARRANTY POLICY</span></p>', '2021-06-29 08:52:55', '2021-06-29 02:52:54'),
(9, 'about', '<p><span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">AponHealth is your digital healthcare solution. We are here to help you look after your own health as a proactive measure helping you prevent illness as we strive to build a healthy community.</span></p><p><br></p><p>আপনহেলথ- আপনার স্বাস্থ্য সহকারী। এখানে ফ্রি একাউন্ট করে হেলথ প্রোফাইল তৈরি করতে পারেন সহজে। রাখতে পারেন আপনার দরকারি সব প্রেসক্রিপশন ও ডায়াগনস্টিক রিপোর্ট। যা প্রয়োজন হলেই ডাক্তারকে শেয়ার বা প্রিন্ট করতে পারবেন।আপনহেলথ- সব সময় স্বাস্থ্য বিষয়ক বিভিন্ন লেখা প্রকাশ করবে। </p><p>পাশাপাশি কমন অসুখের লক্ষন ও চিকিৎসা পরামর্শ তুলে ধরবে। যা প্রাথমিকভাবে সবারই উপকারে আসবে। এছাড়া সরাসরি ওয়েবসাইটের health advice ক্লিক করে পেয়ে যাবেন দরকারি সব তথ্য।আপনহেলথ- প্লাটফর্মে সম্মানিত চিকিৎসকরাও সহজে যুক্ত হতে পারবেন। চিকিৎসক আর রোগীর একটা সেতুবন্ধন তৈরি হবে এখানে। আপনাদের রোগী দেখার সময়, যোগাযোগের জন্য কন্টাক্ট নম্বর, ইমেইল, এড্রেস এবং কনসাল্টেশন ফী উমুক্ত রাখতে পারবেন, রোগী সহজে যোগাযোগ করে সেবা নিতে পারবে।আপনহেলথ- ওয়েবসাইটে থাকবে জরুরি চিকিৎসা সেবা, ব্লাড ব্যাংক সহ আরও অনেক কিছু।<br></p>', '2021-06-29 05:31:54', '2021-06-29 11:31:54'),
(10, 'dinratri-stories', '<meta charset=\"utf-8\"><p style=\"text-align: left;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 16pt;\">WHY SHOP ON </span><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 16pt;\">Apon Health</span></p><p style=\"text-align: left;\"><br></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p>', '2021-06-29 09:05:56', '2021-06-29 03:05:56'),
(11, 'payments', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br>', '2019-06-12 18:54:23', '2019-06-12 12:54:23'),
(12, 'shipping', '<meta charset=\"utf-8\"><p dir=\"ltr\" style=\"line-height: 1.38; margin-top: 0pt; margin-bottom: 10pt; text-align: center;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 14pt;\"><u>Shipping Policy</u></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>How do we Deliver?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We process all deliveries through:</span></p><ul><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Our in house delivery team</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Reputed couriers</em></span></li></ul><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>How much are the delivery charges?</strong></span></p><ul><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Within Dhaka city, the delivery charge is BDT 50 and outside Dhaka city, it is BDT 100.</em></span></li></ul><blockquote dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Note: This will vary from product to product</span></blockquote><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>What is the estimated delivery time?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The estimated time of delivery for Order inside Dhaka city up to 3 Working days &amp; for outside Dhaka up to 5 working days.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>Note</strong><span style=\"font-size: 11pt;\">:</span></span></p><ol><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Any order placed after 6 pm will be considered an order of next business day, not on the same day.</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Business Day: Saturday to Thursday except for public holidays.</em></span></li><li><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><em>Delivery might be delayed due to the unavailability of the product or delay from the 3rd Party Delivery Service.</em></span></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-family: Calibri, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap; font-size: 11pt;\"><strong>Does Apon Health deliver internationally?</strong></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Apon Health doesn\'t deliver items internationally. You are more than welcome to make your purchases on our site from anywhere in the world, but you\'ll have to ensure the Delivery Address is within Bangladesh.</span></p>', '2021-08-17 07:38:05', '2021-08-17 01:38:05'),
(13, 'cancellation-return', '<meta charset=\"utf-8\"><meta charset=\"utf-8\"><strong style=\"font-weight:normal;\" id=\"docs-internal-guid-5c3ee82b-7fff-ac17-892b-2576e66dc4f4\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:22pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Return &amp; Replacement</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p><br><br><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><br></p></strong>', '2021-08-17 07:38:24', '2021-08-17 01:38:24'),
(14, 'faq', '<meta charset=\"utf-8\"><strong style=\"font-weight:normal;\" id=\"docs-internal-guid-5c3ee82b-7fff-ac17-892b-2576e66dc4f4\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:22pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">FAQ</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:10pt;\"><span style=\"font-size:11pt;font-family:Calibri,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Frequently Asked Questions (FAQs)</span></p></strong>', '2021-08-17 07:38:41', '2021-08-17 01:38:41'),
(15, 'career', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-07 09:35:08', '2021-06-07 03:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_images`
--

CREATE TABLE `prescription_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` tinyint(1) DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescription_images`
--

INSERT INTO `prescription_images` (`id`, `user_id`, `order_id`, `patient_name`, `mobile`, `medicine_details`, `image`, `name`, `email`, `address`, `message`, `contact`, `read`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(168, NULL, NULL, 'this is my new one..', '8033789315', NULL, '1631464011_319_830991.jpeg', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2021-09-12 22:26:51', '2021-09-12 22:26:51'),
(174, NULL, NULL, 'I need medicine', '01676026364', NULL, '1632146888_333_520093.png', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2021-09-21 02:08:08', '2021-09-21 02:08:08'),
(175, NULL, NULL, NULL, '66', NULL, NULL, 'test', 'info@info.com', 'test', 'this is a test', 1, '0', NULL, NULL, NULL, '2021-09-22 10:02:26', '2021-09-22 10:02:26'),
(176, NULL, NULL, 'test', '01533186152', NULL, '1632293323_341_896160.jpg', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2021-09-22 18:48:43', '2021-09-22 18:48:43'),
(177, 341, 237, 'shakil', '01533186152', 'order', '1632295884_341_413851.jpg', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, '2021-09-22 19:31:24', '2021-09-22 19:31:24'),
(178, NULL, NULL, NULL, '00001111222', NULL, NULL, 'bghkghkm', 'bjh@fhg.ujyt', 'sdzghfdhnfgvsjtfsngsf', 'hbfgfgfgfgdhdjuyhyjnghdmnghmdghmgdyjhetyjetymkjh', 1, '0', NULL, NULL, NULL, '2021-10-12 04:52:12', '2021-10-12 04:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_deal_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `prescribed` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) DEFAULT NULL,
  `choice_options` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `variations` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `todays_deal` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `current_stock` int(10) NOT NULL DEFAULT 0,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `prescribed`, `description`, `unit_price`, `purchase_price`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(2905, 'Acifix', 'admin', 65, 25, 98, 280, 145, '[\"uploads\\/products\\/photos\\/vwk7kdX3g7U8YfhQYdiMFrhtsKkEdqS3yJ1DOx4o.jpg\"]', 'uploads/products/thumbnail/VDsXIWKfESUBUUL3nghtZGKZpQRdlrYURYmfmg2g.jpg', 'uploads/products/featured/xsgDEiHTWS6eVpHnLp5ldxNPla2z7xCQtPkxqVmn.jpg', 'uploads/products/flash_deal/ryVsMMrAuSyO8MPh8ey67o2lgNx0fkOwVaBwWn5m.jpg', 'youtube', NULL, 'Acifix', 1, 'Acifix', 7.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"20mg\"]}]', '[]', '{\"10mg\":{\"price\":\"3.50\",\"sku\":\"A-10mg\",\"qty\":997},\"20mg\":{\"price\":\"7\",\"sku\":\"A-20mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Acifix', 'Acifix', 'uploads/products/meta/E8djduUW05MDPPw4kAeJL4RNa8DJhdHkFJQB5fW5.jpg', NULL, 'Acifix-aAgce', '2021-09-14 20:21:53', '2021-09-20 19:03:25'),
(2906, 'Amdocal', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/B3eEO053jGjdcMzWw6MlM8DKUyuTN78sKzXRU3pF.jpg\"]', 'uploads/products/thumbnail/FjrSNCwpHDeJDcGEqI51XznVRVYU6d4qip91UUDo.jpg', 'uploads/products/featured/IPh9XSdVnYwwJYEawCTf9dTuuxTqTLJMIWzGHjW5.jpg', 'uploads/products/flash_deal/ayIAK5b6geFCLpfRCKPiKxN1FAxU4NjdtOcAtjDg.jpg', 'youtube', NULL, 'Amdocal', 1, 'Amdocal', 7.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"5mg\"]}]', '[]', '{\"10mg\":{\"price\":\"7\",\"sku\":\"A-10mg\",\"qty\":\"1000\"},\"5mg\":{\"price\":\"5\",\"sku\":\"A-5mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Amdocal', 'Amdocal', 'uploads/products/meta/X2ilwXPpJLuzBVkIY7PW2xhbR18GJyOtfZrovMvL.jpg', NULL, 'Amdocal-O2fI5', '2021-09-14 21:35:41', '2021-09-16 16:48:38'),
(2907, 'Amdocal Plus', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/lh01mdEaiJzKBTRCShnYRY5Pk5P9HkHQzWe57bvA.jpg\"]', 'uploads/products/thumbnail/sTqZGK6ckL5YSjoMtfLzubyPprx94V7oNMCDujq5.jpg', 'uploads/products/featured/NrgnlGA34fJDqDVqTgsYIPHTT3sJ6uAxaMtKXA4U.jpg', 'uploads/products/flash_deal/U1GCP0CqdvHyWFbV1eW4mX1lZammGx5cKJxUFQGB.jpg', 'youtube', NULL, 'Amdocal Plus', 1, 'Amdocal Plus', 5.23, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"25mg\",\"50mg\"]}]', '[]', '{\"25mg\":{\"price\":\"5.23\",\"sku\":\"AP-25mg\",\"qty\":988},\"50mg\":{\"price\":\"6\",\"sku\":\"AP-50mg\",\"qty\":995}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 3, 'Amdocal Plus', 'Amdocal Plus', 'uploads/products/meta/WlH03IpchEs1drb2YrHOugER7R2lYuJmXWUpRxk6.jpg', NULL, 'Amdocal-Plus-haYAg', '2021-09-14 21:39:43', '2021-12-22 09:57:17'),
(2908, 'amdopril', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/RURcgrXaLXgFfEQZDSZAIwfXkgvwfATrbXP5KoFi.jpg\"]', 'uploads/products/thumbnail/KhKGfT05rZL6IIONOZKIWBuT5MraRpOX8NNejQM6.jpg', 'uploads/products/featured/iyDPM9IupviMCn0DcR199sbMjEziXejDB22W3Bpf.jpg', 'uploads/products/flash_deal/wVx4rhayp9mW2xxGqczdleor7PODOqsUy41opux8.jpg', 'youtube', NULL, 'amdopril', 1, 'amdopril', 10.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg+20mg\",\"2.5mg+10mg\",\"5mg+10mg\",\"5mg+20mg\",\"5mg+5mg\"]}]', '[]', '{\"10mg+20mg\":{\"price\":\"10\",\"sku\":\"a-10mg+20mg\",\"qty\":996},\"2.5mg+10mg\":{\"price\":\"4\",\"sku\":\"a-2.5mg+10mg\",\"qty\":\"1000\"},\"5mg+10mg\":{\"price\":\"6\",\"sku\":\"a-5mg+10mg\",\"qty\":\"1000\"},\"5mg+20mg\":{\"price\":\"8\",\"sku\":\"a-5mg+20mg\",\"qty\":997},\"5mg+5mg\":{\"price\":\"21\",\"sku\":\"a-5mg+5mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 3, 'amdopril', 'amdopril', 'uploads/products/meta/B7Zt1HPtZpKPmKMTaGz4M3gpJhPDNNonsudWvsbr.jpg', NULL, 'amdopril-kxbG4', '2021-09-14 21:54:38', '2021-12-21 10:43:34'),
(2909, 'Amdova', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/5f1qM5FQAk9XjksT3Eet4yIO5Oh18Mn4EvK1b56L.jpg\"]', 'uploads/products/thumbnail/Rblo2NRZu1RjYeulxy7X2kkC7fe5ix7b64CiuTD1.jpg', 'uploads/products/featured/KDn4o7thHlF4czDGMvzWDDAqVRPV6WjvnqjgQNoR.jpg', 'uploads/products/flash_deal/YVRlusPi0iq1DxSOTuOane6BMwFPCJNkgTGlSi0l.jpg', 'youtube', NULL, 'Amdova', 1, 'Amdova', 11.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg+10mg\"]}]', '[]', '{\"5mg+10mg\":{\"price\":\"11.01\",\"sku\":\"A-5mg+10mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Amdova', 'Amdova', 'uploads/products/meta/5lyUKg4JULMOqGKAOSUnyDGkjIeyuUhzdA21KRBZ.jpg', NULL, 'Amdova-9DozT', '2021-09-14 21:58:15', '2021-09-14 22:38:11'),
(2910, 'Apresin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/0tBDQAAXJOXXrvLF4r9MQNNXDZavsRIUtiMycIhb.jpg\"]', 'uploads/products/thumbnail/fXiVCvIafOHW61FY1LDXb4Zfsi3OxhwV7Pqx5B0I.jpg', 'uploads/products/featured/dg3vwmoFPthpZoRyipXmNgtEhNLws45gl71oo6pZ.jpg', 'uploads/products/flash_deal/s6AqthCi7jNcphtbHlNvDQ5wGLnN5QiOH904vqaZ.jpg', 'youtube', NULL, 'Apresin', 1, 'Apresin', 1.05, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"0.5mg+10mg\"]}]', '[]', '{\"0.5mg+10mg\":{\"price\":\"1.05\",\"sku\":\"A-0.5mg+10mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Apresin', 'Apresin', 'uploads/products/meta/RtpMhPnKYeDlD24oNbpn69p31lw1fKDUYJjdijfI.jpg', NULL, 'Apresin-2OptZ', '2021-09-14 22:07:42', '2021-09-14 22:38:07'),
(2911, 'Arixon', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/lwEAcvZeD6wyq40N5uaczqTof8nyEgkWlKq4N1lw.jpg\"]', 'uploads/products/thumbnail/RF3OjrFXuKkUCD2b4jvatjvCg39N5PMEAxI0mYlh.jpg', 'uploads/products/featured/ER5drHsAR9BIalt8ZZ1abHaqjpnDCB0rZUUIUtEw.jpg', 'uploads/products/flash_deal/n3Jv6VrZ1LbC46FctqjK5CtwfYR0yDWfJ3fTDlXB.jpg', 'youtube', NULL, 'Arixon', 1, 'Arixon', 190.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"1gm\\/vial\",\"250mg\\/vial\",\"500mg\\/vial\",\"2gm\\/vial\"]}]', '[]', '{\"1gm\\/vial\":{\"price\":\"190\",\"sku\":\"A-1gm\\/vial\",\"qty\":999},\"250mg\\/vial\":{\"price\":\"100\",\"sku\":\"A-250mg\\/vial\",\"qty\":\"1000\"},\"500mg\\/vial\":{\"price\":\"130\",\"sku\":\"A-500mg\\/vial\",\"qty\":\"1000\"},\"2gm\\/vial\":{\"price\":\"300\",\"sku\":\"A-2gm\\/vial\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Arixon', 'Arixon', 'uploads/products/meta/bbZMk0tydkhB8BFcStZzynO3LWkmVTEmwnLR0sm4.jpg', NULL, 'Arixon-q4LJr', '2021-09-14 22:18:53', '2021-10-10 12:35:46'),
(2912, 'Atova', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/k95cVo2ZybemlNZKfuENwsSNHmnd3qL4PTIB54Ba.jpg\"]', 'uploads/products/thumbnail/dFBc6cosUHcmzkNisV30WavkdJnbEnR5FHhZC7Oh.jpg', 'uploads/products/featured/FxBkXqivYXiSK093D2tG8sNjcYxxy3wArcFFhVxR.jpg', 'uploads/products/flash_deal/qlfk93JrGppd0kR02bjwDdr7rapeolPC5FsVHnoB.jpg', 'youtube', NULL, 'Atova', 1, 'Atova', 10.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"20mg\",\"40mg\"]}]', '[]', '{\"10mg\":{\"price\":\"10\",\"sku\":\"A-10mg\",\"qty\":987},\"20mg\":{\"price\":\"18\",\"sku\":\"A-20mg\",\"qty\":\"1000\"},\"40mg\":{\"price\":\"24\",\"sku\":\"A-40mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Atova', 'Atova', 'uploads/products/meta/mw5Jeu2ibbbfKSXcgovjP4M6pvyKjM7QpG57D4fS.jpg', NULL, 'Atova-vX4ge', '2021-09-14 23:08:54', '2021-10-04 11:52:29'),
(2913, 'Avidro', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/HNb5PIOsVPcZoleDPMLUGPJcYY85eWqgHlBeHr29.jpg\"]', 'uploads/products/thumbnail/rCHO8InbCGI5DeswSDRONz1vFhXRtvdqECxil6Gi.jpg', 'uploads/products/featured/JouSmYMFzW26KQlSxu5HkvgulZnKp7vyhaXUyeCK.jpg', 'uploads/products/flash_deal/8rd2mdghB3OrpPWaTCxlkPDLqH3AtoYUwUxGChQJ.jpg', 'youtube', NULL, 'Avidro', 1, 'Avidro', 3.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"0.5mg\",\"1.5mg\"]}]', '[]', '{\"0.5mg\":{\"price\":\"3\",\"sku\":\"A-0.5mg\",\"qty\":\"1000\"},\"1.5mg\":{\"price\":\"7\",\"sku\":\"A-1.5mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Avidro', 'Avidro', 'uploads/products/meta/vcXZcPB7LRZFJnZFqFOPS3ptGANF4N1juLvE2Zol.jpg', NULL, 'Avidro-Pitk1', '2021-09-14 23:14:13', '2021-09-15 03:20:05'),
(2914, 'Atrizin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/lpgIPqvV4XfanUzZwzfiDeFIdOwXb7S8UzNy62Y0.jpg\"]', 'uploads/products/thumbnail/9VUxVtdjSgtx7HXEetykIUZNT2QzmfaGyb7chd75.jpg', 'uploads/products/featured/6lbH3FWezowHpL0WwVBgaJseXmDyeanWlvpy1ywp.jpg', 'uploads/products/flash_deal/1fhDrwMPHa0XLJIwgtZHBoA1rt1aeiCOgaDMf6Sh.jpg', 'youtube', NULL, 'Atrizin', 1, 'Atrizin', 25.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"2.5mg\\/ml\",\"5mg\\/5ml\",\"10mg\"]}]', '[]', '{\"2.5mg\\/ml\":{\"price\":\"25\",\"sku\":\"A-2.5mg\\/ml\",\"qty\":999},\"5mg\\/5ml\":{\"price\":\"30\",\"sku\":\"A-5mg\\/5ml\",\"qty\":\"1000\"},\"10mg\":{\"price\":\"3\",\"sku\":\"A-10mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Atrizin', 'Atrizin', 'uploads/products/meta/QFqc5tJtqp3J70Rhhdzya3hmwRNPqAStBxoneryk.jpg', NULL, 'Atrizin-aZcmx', '2021-09-14 23:17:40', '2021-10-04 10:14:27'),
(2915, 'Axodin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/5YP5kQTnUa63IBtpcBNtbZRiHp4NzxC21TIqT40F.jpg\"]', 'uploads/products/thumbnail/oufzungxUBRH6fDt6Kf0BseIC0eBAM0ugfsZc7Ja.jpg', 'uploads/products/featured/OuNO4nukFo3RZl9lpyHdbkZFtKJaWbR7x5kowwS3.jpg', 'uploads/products/flash_deal/YCxS218uZgThGab6wRQeEbBFF8LaWwqKBsU1rwQn.jpg', 'youtube', NULL, 'Axodin', 1, 'Axodin', 55.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"30mg\\/5ml\",\"120mg\",\"60mg\",\"180mg\"]}]', '[]', '{\"30mg\\/5ml\":{\"price\":\"55\",\"sku\":\"A-30mg\\/5ml\",\"qty\":\"1000\"},\"120mg\":{\"price\":\"7\",\"sku\":\"A-120mg\",\"qty\":\"1000\"},\"60mg\":{\"price\":\"5\",\"sku\":\"A-60mg\",\"qty\":\"1000\"},\"180mg\":{\"price\":\"9\",\"sku\":\"A-180mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Axodin', 'Axodin', 'uploads/products/meta/yu7KPLxr2ddEe67Lw3FhJPlCyzJLnD5emm6GuBpk.jpg', NULL, 'Axodin-I6lmk', '2021-09-14 23:27:14', '2021-09-15 03:20:00'),
(2916, 'Azithrocin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/U4V0tILdxP9qICcdbRTyGjUAXlzA3YYk6Xvl1ixD.jpg\"]', 'uploads/products/thumbnail/VsWFI69QJOBfX24UlST6BSFPmj7Vsiw4tbEJo8ty.jpg', 'uploads/products/featured/QKA72GKNUEHGuV4UnQh74MZlpkR9qa1YF8K2kfUH.jpg', 'uploads/products/flash_deal/gjRLaxJDX4mRDIAwXjBI2Rl2Ks8SmLugQEbFfuk4.jpg', 'youtube', NULL, 'Azithrocin', 1, 'Azithrocin', 85.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mg tablet\",\"500mg injection\",\"250mg tablet\",\"250mg capsule\",\"200mg\\/5ml 15ml\",\"200mg\\/5ml 30ml\",\"200mg\\/5ml 185ml\"]}]', '[]', '{\"500mgtablet\":{\"price\":\"35\",\"sku\":\"A-500mgtablet\",\"qty\":\"1000\"},\"500mginjection\":{\"price\":\"460\",\"sku\":\"A-500mginjection\",\"qty\":\"1000\"},\"250mgtablet\":{\"price\":\"25\",\"sku\":\"A-250mgtablet\",\"qty\":\"1000\"},\"250mgcapsule\":{\"price\":\"25\",\"sku\":\"A-250mgcapsule\",\"qty\":\"1000\"},\"200mg\\/5ml15ml\":{\"price\":\"85\",\"sku\":\"A-200mg\\/5ml15ml\",\"qty\":\"1000\"},\"200mg\\/5ml30ml\":{\"price\":\"130\",\"sku\":\"A-200mg\\/5ml30ml\",\"qty\":\"1000\"},\"200mg\\/5ml185ml\":{\"price\":\"185\",\"sku\":\"A-200mg\\/5ml185ml\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Azithrocin', 'Azithrocin', 'uploads/products/meta/ibbu9eBIu7zTgDc3mdnJhCDkUiGbZM41evyCZGz8.jpg', NULL, 'Azithrocin-OeV1p', '2021-09-14 23:39:18', '2021-09-15 03:19:58'),
(2917, 'Azithrocin-IV', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/VwirCbFNlTzPGuDZONN6AZ8j7Do8k9U2PYFDK2i5.jpg\"]', 'uploads/products/thumbnail/4KYMAKNCwbRgwzBdaaT9J5ZVyooVXzSTljCKQS34.jpg', 'uploads/products/featured/76ZtzJxub0iBY5YAIMgbqxZGAY6Og5qpgSBibrOA.jpg', 'uploads/products/flash_deal/gIZODRDING0e8C1ZPSpXtkLliE3HQlsvnjD8rkBT.jpg', 'youtube', NULL, 'Azithrocin-IV', 1, 'Azithrocin-IV', 460.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mg\"]}]', '[]', '{\"500mg\":{\"price\":\"460\",\"sku\":\"A-500mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Azithrocin-IV', 'Azithrocin-IV', 'uploads/products/meta/cxPfNl4Vfzu36gZHKKdV93EtjfLao0O8MN25S3BR.jpg', NULL, 'Azithrocin-IV-273Xv', '2021-09-14 23:42:35', '2021-09-15 03:19:47'),
(2918, 'becoral-d', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/WYKWz3QtD2v0JhJQVuyH8ImtVHwlR9DpckXjPkI9.jpg\"]', 'uploads/products/thumbnail/8eqhRF8LtqqncuCKfwGJKXdF88LAWfG6m0yauNaL.jpg', 'uploads/products/featured/Wu5jbxqGi2wGfG3120YYAB0aAroDUZzyc1RMVJHZ.jpg', 'uploads/products/flash_deal/LGjWRFIxVX94ofEd2nMRhh8Q2D4IPqIcYBkjDiDb.jpg', 'youtube', NULL, 'becoral-d', 1, 'becoral-d', 10.00, NULL, '[{\"name\":\"choice_0\",\"title\":null,\"options\":[\"500mg+200IU\"]}]', '[]', '{\"500mg+200IU\":{\"price\":\"10\",\"sku\":\"b-500mg+200IU\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'becoral-d', 'becoral-d', 'uploads/products/meta/8jSnLxO2wrkCcgzpBoMXuzTCwpeCcrptyJIUPL0Q.jpg', NULL, 'becoral-d-XtwPJ', '2021-09-15 00:03:05', '2021-09-15 03:19:45'),
(2919, 'becoral-dx', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/c7gdwBdha7exAMeMT9jKJz4YswWimsLCxuPNNKx1.jpg\"]', 'uploads/products/thumbnail/gIZA7O0qtsTN747060C4RkX8Oyq08J9DgThEUAxY.jpg', 'uploads/products/featured/suJUezqKQVoAyKIXpEnriKeR99hTQwut6AqgdFkO.jpg', 'uploads/products/flash_deal/lrXMTHQjCaSFXmWoWHIiqr9Mw2wpmYKb7AzUqUtm.jpg', 'youtube', NULL, 'becoral-dx', 1, 'becoral-dx', 15.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"600mg+400IU\"]}]', '[]', '{\"600mg+400IU\":{\"price\":\"15\",\"sku\":\"b-600mg+400IU\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'becoral-dx', 'becoral-dx', 'uploads/products/meta/ymrTBVSLd8392JwSlLyyZvLHIRhOViv0NPjr7Eq0.jpg', NULL, 'becoral-dx-uAFAX', '2021-09-15 00:09:54', '2021-09-15 03:19:43'),
(2920, 'Bemsivir100', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/8Gj9CNaT40TcEnuQ9Ux4cmeuHESsQZDRgWGG2uH2.png\"]', 'uploads/products/thumbnail/E5kMBXcCVThfiNl5H7wEnVFiktRyJg2QHNQqRf3E.png', 'uploads/products/featured/CGch6VY1hoqIQZVHEFejS20D8fFlsZrjH6mrs4WR.png', 'uploads/products/flash_deal/NAec2NZhd2Cqq5mI8rSXqfWGdqRek0CS4mg96s5M.png', 'youtube', NULL, 'bemsivir100', 1, NULL, 4500.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg\\/ml\"]}]', '[]', '{\"5mg\\/ml\":{\"price\":\"4500\",\"sku\":\"B-5mg\\/ml\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'bemsivir100', 'bemsivir100', 'uploads/products/meta/JGYgepIpBbkKsIw7JYf4v5ZiqaHsWgdV6oDTPiVt.png', NULL, 'Bemsivir100-WHZMe', '2021-09-15 00:15:01', '2021-09-15 03:19:42'),
(2921, 'Betapro', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/qU5O5hypRqUXD4WVeUMqca3Evw0Cq1TqQx170CeV.jpg\"]', 'uploads/products/thumbnail/OsYz3oW5O7o9qH38ELcpnPah801VI5IYCBOuUedv.jpg', 'uploads/products/featured/kXNZLn3vbpQ1iJVQl0o15nu8rJqYXGPs0Kk5i12O.jpg', 'uploads/products/flash_deal/Gops1pbzzFYLtfW6Xk4rtWgabsi2i7xqCdTcrTKe.jpg', 'youtube', NULL, 'Betapro', 1, 'Betapro', 16.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"2.5mg\",\"5mg\"]}]', '[]', '{\"10mg\":{\"price\":\"16\",\"sku\":\"B-10mg\",\"qty\":\"10\"},\"2.5mg\":{\"price\":\"6.02\",\"sku\":\"B-2.5mg\",\"qty\":\"10\"},\"5mg\":{\"price\":\"10\",\"sku\":\"B-5mg\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Betapro', 'Betapro', 'uploads/products/meta/MH6aUhXmTrJlbjgU6s57Ifgpo37wtr87QcKxwvKi.jpg', NULL, 'Betapro-vaBWS', '2021-09-15 00:21:11', '2021-09-15 03:19:41'),
(2922, 'Bexidal', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/RICPx3GYZsRd3vjsTpFgawwCX8u27ThzXXk5nY8Q.jpg\"]', 'uploads/products/thumbnail/SDaEwZWJ75XKjVD7YxQIivKyhfiK03SuhVd2g1M2.jpg', 'uploads/products/featured/pm8JYrRtQjB1Bj83Q5zdPLrslrV3emr3osCjXnNN.jpg', 'uploads/products/flash_deal/MHYHdMXwjCBovOsC9H3lyE4gRMELggf13lxTV2t8.jpg', 'youtube', NULL, 'Bexidal', 1, 'Bexidal', 3.00, NULL, '[{\"name\":\"choice_0\",\"title\":null,\"options\":[\"50mg\"]}]', '[]', '{\"50mg\":{\"price\":\"3\",\"sku\":\"B-50mg\",\"qty\":\"1000\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bexidal', 'Bexidal', 'uploads/products/meta/7aRzT1g2Z4hYjEIsmylpV8VGUdTIxZqc8JuacBrK.jpg', NULL, 'Bexidal-rqIbA', '2021-09-15 00:42:03', '2021-09-15 03:19:34'),
(2923, 'Bexitrol-F', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/piMXS9ozzBVKkiwwBXJLKONtGdY9LnBcMxi6wQVy.jpg\"]', 'uploads/products/thumbnail/5VCpIpNSg1uYWpsDKtEki2JLQouMQGQyeYMaHH9f.jpg', 'uploads/products/featured/pl5OmIUXZsuDWLrCy4Of8BZvJeBRNNW1jfgnuuYA.jpg', 'uploads/products/flash_deal/0ESYrVt6GgGR0CkEIKDKH8JERxuzc3GCRPCvKMDM.jpg', 'youtube', NULL, 'Bexitrol-F', 1, 'Bexitrol-F', 795.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"25mcg+250mcg\",\"25mcg+50mcg\",\"50mcg+100mcg\",\"50mcg+250mcg\"]}]', '[]', '{\"25mcg+250mcg\":{\"price\":\"795\",\"sku\":\"B-25mcg+250mcg\",\"qty\":\"100\"},\"25mcg+50mcg\":{\"price\":\"520\",\"sku\":\"B-25mcg+50mcg\",\"qty\":\"100\"},\"50mcg+100mcg\":{\"price\":\"6.50\",\"sku\":\"B-50mcg+100mcg\",\"qty\":\"100\"},\"50mcg+250mcg\":{\"price\":\"12\",\"sku\":\"B-50mcg+250mcg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bexitrol-F', 'Bexitrol-F', 'uploads/products/meta/gEoBONwn3xUmsRn8DlDXeAqVNy0WHtrm6wrewdbu.jpg', NULL, 'Bexitrol-F-n4fw4', '2021-09-15 00:55:35', '2021-09-15 03:19:34'),
(2924, 'Billi', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/MyYLACxF4HOxVCBvZk69ugdRWVyM1k5v0ZaKrDC9.jpg\"]', 'uploads/products/thumbnail/UQP53FfZK8A2sZcWQEoSKVNtq02FKPXRAFIszM9L.jpg', 'uploads/products/featured/c4VLYtbne7QCSdjRBNLctvYWuzlwv6mLc0kXaFYz.jpg', 'uploads/products/flash_deal/nPxsvTCfgABR0UvmUbhUGcbABcFkcOKlc3Fkm2B8.jpg', 'youtube', NULL, 'Billi', 1, 'Billi', 140.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"12.5mg\",\"20mg\"]}]', '[]', '{\"12.5mg\":{\"price\":\"140\",\"sku\":\"B-12.5mg\",\"qty\":\"100\"},\"20mg\":{\"price\":\"15\",\"sku\":\"B-20mg\",\"qty\":\"15\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Billi', 'Billi', 'uploads/products/meta/i12nQfkCO3xAmrZdpm13viH8ZtkwhoyDKZmaKR5J.jpg', NULL, 'Billi-zBR18', '2021-09-15 01:02:23', '2021-09-15 03:19:22'),
(2925, 'Bizoran', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/DGX4bRCnm4P89ZylGjnxRUCfB3gy63uOTH4R0LWV.jpg\"]', 'uploads/products/thumbnail/HCdbkyvltjYrnZJaeFdZtwGSxBC3fMwNKjNCm5sU.jpg', 'uploads/products/featured/OUR6irXPFT4HuFyDW0wc6rGyzeqtETjZuFE9acko.jpg', 'uploads/products/flash_deal/bXAVyvWervJKNLweFBpwxlfx899c865HYKcg7xfQ.jpg', 'youtube', NULL, 'Bizoran', 1, 'Bizoran', 15.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg+20mg\",\"5mg+40mg\"]}]', '[]', '{\"5mg+20mg\":{\"price\":\"15\",\"sku\":\"B-5mg+20mg\",\"qty\":\"100\"},\"5mg+40mg\":{\"price\":\"22\",\"sku\":\"B-5mg+40mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Bizoran', 'Bizoran', 'uploads/products/meta/fyWxniLTEmAWb0aFl5MqkEm5axGLqiZqK4NY12Sn.jpg', NULL, 'Bizoran-u9FyT', '2021-09-15 01:06:08', '2021-09-15 03:19:19'),
(2926, 'Cardopril', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/w4YU7tdOtDJShjmtwGV2VxE09ftJX2tAXnpWpqmt.jpg\"]', 'uploads/products/thumbnail/KSWHmC6Ux3hcm7FAupabNLnAauSkWyp0STHTV4gS.jpg', 'uploads/products/featured/Ah1zHSft6xmkHzemOleaYwWoyofw39aesdQdReej.jpg', 'uploads/products/flash_deal/UOIgWZRxwT2nNs9jLyhMunkmy4M4IKz7RSyG1vM0.jpg', 'youtube', NULL, 'Cardopril', 1, 'Cardopril', 3.01, NULL, '[{\"name\":\"choice_0\",\"title\":null,\"options\":[\"25mg\",\"50mg\"]}]', '[]', '{\"25mg\":{\"price\":\"3.01\",\"sku\":\"C-25mg\",\"qty\":\"100\"},\"50mg\":{\"price\":\"6\",\"sku\":\"C-50mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Cardopril', 'Cardopril', 'uploads/products/meta/jG0Q7rSknI47laFvZ4jyfAGT8cFo0RJTjP8fS7jb.jpg', NULL, 'Cardopril-Erz8R', '2021-09-15 01:23:41', '2021-09-15 03:19:17'),
(2927, 'Carnovas', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/faOC6d9BiWOaSWFIe5kaWfsSzOeSP0Zg52l0Un3E.jpg\"]', 'uploads/products/thumbnail/lBX3ZR9ESBLCg0NZmHxsnxOyX4eapVDRKvtDtIF6.jpg', 'uploads/products/featured/fwBxa0dnnph5odZcstiOclmxBxrz1Ci6RDBIiDUU.jpg', 'uploads/products/flash_deal/PpfNBv3yfbuceHXB8IwivVLlMxOi8wGOv3EczUae.jpg', 'youtube', NULL, 'Carnovas', 1, 'Carnovas', 15.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"2.5mg\",\"10mg\",\"5mg\"]}]', '[]', '{\"2.5mg\":{\"price\":\"7\",\"sku\":\"C-2.5mg\",\"qty\":\"100\"},\"10mg\":{\"price\":\"15\",\"sku\":\"C-10mg\",\"qty\":\"100\"},\"5mg\":{\"price\":\"10\",\"sku\":\"C-5mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Carnovas', 'Carnovas', 'uploads/products/meta/t0tJ4QnQfVbycSPhvEog9aBzkB851greqNdFMmC4.jpg', NULL, 'Carnovas-z8ysd', '2021-09-15 03:30:54', '2021-09-15 03:48:33'),
(2928, 'Carnovas-hz', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/N1Dr4LATE0nRNk6gx0AqXInTi07c5afjYXTSDUnN.jpg\"]', 'uploads/products/thumbnail/VbNlb45t6BwzkSO1Rr7LcGZh23nEFzdD6MaimAHl.jpg', 'uploads/products/featured/RlmwosTaP33EaOYofHjEVLbGTXPkaqonSznkN64M.jpg', 'uploads/products/flash_deal/GaaUGohHY3qqanIf0wSbw59GSejxa9pihLhl4HZc.jpg', 'youtube', NULL, 'Carnovas-hz', 1, 'Carnovas-hz', 12.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5 mg + 12.5 mg\"]}]', '[]', '{\"5mg+12.5mg\":{\"price\":\"12\",\"sku\":\"C-5mg+12.5mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Carnovas-hz', 'Carnovas-hz', 'uploads/products/meta/aVZFJRlzDD2IHip79ZfW6227e49rNvL543g8U0I2.jpg', NULL, 'Carnovas-hz-K3f6Z', '2021-09-15 03:34:35', '2021-09-15 03:48:31'),
(2929, 'Alisa Tablet ( Garlitab )', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/S6RjTGMCH138h6N2ny3bOiplWLkYo27tIc3QZoWo.jpg\"]', 'uploads/products/thumbnail/2XW2QtNn9Ncl6Fjr3Lq76DtYJEctXt1uIdYYuXJk.jpg', 'uploads/products/featured/TCRcYsq5rJPki9Ls8FjRsFaVEy3o6AbC0rVJPFBF.jpg', 'uploads/products/flash_deal/KsXSRsGrDayK1Ujo8Gl2aCc7trje2R5G8T5PLEuN.jpg', 'youtube', NULL, 'Alisa Tablet® ( Garlitab )', 1, 'Garlitab', 100.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"Flavor\",\"options\":[\"Garlitab\"]}]', '[]', '{\"Garlitab\":{\"price\":\"100\",\"sku\":\"AT(G)-Garlitab\",\"qty\":\"0\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Alisa Tablet® ( Garlitab )', 'Alisa Tablet® ( Garlitab )', 'uploads/products/meta/VomibkJsPkYrHbbqy6hpeGxMqq2c4YinIWgVPSlp.jpg', NULL, 'Alisa-Tablet--Garlitab--qkCdp', '2021-09-15 18:15:36', '2021-09-22 22:17:32'),
(2930, 'Arq. Ajwain', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/6NhxWWC6PW70YcT09BYx5dPbdXJrOxI1mOsPI1uI.jpg\"]', 'uploads/products/thumbnail/oiP8m7qTtI40nT2rPOrUT2VmWO8miaPcdcgxcfJs.jpg', 'uploads/products/featured/QX4SH1NgMxU3uxsQdup0nbBXlzx1ufHNDu54igJX.jpg', 'uploads/products/flash_deal/LahjyPRGKocLsMZJcuU3jodmpkOFA0llva8ekcDl.jpg', 'youtube', NULL, 'Arq. Ajwain', 1, NULL, 100.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"450 ml\"]}]', '[]', '{\"450ml\":{\"price\":\"100\",\"sku\":\"AA-450ml\",\"qty\":98}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Arq. Ajwain 450 ml', 'Arq. Ajwain 450 ml', 'uploads/products/meta/4vznFbOKLrDuWF6mVcPLWwP016tCeXGihAn8n2NN.jpg', NULL, 'Arq-Ajwain-sRoJn', '2021-09-15 18:21:46', '2021-12-22 15:54:03'),
(2931, 'Arq. Badiyan', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/7YGUX08jaYbII3SRaQ0oIRJFKMaryirm4Y43S86g.jpg\"]', 'uploads/products/thumbnail/KAuwYVtZ6CIrVSj9Xt502t5xvmQ2ffuJ4Wz7bUvY.jpg', 'uploads/products/featured/wZsPsNoZVihF27DRBK5Yy8O2wl6sAtK6PNtfVA46.jpg', 'uploads/products/flash_deal/OccjSIqHY7aKhBCc1ljVkA0yhAFb7nxvZt3GbFdg.jpg', 'youtube', NULL, 'Arq. Badiyan', 1, 'Arq. Badiyan', 110.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"450ml\"]}]', '[]', '{\"450ml\":{\"price\":\"110\",\"sku\":\"AB-450ml\",\"qty\":96}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Arq. Badiyan', 'Arq. Badiyan', 'uploads/products/meta/ryQ4iRdGKorCnEYm0AszjO5EYAknnqKbdS0dqifR.jpg', NULL, 'Arq-Badiyan-51X0e', '2021-09-15 18:25:41', '2021-12-22 10:20:14'),
(2932, 'Arq. Faulin', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/NQfpVtNaKhREyOwAX98FYjuQa8RRw056OwSswpja.jpg\"]', 'uploads/products/thumbnail/3y74APjlJdFOa9Gg9S9a9vlQkjOxgxS68q2WtQej.jpg', 'uploads/products/featured/imOcEUuuaee5unYPCi4znnxGxw2fgbvPALR6SUDj.jpg', 'uploads/products/flash_deal/bkxc6eegBZ7HD1KVy6wMvCpetpfNFBcPChsIZXWz.jpg', 'youtube', NULL, 'Arq. Faulin', 1, 'Arq. Faulin', 140.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"450 ml\"]}]', '[]', '{\"450ml\":{\"price\":\"140\",\"sku\":\"AF-450ml\",\"qty\":97}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 3, 'Arq. Faulin', 'Arq. Faulin', 'uploads/products/meta/SlGmoKNqGVB5IapowQQXvYqu1r43mGo6CJZXJ14l.jpg', NULL, 'Arq-Faulin-HcvVn', '2021-09-15 18:29:51', '2021-12-22 15:51:40'),
(2933, 'Arq. Gaozaban', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/touhKzZWO5MCV4oGT6hzUSMmTHTBG3Z88PaeWKwg.jpg\"]', 'uploads/products/thumbnail/smPi2auW4cP31YlDT2auoCNLyqyjRnTIFTuLJUzz.jpg', 'uploads/products/featured/B8uG9b3TuobuN6scBjn96aL8NSVWaMMSllv5wsg4.jpg', 'uploads/products/flash_deal/lnPbcT8D1NemvulG4S4lQ9xXf9qjU504uPIBpfaR.jpg', 'youtube', NULL, 'Arq. Gaozaban', 1, 'Arq. Gaozaban', 150.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"450 ml\"]}]', '[]', '{\"450ml\":{\"price\":\"150\",\"sku\":\"AG-450ml\",\"qty\":96}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 4, 'Arq. Gaozaban', 'Arq. Gaozaban', 'uploads/products/meta/QyAcAtpvY9t3p0sJePjHYMsr6EisuVajap8UCFG9.jpg', NULL, 'Arq-Gaozaban-lljdw', '2021-09-15 18:32:22', '2021-12-22 15:52:48'),
(2934, 'Arq. Mako', 'admin', 65, 26, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/PZ0Pyw2loKr26SGyV1GMTuWJPk4IYjWerVTQGpdo.jpg\"]', 'uploads/products/thumbnail/Q9z5afsSeVYDEoHI258mIor25XxsHkXnoPfeofJM.jpg', 'uploads/products/featured/TdIAsiwajkvXgKcdmzgckVAjUOLw6MjMTVY0zQ1T.jpg', 'uploads/products/flash_deal/2asKqBSzoQJKMHmxj3B846XHf9at6IETDiPPuijq.jpg', 'youtube', NULL, 'Arq. Mako', 1, 'Arq. Mako', 120.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"450 ml\"]}]', '[]', '{\"450ml\":{\"price\":\"120\",\"sku\":\"AM-450ml\",\"qty\":8}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Arq. Mako', 'Arq. Mako', 'uploads/products/meta/9Rs9HuuOqbKIm9BweFlpBZEYbQuRTpnPiswdhhgf.jpg', NULL, 'Arq-Mako-BYL2j', '2021-09-15 18:36:31', '2021-12-22 15:10:24'),
(2935, 'Hamdard Chyabanprash', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/xuOysK1iNg5c8zcGX6C33TEQviDBK4dunWodkvyG.jpg\"]', 'uploads/products/thumbnail/WVUcDLgDaqgkYuLFhkee8iYJZaRGfIOgLxJZkVRd.jpg', 'uploads/products/featured/L89tdfjNpQVezEtasb3xvfo4o5LRVJLfzxUbf0bT.jpg', 'uploads/products/flash_deal/RDMDrQODhX6F3Fpr6Hvb4U7LDHN33ehAC02hJiDI.jpg', 'youtube', NULL, 'Hamdard Chyabanprash', 1, 'Hamdard Chyabanprash', 250.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"250 gm\"]}]', '[]', '{\"250gm\":{\"price\":\"250\",\"sku\":\"HC-250gm\",\"qty\":\"94\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Hamdard Chyabanprash', 'Hamdard Chyabanprash', 'uploads/products/meta/sF4UQt1EUnKQO5istamLxSGEqkkigbYXid0JeKhi.jpg', NULL, 'Hamdard-Chyabanprash-bZ8V8', '2021-09-15 19:01:36', '2021-09-22 21:52:52'),
(2936, 'Hamdard Laooq Sapistan', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/PhIACE53SHk6wYUVuFfi4isM3x50MVoiuDDHyjDC.jpg\"]', 'uploads/products/thumbnail/o24NLRyvTr5ES8CxK9p9iIMAw8CBdXvFypoSIiJW.jpg', 'uploads/products/featured/ytuC7wWldM182YFhxpCHspeBMxebWSKqp2cPalpy.jpg', 'uploads/products/flash_deal/Ac05LpTftQDNOqbugKfguugmLU57xyyPZvnBDYLt.jpg', 'youtube', NULL, 'Hamdard Laooq Sapistan', 1, 'Hamdard Laooq Sapistan', 120.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"100\"]}]', '[]', '{\"100\":{\"price\":\"120\",\"sku\":\"HLS-100\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Hamdard Laooq Sapistan', 'Hamdard Laooq Sapistan', 'uploads/products/meta/4Ohy15MUASAaeJoruASfyz1n0D2YEGmqa1E6Oo2d.jpg', NULL, 'Hamdard-Laooq-Sapistan-Rij0a', '2021-09-15 19:04:50', '2021-09-22 21:51:17'),
(2937, 'Hamdard Lubub Kabir', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/sYr7IgDRRUSJt6dpIJkRBxGXjk1oqyTFx4TqDDXm.jpg\"]', 'uploads/products/thumbnail/u7K6TulBu44IEX8eE7YmgNwDq4iZNmK63xSHOqWP.jpg', 'uploads/products/featured/yidHJIOEAmq9anYnTYeJa2e6cVIYkaMZMBCF23Fm.jpg', 'uploads/products/flash_deal/UUFiTrWUAjT4LAQ73e1k1x8S4Z142XlgkcYQbihT.jpg', 'youtube', NULL, 'Hamdard Lubub Kabir', 1, 'Hamdard Lubub Kabir', 750.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"100gm\"]}]', '[]', '{\"100gm\":{\"price\":\"750\",\"sku\":\"HLK-100gm\",\"qty\":95}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 5, 'Hamdard Lubub Kabir', 'Hamdard Lubub Kabir', 'uploads/products/meta/1PFju4ZJb3WKUMXXkxrjHaoodxYw5dhMlSHHFgEV.jpg', NULL, 'Hamdard-Lubub-Kabir-YMUu0', '2021-09-15 19:09:07', '2021-10-10 12:49:51'),
(2938, 'Hamdard Majoon Arade Khurma', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/w4iZu47ZjdkrH51rl8y6P96IWoKzoi2vHyLK9xa7.jpg\"]', 'uploads/products/thumbnail/VVgkybgpLvcO7FjBGudQSVCRBs0C2p0SNYruyMGV.jpg', 'uploads/products/featured/yRpWrdYY4Ci5IaLyeJTvZQhyyYyqjr5Ue75JrHea.jpg', 'uploads/products/flash_deal/tLfebZcSFCrz6nnTrGCP74zODDTUA052AmPZyvjk.jpg', 'youtube', NULL, 'Hamdard Majoon Arade Khurma', 1, 'Hamdard Majoon Arade Khurma', 130.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"100 gm\"]}]', '[]', '{\"100gm\":{\"price\":\"130\",\"sku\":\"HMAK-100gm\",\"qty\":93}}', 1, 1, 1, 0, 'g', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 5, 'Hamdard Majoon Arade Khurma', 'Hamdard Majoon Arade Khurma', 'uploads/products/meta/2xIjKZB9lDFWXdWiZjBbFdmJVpWMZI6DGjGYRIBj.jpg', NULL, 'Hamdard-Majoon-Arade-Khurma-tmBhP', '2021-09-15 19:16:51', '2021-12-22 15:49:32'),
(2939, 'Hamdard Majoon Dabeedul Ward', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/3JqPULYKV5AD7EgccMmOIMpvSAAQjWVxSaIKwQv6.jpg\"]', 'uploads/products/thumbnail/k7fVWfaaMNvTIClx76fEgCgfr7rSPVlg8CSeVRdo.jpg', 'uploads/products/featured/bHNX7IOy6anMpQxSuYhHNZv2nT8BtgKlFVxvwV3d.jpg', 'uploads/products/flash_deal/YcfHS1iqkj4dEN3rIeIBbRkhP440vnri58v473xL.jpg', 'youtube', NULL, 'Hamdard Majoon Dabeedul Ward', 1, 'Hamdard Majoon Dabeedul Ward', 220.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"80 gm\"]}]', '[]', '{\"80gm\":{\"price\":\"220\",\"sku\":\"HMDW-80gm\",\"qty\":87}}', 1, 1, 1, 0, 'g', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 7, 'Hamdard Majoon Dabeedul Ward', 'Hamdard Majoon Dabeedul Ward', 'uploads/products/meta/RFHbkwv0zn2BLV5noezBFncHgg8UDf2LsStgJo5I.jpg', NULL, 'Hamdard-Majoon-Dabeedul-Ward-posD3', '2021-09-15 19:23:35', '2022-03-08 09:13:30'),
(2940, 'Hamdard Majoon Sohagsoonth', 'admin', 65, 27, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/6wnzya5S7IzZ3pxQKjuuXxR95zkOu3s9MZJaWrsX.jpg\"]', 'uploads/products/thumbnail/Z1vy6FtBWIUka6Je8x1yxwVtu35AXfgzZuasut6s.jpg', 'uploads/products/featured/23DS1TiAcEUHkGZa5GRZR9dfLJUAiPcEmakrYBcG.jpg', 'uploads/products/flash_deal/BaDzcsmjbjPReyE6y6HQEQ9C2RwYOMMSX5nxZGl2.jpg', 'youtube', NULL, 'Hamdard Majoon Sohagsoonth', 1, 'Hamdard Majoon Sohagsoonth', 120.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"100 gm\"]}]', '[]', '{\"100gm\":{\"price\":\"120\",\"sku\":\"HMS-100gm\",\"qty\":\"95\"}}', 1, 1, 1, 0, 'g', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 2, 'Hamdard Majoon Sohagsoonth', 'Hamdard Majoon Sohagsoonth', 'uploads/products/meta/SAO6Ka1r5RhlttkkvLB36O9DCqwK7LYQqNrhJJQd.jpg', NULL, 'Hamdard-Majoon-Sohagsoonth-4H9La', '2021-09-15 19:26:39', '2021-09-22 21:41:44'),
(2941, 'KN95 Face Mask 5 Layers Protection', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/KFtW1MlCJtpppve2vp6OxLHZrko0RARJCDH9rf8M.jpg\"]', 'uploads/products/thumbnail/t9VxOc0lNNLvhVoJpMGmfxEByQpiko69Hz7E8Sbm.jpg', 'uploads/products/featured/O5YzyrLyftlaxJOkfAcDIYJe2qkCBOpxOC15gavK.jpg', 'uploads/products/flash_deal/FDOICvXQdAuLsH5GZAK1ZfmL5MoRpFzl3THNAZLe.jpg', 'youtube', NULL, 'KN95 Face Mask 5 Layers Protection', 0, 'KN95 Face Mask 5 Layers Protection', 80.00, NULL, '[]', '[\"#FFFFFF\"]', '{\"White\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'KN95 Face Mask 5 Layers Protection', 'KN95 Face Mask 5 Layers Protection', 'uploads/products/meta/tuHBFvnmAL2UKDAQm6HWn5XGTQEZmhY3tjsnXBpo.jpg', NULL, 'KN95-Face-Mask-5-Layers-Protection-dge3s', '2021-09-15 19:55:32', '2021-09-22 21:38:59'),
(2942, 'Surgical Mask 3 Layers', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/wTx12CiVrtl0JM6dVgizTTqXw9DTnGYRTXtf01bk.jpg\"]', 'uploads/products/thumbnail/KCJdrZP0i2tnHbrsEdrh2NcuFiLG59EabtgqcvB9.jpg', 'uploads/products/featured/xjCEJfMuO4wGnGmNAAvcD7U7Sc7h6adhpdQHHo92.jpg', 'uploads/products/flash_deal/5rxz6OPzcq0rAORTglWm9Ual6bMZXIIaHe3DcQnX.jpg', 'youtube', NULL, 'Surgical Mask 3 Layers', 1, 'Surgical Mask 3 Layers', 400.00, NULL, '[]', '[\"#FFFFFF\"]', '{\"White\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Surgical Mask 3 Layers', 'Surgical Mask 3 Layers', 'uploads/products/meta/grgJPUJSvTukw8ukbas59WQXcxQiZ0gaJv6qBW1i.jpg', NULL, 'Surgical-Mask-3-Layers-9uwb1', '2021-09-15 20:04:00', '2021-09-22 21:37:31'),
(2943, 'Alcohol Pad', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/osOafMTWO2Kqy3DgxpmK4Ye91iS8gFRCqgBSmQKp.jpg\"]', 'uploads/products/thumbnail/N3Fpl9uKnoYOhrBwnWzAS5My9BBGSiBWzcnjjZWp.jpg', 'uploads/products/featured/yzcWzMDOfavBShWJLsu6aQTFVqT5FLvdOxOLLZiT.jpg', 'uploads/products/flash_deal/Nzam83nBm1jJahlFIHBBo7xA9Rp5aFxJSxu41bX9.jpg', 'youtube', NULL, 'Alcohol Pad', 1, 'Alcohol Pad', 150.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"100pcs\"]}]', '[]', '{\"100pcs\":{\"price\":\"150\",\"sku\":\"AP-100pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Alcohol Pad', 'Alcohol Pad', 'uploads/products/meta/lNJy7Fsw0AaU0IZSWMXTTEHZnkNoDDawKnd1BB4n.jpg', NULL, 'Alcohol-Pad-opOEI', '2021-09-15 20:08:29', '2021-09-22 21:23:42'),
(2944, 'Mask Venus V90 Safety Face Mask', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/hcNcKuOFBmVM7cw7WmhKXvUYEwEa86pmix1bgtIN.jpg\"]', 'uploads/products/thumbnail/fPxqA9MWsDaPdRavmHqAsMadMoLG6KtIAvBEJD3H.jpg', 'uploads/products/featured/H8XNIZdJM6CTQUV9vLgjQf5kgcoGEePcABKoQJ1m.jpg', 'uploads/products/flash_deal/fSlT1txKWOkuL9bmTLk5ugLCuOfFPmQc8YleXEwU.jpg', 'youtube', NULL, 'Mask Venus V90 Safety Face Mask', 0, 'Mask Venus V90 Safety Face Mask', 300.00, NULL, '[]', '[\"#808080\"]', '{\"Gray\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Mask Venus V90 Safety Face Mask', 'Mask Venus V90 Safety Face Mask', 'uploads/products/meta/rArmrofFZWGcM7lpDbyRF8Zr6OvslRgJ8l95UWpz.jpg', NULL, 'Mask-Venus-V90-Safety-Face-Mask-FZsHF', '2021-09-15 20:12:27', '2021-09-22 21:22:10'),
(2945, 'Sepnil Hand Sanitizer', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/CQQzTBWwRLtqxE0pTZopCDGqY01UipqRLxzOHyiK.jpg\"]', 'uploads/products/thumbnail/H5IIwo3TuvJIL6UlITZUP1wVx9TwGG4ECcmyLqx2.jpg', 'uploads/products/featured/ZFoVISeDRBvWwPA9d1zuK460Gg2kXAFAJONLVh3U.jpg', 'uploads/products/flash_deal/D4DJQVceeKDSvvkpVMH4hQeWnpX17lNYsS0stgBv.jpg', 'youtube', NULL, 'Sepnil Hand Sanitizer', 0, 'Sepnil Hand Sanitizer', 225.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"200 ml\"]}]', '[]', '{\"200ml\":{\"price\":\"225\",\"sku\":\"SHS-200ml\",\"qty\":\"90\"}}', 1, 1, 1, 0, 'g', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 3, 'Sepnil Hand Sanitizer', 'Sepnil Hand Sanitizer', 'uploads/products/meta/63k9edWWu5PWRHhrt0IExTkBHQEdT09PU2azb5cW.jpg', NULL, 'Sepnil-Hand-Sanitizer-HH2pC', '2021-09-15 20:19:01', '2021-09-22 21:19:57'),
(2946, 'Face Shield Glass Type-Smart Protective Safety', 'admin', 65, 28, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/udQg1EkXJGfL3WIPNikaLIxR2pVgbVYIeR6YVAcx.jpg\"]', 'uploads/products/thumbnail/Hu4I9FoMSt8cvktbHZbTqXHCFAXZoacxUZuhIbex.jpg', 'uploads/products/featured/hhnDQT7nQPoUoOl8AHopeWIeHpC84siUqLCq08HS.jpg', 'uploads/products/flash_deal/7R6yay0cHo6hkMpqxJePDXqlB0GNR4hLdgBLvy6Q.jpg', 'youtube', NULL, 'Face Shield Glass Type-Smart Protective Safety', 1, 'Face Shield Glass Type-Smart Protective Safety', 200.00, NULL, '[]', '[]', '[]', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Face Shield Glass Type-Smart Protective Safety', 'Face Shield Glass Type-Smart Protective Safety', 'uploads/products/meta/M3Wu0fPNtasFF2NpeUGGhESNzcrTdJ65ZXUQT8kv.jpg', NULL, 'Face-Shield-Glass-Type-Smart-Protective-Safety-hda7F', '2021-09-15 20:19:39', '2021-09-22 21:18:41'),
(2947, 'Senora Confidence Regular Flow', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/E7mx0aAwOAKEgjdv2LRiqhZdL05qd2QItPZgz25W.jpg\"]', 'uploads/products/thumbnail/cr0IMGdGdCD5kG4N66pZBXZ8jevVIgh71uJYYIr8.jpg', 'uploads/products/featured/wrv9AUB5BJzLtCuvw6pjanhxpZ67MyWi1FXChYBo.jpg', 'uploads/products/flash_deal/ooy4BoqEYChMQJ4TJ0uHDcy2pSWPGG10iw7YYz9I.jpg', 'youtube', NULL, 'Senora Confidence Regular Flow', 0, 'Senora Confidence Regular Flow', 120.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"10pcs\"]}]', '[]', '{\"10pcs\":{\"price\":\"120\",\"sku\":\"SCRF-10pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Senora Confidence Regular Flow', 'Senora Confidence Regular Flow', 'uploads/products/meta/9dav8fpWNhsXtEyQ4CYY8emNtxiYFDEHihtGCa4v.jpg', NULL, 'Senora-Confidence-Regular-Flow-Qj4H9', '2021-09-15 21:37:58', '2021-09-22 03:56:49'),
(2948, 'Femicon', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/EI8rtlEfx32wFUz1yw8CF9w37OyrgDSuMK8lREGW.jpg\"]', 'uploads/products/thumbnail/nuWSHcd53aJwgr4zPPI63YHoaaLcdEzZsdtqk6cV.jpg', 'uploads/products/featured/PnRtlFnHAaKcSfE8t3T8kpndmzdAsiwgTOHlxdmv.jpg', 'uploads/products/flash_deal/9YRSCK2MFyqPX24auoxQMx2RQfUglwRrr9lNH5vx.jpg', 'youtube', NULL, 'Femicon', 1, 'Femicon', 35.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"0.03+75+0.30mg\"]}]', '[]', '{\"0.03+75+0.30mg\":{\"price\":\"35\",\"sku\":\"F-0.03+75+0.30mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Femicon', 'Femicon', 'uploads/products/meta/cxhdmfFZiv3LbCxz6K6MvtNaBHFDOgOvW63sclFR.jpg', NULL, 'Femicon-WZ8KI', '2021-09-15 21:41:45', '2021-09-22 03:55:09'),
(2949, 'Freedom Pregnancy Test Strip', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/HBQ2feGdn9EvTsb3Wn8eb0HXFl3yrenbX92zO4Lq.jpg\"]', 'uploads/products/thumbnail/od0CGyrn7CStAzg1NYyDorbKeJpvybHQfb8JltxE.jpg', 'uploads/products/featured/a5uqslOec1WbKvSzGoGIrm6Nn1Kj72fx8mgrOZj4.jpg', 'uploads/products/flash_deal/aFPve7eaag0qbTE4V3H09T5ctMFFh41mY6i4cB4t.jpg', 'youtube', NULL, 'Freedom Pregnancy Test Strip', 1, 'Freedom Pregnancy Test Strip', 20.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"1 test\"]}]', '[]', '{\"1test\":{\"price\":\"20\",\"sku\":\"FPTS-1test\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Freedom Pregnancy Test Strip', 'Freedom Pregnancy Test Strip', 'uploads/products/meta/jQv4Bqd9Ywt1JMAKUnzOYJK9lAS4TZAU9WiK1TqI.jpg', NULL, 'Freedom-Pregnancy-Test-Strip-Og2hW', '2021-09-15 21:46:36', '2021-09-22 03:53:36'),
(2950, 'Joya Regular Wings', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/BecvkICsntc3If04OrHAUdSle0ltxW9ZFuKzvrnr.jpg\"]', 'uploads/products/thumbnail/BaesHd0bgZr1Jp6CPSRAfVsBIt85MqjouOyovNlE.jpg', 'uploads/products/featured/xQ0SB244LRnq7GF6G4GJTYn7VEG3uvg8S77zli6R.jpg', 'uploads/products/flash_deal/OrytFmpAfH4K7CqbwfVTExdtkhRSNFxChLuMSscG.jpg', 'youtube', NULL, 'Joya Regular Wings', 0, 'Joya Regular Wings', 70.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"10pcs\"]}]', '[]', '{\"10pcs\":{\"price\":\"70\",\"sku\":\"JRW-10pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Joya Regular Wings', 'Joya Regular Wings', 'uploads/products/meta/0y31eWxThZT6MPDsZqJze3ERj1ZegifZ28ocDG8s.jpg', NULL, 'Joya-Regular-Wings-tj0Ih', '2021-09-15 21:53:20', '2021-09-22 03:52:17'),
(2951, 'Savlon Freedom Sanitary Napkin', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/Thva27GQQz6nxDTJzZOUZOlZhlOkQa4IbRf2ytiw.jpg\"]', 'uploads/products/thumbnail/3q77x0RFJqbZdrmTsNpFw1FzLDBwY7Um7Is0CiYs.jpg', 'uploads/products/featured/IIouEFlA6hqq3xrWa3GzSeVFqtSYc729NNTNGwBg.jpg', 'uploads/products/flash_deal/TzdQB8NDB9IMK5q81n9q87mAjsrtBuKEMuRpBErE.jpg', 'youtube', NULL, 'Savlon Freedom Sanitary Napkin', 0, 'Savlon Freedom Sanitary Napkin', 200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"16 pcs\"]}]', '[]', '{\"16pcs\":{\"price\":\"200\",\"sku\":\"SFSN-16pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Savlon Freedom Sanitary Napkin', 'Savlon Freedom Sanitary Napkin', 'uploads/products/meta/pfYGTJ2qzu1Wd21uQBUaOSbqzNYx2GHmTXE0WStZ.jpg', NULL, 'Savlon-Freedom-Sanitary-Napkin-XnpPb', '2021-09-15 22:01:16', '2021-09-22 03:48:58'),
(2952, 'Savlon Freedom Sanitary Napkin', 'admin', 65, 29, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/9x2vMzhigYgpSUJ5F7ErnHt8wlSts2RQKLkCOT2f.jpg\"]', 'uploads/products/thumbnail/35jE5RPTCt7ONjF3w3zopg4kGq53ZnWbjS4xqsSG.jpg', 'uploads/products/featured/HomZdgNSVIwwJ5WlmJKrj4RnZIfH3IA4BDU9FLt8.jpg', 'uploads/products/flash_deal/f6ny4bUgyuruhGv9hMlqRCbGO1PkTTwu35Gh77tf.jpg', 'youtube', NULL, 'Savlon Freedom Sanitary Napkin', 0, 'Savlon Freedom Sanitary Napkin', 200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"16pcs\"]}]', '[]', '{\"16pcs\":{\"price\":\"200\",\"sku\":\"SFSN-16pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Savlon Freedom Sanitary Napkin', 'Savlon Freedom Sanitary Napkin', 'uploads/products/meta/oefG0FwdRniGIZJ1jnJqTTVYuQhOiZeKBtnozvna.jpg', NULL, 'Savlon-Freedom-Sanitary-Napkin-hehxi', '2021-09-15 22:07:14', '2021-09-22 03:47:13'),
(2953, 'Zerocal Sugar Substitute Tablet', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/bNdu0ZkWUDhSLtqlmbFihnRFYIY5paiHkdTcsPvv.jpg\"]', 'uploads/products/thumbnail/E49s4lI5aagME9dPsyORpehPPKOYGyCCkDxE9bLM.jpg', 'uploads/products/featured/9nwjTX27qF6CAQ8zxHvhC3HS4SEzTaDu3IqDxEWY.jpg', 'uploads/products/flash_deal/8TP8aPWu3GB3jvMgRKRZAXnXSl9UUrJykwb7K2s8.jpg', 'youtube', NULL, 'Zerocal Sugar Substitute Tablet', 1, 'Zerocal Sugar Substitute Tablet', 130.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"6.5mg\"]}]', '[]', '{\"6.5mg\":{\"price\":\"130\",\"sku\":\"ZSST-6.5mg\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Zerocal Sugar Substitute Tablet', 'Zerocal Sugar Substitute Tablet', 'uploads/products/meta/prnpds0UozfXyt4Tpiwj1YSp1dTB49TeGZUMiL2k.jpg', NULL, 'Zerocal-Sugar-Substitute-Tablet-mTL09', '2021-09-15 22:53:09', '2021-09-22 03:45:40'),
(2954, 'Zerocal 75s', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/SglBA2uUqVkdeSbxsi09zEg4HM2jNdXJImQP1gY9.jpg\"]', 'uploads/products/thumbnail/Lgxg8IAef7IskF5HEJN8SgUJvHfTMiARDUmriPmR.jpg', 'uploads/products/featured/57zxoMWUMTePH8FStgkw2LHFmnLMNXMh8FEVPvZB.jpg', 'uploads/products/flash_deal/7JTv55kxJYzTmnheRLjG0BZNPQeuBPHBbBgzYKg3.jpg', 'youtube', NULL, 'Zerocal 75s', 1, 'Zerocal 75s', 200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"75pc\"]}]', '[]', '{\"75pc\":{\"price\":\"200\",\"sku\":\"Z7-75pc\",\"qty\":\"6\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 1, 'Zerocal 75s', 'Zerocal 75s', 'uploads/products/meta/Z234RF8tEk5JCw2JCyZW5wF8Fybu87Tq7TfLvkfR.jpg', NULL, 'Zerocal-75s-rmjxf', '2021-09-15 22:56:27', '2021-09-22 03:44:33'),
(2955, 'Nevralip 600 RTD', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/yV8CLzmTMWTB7wG0QLLiOb26HILsaOph3wqfzTcy.jpg\"]', 'uploads/products/thumbnail/GX4q65TJ0qtM5T47JLxdVSuwwO33bs1cMAJK0HRi.jpg', 'uploads/products/featured/L7Wnjwg5k3gCDU7QJD0MCJW1MTafaIR2u4ttAtzc.jpg', 'uploads/products/flash_deal/eAmkdDRiI4hbPkxNjfibpA6SeLekXg7RmUM4Qpi8.jpg', 'youtube', NULL, 'Nevralip 600 RTD', 1, 'Nevralip 600 RTD', 820.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"600\"]}]', '[]', '{\"600\":{\"price\":\"820\",\"sku\":\"N6R-600\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Nevralip 600 RTD', 'Nevralip 600 RTD', 'uploads/products/meta/B3LXqVKw5SlW1Xq9UykfiFUGYRxEFrrTszTkFvsE.jpg', NULL, 'Nevralip-600-RTD-0EhSf', '2021-09-15 23:02:28', '2021-09-22 03:41:26'),
(2956, 'Syalox 300 Plus', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/tZ1jYeHf7KAN3SbixuRusoNwPYFTXCMMWNbzGJyK.jpg\"]', 'uploads/products/thumbnail/jcWXXyEGWkDqBTH3HnBxQTdHSNegXJEcRgN0SUCt.jpg', 'uploads/products/featured/8xZCvQC1hfrgFPMlS8ht9WV48pnmv00lVc5mAUFO.jpg', 'uploads/products/flash_deal/409Jw6nm0QhjnkkyFngHg9g0H1wEqcXC0MF2Z5U0.jpg', 'youtube', NULL, 'Syalox 300 Plus', 1, 'Syalox 300 Plus', 1180.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"300\"]}]', '[]', '{\"300\":{\"price\":\"1180\",\"sku\":\"S3P-300\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Syalox 300 Plus', 'Syalox 300 Plus', 'uploads/products/meta/H3Zknv7SJHd7sa1qVCf9ur8EAaLWnBshg6f2UF2M.jpg', NULL, 'Syalox-300-Plus-724Jm', '2021-09-15 23:06:05', '2021-09-22 03:40:29'),
(2957, 'Epaset', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/siLCiK8ZiDBQIIwzsZvaYqCo271wvc4HZh9fDOTi.jpg\"]', 'uploads/products/thumbnail/qYF7NuBirJ1NDvEUCIxrIpArjSLbT2YTnNGIAxfy.jpg', 'uploads/products/featured/ZkIGW6wQmxSuixuDc72hXYuHURbfHVk83H4qYyHJ.jpg', 'uploads/products/flash_deal/6umO7qLALKzTzmMAcNQkAvge8KU6wQoUoaePl44C.jpg', 'youtube', NULL, 'Epaset', 1, 'Epaset', 1450.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"30 tablets\"]}]', '[]', '{\"30tablets\":{\"price\":\"1450\",\"sku\":\"E-30tablets\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Epaset', 'Epaset', 'uploads/products/meta/b13r9MnM0fHzTByYMRmx9wWq47jwCDin5uNX0TJJ.jpg', NULL, 'Epaset-BMyv4', '2021-09-15 23:10:01', '2021-09-22 03:37:51'),
(2958, 'Zerocal 25s', 'admin', 65, 30, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/e6fxQrDTjRl2R1zZTUOUz8UFwl1CUN9kVutZUr7Y.jpg\"]', 'uploads/products/thumbnail/M8GDEkQT0F89U9YF2tcnJQYnC0n3qhBbpCSLgiEX.jpg', 'uploads/products/featured/13pdH3u6QwpyoJIdb9mEaDIZraMqBpJiaZucKzpG.jpg', 'uploads/products/flash_deal/TVJ66BkAkXtLeOtRu3JE0040IEUduA2FS2zvtxPQ.jpg', 'youtube', NULL, 'Zerocal 25s', 1, 'Zerocal 25s', 85.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"25pc\"]}]', '[]', '{\"25pc\":{\"price\":\"85\",\"sku\":\"Z2-25pc\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Zerocal 25s', 'Zerocal 25s', 'uploads/products/meta/jC4UlOkxLf78ic4APJwHMlVFhHw3AWJNG9ci2GZm.jpg', NULL, 'Zerocal-25s-2p0ZS', '2021-09-15 23:12:39', '2021-09-22 03:34:49'),
(2959, 'Diaper BASHUNDHARA BABY PANT (DIAPANT)', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/ntE0o99tocoOXbPBogXtXbuO0FKnys8Z0Oj2tG1G.jpg\"]', 'uploads/products/thumbnail/hEMrQuhCMKKJkGBA1ptSkEXHjQNzDudg9UOmv6GH.jpg', 'uploads/products/featured/1g98Oaoh8ZXKig225zNXJhm7hZ0PZcU6yI0SElv8.jpg', 'uploads/products/flash_deal/2adcwunxHFQnuwlIxsBfER1YnGRFvvi9k2odqu9t.jpg', 'youtube', NULL, 'Diaper BASHUNDHARA BABY PANT (DIAPANT)', 0, 'Diaper BASHUNDHARA BABY PANT (DIAPANT)', 140.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"M\"]}]', '[]', '{\"M\":{\"price\":\"140\",\"sku\":\"DBBP(-M\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Diaper BASHUNDHARA BABY PANT (DIAPANT)', 'Diaper BASHUNDHARA BABY PANT (DIAPANT)', 'uploads/products/meta/kvWYWZLBJ1MTZad2cRtAnndEAg0xys9r2Df5WAZy.jpg', NULL, 'Diaper-BASHUNDHARA-BABY-PANT-DIAPANT-0W9UJ', '2021-09-16 01:03:08', '2021-09-22 03:33:30');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `prescribed`, `description`, `unit_price`, `purchase_price`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(2960, 'Huggies Dry Pant Diaper', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/4iQMWvlE2bQPgpQCnJrSB2cstfc7Vx3ze46kUPjs.jpg\"]', 'uploads/products/thumbnail/qPdxdHjlfX5dgRLd5MwoOHpxLga1yuc3nu1ujTVS.jpg', 'uploads/products/featured/qTIfQLRzv652K6gNJcK82k9Y0mZnVZmJD90WBVLW.jpg', 'uploads/products/flash_deal/GnNN94BJjRwKmuDAXnRGW6xZa6Sv8QG1cccxiUmt.jpg', 'youtube', NULL, 'Huggies Dry Pant Diaper', 0, 'Huggies Dry Pant Diaper', 1600.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"L\"]}]', '[]', '{\"L\":{\"price\":\"1600\",\"sku\":\"HDPD-L\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Huggies Dry Pant Diaper', 'Huggies Dry Pant Diaper', 'uploads/products/meta/p2xdoF03F89qX3NEXlOP94qOMHWBZ8AjkPt8qIi6.jpg', NULL, 'Huggies-Dry-Pant-Diaper-A23RU', '2021-09-16 01:08:18', '2021-09-22 03:30:58'),
(2961, 'NeoCare Baby Wipes', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/QSDO51oI0R1vAXbuuioNnbC9mRuba2RaN6eoHF5s.jpg\"]', 'uploads/products/thumbnail/ELS3s9PST8hxowrNr4zOQpv07XXFOo47q2yFgYOx.jpg', 'uploads/products/featured/OgcGTxg3Gpg3WRJlJEir6iKbQrlLqapOi9PfqdAu.jpg', 'uploads/products/flash_deal/IVWVMaaoBi7sKANBmTtWSsMHUQGOZeprTuvCp9eK.jpg', 'youtube', NULL, 'NeoCare Baby Wipes', 0, 'NeoCare Baby Wipes', 220.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"120pcs\"]}]', '[]', '{\"120pcs\":{\"price\":\"220\",\"sku\":\"NBW-120pcs\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'NeoCare Baby Wipes', 'NeoCare Baby Wipes', 'uploads/products/meta/H1QvsIBUhJuNScKCoyk4XQdPQW4PxCRgZ2LAuyxg.jpg', NULL, 'NeoCare-Baby-Wipes-kzSVg', '2021-09-16 01:14:48', '2021-09-22 03:28:36'),
(2962, 'Kidz Baby Belt Diaper', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/7ZjqKzZ53DuhbffD9sk0GgcSnWmCpuQ6gLAuj6EP.jpg\"]', 'uploads/products/thumbnail/HzgVq96NA2ATh415FIuQs0vllaOkTlusaxAnIguf.jpg', 'uploads/products/featured/UkxCkYQnbWRzllK9kIDKwBxxA9Jfo0p6UDVPiHx1.jpg', 'uploads/products/flash_deal/LB0hzJOyQ3zP5c3yqJF006Afos3195NjdeHg4uLo.jpg', 'youtube', NULL, 'Kidz Baby Belt Diaper', 0, 'Kidz Baby Belt Diaper', 2200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"M\"]}]', '[]', '{\"M\":{\"price\":\"2200\",\"sku\":\"KBBD-M\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Kidz Baby Belt Diaper', 'Kidz Baby Belt Diaper', 'uploads/products/meta/gWdlnMYm4Hj4nblxHK1nvSHhKxbr2Cl3eYGzl5C4.jpg', NULL, 'Kidz-Baby-Belt-Diaper-mtItN', '2021-09-16 01:22:00', '2021-09-22 03:24:09'),
(2963, 'Thai Adult Diaper Belt System', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/O7mm12YFTKorSkSJ0ZMMem0NIKwbeb0nwYbPWrNv.jpg\"]', 'uploads/products/thumbnail/M9mqHKjgcmr5vH5wrXIG2Dwe37FQWXGHE4kLml17.jpg', 'uploads/products/featured/vK4hFjllEmuDLDlGXrXdNegTvqAUcJIz0DKK3veo.jpg', 'uploads/products/flash_deal/BxY0LViTXHv4BIl34kw1lFZB5iTgh6UH2kvo8x2o.jpg', 'youtube', NULL, 'Thai Adult Diaper Belt System', 0, 'Thai Adult Diaper Belt System', 690.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"size\",\"options\":[\"M\"]}]', '[]', '{\"M\":{\"price\":\"690\",\"sku\":\"TADBS-M\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Thai Adult Diaper Belt System', 'Thai Adult Diaper Belt System', 'uploads/products/meta/2rjNUDINkIxGBYEd8iAV9KGLVMweRwIzVk2a5hrE.jpg', NULL, 'Thai-Adult-Diaper-Belt-System-rmbGd', '2021-09-16 02:23:50', '2021-09-22 03:21:23'),
(2964, 'Savlon Baby Wipes (AntiBacterial)', 'admin', 65, 31, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/Qa5PI2rxf4e1Dhep0ILu7uzaum5j5j2MM6zuzWOL.jpg\"]', 'uploads/products/thumbnail/PbbFWfEGEKYq907ruWo7FmjNl4EJXvWY6VUrVvtI.jpg', 'uploads/products/featured/JP2Z8uZYAnZ7ZemODAiByPVUuuAVD1UOINIpKQ8B.jpg', 'uploads/products/flash_deal/ZKDrZkEf4mTxPhy2Z9VIBEZSRPkmz4ui7K6Uh4ab.jpg', 'youtube', NULL, 'Savlon Baby Wipes (AntiBacterial)', 0, 'Savlon Baby Wipes (AntiBacterial)', 200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"80pcs\"]}]', '[]', '{\"80pcs\":{\"price\":\"200\",\"sku\":\"SBW(-80pcs\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Savlon Baby Wipes (AntiBacterial)', 'Savlon Baby Wipes (AntiBacterial)', 'uploads/products/meta/SXylkMFN7kWFD4LBcKmWIGbt7ps1oWvwQE53tVfx.jpg', NULL, 'Savlon-Baby-Wipes-AntiBacterial-5l3LT', '2021-09-16 02:31:10', '2021-09-22 03:12:19'),
(2965, 'Accu Chek Active Blood Glucometer Kit', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/07WSZWCoyI6HLLN1K9brpIa4MKQUBydE3EanaO1K.jpg\"]', 'uploads/products/thumbnail/g7BA06b1KO1pur5sdlwKgKAUHZRN8GZeXRC63vy1.jpg', 'uploads/products/featured/E3K0oouRDsNyo4gR3CCNSkSZtl3gdnij5a8RCb2W.jpg', 'uploads/products/flash_deal/5UEVhUL3n7FXjajk7xvBpG5GSfGmX3ML1h44CUBN.jpg', 'youtube', NULL, 'Accu Chek Active Blood Glucometer Kit', 1, 'Accu Chek Active Blood Glucometer Kit', 2250.00, NULL, '[]', '[\"#000000\"]', '{\"Black\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Accu Chek Active Blood Glucometer Kit', 'Accu Chek Active Blood Glucometer Kit', 'uploads/products/meta/meZQ0jg5E3ZQG3rt3UKJecqJq1su0JYOirW31GT9.jpg', NULL, 'Accu-Chek-Active-Blood-Glucometer-Kit-RKuJz', '2021-09-16 02:52:35', '2021-09-22 03:10:19'),
(2966, 'Thermometer Digital LCD', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/a5Qh3uUtJHYyHPerGTHFId9m0l0VIbCPv1K8NIAr.jpg\"]', 'uploads/products/thumbnail/vEfRJpeBk5LPMysvWozB8diMiTwD25DE3ZU0hMpr.jpg', 'uploads/products/featured/RWqoYmZyWyZ84dh5GwQjP3GavrScLjtojAs0UiaQ.jpg', 'uploads/products/flash_deal/LpwQd5ESaACqlepkiQj5WR7zhMIcA8EMZKSouaib.jpg', 'youtube', NULL, 'Thermometer Digital LCD', 0, 'Thermometer Digital LCD', 150.00, NULL, '[]', '[\"#000000\"]', '{\"Black\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Thermometer Digital LCD', 'Thermometer Digital LCD', 'uploads/products/meta/5I7qyPEnmm0PMUQ53vNvg5qZSkTUqfbXmf5fBpQm.jpg', NULL, 'Thermometer-Digital-LCD-1qY1Y', '2021-09-16 03:00:01', '2021-09-22 03:08:57'),
(2967, 'Blood Pressure Machine ALPK2', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/t2GIm6U05cWRjHyZbZmhiq2Mx1q0mNax4kFaRvLv.jpg\"]', 'uploads/products/thumbnail/GjeEYEBln61zmgC5wSgwGOpKy7VxU8mfVMi6uc1S.jpg', 'uploads/products/featured/Q97r9Cd1IhOEeJP54pIhn6SOc9miJCWiF1IhCB9b.jpg', 'uploads/products/flash_deal/efDyZSpcyfuTQS2zIe9GRlkVwyCp9DgtzZy7rlZc.jpg', 'youtube', NULL, 'Blood Pressure Machine ALPK2', 1, 'Blood Pressure Machine ALPK2', 1990.00, NULL, '[]', '[\"#FFFFFF\"]', '{\"White\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Blood Pressure Machine ALPK2', 'Blood Pressure Machine ALPK2', 'uploads/products/meta/sGx3MHygUHw1poGtco8UnrC4UrNcegDMjDHJzg8w.jpg', NULL, 'Blood-Pressure-Machine-ALPK2-xmeXf', '2021-09-16 03:10:12', '2021-09-22 03:06:27'),
(2968, 'Jumper JPD-500D (OLED Version) Fingertip Pulse Oximeter (CE & FDA Approved)', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/rzONx1Pabzy8vYNW2oDTdotVmSDnfMSch8pgsECX.jpg\"]', 'uploads/products/thumbnail/f94nbMPtcXsqHYGDALtEznFi1fuZ1EbEtIkQmBZC.jpg', 'uploads/products/featured/XfRpOAf5VIYTeSk1EkRbwPVrGazmkITO2O2c8sNm.jpg', 'uploads/products/flash_deal/8QbxT2ty7dwaSqXbsuVthU8lxjxkkfvidMbM71TM.jpg', 'youtube', NULL, 'Jumper JPD-500D', 0, 'Jumper JPD-500D (OLED Version) Fingertip Pulse Oximeter (CE &amp; FDA Approved)', 2300.00, NULL, '[]', '[\"#000000\"]', '{\"Black\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Jumper JPD-500D', 'Jumper JPD-500D', 'uploads/products/meta/d0ff1AO5nAlPJNr2PU0Fa1YPOCWCDKCp8UURf8Si.jpg', NULL, 'Jumper-JPD-500D-OLED-Version-Fingertip-Pulse-Oximeter-CE--FDA-Approved-r5ypC', '2021-09-16 03:19:49', '2021-09-22 03:03:23'),
(2969, 'Lancet Needles For Diabetes Blood 30g', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/YJRDaS7fTfzqVX9wP8f2ciEJm1JO8xs493CZ0wqU.jpg\"]', 'uploads/products/thumbnail/GkzoMYraXHr9y8YZ8CcH0QTdMJHpqnnUk8spZ9N1.jpg', 'uploads/products/featured/wLkUDAJGTJ95pBZMyRmnV8VoN13y3kx1gJKJyfAK.jpg', 'uploads/products/flash_deal/138He0Kl88BVwazlPAbcuSrFzmBn5e1KjZ2nSgVk.jpg', 'youtube', NULL, 'Lancet Needles For Diabetes Blood 30g', 0, 'Lancet Needles For Diabetes Blood 30g', 150.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"30gm\"]}]', '[]', '{\"30gm\":{\"price\":\"150\",\"sku\":\"LNFDB3-30gm\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'g', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Lancet Needles For Diabetes Blood 30g', 'Lancet Needles For Diabetes Blood 30g', 'uploads/products/meta/NXBT1iilwURnqAVU1aJEO5l1wh9UtAEA8EFtBvNB.jpg', NULL, 'Lancet-Needles-For-Diabetes-Blood-30g-WpTT4', '2021-09-16 03:23:38', '2021-09-22 02:58:50'),
(2970, 'Novopen 4 Silver Reusable Insulin Pen', 'admin', 65, 32, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/1h3mDFZ6vnLeKASs71UfN4SSDfSRjOgZM4CZKfoo.jpg\"]', 'uploads/products/thumbnail/TAfMYDWGgMi6hRYwJHKCzwvxjutqrT4sRzRQ1nbw.jpg', 'uploads/products/featured/iOQ5TStybSea0uJ41OlbBS2gJAjysL7fma3ECKUW.jpg', 'uploads/products/flash_deal/3uGHjLwiulixbjK7dXR5OGv66l0dYmQf10vXHPuH.jpg', 'youtube', NULL, 'Novopen 4 Silver Reusable Insulin Pen', 1, 'Novopen 4 Silver Reusable Insulin Pen', 600.00, NULL, '[]', '[\"#C0C0C0\"]', '{\"Silver\":{\"price\":null,\"sku\":null,\"qty\":null}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Novopen 4 Silver Reusable Insulin Pen', 'Novopen 4 Silver Reusable Insulin Pen', 'uploads/products/meta/sbAOeg8rKqVLAukCIFIz0fm7uogQjUm7IeJSlnbg.jpg', NULL, 'Novopen-4-Silver-Reusable-Insulin-Pen-c9oCb', '2021-09-16 03:27:53', '2021-09-22 02:57:24'),
(2971, 'Condom U & ME Long Love', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/cSAQbjceEL0NBgSw845jPaYGfdiPEebJfsiijdGS.jpg\"]', 'uploads/products/thumbnail/zL0BGWFIfIhi4q6iEvqAjNTOi1ZuIsPnGTB6nJ9A.jpg', 'uploads/products/featured/vJbx04IQ2Iib5fLGLWPDsLNrh1edzWNzhpsKYTPL.jpg', 'uploads/products/flash_deal/q3sjaqTLXgofFdhg5EnRja8Mtyx4HYZvLk3QwFD2.jpg', 'youtube', NULL, 'Condom U & ME Long Love', 0, 'Condom U &amp; ME Long Love', 40.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"Flavour\",\"options\":[\"long love\"]}]', '[]', '{\"longlove\":{\"price\":\"40\",\"sku\":\"CU&MLL-longlove\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Condom U & ME Long Love', 'Condom U & ME Long Love', 'uploads/products/meta/mOoN1ZRgrnjMzABZjGPSMS93ox9VWG2Yz3FEgvCg.jpg', NULL, 'Condom-U--ME-Long-Love-JmTqj', '2021-09-16 03:33:51', '2021-09-22 02:47:07'),
(2972, 'Condom Durex Extra Safe', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/znZheqoGLiJ4YqgOrwLnodTPWGK9TUNqiBluj5jU.jpg\"]', 'uploads/products/thumbnail/Nzif3RpuBJZFPhEi9O41I0yphdvcr7LqcpZaBL5O.jpg', 'uploads/products/featured/aMvPDgU5DBU0LdyjVlw6XOqMahuqxtfFh8uJ0xSV.jpg', 'uploads/products/flash_deal/8gIGt7XIabQET7y0kRYXUySt7L5HnT3GaqRNcUhu.jpg', 'youtube', NULL, 'Condom Durex Extra Safe', 0, 'Condom Durex Extra Safe', 100.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"Flavour\",\"options\":[\"love\"]}]', '[]', '{\"love\":{\"price\":\"100\",\"sku\":\"CDES-love\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Condom Durex Extra Safe', 'Condom Durex Extra Safe', 'uploads/products/meta/1CIDoZXhRaWkPhlDfSFwK1TIAYLYO8mAyD093rhR.jpg', NULL, 'Condom-Durex-Extra-Safe-3LDmq', '2021-09-16 03:39:30', '2021-09-22 02:45:31'),
(2973, 'Condom Panther 3pcs', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/pBHqz0pjzzWE0TxfuDZUBIQ30U1qh1WRnbphUBSk.jpg\"]', 'uploads/products/thumbnail/68qSwsIsdT5OZxdATBGHLORSRg4RQHbHPZ1oPkf4.jpg', 'uploads/products/featured/4lJ6TDfOJOvKfCc3mNc1UvyOYrvi8vgX0Fut52FJ.jpg', 'uploads/products/flash_deal/OTJhx0a6UM5B602FpIOiUq9Jnj4sZgOwkpuMGRpp.jpg', 'youtube', NULL, 'Condom Panther 3pcs', 0, 'Condom Panther 3pcs', 15.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"3pcs\"]}]', '[]', '{\"3pcs\":{\"price\":\"15\",\"sku\":\"CP3-3pcs\",\"qty\":\"10\"}}', 1, 1, 1, 0, 'pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Condom Panther 3pcs', 'Condom Panther 3pcs', 'uploads/products/meta/2Un8vjepVtdaQ9hXTRcACmnnGAtHZbgzs0NKMXl9.jpg', NULL, 'Condom-Panther-3pcs-tJOp9', '2021-09-16 03:44:37', '2021-09-22 02:43:21'),
(2974, 'Condom Carex Classic', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/uvIjShd8RtidaePRe568ax7KEwQmtEnqLwsk5OP5.jpg\"]', 'uploads/products/thumbnail/tXTNvmcCa2uRE2HwBsFwYnB8yyYXwnipIg7s4P3l.jpg', 'uploads/products/featured/FHilgvgUIVmQYCaL2kacv6dW7GtDAOEibHwvK8uB.jpg', 'uploads/products/flash_deal/qupOI9S15js3ym7VJaCy0sJeXAAkjTtJvx7blwzd.jpg', 'youtube', NULL, 'Condom Carex Classic', 0, 'Condom Carex Classic', 35.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"3pcs\"]}]', '[]', '{\"3pcs\":{\"price\":\"35\",\"sku\":\"CCC-3pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Condom Carex Classic', 'Condom Carex Classic', 'uploads/products/meta/fPDFgzE4Qeqh6hErSKUiOTjmnWkOINFtNVEnnq0Y.jpg', NULL, 'Condom-Carex-Classic-MkW78', '2021-09-16 03:49:02', '2021-09-22 02:41:06'),
(2975, 'Condom Xtreme Premium', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/T6LERXOgLK324lD0r3iiXwq9U8lET2iy5exJXMc7.jpg\"]', 'uploads/products/thumbnail/ACN9qnf0kLqlNW4jPNUPdB3FuyvDLxLj3kzYnotK.jpg', 'uploads/products/featured/LpPJocENDX0IUQaWI5bhX55TVwxLQCGaqIoTKuDW.jpg', 'uploads/products/flash_deal/dUjPS9fIjBu6ZQMGYpWF8qsF443SdX4SEPe4jqCy.jpg', 'youtube', NULL, 'Condom Xtreme Premium', 0, 'Condom Xtreme Premium&nbsp;', 70.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"pcs\",\"options\":[\"3 pcs\"]}]', '[]', '{\"3pcs\":{\"price\":\"70\",\"sku\":\"CXP-3pcs\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Condom Xtreme Premium', 'Condom Xtreme Premium', 'uploads/products/meta/zdmcPoRE3eYz9nAmbiogjEiPXvqtNF6wVR6U2wOb.jpg', NULL, 'Condom-Xtreme-Premium-TNptq', '2021-09-16 03:53:43', '2021-09-22 02:38:32'),
(2976, 'Coral Condom 3-Fruit Flavours(Girls)', 'admin', 65, 33, NULL, NULL, NULL, '[\"uploads\\/products\\/photos\\/uwoZLz8qss6JMEW9psDugpAKcUo4Y3pvtIw8OSlQ.jpg\"]', 'uploads/products/thumbnail/4E5iprnMIWuGc2vGkYcs6k44hZxK1lpXUlTKNF20.jpg', 'uploads/products/featured/XUtfg6bHB1aNRtDGH9YsUoXYuYZMcpvCEhG8PEAM.jpg', 'uploads/products/flash_deal/qPk12FXBnmdbNiGBa0dqjLbbKz4jZBQVxcIUYZgR.jpg', 'youtube', NULL, 'Coral Condom 3-Fruit Flavours(Girls)', 0, 'Coral Condom 3-Fruit Flavours(Girls)', 30.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"Flavour\",\"options\":[\"3-fruits\"]}]', '[]', '{\"3-fruits\":{\"price\":\"30\",\"sku\":\"CC3F-3-fruits\",\"qty\":\"100\"}}', 1, 1, 1, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Coral Condom 3-Fruit Flavours(Girls)', 'Coral Condom 3-Fruit Flavours(Girls)', 'uploads/products/meta/UCe8azUrftAmBleOAHAcnArosH9XaMvtsONbsAR3.jpg', NULL, 'Coral-Condom-3-Fruit-FlavoursGirls-ZVOE2', '2021-09-16 03:59:22', '2021-09-22 02:28:54'),
(2977, 'Ceftoril', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/YK0Tp3RI7uwUWmKne9AUXLzoTZekNoBAdfywwqNt.jpg\"]', 'uploads/products/thumbnail/q9rbzt52YJ9pxicRKnjlD5CuVatbDnBVlZm4VR78.jpg', 'uploads/products/featured/2UTsUR6xRRAjLVu6n4pLYV9osnmrKN6QUU7nW4VV.jpg', 'uploads/products/flash_deal/ZHlZCA17Ey9eOj2cHmYTZ8b3cYxQlQOvySkN7fei.jpg', 'youtube', NULL, 'Ceftoril', 1, 'Ceftoril', 120.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"400mg\",\"1.8gm\\/100ml\"]}]', '[]', '{\"400mg\":{\"price\":\"120\",\"sku\":\"C-400mg\",\"qty\":\"100\"},\"1.8gm\\/100ml\":{\"price\":\"480\",\"sku\":\"C-1.8gm\\/100ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Ceftoril', 'Ceftoril', 'uploads/products/meta/glWckzzpcDVaaAGqu08BGDo7LtdNDimcarYqkPNT.jpg', NULL, 'Ceftoril-N03k2', '2021-09-16 19:31:55', '2021-09-16 19:31:55'),
(2978, 'Chlormet-Eye-Drops', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/P7npqFrZU1cow0QoL9uQ3ws6ErrUMfOeVBkLP12y.jpg\"]', 'uploads/products/thumbnail/PGVm9aa1Y6MAstm6ZfKU0y3v6yNy5oTMp6t8o6Zd.jpg', 'uploads/products/featured/nukD4ItSpDCweBDfhx8EotWzgumPXp46IcvLbl1K.jpg', 'uploads/products/flash_deal/DBG7PGQm3V21o2Lkld1EHHnoMsC8GjrcJVFwQ5qe.jpg', 'youtube', NULL, 'Chlormet-Eye-Drops', 1, 'Chlormet-Eye-Drops', 70.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"5ml\"]}]', '[]', '{\"5ml\":{\"price\":\"70\",\"sku\":\"C-5ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Chlormet-Eye-Drops', 'Chlormet-Eye-Drops', 'uploads/products/meta/vdrCBgdNMzwWE1XVHQqfr4hmdaU6CkC2U6XbIafc.jpg', NULL, 'Chlormet-Eye-Drops-6vC9c', '2021-09-16 19:35:05', '2021-09-16 19:35:05'),
(2979, 'Citicol', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/iS0fO6J7VryQL0CQNF3IijUrmQBGAGaMoTvpkcQ0.jpg\"]', 'uploads/products/thumbnail/Xf1ip3VYijFgck1JBO2oJ30JGMjmoEp86uX7eriJ.jpg', 'uploads/products/featured/HCQX9ueUkLkRLlvttxLApCNDBqtjvIttg5eOBFKJ.jpg', 'uploads/products/flash_deal/4e5FurCfGhLybLSar62sSoGVyDEwiSbxM1D68AFF.jpg', 'youtube', NULL, 'Citicol', 1, 'Citicol', 140.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"500mg\\/4ml\"]}]', '[]', '{\"500mg\\/4ml\":{\"price\":\"140\",\"sku\":\"C-500mg\\/4ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Citicol', 'Citicol', 'uploads/products/meta/HVi0DZ6IATzRmM60NjTbh8ptpKYcOOPhupEWOfq8.jpg', NULL, 'Citicol-y4JHO', '2021-09-16 19:38:32', '2021-09-16 19:38:32'),
(2980, 'Cleven', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/cUSvNcsYuEnU7fJP8e1YSTvedTpBrIfnqWbAlE5q.jpg\"]', 'uploads/products/thumbnail/MpLwiyOIFF389yEiJbYNVnMfLqE9Sj9FYYd8k1EG.jpg', 'uploads/products/featured/SO5NyKEf7iPdBCmPWOLwcio29sWoFwdmGZ9KYyMI.jpg', 'uploads/products/flash_deal/GdnHjT1YWgTBUKvSkqmXn6YsbfvkYmGhQJGVV89I.jpg', 'youtube', NULL, 'Cleven', 1, 'Cleven', 250.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"20mg\\/0.2ml\",\"40mg\\/0.4ml\",\"60mg\\/0.6ml\",\"80mg\\/0.8ml\"]}]', '[]', '{\"20mg\\/0.2ml\":{\"price\":\"250\",\"sku\":\"C-20mg\\/0.2ml\",\"qty\":\"100\"},\"40mg\\/0.4ml\":{\"price\":\"450\",\"sku\":\"C-40mg\\/0.4ml\",\"qty\":\"100\"},\"60mg\\/0.6ml\":{\"price\":\"576\",\"sku\":\"C-60mg\\/0.6ml\",\"qty\":\"100\"},\"80mg\\/0.8ml\":{\"price\":\"650\",\"sku\":\"C-80mg\\/0.8ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Cleven', 'Cleven', 'uploads/products/meta/liGvOK7Yt0FMRZUy6sYyyMhfDJ6ebyDhF5f8rpo9.jpg', NULL, 'Cleven-bxoIB', '2021-09-16 19:43:45', '2021-09-16 19:43:45'),
(2981, 'Clobex', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/x2ws1kXANv5ofco3oJ2OGEF5CWcYZHGjG2wkRWBk.jpg\"]', 'uploads/products/thumbnail/mjzDbfytPIiLDFWtY8VwVqSicBTmWSjzatN4Q0TQ.jpg', 'uploads/products/featured/O9Lukwsek3gKylrQaFTI4eEGcA0OH03xRcrjEFwK.jpg', 'uploads/products/flash_deal/oz73lqpoBRnQS9pCYX6eLwsM0sZHyxjRp3PZYqLQ.jpg', 'youtube', NULL, 'Clobex', 1, 'Clobex', 5.96, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mg\"]}]', '[]', '{\"500mg\":{\"price\":\"5.96\",\"sku\":\"C-500mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Clobex', 'Clobex', 'uploads/products/meta/fg066MLnA2rZgDoaB4nGhgqCr5K1rC9ofQhMtkIe.jpg', NULL, 'Clobex-5bRUQ', '2021-09-16 19:48:47', '2021-09-16 19:48:47'),
(2982, 'Contral-Eye', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/DFIkrxgNwaLIem0aRE54UvcVnFWniuuXwBNmL3Wv.jpg\"]', 'uploads/products/thumbnail/iX4CGRnFUU5qY8zFhXodNvV0hOAoR5sX80xhK8AK.jpg', 'uploads/products/featured/rUq5Ha2fPxinEpvqwQoR1uxqZl441ZDC37Hlm5uL.jpg', 'uploads/products/flash_deal/FetzrgcyEyNvb1fHpCKBuUkCsnNMVTbqkJOXUYzF.jpg', 'youtube', NULL, 'Contral-Eye', 1, 'Contral-Eye', 60.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"3gm\\/100ml\"]}]', '[]', '{\"3gm\\/100ml\":{\"price\":\"60\",\"sku\":\"C-3gm\\/100ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Contral-Eye', 'Contral-Eye', 'uploads/products/meta/qYkl2Vz8JGxxpQMVPgWk6emhRwhYRORAv9aqtrWy.jpg', NULL, 'Contral-Eye-5amB9', '2021-09-16 19:51:16', '2021-09-16 19:51:16'),
(2983, 'Curin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/5WpN6pq92Okf9kiAuZTEYcxEkgZxLLRgoepC1cmD.jpg\"]', 'uploads/products/thumbnail/JNxO5X8DCGP610y67HDdpHNAwb1SQ6D0NkmdLXoT.jpg', 'uploads/products/featured/ozg6pfU4zdNdytD2Km65uP9lkp7c7W35bed8YDRh.jpg', 'uploads/products/flash_deal/V5o9hIStUVpafsq6aRE3BgKUOKcAWTsyXTN804Zr.jpg', 'youtube', NULL, 'Contral-Eye', 1, 'Curin', 3.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg\"]}]', '[]', '{\"5mg\":{\"price\":\"3\",\"sku\":\"C-5mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Curin', 'Curin', 'uploads/products/meta/CEFaWWICoToo1TCK4ITyffVf6rL9XoIykWKoDGaK.jpg', NULL, 'Curin-S7Nwc', '2021-09-16 20:32:31', '2021-09-16 20:32:31'),
(2984, 'dakovir-c', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/t2FhLSCo6gDWY7q3TRIWY9bLXsybyhC2vSo4M1z1.jpg\"]', 'uploads/products/thumbnail/miUbb0vcvzNFjo4OdUBm5yOtxYhl4SyltrVoMxGb.jpg', 'uploads/products/featured/ocUbRvM3etkvap85NFFmJ4g7n00ZY3vozneLkIZn.jpg', 'uploads/products/flash_deal/P57bt3s2PNzrv2KpbQe83YeDLx7PjGMeNXFzDj18.jpg', 'youtube', NULL, 'dakovir-c', 1, 'dakovir-c', 400.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"60mg\"]}]', '[]', '{\"60mg\":{\"price\":\"400\",\"sku\":\"d-60mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'dakovir-c', 'dakovir-c', 'uploads/products/meta/K10NYnCOcMKagqqKasSzjQZchi6yubIV7gDpPQ9S.jpg', NULL, 'dakovir-c-4WaC9', '2021-09-16 21:24:10', '2021-09-16 21:24:10'),
(2985, 'Dextrim', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/XfuR8r6VpIEWyVSfPZaFJkiiqNGRvnrlLE7EsxkR.jpg\"]', 'uploads/products/thumbnail/3V0QihvqBCkyVpcWmA1FTQ4dKouaPas5Zv1xFfl9.jpg', 'uploads/products/featured/glY1j309znM8ISp09aD0M7XwYuDkKDlUhGpPZf4J.jpg', 'uploads/products/flash_deal/fKvaXeEEnK01Y1unXOQYMUfnG0dG3h1wobyj3D3Z.jpg', 'youtube', NULL, 'Dextrim', 1, 'Dextrim', 100.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"400mg+200mg+50mg\"]}]', '[]', '{\"400mg+200mg+50mg\":{\"price\":\"100\",\"sku\":\"D-400mg+200mg+50mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Dextrim', 'Dextrim', 'uploads/products/meta/47VTPxZmyhVgHqChocavRn9TJx4WN6LBLrIYBIuy.jpg', NULL, 'Dextrim-7Thkk', '2021-09-16 21:26:18', '2021-09-16 21:26:18'),
(2986, 'Dextromethorphan', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/L9qk4tOhIgIqwrBZDFyUaPjSjmwjA9ZOwtPvZNts.jpg\"]', 'uploads/products/thumbnail/dFT1pLvGTqr5QnYgSJtNgPINS3G2ZwcjkltVDnnk.jpg', 'uploads/products/featured/OIPF7ewSvZailtzVLGyEn4YggLb4jILgcJXXeAvZ.jpg', 'uploads/products/flash_deal/wT5tlXq2o97C6fBlU9yPTe4WYssglkMlg38FZ2jQ.jpg', 'youtube', NULL, 'Dextromethorphan', 1, '<p>Dextromethorphan</p><p><br></p>', 35.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"10mg\\/5ml\"]}]', '[]', '{\"10mg\\/5ml\":{\"price\":\"35\",\"sku\":\"D-10mg\\/5ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Dextromethorphan', 'Dextromethorphan', 'uploads/products/meta/QvrI0TQf9KziYfdi2q6Keh8FYlat5CiIGF5FlIkq.jpg', NULL, 'Dextromethorphan-VKsfm', '2021-09-16 21:30:38', '2021-09-16 21:30:38'),
(2987, 'Diactin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/ElkfvI96HUGRw6E3UeMH1FIKPQj5nzZ5Z3QkxUpT.jpg\"]', 'uploads/products/thumbnail/oHmw95diHG2PJsz9PwGogPiu6m8DSBnBf8tI9C6T.jpg', 'uploads/products/featured/5UA20xu16uay0Fy2pTgClICPaJ4IfS6rwH5BJw14.jpg', 'uploads/products/flash_deal/kkqLmN4Lyhqa3UXsHE504VLgJnmHchmHvCfgmlrC.jpg', 'youtube', NULL, 'Diactin', 1, 'Diactin', 1.50, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg\"]}]', '[]', '{\"5mg\":{\"price\":\"1.50\",\"sku\":\"D-5mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Diactin', 'Diactin', 'uploads/products/meta/caDa2pj0m65smByqWg1WT9wNmsusXhD0nUUCDMot.jpg', NULL, 'Diactin-0NEEU', '2021-09-16 21:33:07', '2021-09-16 21:33:07'),
(2988, 'Diapro', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Vvu35aNrb2d3SwM7l5hN3MVcVnDN2K0b6P9KkNuU.jpg\"]', 'uploads/products/thumbnail/LhrWfQjcJdzR8aDqlY9XHcHwHGPc24YmOW8JkKIY.jpg', 'uploads/products/featured/n3VMmvLzbuUTpCiRecDIOhk9GBdEF0kUWN1WCnmz.jpg', 'uploads/products/flash_deal/iXpGOhyz7H8zUlJOUyqKAuua0duWdUIezqVDWWTp.jpg', 'youtube', NULL, 'Diapro', 1, 'DiaproDiapro', 7.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"80mg\"]}]', '[]', '{\"80mg\":{\"price\":\"7\",\"sku\":\"D-80mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Diapro', 'Diapro', 'uploads/products/meta/IX2u6ng81qmmcy3m4P5NwAtsjVI460QKkS18HyZM.jpg', NULL, 'Diapro-a2MF1', '2021-09-16 21:35:27', '2021-09-16 21:35:27'),
(2989, 'diapro-60-mr', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/GuUaX154lvV16BMGzuQrrASudtDzXMHQmMQEgnmo.jpg\"]', 'uploads/products/thumbnail/ExAsA1AdKHySGFSxxdE4ittv0ebZsNyeDR6ccOjE.jpg', 'uploads/products/featured/GZs29hL2eYyMASGnvNrnUAnk2R1sduuhOkLClyzL.jpg', 'uploads/products/flash_deal/Ncy65ZdBpaV7eIiJoWCmpIP18NZJtsnbI1BND7zs.jpg', 'youtube', NULL, 'diapro-60-mr', 1, 'diapro-60-mr', 12.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"60mg\"]}]', '[]', '{\"60mg\":{\"price\":\"12\",\"sku\":\"d-60mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'diapro-60-mr', 'diapro-60-mr', 'uploads/products/meta/VcvHx5WuqdZmVEuiMifSUp05cEvvWM9FuSwhqVUi.jpg', NULL, 'diapro-60-mr-xgEmf', '2021-09-16 21:37:23', '2021-09-16 21:37:23'),
(2990, 'Diapro 30 MR', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/c9VUGNLlIAYKlE3TRvqT26k85E2WvqUEpDjQiu1v.jpg\"]', 'uploads/products/thumbnail/T02USYcFEa2JPanO5S9p0ZLpNTyBxSTbLR3ifiYz.jpg', 'uploads/products/featured/kxELQMLAwiq1LXI2ZiQ8PyVSXsHfshWg5L5s4840.jpg', 'uploads/products/flash_deal/UvuNdElafMs1rjKOk7PPyP4Gk3zaGwESocjEjV2T.jpg', 'youtube', NULL, 'Diapro-MR,Diapro 30 MR', 1, 'Diapro 30 MR', 7.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"30mg\"]}]', '[]', '{\"30mg\":{\"price\":\"7\",\"sku\":\"D3M-30mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Diapro 30 MR', 'Diapro 30 MR', 'uploads/products/meta/IyeMd372MBwPY8wEC7uwBmIMxnrFS0WJVnvDMB89.jpg', NULL, 'Diapro-30-MR-h0d0t', '2021-09-16 21:44:45', '2021-09-16 21:44:45'),
(2991, 'Diaryl', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/5B6L3UcNsySIehh8UDc9PxBHPJC3CptSkM0oyZkj.jpg\"]', 'uploads/products/thumbnail/5Si0yGhVxX4FegZaJnPViDIbMdLApGvkw7DHr8xF.jpg', 'uploads/products/featured/i7CT6ESZku5FMhHLyHqCKONsQhZRXXCulg122AnB.jpg', 'uploads/products/flash_deal/ZEgYcsJ8xqCIvegeWZHL15f49If0H5JjfborINPv.jpg', 'youtube', NULL, 'Diaryl', 1, 'Diaryl', 6.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"1mg\",\"2mg\",\"3mg\"]}]', '[]', '{\"1mg\":{\"price\":\"6\",\"sku\":\"D-1mg\",\"qty\":\"100\"},\"2mg\":{\"price\":\"9\",\"sku\":\"D-2mg\",\"qty\":\"100\"},\"3mg\":{\"price\":\"12\",\"sku\":\"D-3mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Diaryl', 'Diaryl', 'uploads/products/meta/7UnvShBXTWk99Puhb5oVab85EN6Guirz56kArYTN.jpg', NULL, 'Diaryl-wS7TI', '2021-09-16 21:55:45', '2021-09-16 21:55:45'),
(2992, 'D-rise', 'admin', 65, 25, 98, 280, 145, '[\"uploads\\/products\\/photos\\/hdQGnQPVS4zvOhHjos0og4Xca6v1GiQCzK2m3oiq.jpg\"]', 'uploads/products/thumbnail/5xDag55v1KYXkYq6xHxDB1tCoAePZFrZUXAZhD4A.jpg', 'uploads/products/featured/4yXAtkRThU8eVIBauj13JkBaVMIyomp9AKiBRD8O.jpg', 'uploads/products/flash_deal/HEigdp7pd1A0K91yhSQSkNhGXz4usDKwWdZ1Sjdv.jpg', 'youtube', NULL, 'D-rise', 1, 'D-rise', 20.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg\\/ml\"]}]', '[]', '{\"5mg\\/ml\":{\"price\":\"20\",\"sku\":\"D-5mg\\/ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'D-rise', 'D-rise', 'uploads/products/meta/wgdkJJ6HCkeSLADnFNRpJROkfe9Cyue5Y5upBXvS.jpg', NULL, 'D-rise-CHfX2', '2021-09-16 21:58:41', '2021-09-16 21:58:41'),
(2993, 'Duvent', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/3TzATO7cCIHtmjZBBRS6fnjZg72rJP91TPmjlnT4.jpg\"]', 'uploads/products/thumbnail/1JMBsZeUKq54zrfzBxGW9wuQ4M6ZCLNtzW4JFs8o.jpg', 'uploads/products/featured/jaGjfVjUnJaZSYSCr8fpg9inFfw5WiyRauw9VQPr.jpg', 'uploads/products/flash_deal/KfQ047w9gnpf59e82EpjaLlJjF5V1iXunWhE0y2b.jpg', 'youtube', NULL, 'Duvent', 1, 'Duvent', 60.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"50ml\"]}]', '[]', '{\"50ml\":{\"price\":\"60\",\"sku\":\"D-50ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Duvent', 'Duvent', 'uploads/products/meta/P0IVANExHslNLK3cDVekpNoy0TrtH0Mf9Aj943OT.jpg', NULL, 'Duvent-gp41c', '2021-09-16 22:01:03', '2021-09-16 22:01:03'),
(2994, 'Dynase', 'admin', 65, 25, 98, 280, 145, '[\"uploads\\/products\\/photos\\/7dcMlpKyRlIUDmrqr35uNVNRUCL9zyd8lIevmOwT.jpg\"]', 'uploads/products/thumbnail/lisJdqafbZ4jNda6FM6yNxCeznXJR0tfsXTAtmdv.jpg', 'uploads/products/featured/RTm0MUaZZvYbUKj4YzYgUdZqQ4LCuzmVy02SUdgV.jpg', 'uploads/products/flash_deal/KAI8cGOZpBE5MeN9NmKGQUb9MfrpevhSfJ4Xfw4v.jpg', 'youtube', NULL, 'dynase', 1, 'Dynase', 320.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mcg\",\"options\":[\"125mcg\"]}]', '[]', '{\"125mcg\":{\"price\":\"320\",\"sku\":\"D-125mcg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'dynase', 'dynase', 'uploads/products/meta/80uJ054hCgJFBUzKIm3K3wEeNLcFM8GlrEyXMkWP.jpg', NULL, 'Dynase-r725K', '2021-09-16 22:03:31', '2021-09-16 22:03:31'),
(2995, 'Enaril', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/ZD7iZ0UdEpCDhpnUSldvbEmMEDErSLQXxjaab2RB.jpg\"]', 'uploads/products/thumbnail/u9OaOVWBcfGEaLBy1rG7XgWtN3G8NAviHUNY575S.jpg', 'uploads/products/featured/RZPuPIz6boMqK6yaMHsC9cBbo25u8QylP67Q65bA.jpg', 'uploads/products/flash_deal/3djr93Ciakz8qEO9y58038Gm9CaNJZ4hmpfCALiD.jpg', 'youtube', NULL, 'Enaril', 1, 'Enaril', 1.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg\"]}]', '[]', '{\"5mg\":{\"price\":\"1.00\",\"sku\":\"E-5mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Enaril', 'Enaril', 'uploads/products/meta/B9xmUefRzofn4FMAeB1L8vTdYpdUzo5RKQ4sBOj8.jpg', NULL, 'Enaril-vVQAg', '2021-09-16 22:06:02', '2021-09-16 22:06:02'),
(2996, 'Epilep', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/elWCM13Kc1e004gR35IR81iqah8VkQQYX6EkcBcQ.jpg\"]', 'uploads/products/thumbnail/mnNxxOmGLY7MgjSTyEYOKnhyD99KbIbULqJSVPcN.jpg', 'uploads/products/featured/gmhfl5YnGtWnxrGkPf6mH1EJBYWtDFpeM9tNVLgk.jpg', 'uploads/products/flash_deal/GGg73H1jrReBb0IA6nSPVNqjbfs1xLK3ap3XvTlW.jpg', 'youtube', NULL, 'Epilep', 1, 'Epilep', 3.51, NULL, '[{\"name\":\"choice_1\",\"title\":\"mg\",\"options\":[\"200mg\"]}]', '[]', '{\"200mg\":{\"price\":\"3.51\",\"sku\":\"E-200mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Epilep', 'Epilep', 'uploads/products/meta/V3AqUg0VL5Mo8xq33bFmtEywHPlyUfjrJSYwc70e.jpg', NULL, 'Epilep-ThUjD', '2021-09-16 22:08:20', '2021-09-16 22:08:20'),
(2997, 'Etrocin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/F2g46O6sQZLXdzLSg6ETJzOFSjlf3ikakUAlHei3.jpg\"]', 'uploads/products/thumbnail/sb5AlrUH8A8TOs4iT7STfaCJauOmHCityuXMfOkH.jpg', 'uploads/products/featured/sNPYoqKeq6cUNV8Ipm2HkKGsKaMmnhXxuEfo1loG.jpg', 'uploads/products/flash_deal/WHtylnS4xpTJyjJBmtL5smGe29usLz7HFS86CQ4G.jpg', 'youtube', NULL, 'Etrocin', 1, 'Etrocin', 6.03, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"250mg\",\"500mg\"]}]', '[]', '{\"250mg\":{\"price\":\"6.03\",\"sku\":\"E-250mg\",\"qty\":\"100\"},\"500mg\":{\"price\":\"9\",\"sku\":\"E-500mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Etrocin', 'Etrocin', 'uploads/products/meta/zHUFGhpgax6Cx5G2JkA39Uf4Z45Z6Xh0fVK3c9Mi.jpg', NULL, 'Etrocin-VaTVr', '2021-09-16 22:10:24', '2021-09-16 22:10:24'),
(2998, 'Evo', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/6TsSC1CjLKTIwz0bmi5sVjYNbS1TYENmnCvgk1Hq.jpg\"]', 'uploads/products/thumbnail/porW2Dpd5q2CvfWSisYx46aZeRixImSlSpjR4bRq.jpg', 'uploads/products/featured/zXc1UBvNFHWs0wCRHi5Fq8n8OWvsLC0A2PmLxbJ8.jpg', 'uploads/products/flash_deal/uNfcWMCGC5zMPiNjkyupgRPL89XT9siRlIe5RUEj.jpg', 'youtube', NULL, 'Evo', 1, 'Evo', 9.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"250mg\",\"500mg\",\"750mg\"]}]', '[]', '{\"250mg\":{\"price\":\"9\",\"sku\":\"E-250mg\",\"qty\":\"100\"},\"500mg\":{\"price\":\"16\",\"sku\":\"E-500mg\",\"qty\":\"100\"},\"750mg\":{\"price\":\"20\",\"sku\":\"E-750mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Evo', 'Evo', 'uploads/products/meta/Cjs1ciOaxQaXj3DOYEIShzfYVP5oq97zhljgQLPD.jpg', NULL, 'Evo-Wz24V', '2021-09-16 22:13:13', '2021-09-16 22:13:13'),
(2999, 'Evo-Eye-Drops', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/W6FiybRmYLIJYky9pqTlnyfjUGEZB8qXBDnkbpH5.jpg\"]', 'uploads/products/thumbnail/U4cp1yoS5o97xXPacg2zRwiKPug4YHHOy7oBfXO4.jpg', 'uploads/products/featured/jMgiFGO8puQGaocJwjXZRdJ77u4X0QEETQTsjW1P.jpg', 'uploads/products/flash_deal/kONXKi5PRMMZ5GViQU3TZLRptwXgOc4PN5BqaIhp.jpg', 'youtube', NULL, 'Evo-Eye-Drops', 1, NULL, 90.00, NULL, '[{\"name\":\"choice_1\",\"title\":\"ml\",\"options\":[\"5ml\"]}]', '[]', '{\"5ml\":{\"price\":\"90\",\"sku\":\"E-5ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Evo-Eye-Drops', 'Evo-Eye-Drops', 'uploads/products/meta/5aV8hTNH0ae6FT5p7sHxRjU4pqwPYXn3TYRkZOju.jpg', NULL, 'Evo-Eye-Drops-PjJQB', '2021-09-16 22:15:31', '2021-09-16 22:16:02'),
(3000, 'Evo-TS-Eye-Drops', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Ve2ojuwrtMe6BD72pitGdegtHYQLttAYyaBpaxaj.jpg\"]', 'uploads/products/thumbnail/wJv3u3z6HeQvnuMfouxidWalBJW8PgEKaso7sjyZ.jpg', 'uploads/products/featured/ulK0SiQV3phNQRaIpSsgJ8gSzi4Gf3ogvNYDyxWj.jpg', 'uploads/products/flash_deal/qwYXjhvJTZYK6WISUgekSBfoqOLW3IFAuXiB7ZFR.jpg', 'youtube', NULL, 'Evo-TS-Eye-Drops', 1, 'Evo-TS-Eye-Drops', 130.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"5ml\"]}]', '[]', '{\"5ml\":{\"price\":\"130\",\"sku\":\"E-5ml\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Evo-TS-Eye-Drops', 'Evo-TS-Eye-Drops', 'uploads/products/meta/9Gd08Qo7KjzH9Rbi5OuK5Qrg5K8S8H8zEGI5b9PA.jpg', NULL, 'Evo-TS-Eye-Drops-H9Fvz', '2021-09-16 22:17:46', '2021-09-16 22:17:46'),
(3001, 'Ezeta', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/AT79AypoltlAwt3HJrVVwu0RYcRSwiDnRdMJn4QK.jpg\"]', 'uploads/products/thumbnail/iySw0V3ijzcD2edVhMuHNzI48BAANW9MuFUFwChb.jpg', 'uploads/products/featured/eHoEXdwOAc2Doy8vezrEdmDRRbMVGixdK8yiaF2X.jpg', 'uploads/products/flash_deal/523fSE44hycYwymxue8ErAVjLxmfKgnLVR7TBsWU.jpg', 'youtube', NULL, 'Ezeta', 1, 'Ezeta', 10.04, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\"]}]', '[]', '{\"10mg\":{\"price\":\"10.04\",\"sku\":\"E-10mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Ezeta', 'Ezeta', 'uploads/products/meta/h6tOuANqePnNUEJRnUQkAWpsVol92Ez8C8RS987C.jpg', NULL, 'Ezeta-wxoyE', '2021-09-16 22:19:08', '2021-09-16 22:19:08'),
(3002, 'Famomax', 'admin', 65, 25, 98, 280, 145, '[\"uploads\\/products\\/photos\\/psVNnBER55wYPv94F4UYiVF1g6OpWviUV1pPfgNP.jpg\"]', 'uploads/products/thumbnail/e6kqOadnN4EQSEar1X6gToyNa7GN0F7l7vgw2RBN.jpg', 'uploads/products/featured/JTrv1eEtFGQftxd3XPzfHC309sn0VpeJozadLYTJ.jpg', 'uploads/products/flash_deal/T1JhKeUFqTeCDlZM1N8th1Jv6fFvo8hV3hfMhtDi.jpg', 'youtube', NULL, 'Famomax', 1, 'Famomax', 50.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"40mg\\/5ml\"]}]', '[]', '{\"40mg\\/5ml\":{\"price\":\"50\",\"sku\":\"F-40mg\\/5ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Famomax', 'Famomax', 'uploads/products/meta/rWqP8YgldVhMzwjQWQHb0ipy6uwiLXDFCpT0YEaV.jpg', NULL, 'Famomax-KffXL', '2021-09-16 22:21:39', '2021-09-16 22:21:39'),
(3003, 'Filmet', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/rdwwI01gLXjkp8RnZxRVkssFxXIMe5goguNXjSd1.jpg\"]', 'uploads/products/thumbnail/t85XAo3g1tKYElpZXzcooCHiSkQe0GuZ5aJA5sS1.jpg', 'uploads/products/featured/AMLIfhF7rdvjNafiaavuTxgB5w5NEw9Obmy5Brkw.jpg', 'uploads/products/flash_deal/omArmK3x9if15aiXZpnFDJ2Ro4R7WEgL9w0IireP.jpg', 'youtube', NULL, 'Filmet', 1, 'Filmet', 0.68, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"200mg\",\"400mg\"]}]', '[]', '{\"200mg\":{\"price\":\".68\",\"sku\":\"F-200mg\",\"qty\":\"100\"},\"400mg\":{\"price\":\"1.50\",\"sku\":\"F-400mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Filmet', 'Filmet', 'uploads/products/meta/peavAdMEKuZ29tvrTukvPhvV6Ugwx75QLXNX2mOA.jpg', NULL, 'Filmet-PR5SJ', '2021-09-16 23:23:21', '2021-09-16 23:23:21'),
(3004, 'Flomyst', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Rh3iY31md5DwJRyPYmyFnESaFTgx610tgv7a9NHp.jpg\"]', 'uploads/products/thumbnail/vs0d7yvJhXXInVX0RZjUIeAEKrjXT9Xi5LxiW86s.jpg', 'uploads/products/featured/41gEChqyG3erj2eBfNL5KUFxP5BW5bGtPyXz6oOw.jpg', 'uploads/products/flash_deal/m4YxHdlDmkCd9xZsEgmTxtivHZqiBtBMNMGanfIH.jpg', 'youtube', NULL, 'flomyst', 1, 'Flomyst', 895.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mcg\",\"options\":[\"10\\/250mcg\",\"5\\/125mcg\",\"5\\/50mcg\"]}]', '[]', '{\"10\\/250mcg\":{\"price\":\"895\",\"sku\":\"F-10\\/250mcg\",\"qty\":\"10\"},\"5\\/125mcg\":{\"price\":\"895\",\"sku\":\"F-5\\/125mcg\",\"qty\":\"10\"},\"5\\/50mcg\":{\"price\":\"895\",\"sku\":\"F-5\\/50mcg\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'flomyst', 'flomyst', 'uploads/products/meta/9uXCgALsIorNMBLAjkIyHqprml8dGzhJybLBYbyL.jpg', NULL, 'Flomyst-v2Bn3', '2021-09-16 23:27:58', '2021-09-16 23:27:58'),
(3005, 'Flubex', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/jJkbpWA27TzoFMOkzhK4xbuZhVe86fBDt2VJt1md.jpg\"]', 'uploads/products/thumbnail/98IhBDEU7Fi4HS1MBkqVvpLBwcsGEHg8GX5v7Ez7.jpg', 'uploads/products/featured/ZdrwkeDrsCLeDTHezxVINzc3oEkZBVrrajWz8QKN.jpg', 'uploads/products/flash_deal/eC09LoMX5evh4meEBz1FmLm3NdsZuxBnCRgk9DNG.jpg', 'youtube', NULL, 'Flubex', 1, 'Flubex', 5.50, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"250mg\",\"500mg\"]}]', '[]', '{\"250mg\":{\"price\":\"5.5\",\"sku\":\"F-250mg\",\"qty\":\"1000\"},\"500mg\":{\"price\":\"10.5\",\"sku\":\"F-500mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Flubex', 'Flubex', 'uploads/products/meta/OYNflA5E3h86H56cUukuYZl6iea1oa5uCaOhrDGV.jpg', NULL, 'Flubex-MkY8E', '2021-09-16 23:30:26', '2021-09-16 23:30:26'),
(3006, 'Flurium', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/y1AVcxhEdmtp7FEkCGtW7X5CZh2bRUHqyYVterDc.jpg\"]', 'uploads/products/thumbnail/BND06MUYfKfgyCNvJrVqge5jasCIQdfLNrLr6VyV.jpg', 'uploads/products/featured/9DGaQEIoFFS13SnWriFsQ3ra0oKeFFOocorwl3TE.jpg', 'uploads/products/flash_deal/3jsxdzRkp23mVL3GPOxB1fTwSLYJk4bfTbld4Fw6.jpg', 'youtube', NULL, 'Flurium', 1, 'Flurium', 4.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"5mg\"]}]', '[]', '{\"10mg\":{\"price\":\"4\",\"sku\":\"F-10mg\",\"qty\":\"100\"},\"5mg\":{\"price\":\"3\",\"sku\":\"F-5mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Flurium', 'Flurium', 'uploads/products/meta/Lik4FDyjLpJ1gloobOgTLQRDXt60sj4CG8b1sOIS.jpg', NULL, 'Flurium-6chxY', '2021-09-16 23:32:56', '2021-09-16 23:32:56'),
(3007, 'Fosamin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/jHF5MKF3uFljWCe48zWHMlZIunFpVPfT6BUgCWio.jpg\"]', 'uploads/products/thumbnail/0by9jPKJsIY7dNK2E6daPQV9Tqciq0hHPfWw6sRM.jpg', 'uploads/products/featured/HpvSTw78fcoRVDYY99ZpXrf41Z3rNvo2PoQHcMoN.jpg', 'uploads/products/flash_deal/1TkGyilhrsTXHtdRKEydN6jhw1hifVKf1Wd7AZJc.jpg', 'youtube', NULL, 'Fosamin', 1, 'Fosamin', 350.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"gm\",\"options\":[\"3gm\"]}]', '[]', '{\"3gm\":{\"price\":\"350\",\"sku\":\"F-3gm\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Fosamin', 'Fosamin', 'uploads/products/meta/c2uW2t1NvmExchxMWgklRYsgS8UOgFg3FpHmDquI.jpg', NULL, 'Fosamin-IaioS', '2021-09-16 23:35:31', '2021-09-16 23:35:31'),
(3008, 'Frenxit', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/fiH7uhHcXsLlndq5WVsS0DMyUq4pyEij35Oj3Kbl.jpg\"]', 'uploads/products/thumbnail/fc3RuNhGfuQ7rtXv9E055alJpDqsl9rGIcTbKaOI.jpg', 'uploads/products/featured/oLKcNwuNST3JqwQvLLzO9xS1GNYPg9b82YWLG4UJ.jpg', 'uploads/products/flash_deal/tLO2Ml3yVqcRPfbqmJpizUKUmjwF2KPCuJAnDrhP.jpg', 'youtube', NULL, 'Frenxit', 1, '<p>Frenxit</p><p><br></p>', 5.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mcg+10mg\"]}]', '[]', '{\"500mcg+10mg\":{\"price\":\"5\",\"sku\":\"F-500mcg+10mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Frenxit', 'Frenxit', 'uploads/products/meta/pdRq0PWQ0lf0RDXG1T5QvnGUR1s26bApmZWBarnC.jpg', NULL, 'Frenxit-2xGGH', '2021-09-16 23:49:37', '2021-09-16 23:49:37'),
(3009, 'Fulphila', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/RnBUPH9Vcpnv1d9021WN3M85YF1fViTKd2TlDWTn.jpg\"]', 'uploads/products/thumbnail/tbLaVRs7nHX5dhvszf9dCclAk6jLqRR4nvH38X0C.jpg', 'uploads/products/featured/0jTUWKZWSFBHoe4BBekqvggvxtVOq9pV5FAQaxae.jpg', 'uploads/products/flash_deal/J9R7IcUeoZKAjA3WJPFckb9WQgC6Vd3IdNkcHVXP.jpg', 'youtube', NULL, 'Fulphila', 1, 'Fulphila', 20.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"6mg\\/.6ml\"]}]', '[]', '{\"6mg\\/.6ml\":{\"price\":\"20\",\"sku\":\"F-6mg\\/.6ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Fulphila', 'Fulphila', 'uploads/products/meta/RsMMVOC5VHwLsnZhgYexkpeWrELWMSMDojjEdzDY.jpg', NULL, 'Fulphila-Vxrej', '2021-09-16 23:53:22', '2021-09-16 23:53:22'),
(3010, 'Gensulin-M30', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/zLIr0MfRMGiCpP0j7B6ATlKruvRbSYZBZTLb65TS.jpg\"]', 'uploads/products/thumbnail/k1g7Ks27XTKLEDnjwg87lRJhawEnFFWGxL8WcPma.jpg', 'uploads/products/featured/E1xPOpnKmJyObhg7lagAJu0A4MhLkdysAu4aFLe0.jpg', 'uploads/products/flash_deal/ZubSVYpLXMCBEPVJoriIqNUklGiKE5Ia4ZwtIOmH.jpg', 'youtube', NULL, 'Gensulin-M30', 1, 'Gensulin-M30', 415.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"30ml\"]}]', '[]', '{\"30ml\":{\"price\":\"415\",\"sku\":\"G-30ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Gensulin-M30', 'Gensulin-M30', 'uploads/products/meta/5Xc0hXKisgfwwgsOJZJPEfs1BKW1UiCdzVzl3y36.jpg', NULL, 'Gensulin-M30-hiKEL', '2021-09-16 23:55:31', '2021-09-16 23:55:31'),
(3011, 'Gensulin-N', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/pWRwDvxzlRt6jF78o8PLBo3Er9TzoJK8JP54RkM3.jpg\"]', 'uploads/products/thumbnail/hXZ6RFKhwQZl4Z5rYPzLU1bibSf1b7J5vCJIWbBE.jpg', 'uploads/products/featured/zldgMeyRNgboGcCSZNOW0NHAIbWoYJf7wMx78DqB.jpg', 'uploads/products/flash_deal/8vPggCGlsa1EaVdd53csrHbS1dZxCCn7lx3iE06I.jpg', 'youtube', NULL, 'Gensulin-N', 1, 'Gensulin-N', 31.59, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"100ml\"]}]', '[]', '{\"100ml\":{\"price\":\"31.59\",\"sku\":\"G-100ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Gensulin-N', 'Gensulin-N', 'uploads/products/meta/xUuHxIKXvMpR5AqozCyBgOzlGJuGMES4ngODMPXD.jpg', NULL, 'Gensulin-N-dRqWp', '2021-09-16 23:57:13', '2021-09-16 23:57:13'),
(3012, 'Gensulin-R', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/wLtfThxsN0O4nDwYDFo9NHHJ1ahoVcdBo0pfjjBF.jpg\"]', 'uploads/products/thumbnail/wlK97VbiSMVfvifNhqcqojyJwMndVok4eVdvHBje.jpg', 'uploads/products/featured/TJ5OnTfeZNCw4YaWFBasiM5raNidqvlpNaJA4LjN.jpg', 'uploads/products/flash_deal/N4V9FomlWlgk1Shq3s5jCn0cvfii663INePfhlui.jpg', 'youtube', NULL, 'gensulin-R', 1, 'gensulin-R', 32.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"100ml\"]}]', '[]', '{\"100ml\":{\"price\":\"32\",\"sku\":\"G-100ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'gensulin-R', 'gensulin-R', 'uploads/products/meta/8mLnXp0k5q0SC3reYHriXTyUGoFojRkf0VRXijUn.jpg', NULL, 'Gensulin-R-Mrj8M', '2021-09-16 23:59:16', '2021-09-16 23:59:16'),
(3013, 'Glipita', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/yrUZUrHyvl0R35TJONOo19hpsYZcw7tZXBREKzIw.jpg\"]', 'uploads/products/thumbnail/B0uoVcx81F6xrVLscIkl8HVIPYTWlOmOKeGqBtWf.jpg', 'uploads/products/featured/NXadE9FX6wY2FzPssjFL8m2uD243g6A7fnbqfqNX.jpg', 'uploads/products/flash_deal/rz91868KezoDHERZyAdI35miOE1kUsIixFyMBsIY.jpg', 'youtube', NULL, 'Glipita', 1, 'Glipita', 25.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"50mg\",\"100mg\"]}]', '[]', '{\"50mg\":{\"price\":\"25\",\"sku\":\"G-50mg\",\"qty\":\"100\"},\"100mg\":{\"price\":\"13\",\"sku\":\"G-100mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Glipita', 'Glipita', 'uploads/products/meta/yfDLwmIcN6BJD6So42XuNEo79p5wjDlEh9KKXtrq.jpg', NULL, 'Glipita-QmBI0', '2021-09-17 00:02:57', '2021-09-17 00:02:57'),
(3014, 'Glipita-M', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/sdxVVL2J3A30o8MSUuDeoM90SeSUDsx1UNzS3PxP.jpg\"]', 'uploads/products/thumbnail/UaqHWmNPK2P2Q84i8b5gqmefzj7o7hnovh0b3TSy.jpg', 'uploads/products/featured/v7wURIwCQMyLCRzazzp3M63xJ8b1AU8gZdx8atto.jpg', 'uploads/products/flash_deal/e5JE6f2QsGzr1p2lqAavdFIp0OzNb4ALaDEAO6ZB.jpg', 'youtube', NULL, 'Glipita-M', 1, 'Glipita-M', 16.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"1000mg+50mg\",\"500mg+50mg\"]}]', '[]', '{\"1000mg+50mg\":{\"price\":\"16\",\"sku\":\"G-1000mg+50mg\",\"qty\":\"100\"},\"500mg+50mg\":{\"price\":\"15.99\",\"sku\":\"G-500mg+50mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Glipita-M', 'Glipita-M', 'uploads/products/meta/bJSd5WgpwDly4gYuWOmkgdc4dcHvcoIvB1nqXZ2Z.jpg', NULL, 'Glipita-M-FR1w8', '2021-09-17 00:04:43', '2021-09-17 00:04:43'),
(3015, 'Glipita-m-XR', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/CrOgStbFGewaRDarB0YQAwngTUal7XIWaYDl1K9R.jpg\"]', 'uploads/products/thumbnail/ZBjDZUc7Nc0IUgxFi5TjR7XAauiAfL5RQnYrbdtT.jpg', 'uploads/products/featured/qD8QBKELhst4HYNj7DD9lziXrLYPiBzXdbt3OMrA.jpg', 'uploads/products/flash_deal/fktK3sQAVIfIdE8k9nFvAHUYcamFTt0RfMLKYMHL.jpg', 'youtube', NULL, 'glipita-m-xr', 1, 'Glipita-m-XR', 17.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mg+50mg\"]}]', '[]', '{\"500mg+50mg\":{\"price\":\"17\",\"sku\":\"G-500mg+50mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'glipita-m-xr', 'glipita-m-xr', 'uploads/products/meta/gMtFmzF7Gikc5ByOnDETJDjwbKRdvxiZZPAFAqI8.jpg', NULL, 'Glipita-m-XR-vAJzp', '2021-09-17 00:08:47', '2021-09-17 00:08:47'),
(3016, 'Glucovis-Eye', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/XyYOqfi5IRTm2sntrvMs04xja12SWbAcVwUgjqA1.jpg\"]', 'uploads/products/thumbnail/lhFYAsVF01uha19ReCxZtVtE07KfVERIrB5e22zB.jpg', 'uploads/products/featured/rl57xAkA8re2Apjrv2FeBZB2JxM1YP6sTSbIOqrY.jpg', 'uploads/products/flash_deal/89d1tz1mbR4GmIakW1vsCrI6ySGIzZuAWsgU9TVE.jpg', 'youtube', NULL, 'Glucovis-Eye', 1, 'Glucovis-Eye', 200.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"5ml\"]}]', '[]', '{\"5ml\":{\"price\":\"200\",\"sku\":\"G-5ml\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Glucovis-Eye', 'Glucovis-Eye', 'uploads/products/meta/Khc1coiYwMPiR1x0ZndyBxEJrjrzOw0WChi4gfD1.jpg', NULL, 'Glucovis-Eye-cQa6m', '2021-09-17 00:11:43', '2021-09-17 00:11:43');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `featured_img`, `flash_deal_img`, `video_provider`, `video_link`, `tags`, `prescribed`, `description`, `unit_price`, `purchase_price`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `created_at`, `updated_at`) VALUES
(3017, 'Glyriva Bexicap', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/nhX71nDZNtV92xtQHSDylzaSkvMK30etQe1m31uQ.jpg\"]', 'uploads/products/thumbnail/E4VI2t15tGU94WPAXGOjhe1q8cy7ZkDLq25pTiIC.jpg', 'uploads/products/featured/rWYj110Zj6eSM2s2Ayp8ZKsPYAc9wCdeim2s3bzm.jpg', 'uploads/products/flash_deal/Jy6r6POUyqLAsTaxI4B5zfaYSA8Odu2Pa9sVhHjX.jpg', 'youtube', NULL, 'glyriva-bexicap', 1, 'Glyriva Bexicap', 20.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"50mcg\"]}]', '[]', '{\"50mcg\":{\"price\":\"20\",\"sku\":\"GB-50mcg\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'glyriva-bexicap', 'glyriva-bexicap', 'uploads/products/meta/xFvZVDG1umWw9aIzATvp56wKfWoAeQR2CaQs3Ugq.jpg', NULL, 'Glyriva-Bexicap-tUrIN', '2021-09-17 00:14:07', '2021-09-17 00:32:01'),
(3018, 'Hepagurd', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/4wzDNZTu6VtO0AquPIXH1JSY50aAVEcKWZLIoytu.jpg\"]', 'uploads/products/thumbnail/aSWqUOhUrIKO2BZBgXYs0cG3CPwCHVEIGYVJiweN.jpg', 'uploads/products/featured/lUYvnGc60YXn2pzx6od7cLcmnjOVUailTKxNrnf5.jpg', 'uploads/products/flash_deal/mLlIt6oolrBa7ENumUoHFZtz4TbXL40uLWj92HVD.jpg', 'youtube', NULL, 'Hepagurd', 1, 'Hepagurd', 75.00, NULL, '[{\"name\":\"choice_1\",\"title\":\"Sachets\",\"options\":[\"10 sachets\"]}]', '[]', '{\"10sachets\":{\"price\":\"75\",\"sku\":\"H-10sachets\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Hepagurd', 'Hepagurd', 'uploads/products/meta/7kiC23H1APgsNrOOVtKOjU2UrmmceOpR9ETyJrhA.jpg', NULL, 'Hepagurd-e3SBJ', '2021-09-17 00:30:28', '2021-09-17 00:30:28'),
(3019, 'Indelix-SR', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/rFpJD7vc7mmnOeybwLAQ4oQKQMOwHYm0i8Vxg2jH.jpg\"]', 'uploads/products/thumbnail/riGkKb44tG9uScm4cugToRXVarHDUUVMIjCCJ24d.jpg', 'uploads/products/featured/Jh79uWZlHIHqCMO07zYJzs7iHrMNydxW4eEVByOl.jpg', 'uploads/products/flash_deal/LXkTkcyuxSvy7ulwFjBFxmkILZv6rw4LaftxvlXq.jpg', 'youtube', NULL, 'Indelix-SR', 1, 'Indelix-SR', 6.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"1.5mg\"]}]', '[]', '{\"1.5mg\":{\"price\":\"6\",\"sku\":\"I-1.5mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Indelix-SR', 'Indelix-SR', 'uploads/products/meta/K3iC5uiGdLU9Q4SwBRDZSrMOF8T3wmq8AN45Hl3F.jpg', NULL, 'Indelix-SR-5tf20', '2021-09-17 00:34:00', '2021-09-17 00:34:00'),
(3020, 'Inflavis-Eye', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/gYEgWniqTVnNz0vApiuZhLXtaJozoYOz4j15n5Hm.jpg\"]', 'uploads/products/thumbnail/VBHaaLGu9tWmv8sTaucdXYAtpDwrGiFcdojSBdwv.jpg', 'uploads/products/featured/XUGzTfRQmjvWCk4HkclnliUkzJBSwnIk4LeVZUa4.jpg', 'uploads/products/flash_deal/KK5FgWsGfFKUeQ1hjrrjQL5RyEPi4gY6NTHDMZP8.jpg', 'youtube', NULL, 'Inflavis-Eye', 1, 'Inflavis-Eye', 70.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"1mg\\/ml\"]}]', '[]', '{\"1mg\\/ml\":{\"price\":\"70\",\"sku\":\"I-1mg\\/ml\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Inflavis-Eye', 'Inflavis-Eye', 'uploads/products/meta/uPn2CuWeSRrob31Q7o1yctzkPQVtZqFrju46aa92.jpg', NULL, 'Inflavis-Eye-QQXjU', '2021-09-17 00:36:42', '2021-09-17 00:36:42'),
(3021, 'Informet', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/pSujmaIaSp8Wkc2UPGSRqXhl5UXcCbdid0M1R9jk.jpg\"]', 'uploads/products/thumbnail/D4ZSwiPVwioSKSdeIkLq7D0GBQLpzdeTFVtL0km2.jpg', 'uploads/products/featured/xDwC2tNw942gAyBGz8MxHrrz5f6nrJbpCd7bcmHC.jpg', 'uploads/products/flash_deal/s6q5asZYgetoQPQFr4euSgxu9poOXjeVFsO5h4V8.jpg', 'youtube', NULL, 'Informet', 1, 'Informet', 3.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"500mg\",\"850mg\"]}]', '[]', '{\"500mg\":{\"price\":\"3\",\"sku\":\"I-500mg\",\"qty\":\"100\"},\"850mg\":{\"price\":\"4.50\",\"sku\":\"I-850mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Informet', 'Informet', 'uploads/products/meta/qPkRWRMvbk3JEnQFG5rnxpmQ6pguQqmaVpvc75MP.jpg', NULL, 'Informet-nmvWO', '2021-09-17 00:39:47', '2021-09-17 00:39:47'),
(3022, 'Intracef', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/yhO9GUKaOqA6m1657Ok4wnYGx11gowcUVBJ5zQyE.jpg\"]', 'uploads/products/thumbnail/uh0VroBNtaxG3hyb2q1sOoPjkaKtmFN9ELwmemWg.jpg', 'uploads/products/featured/7ZnHXK9CQubVrOGRyPXyhhv9stQXr8IFm6UcJrdP.jpg', 'uploads/products/flash_deal/Dsv5MDzWstO7AFlsmjhZHTz2ng21w9kzEukryyn0.jpg', 'youtube', NULL, 'Intracef', 1, 'Intracef', 6.50, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"250mg\",\"500mg\"]}]', '[]', '{\"250mg\":{\"price\":\"6.50\",\"sku\":\"I-250mg\",\"qty\":\"100\"},\"500mg\":{\"price\":\"12.50\",\"sku\":\"I-500mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Intracef', 'Intracef', 'uploads/products/meta/dwwi4Wb3mLWl27hPOFj7QpxUz6cew1bbqsIpMWV1.jpg', NULL, 'Intracef-yGW9J', '2021-09-17 00:42:35', '2021-09-17 00:42:35'),
(3023, 'Ivera', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/NMC0w9dG5rTPXlWMIHQ9zXCMVv0kW49IE3z9TSWp.jpg\"]', 'uploads/products/thumbnail/aPJQq0fznnBuWhoVpxR1De5Q7l5J2KAVPhwxDqXq.jpg', 'uploads/products/featured/R1HbvscqJu0gC2KXk9zYRTjdM698uJu5tT4uJvGy.jpg', 'uploads/products/flash_deal/v5znfOy3IxSrrug8QuOypysPLeHHKo4j3CNL5anA.jpg', 'youtube', NULL, 'ivera', 1, 'ivera', 10.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"6mg\",\"12mg\"]}]', '[]', '{\"6mg\":{\"price\":\"10\",\"sku\":\"I-6mg\",\"qty\":\"100\"},\"12mg\":{\"price\":\"20\",\"sku\":\"I-12mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'ivera', 'ivera', 'uploads/products/meta/jBIFf1skPIqWZ0F3OMK3ucxuCS6fYGCQaARLp9h0.jpg', NULL, 'Ivera-rvoSk', '2021-09-17 00:44:41', '2021-09-17 00:44:41'),
(3024, 'Jardian', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/2nS88P2jZs1mHZxmHiupv6u2UuOTW0nqVjjAO3xp.jpg\"]', 'uploads/products/thumbnail/VBdeTUWcmWXG7NSJuNxjcgD53HE9gvY8XPs0ro7o.jpg', 'uploads/products/featured/2ifPUtPUMWGDe0lZQ9g1ydJci4nC5hKRsscZjfra.jpg', 'uploads/products/flash_deal/H1P4JgQBAYe0s7yQI9jq1AQ59OhEKHhXZ7tYqpuJ.jpg', 'youtube', NULL, 'jardian', 1, 'jardian', 25.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\",\"25mg\"]}]', '[]', '{\"10mg\":{\"price\":\"25\",\"sku\":\"J-10mg\",\"qty\":\"100\"},\"25mg\":{\"price\":\"40\",\"sku\":\"J-25mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'jardian', 'jardian', 'uploads/products/meta/TSlLOVEHvnCw3L2dv1VQXRNR5Z1c4Mzmj0yaUPs0.jpg', NULL, 'Jardian-69afu', '2021-09-17 00:47:59', '2021-09-17 00:47:59'),
(3025, 'Jardimet', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/6DUKzeWXA3zOJiHOSyoXbce13eYb7zgPAZH1NQRP.jpg\"]', 'uploads/products/thumbnail/KAWui9agZ1cEmuPSyJHZ8jsPcpMnlG16ofgjqjTk.jpg', 'uploads/products/featured/RGCiC0kHBEJjqtEO5P9xb8qewZzb66vPxeVC5MEL.jpg', 'uploads/products/flash_deal/IzLWluNtTILnVngool3R9VptcBU1m2p5CeSfH8CA.jpg', 'youtube', NULL, 'jardimet', 1, 'jardimet', 20.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"5mg+500mg\"]}]', '[]', '{\"5mg+500mg\":{\"price\":\"20\",\"sku\":\"J-5mg+500mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'jardimet', 'jardimet', 'uploads/products/meta/wpeQvNLJyO0Ic7Lvjyn74qZsl9t5C602ENo8qzCg.jpg', NULL, 'Jardimet-Bxum1', '2021-09-17 00:50:01', '2021-09-17 00:50:01'),
(3026, 'Keolax', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Cj05XBU03jPkI8skaMTmn57MiL8Js3ckWCMImVco.jpg\"]', 'uploads/products/thumbnail/BmAf8hrbD04bjQbdDnfI49mO9PIyHXwXF5ciNarR.jpg', 'uploads/products/featured/BA27j3lXvWsAO7oVpO0RshPxNtiV2OjZRccALCAq.jpg', 'uploads/products/flash_deal/WDu6DebIjxvZH45vlXGZaFATRstK9LZvAdIf1YhP.jpg', 'youtube', NULL, 'Keolax', 1, 'Keolax', 2.77, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"10mg\"]}]', '[]', '{\"10mg\":{\"price\":\"2.77\",\"sku\":\"K-10mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Keolax', 'Keolax', 'uploads/products/meta/tlrkBmvOL1CqryojWPpAB6FXrgzkEANEziSAhakQ.jpg', NULL, 'Keolax-2ywsh', '2021-09-17 00:55:02', '2021-09-17 00:55:02'),
(3027, 'kinexa', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/kqpcTZpPJBhnq4H5YHx1lGkFSrigUznvQCQ5XD8Y.jpg\"]', 'uploads/products/thumbnail/dQ1j7jUcpOw0Ey99WiJaL4kVLUvEd7jbZIvC59hE.jpg', 'uploads/products/featured/4jFTTWhJg1qCzoLz7fmnji0dhNxn1Rsjx917kqPi.jpg', 'uploads/products/flash_deal/SiQR9RgKgGdXNA8ECO8dCoQJAVyldRlo4AsdeWM0.jpg', 'youtube', NULL, 'kinexa', 1, 'kinexa', 45.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"20mg\",\"10mg\",\"15mg\",\"2.5mg\"]}]', '[]', '{\"20mg\":{\"price\":\"45\",\"sku\":\"k-20mg\",\"qty\":\"100\"},\"10mg\":{\"price\":\"25\",\"sku\":\"k-10mg\",\"qty\":\"100\"},\"15mg\":{\"price\":\"35\",\"sku\":\"k-15mg\",\"qty\":\"100\"},\"2.5mg\":{\"price\":\"8\",\"sku\":\"k-2.5mg\",\"qty\":\"100\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'kinexa', 'kinexa', 'uploads/products/meta/N3LNxC8OlyiPwBQyNZVGeeRopH4GO91LSSalGqow.jpg', NULL, 'kinexa-fMwut', '2021-09-17 01:02:52', '2021-09-17 01:02:52'),
(3028, 'kovicin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Rat6oLhiD6GoHTfiN1a9NsVSYzh5rfj0ONpFdT3X.jpg\"]', 'uploads/products/thumbnail/oBFAcU5CJBkKmtKD7A7M9eg7o2lJDscml1OuSkAM.jpg', 'uploads/products/featured/DE3Sacy3MnsYgaoGvsiqgFDZU0kUyLrGXD72jjGQ.jpg', 'uploads/products/flash_deal/0qfwxb9JFiQ1XkH2zGeyOuM92gOiUrSGVxwmDxBI.jpg', 'youtube', NULL, 'kovicin', 1, '<p><br></p>', 168.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"200mg\"]}]', '[]', '{\"200mg\":{\"price\":\"168\",\"sku\":\"k-200mg\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'kovicin', 'kovicin', 'uploads/products/meta/I2PJAIIx5o9FsKMn3MoSG1QtcYGg4Vwuoih2Wydz.jpg', NULL, 'kovicin-ZdxzB', '2021-09-17 01:07:58', '2021-09-17 01:07:58'),
(3029, 'Lofat', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/2eUVIzzQ39x9yojO0qXnxuoMtYv3VbAd0ZSniX0J.jpg\"]', 'uploads/products/thumbnail/a32FXLACYBLXjzndGTfZ3JLSCrvAK0Rxunbj2suT.jpg', 'uploads/products/featured/4avlSw5kq64nKInjskN7K67kHnkGPjNnzfs9Oxpo.jpg', 'uploads/products/flash_deal/1B0T0iIoMgh1YzmTEmwLzvtB7LQPB5dgVEShhJSm.jpg', 'youtube', NULL, 'Lofat', 1, 'Lofat', 7.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"200mg\"]}]', '[]', '{\"200mg\":{\"price\":\"7.00\",\"sku\":\"L-200mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Lofat', 'Lofat', 'uploads/products/meta/2NEKzRst70dXyGPDq8fSIDyPLGk6JByLKfZDKZWm.jpg', NULL, 'Lofat-GNfzR', '2021-09-17 01:12:07', '2021-09-17 01:12:07'),
(3030, 'Lucidol', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/GT5CRfjDP7o1ZiJywfzY4vFk3g7uKRloTAgYtiJV.jpg\"]', 'uploads/products/thumbnail/lhMzQwqeOuBFV7GG5KlYCLW1ycVQn26vLgL33Am3.jpg', 'uploads/products/featured/xsJmMrLQ6o65yX7YCa9QG8qfeNGXLZTbHQYfswXJ.jpg', 'uploads/products/flash_deal/BXLCONgVC6Hg0PY42oG28iVo4loQE452Cg6RBwZK.jpg', 'youtube', NULL, 'Lucidol', 1, 'Lucidol', 7.50, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"50mg\"]}]', '[]', '{\"50mg\":{\"price\":\"7.50\",\"sku\":\"L-50mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Lucidol', 'Lucidol', 'uploads/products/meta/1nkBWx3W6UejJ3q3BCWHKO0VjxCGs9rIwgK7l6su.jpg', NULL, 'Lucidol-IFlMC', '2021-09-17 01:14:07', '2021-09-17 01:14:07'),
(3031, 'Maxidim', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/sO9bgzsLEstL5El1CErOTQBqNfcvj4YHpW02K6Oj.jpg\"]', 'uploads/products/thumbnail/dUfxaSGH7aIyLUpisJbPLM3WE77BSaoDIilqGnIj.jpg', 'uploads/products/featured/zXpfue2oqfjkEikykyhBZcP7ZbfDzj2H5ICFOsYs.jpg', 'uploads/products/flash_deal/UZMn8dsNBWkOb2PseCktadv1ESx5lRjCYEL79QsN.jpg', 'youtube', NULL, 'Maxidim', 1, 'Maxidim', 240.00, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"1gm\\/vial\",\"250mg\\/vial\",\"500mg\\/vial\"]}]', '[]', '{\"1gm\\/vial\":{\"price\":\"240\",\"sku\":\"M-1gm\\/vial\",\"qty\":\"10\"},\"250mg\\/vial\":{\"price\":\"85\",\"sku\":\"M-250mg\\/vial\",\"qty\":\"10\"},\"500mg\\/vial\":{\"price\":\"130\",\"sku\":\"M-500mg\\/vial\",\"qty\":\"10\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Maxidim', 'Maxidim', 'uploads/products/meta/CyShUsKKP8YJ7QCHdW3q3U2EtyYkeXP5sgdRQOuM.jpg', NULL, 'Maxidim-zrxch', '2021-09-17 01:24:14', '2021-09-17 01:24:14'),
(3032, 'Megadox', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/n0VOX6HCbihzLArGUseocCl8a3ypmylRvkGpkbz6.jpg\"]', 'uploads/products/thumbnail/RaemSbEDBuCU8KwAu7WuWEeAvPu2GzO9Rnae4Lpm.jpg', 'uploads/products/featured/zxlFamxRIVz7Th2mFnqRgcqPZLxpZwcchvhN0BOU.jpg', 'uploads/products/flash_deal/VraWUSYd3FLuFpE8iYTXI2YO8r9FVWfijY7gEJxM.jpg', 'youtube', NULL, 'Megadox', 1, 'Megadox', 2.16, NULL, '[{\"name\":\"choice_0\",\"title\":\"mg\",\"options\":[\"100mg\"]}]', '[]', '{\"100mg\":{\"price\":\"2.16\",\"sku\":\"M-100mg\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Megadox', 'Megadox', 'uploads/products/meta/5mxdFYz3B9D2CAXtLxj6bzbDtiPvANDnJF4isOjr.jpg', NULL, 'Megadox-Z75oV', '2021-09-17 01:26:36', '2021-09-17 01:26:36'),
(3033, 'Megatrim', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/boIHqtGAHvSi4W9zNdla8ny6FykWTTNAKWOBRW5h.jpg\"]', 'uploads/products/thumbnail/4djNnOAIQWTYt45AP8tnTbRmsOyEuATCiGK4DxNk.jpg', 'uploads/products/featured/RExg3GNRqspr8Umg8HTOpTgrPwLn6d4uvUXkWVf5.jpg', 'uploads/products/flash_deal/iINVpXsyFHUF1t6Dfru7jVJxFq6RcWsQ9uDfgeYc.jpg', 'youtube', NULL, 'Megatrim', 1, 'Megatrim', 22.17, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"200mg+40mg\\/5ml\"]}]', '[]', '{\"200mg+40mg\\/5ml\":{\"price\":\"22.17\",\"sku\":\"M-200mg+40mg\\/5ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Megatrim', 'Megatrim', 'uploads/products/meta/0CErpB9lD0ETF0TWGLIv7lnk3CGv8rrKq1gYKxpn.jpg', NULL, 'Megatrim-l2RqO', '2021-09-17 01:28:31', '2021-09-17 01:28:31'),
(3034, 'Melphin', 'admin', 65, 25, 100, 282, 145, '[\"uploads\\/products\\/photos\\/Qn4tHSX6QTCjFpaG4hlWZFRFuXJhOYlVLWjs1y4X.jpg\"]', 'uploads/products/thumbnail/6iJ4xQ28J9gPbDagsUUl5h1oLV1J86lGzBVoQ4jM.jpg', 'uploads/products/featured/uRqQw0L8atlCQ8ejTqhYKA66OvvnWqbF7SGKkCdW.jpg', 'uploads/products/flash_deal/LmjlXLPYOy8mHyw1rXnAiZoTOe4hK7FH8NfEOmh1.jpg', 'youtube', NULL, 'Melphin', 1, 'Melphin', 16.10, NULL, '[{\"name\":\"choice_0\",\"title\":\"ml\",\"options\":[\"50mg\\/ml\"]}]', '[]', '{\"50mg\\/ml\":{\"price\":\"16.10\",\"sku\":\"M-50mg\\/ml\",\"qty\":\"1000\"}}', 0, 0, 0, 0, 'Pcs', NULL, 'amount', NULL, 'amount', 'flat_rate', NULL, 0, 'Melphin', 'Melphin', 'uploads/products/meta/Vr1fHIhHoHWJRBT3UdbIuE4bXzEMobq4KtuEbO7g.jpg', NULL, 'Melphin-d4jRn', '2021-09-17 01:30:37', '2021-09-17 01:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stocks` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regular_medications`
--

CREATE TABLE `regular_medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regular_medications`
--

INSERT INTO `regular_medications` (`id`, `name`, `email`, `mobile`, `address`, `message`, `created_at`, `updated_at`) VALUES
(1, 'discount', 'admin@gmail.com', '000011112222', 'test', 'dfhfg hgdfh f', '2021-10-12 05:25:14', '2021-10-12 05:25:14'),
(2, 'bghkghkm', 'admin2@gmail.com', '000011112222', 'gfgzxdvb', 'sdfsgvh fgvf', '2021-10-12 05:26:19', '2021-10-12 05:26:19'),
(3, 'test ssstststysfy', 'admin3@gmail.com', '534165464', 'svbdfzgb sdfgvbdf sdgvdfgvb', 'sdgvsdf sdgvsdgv sdgvsdg sdfges', '2021-10-12 05:26:59', '2021-10-12 05:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `request_orders`
--

CREATE TABLE `request_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_orders`
--

INSERT INTO `request_orders` (`id`, `patient_name`, `phone`, `medicine_details`, `image`, `address`, `read`, `remark`, `comment`, `redate`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Md. Hasib Uzzaman', '01738356180', '1. napa\r\n2. vaxin', 'uploads/request_image/zW69VP7gvwo7N1IACsMjUTqrx2TMePtAEEIF5oFg.png', '3rd colony Lalkuthi,  mirpur-1', '1', 'positive', 'test', '2021-08-31', 1, NULL, NULL, '2021-06-28 23:02:52', '2021-08-15 00:54:11'),
(2, 'Md. Hasib Uzzaman', '01738356180', '555', NULL, '3rd colony Lalkuthi,  mirpur-1', '1', 'hnegative', 'test', '2021-09-02', 1, NULL, NULL, '2021-06-29 04:52:38', '2021-08-15 00:54:33'),
(3, 'Md. Hasib Uzzaman', '01738356180', 'fgdsgdfsgdfsg', 'uploads/request_image/gGl3w3K3UEUJDaHgc76SyEFVLLbFJKoF5rAE5grT.jpg', '3rd colony Lalkuthi,  mirpur-1', '1', NULL, NULL, NULL, 1, NULL, NULL, '2021-06-29 05:21:16', '2021-06-29 05:21:16'),
(4, 'Md. Hasib Uzzaman', '01738356180', 'raj', 'uploads/request_image/ObQOz2EaYJLYlYEUCzUGGytXYKJmUOYBdyzjl8Wj.png', 'raj', '1', NULL, NULL, NULL, 1, NULL, NULL, '2021-07-07 08:41:42', '2021-07-07 08:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2865, 128, 5, 'good', '2021-06-21 07:00:49', '2021-06-21 07:00:49'),
(2, 2865, 128, 4, 'sfgsdfgsdfgd', '2021-06-21 07:01:16', '2021-06-21 07:01:16'),
(3, 2865, 128, 3, 'xsgvxfgvxdg', '2021-06-21 07:01:49', '2021-06-21 07:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `rmhistories`
--

CREATE TABLE `rmhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rm_id` bigint(20) DEFAULT NULL,
  `discription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmhistories`
--

INSERT INTO `rmhistories` (`id`, `rm_id`, `discription`, `remark`, `remark_date`, `photo`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 2, 'test 2', 'negative', '2021-10-15', NULL, 1, NULL, NULL, '2021-10-13 10:49:39', '2021-10-13 10:49:39'),
(4, 2, 'test 3', 'negative', '2021-10-13', NULL, 1, NULL, NULL, '2021-10-13 10:55:29', '2021-10-13 10:55:29'),
(5, 2, 'test4', 'negative', '2021-10-21', NULL, 1, NULL, NULL, '2021-10-13 10:55:40', '2021-10-13 10:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"10\"]', '2018-10-10 04:39:47', '2019-07-02 07:28:42'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09'),
(5, 'Agent', '[\"11\"]', '2021-04-28 15:12:16', '2021-04-28 15:12:16'),
(6, 'test', '[\"1\",\"2\",\"3\"]', '2021-04-29 08:46:46', '2021-05-03 01:59:19'),
(7, 'super-admin', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\"]', '2021-08-29 07:04:56', '2021-08-29 07:04:56'),
(8, 'Supplier1', '[\"1\",\"2\",\"3\"]', '2021-09-12 19:30:30', '2021-09-12 19:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(1, 'saree', 1, '2019-05-28 02:54:51', '2019-05-28 02:54:51'),
(2, 'loremipsum0.44472254877522377', 1, '2019-05-30 08:45:01', '2019-05-30 08:45:01'),
(3, 'north face', 5, '2019-05-30 19:06:05', '2019-07-25 15:35:45'),
(4, 'FUCIDIN', 5, '2019-05-30 19:07:06', '2019-07-25 14:29:26'),
(5, 'Sony', 1, '2019-06-13 17:28:11', '2019-06-13 17:28:11'),
(6, 'CS141', 2, '2019-06-14 14:56:17', '2019-06-14 14:56:29'),
(7, 'Thermaltake Core V51 Black Casing # CA-1C6-00M1WN-03 CS141', 1, '2019-06-14 14:56:45', '2019-06-14 14:56:45'),
(8, 'agrecaltior', 1, '2019-06-16 07:20:33', '2019-06-16 07:20:33'),
(9, 'Maximen coffee', 4, '2019-06-16 14:51:04', '2019-07-17 19:09:27'),
(10, 'Cappuccino Maximen Coffee', 2, '2019-06-16 14:53:12', '2019-06-16 14:53:15'),
(11, 'oven', 1, '2019-06-16 18:26:13', '2019-06-16 18:26:13'),
(12, 'Bra', 1, '2019-06-18 02:49:02', '2019-06-18 02:49:02'),
(13, 'Bras', 1, '2019-06-18 02:49:19', '2019-06-18 02:49:19'),
(14, 'Dell E2316H 23 Inch', 1, '2019-06-18 05:32:15', '2019-06-18 05:32:15'),
(15, 'ball pen', 2, '2019-06-18 10:01:56', '2019-06-18 10:02:21'),
(16, 'mini fan', 2, '2019-06-18 19:39:27', '2019-06-18 19:40:09'),
(17, 'Beatrice', 1, '2019-06-20 15:56:44', '2019-06-20 15:56:44'),
(18, 't-shirt', 6, '2019-06-21 02:55:29', '2019-06-21 02:55:44'),
(19, 't-shirt', 1, '2019-06-21 02:55:29', '2019-06-21 02:55:29'),
(20, 'I have football', 2, '2019-06-21 02:59:53', '2019-06-21 03:00:10'),
(21, 'I have a football', 1, '2019-06-21 03:01:28', '2019-06-21 03:01:28'),
(22, 'air conditioner usb rechargeable small fan', 1, '2019-06-21 08:28:05', '2019-06-21 08:28:05'),
(23, 'Pudaier', 12, '2019-06-21 12:21:22', '2019-07-08 07:01:42'),
(24, 'PRINTER PRICE', 1, '2019-06-22 03:31:34', '2019-06-22 03:31:34'),
(25, 'printer', 2, '2019-06-22 03:32:11', '2019-06-23 21:19:36'),
(26, 'lesar printer', 1, '2019-06-23 21:18:26', '2019-06-23 21:18:26'),
(27, 'Samsung Galaxy M20', 1, '2019-06-27 05:43:32', '2019-06-27 05:43:32'),
(28, 'stand camera', 1, '2019-06-27 05:53:22', '2019-06-27 05:53:22'),
(29, 'acer', 1, '2019-06-27 11:02:31', '2019-06-27 11:02:31'),
(30, 'Vr box', 3, '2019-06-29 13:46:58', '2019-07-02 15:39:52'),
(31, 'gree Ac', 1, '2019-06-29 15:26:43', '2019-06-29 15:26:43'),
(32, 'portable projector', 1, '2019-07-02 06:48:00', '2019-07-02 06:48:00'),
(33, 'projector', 1, '2019-07-02 06:48:11', '2019-07-02 06:48:11'),
(34, 'vr box with vr remote', 3, '2019-07-02 15:40:17', '2019-07-02 15:40:30'),
(35, 'phone back cover', 1, '2019-07-04 10:07:00', '2019-07-04 10:07:00'),
(36, 'router', 4, '2019-07-06 05:50:01', '2019-07-06 05:50:04'),
(37, 'shirt', 1, '2019-07-06 07:29:55', '2019-07-06 07:29:55'),
(38, 'nari', 1, '2019-07-06 10:51:39', '2019-07-06 10:51:39'),
(39, 'frame', 2, '2019-07-06 13:33:12', '2019-07-06 13:33:16'),
(40, 'TDP6 TABLET PRESS', 1, '2019-07-06 19:30:47', '2019-07-06 19:30:47'),
(41, 'headphones', 1, '2019-07-07 05:18:33', '2019-07-07 05:18:33'),
(42, 'i phone headphones', 1, '2019-07-07 05:19:26', '2019-07-07 05:19:26'),
(43, 'Power Guard 650VA UPS (Plastic Body)', 2, '2019-07-07 05:55:39', '2019-07-07 05:56:34'),
(44, 'REMAX TWS-2', 1, '2019-07-07 09:29:29', '2019-07-07 09:29:29'),
(45, 'blender', 1, '2019-07-07 11:59:32', '2019-07-07 11:59:32'),
(46, 'Chiffon Georgette Saree S-30', 4, '2019-07-08 04:15:45', '2019-07-25 06:24:28'),
(47, 'TV', 1, '2019-07-08 07:12:16', '2019-07-08 07:12:16'),
(48, '55″X9000E Sony 4K HDR Android LED TV', 1, '2019-07-08 11:09:42', '2019-07-08 11:09:42'),
(49, 'Sports', 1, '2019-07-08 13:16:06', '2019-07-08 13:16:06'),
(50, 'CARD READER SIYOTEM 4 IN ONE M-630', 1, '2019-07-11 07:16:16', '2019-07-11 07:16:16'),
(51, 'HGA24W255M–Gas freestanding cooker Stainless steel', 1, '2019-07-11 10:24:06', '2019-07-11 10:24:06'),
(52, 'samsung guru', 2, '2019-07-11 10:26:52', '2019-07-11 10:26:54'),
(53, 'All E-Nr Number results for   SMS46KI10M', 2, '2019-07-11 10:27:31', '2019-07-11 10:34:14'),
(54, 'KDV29VL30- No Frost, Top freezer', 1, '2019-07-11 10:43:20', '2019-07-11 10:43:20'),
(55, 'Serie | 4 NoFrost, Top freezer Door color inox EasyClean', 1, '2019-07-11 10:43:39', '2019-07-11 10:43:39'),
(56, 'smart watch', 2, '2019-07-11 12:29:19', '2019-07-11 12:29:19'),
(57, 'Cream', 2, '2019-07-12 12:37:42', '2019-07-12 14:14:53'),
(58, 'loremipsum0.18745574623383143', 1, '2019-07-14 06:44:47', '2019-07-14 06:44:47'),
(59, 'mountblanc', 3, '2019-07-14 11:39:47', '2019-07-25 15:34:43'),
(60, 'montblanc', 3, '2019-07-14 11:40:51', '2019-07-25 15:45:34'),
(61, 'timberland', 3, '2019-07-14 11:58:31', '2019-07-25 15:42:29'),
(62, 'vancleef', 3, '2019-07-14 11:59:37', '2019-07-25 15:35:40'),
(63, 'vans', 3, '2019-07-14 12:10:38', '2019-07-25 14:30:31'),
(64, 'cartier', 3, '2019-07-14 12:11:29', '2019-07-25 14:31:37'),
(65, 'michael kors', 3, '2019-07-14 12:11:41', '2019-07-25 15:51:57'),
(66, 'tiffany', 3, '2019-07-14 12:12:43', '2019-07-25 14:30:37'),
(67, 'van cleef', 5, '2019-07-14 12:14:38', '2019-07-25 15:51:28'),
(68, 'iwc', 3, '2019-07-14 12:15:45', '2019-07-25 15:44:31'),
(69, 'dickies', 5, '2019-07-14 12:36:12', '2019-07-25 15:50:28'),
(70, 'tifany', 3, '2019-07-14 12:37:13', '2019-07-25 15:50:52'),
(71, 'northface', 3, '2019-07-14 13:00:59', '2019-07-25 15:43:32'),
(72, 'gucci', 3, '2019-07-14 13:02:04', '2019-07-25 15:34:32'),
(73, 'lipstick', 2, '2019-07-16 09:30:17', '2019-07-16 09:31:02'),
(74, 'Bisque Georgette Saree for Women BG-78', 15, '2019-07-17 04:47:01', '2019-07-25 06:18:07'),
(75, 'Georgette Pink and Black for Women PB-123', 8, '2019-07-17 05:44:44', '2019-07-25 06:16:27'),
(76, 'Fiberglass Measuring Tape 30M100 Feet', 1, '2019-07-17 05:49:22', '2019-07-17 05:49:22'),
(77, 'Georgette Pink and Black for Women', 2, '2019-07-17 11:12:45', '2019-07-17 11:12:46'),
(78, 'Georgette Sky Blue and Pink Saree for Women SBP-34', 2, '2019-07-18 04:22:23', '2019-07-25 06:17:32'),
(79, 'Red Georgette Designer Soft Party Wear Saree WS-09', 5, '2019-07-18 05:25:59', '2019-07-25 06:22:15'),
(80, 'Georgette Red And Beige Color Embroidered Saree With Unstitched Blouse', 1, '2019-07-18 10:16:22', '2019-07-18 10:16:22'),
(81, 'Crome cast', 1, '2019-07-18 15:55:56', '2019-07-18 15:55:56'),
(82, 'Cast', 1, '2019-07-18 16:01:36', '2019-07-18 16:01:36'),
(83, 'ফিরিপস ব্লেন্ডার', 4, '2019-07-20 15:26:52', '2019-07-20 15:36:29'),
(84, 'ফিলিপস ব্লেন্ডার', 1, '2019-07-20 15:34:14', '2019-07-20 15:34:14'),
(85, 'nima blender', 1, '2019-07-24 07:13:02', '2019-07-24 07:13:02'),
(86, 'Red and Golden Embroidered Georgette Saree for Women RG098', 1, '2019-07-25 06:23:39', '2019-07-25 06:23:39'),
(87, 'Amazing Party Saree AP-091', 2, '2019-07-25 06:24:09', '2019-07-25 06:24:10'),
(88, 'loremipsum0.558336377672967', 1, '2019-07-25 09:30:56', '2019-07-25 09:30:56'),
(89, 'loremipsum0.07685602821441506', 1, '2019-07-25 11:16:03', '2019-07-25 11:16:03'),
(90, 'pendrive', 1, '2019-07-25 13:23:05', '2019-07-25 13:23:05'),
(91, 'acyvir injection', 3, '2021-06-06 01:55:53', '2021-06-06 01:56:00'),
(92, 'napa rapid', 2, '2021-06-09 03:46:53', '2021-08-05 01:07:04'),
(93, 'a', 1, '2021-08-05 01:06:42', '2021-08-05 01:06:42'),
(94, 'baby', 3, '2021-08-05 01:06:49', '2021-08-05 01:06:57'),
(95, 'new', 1, '2021-08-05 01:07:02', '2021-08-05 01:07:02'),
(96, 'napa', 8, '2021-08-05 01:07:09', '2021-08-05 01:07:29'),
(97, 'rilovir', 1, '2021-09-13 04:30:34', '2021-09-13 04:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT 0,
  `verification_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT 0,
  `sslcommerz_status` int(1) NOT NULL DEFAULT 0,
  `stripe_status` int(1) DEFAULT 0,
  `paypal_status` int(1) NOT NULL DEFAULT 0,
  `paypal_client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_client_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_store_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_to_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Online shop in Bangladesh,Health care,Bangladesh big medicine store,medicine,medicine store,health care solution,first Bangladesh online Medicare', 'https://aponhealth.com/', 11, 'https://www.nextlink.com', 'AponHealth is your digital healthcare solution. We are here to help you look after your own health as a proactive measure helping you prevent illness as we strive to build a healthy community.', '2021-06-28 12:23:01', '2021-06-28 06:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addesses`
--

CREATE TABLE `shipping_addesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(11) DEFAULT NULL,
  `post_code` int(5) DEFAULT NULL,
  `label` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addesses`
--

INSERT INTO `shipping_addesses` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `region`, `city`, `area`, `shipping_cost`, `post_code`, `label`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(44, 333, 'shakil', 'shakil@gmail.com', '01234567890', 'London', '1', '3', '27', 100, 3434, 'Home', 1, NULL, NULL, '2021-09-21 02:11:55', '2021-09-21 02:11:55'),
(46, 335, 'shakil015', 'kmushakil64@gmail.com', '01533186152', 'test address 2', '1', '7', '63', 100, 99, 'Home', 1, NULL, NULL, '2021-09-21 18:12:40', '2021-09-21 19:16:03'),
(50, 339, 'shakil', 'kazimuhammadullah@gmail.com', '01533186152', 'London', '2', '15', '139', 100, 3434, NULL, NULL, NULL, NULL, '2021-09-21 22:10:46', '2021-09-21 22:10:46'),
(51, 340, 'towhid', 'towhid10@gmail.com', '07533498883', 'Dhaka', '6', '48', '512', 50, 1207, NULL, NULL, NULL, NULL, '2021-09-22 09:58:09', '2021-09-22 09:58:09'),
(52, 341, 'shakil', 'kazimuhammadullah@gmail.com', '01533186152', 'test address', '1', '7', '62', 100, 2233, 'Home', 1, NULL, NULL, '2021-09-22 18:30:17', '2021-09-22 18:30:17'),
(53, 342, 'shakil015', 'muhammadullah.shakil@gmail.com', '01718160843', 'test address.', '1', '9', '84', 100, 99, 'Home', 1, NULL, NULL, '2021-09-22 19:17:18', '2021-09-22 19:17:18'),
(54, 344, 'shakil', 'kazimuhammadullah@gmail.com', '01818004030', 'London', '2', '14', '130', 100, 3434, NULL, NULL, NULL, NULL, '2021-09-23 01:00:42', '2021-09-23 01:00:42'),
(55, 343, 'shakil', 'shakil@gmail.com', '+8801234567890', 'London', '1', '9', '82', 100, 3434, 'Home', 1, NULL, NULL, '2021-09-23 10:31:34', '2021-09-23 10:31:34'),
(56, 346, 'shakil015', 'kmushakil@gmail.com', '01533186152', 'test address', '4', '30', '231', 100, 4441, 'Home', 1, NULL, NULL, '2021-10-03 09:54:10', '2021-10-03 09:54:10'),
(57, 345, 'shakil', 'kazimuhammadullah@gmail.com', '01676026364', 'test address', '1', '3', '28', 100, 2258, 'Home', 1, NULL, NULL, '2021-10-04 09:35:02', '2021-10-04 09:35:02'),
(60, 357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 07:23:31', '2021-10-13 07:23:31'),
(61, 358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 07:40:53', '2021-10-13 07:40:53'),
(62, 359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 10:43:48', '2021-10-13 10:43:48'),
(65, 366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 14:39:50', '2021-10-13 14:39:50'),
(66, 367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 16:04:30', '2021-10-13 16:04:30'),
(67, 358, 'Shakil', 'kmushakil71@gmail.com', '01676026364', 'test address', '1', '5', '44', 120, 2255, 'Home', 1, NULL, NULL, '2021-10-19 09:18:39', '2021-10-19 09:18:39'),
(68, 372, 'charunta', 'charunta@gmail.com', '01886335833', 'test', '4', '33', '252', 120, 1144, 'Home', 1, NULL, NULL, '2021-10-19 14:13:41', '2021-10-19 14:13:41'),
(69, 365, 'shakil', 'kmushakil71@gmail.com', '01676026364', 'test address', '6', '48', '509', 50, 1216, 'Home', 1, NULL, NULL, '2021-10-26 07:13:45', '2021-12-22 14:06:22'),
(70, 374, 'shakil', 'charunta@gmail.com', '01676026364', 'test address', '1', '5', '43', 120, 1216, 'Home', 1, NULL, NULL, '2021-12-22 15:41:08', '2021-12-22 15:41:08'),
(71, 375, 'f2', 'kazimuhammadullah@gmail.com', '01676026364', 'hhhhhhh11111', '3', '22', '187', 120, 2222, 'Office', 1, NULL, NULL, '2022-01-12 11:02:03', '2022-03-08 09:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `title`, `price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka', '50', 1, NULL, NULL, '2021-08-04 09:00:39', '2021-08-05 01:02:06'),
(2, 'Outside Dhaka', '100', 1, NULL, NULL, '2021-08-04 09:01:48', '2021-08-05 01:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `created_at`, `updated_at`) VALUES
(1, 3, 'Demo Seller Shop', 'uploads/hop/logo/Gt1xw7vjTpMnwpADkGSilc35qrAfcw02kuZ36Jdn.png', '[]', 'House : Demo, Road : Demo, Section : Demo', 'www.facebook.com', 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', '2018-11-27 10:23:13', '2019-05-23 13:17:42'),
(2, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-19', '2019-05-20 00:43:53', '2019-05-20 00:43:53'),
(3, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-20', '2019-05-23 14:01:57', '2019-05-23 14:01:57'),
(4, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-21', '2019-05-23 19:50:14', '2019-05-23 19:50:14'),
(5, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-22', '2019-05-23 19:51:08', '2019-05-23 19:51:08'),
(6, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-23', '2019-05-23 19:52:00', '2019-05-23 19:52:00'),
(7, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-24', '2019-05-23 19:52:30', '2019-05-23 19:52:30'),
(8, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-25', '2019-05-23 19:52:59', '2019-05-23 19:52:59'),
(9, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-26', '2019-05-23 19:53:24', '2019-05-23 19:53:24'),
(10, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-27', '2019-05-23 19:54:19', '2019-05-23 19:54:19'),
(11, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-28', '2019-05-23 19:54:45', '2019-05-23 19:54:45'),
(12, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-29', '2019-05-23 19:55:13', '2019-05-23 19:55:13'),
(13, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-30', '2019-05-23 19:55:53', '2019-05-23 19:55:53'),
(14, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-31', '2019-05-23 20:00:54', '2019-05-23 20:00:54'),
(15, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-32', '2019-05-23 20:01:24', '2019-05-23 20:01:24'),
(16, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-33', '2019-05-23 20:01:53', '2019-05-23 20:01:53'),
(17, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-34', '2019-05-23 20:02:33', '2019-05-23 20:02:33'),
(18, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-35', '2019-05-23 20:03:19', '2019-05-23 20:03:19'),
(19, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-36', '2019-05-23 20:03:43', '2019-05-23 20:03:43'),
(20, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-37', '2019-05-23 20:07:06', '2019-05-23 20:07:06'),
(21, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-38', '2019-05-23 20:07:33', '2019-05-23 20:07:33'),
(22, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-39', '2019-05-23 20:07:57', '2019-05-23 20:07:57'),
(23, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-40', '2019-05-23 20:08:31', '2019-05-23 20:08:31'),
(24, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-41', '2019-05-23 20:08:55', '2019-05-23 20:08:55'),
(25, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-42', '2019-05-23 20:09:21', '2019-05-23 20:09:21'),
(26, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-43', '2019-05-23 20:10:32', '2019-05-23 20:10:32'),
(27, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-44', '2019-05-23 20:10:58', '2019-05-23 20:10:58'),
(28, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-45', '2019-05-23 20:11:24', '2019-05-23 20:11:24'),
(29, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-46', '2019-05-23 20:11:47', '2019-05-23 20:11:47'),
(30, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-48', '2019-05-27 13:13:01', '2019-05-27 13:13:01'),
(31, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-49', '2019-05-27 13:14:19', '2019-05-27 13:14:19'),
(32, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-50', '2019-05-27 13:17:25', '2019-05-27 13:17:25'),
(33, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-51', '2019-05-27 13:18:24', '2019-05-27 13:18:24'),
(34, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-52', '2019-05-27 13:47:09', '2019-05-27 13:47:09'),
(35, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-53', '2019-05-27 14:39:26', '2019-05-27 14:39:26'),
(36, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-54', '2019-05-27 14:42:03', '2019-05-27 14:42:03'),
(37, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-55', '2019-05-27 15:11:31', '2019-05-27 15:11:31'),
(38, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-56', '2019-05-28 11:34:50', '2019-05-28 11:34:50'),
(39, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-57', '2019-05-30 13:25:48', '2019-05-30 13:25:48'),
(40, 58, 'Umme Hani Shop', NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, 'Umme-Hani-Shop-', '2019-06-14 02:24:11', '2019-06-14 02:24:11'),
(41, 59, 'London Shop', NULL, NULL, 'London', NULL, NULL, NULL, NULL, 'London-Shop-', '2019-06-14 02:27:49', '2019-06-14 02:27:49'),
(42, 60, 'Test shop', NULL, NULL, 'dhaka', NULL, NULL, NULL, NULL, 'Test-shop-', '2019-06-14 02:34:30', '2019-06-14 02:34:30'),
(43, 61, 'Quality Shop', NULL, NULL, '2/133 Gulisthan shopping Complex Dhaka-1000', NULL, NULL, NULL, NULL, 'Quality-Shop-', '2019-06-16 18:04:06', '2019-06-16 18:04:06'),
(44, 95, 'Pudaier', NULL, NULL, 'Banani, Dhaka', NULL, NULL, NULL, NULL, 'Pudaier-', '2019-06-21 11:08:28', '2019-06-21 11:08:28'),
(45, 104, 'Kenakatabd', NULL, '[]', 'Dhanmondi', 'Facebook.com/shopkenakata', NULL, NULL, NULL, 'Kenakatabd-', '2019-06-22 10:59:45', '2019-06-22 11:00:37'),
(46, 106, 'Haque International', 'uploads/hop/logo/lMks4amhFmaFtjpJ6gAJtcFmrZNSnDki8nyzVZzu.png', '[\"uploads\\/shop\\/sliders\\/phvQzgYqMOyOSTeA4rS6Vqumbh4hU3BVAEQENrkG.png\"]', 'House no.26/3, Jigatola, Puraton Kacha Bazar Road, Dhaka - 1209', NULL, NULL, NULL, NULL, 'Haque-International-46', '2019-06-23 14:11:35', '2019-06-23 14:21:09'),
(47, 108, 'EsonMay', NULL, '[]', 'GUANGZHOU, China', NULL, NULL, NULL, NULL, 'EsonMay-47', '2019-07-02 07:30:54', '2019-07-02 07:51:40'),
(48, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demo-shop-73', '2021-04-27 01:30:24', '2021-04-27 01:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `created_at`, `updated_at`) VALUES
(31, 'uploads/sliders/2VbPg311MjkDqUysabxDeqd8glYuTwJSOIuheHxp.jpg', 1, '2021-08-31 01:45:41', '2021-08-31 01:45:41'),
(32, 'uploads/sliders/VWuUU1WjVyQLRTnMdWJDGSZnHwwcDDK7XZzS2gnK.jpg', 1, '2021-08-31 01:45:41', '2021-08-31 01:45:41'),
(33, 'uploads/sliders/wQJBQa4RLEChA0Aq2XsbIbRvDP4wzlVfV02AjYV5.jpg', 1, '2021-08-31 01:45:41', '2021-08-31 01:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `softcodes`
--

CREATE TABLE `softcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `softcodes`
--

INSERT INTO `softcodes` (`id`, `name`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'sales_commission', NULL, '71', NULL, '2021-06-08 00:27:59', '2021-06-08 03:31:32'),
(6, 'ref_commission', NULL, '71', NULL, '2021-06-08 03:35:35', '2021-06-08 03:35:35'),
(7, 'test', NULL, '65', NULL, '2021-09-19 03:09:29', '2021-09-19 03:09:29'),
(8, 'discount', NULL, '65', NULL, '2021-10-04 12:29:59', '2021-10-04 12:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamount` bigint(20) DEFAULT NULL,
  `upto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uamount` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `title`, `tamount`, `upto`, `uamount`, `status`, `coupon`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cashback', 100, 'upto', 5000, 1, NULL, NULL, NULL, '2021-08-05 06:50:32', '2021-08-05 06:50:32'),
(2, 'Cashback', 80, 'upto', 4000, 1, NULL, NULL, NULL, '2021-08-05 06:51:07', '2021-08-05 06:51:07'),
(3, 'Cashback', 60, 'upto', 3000, 1, NULL, NULL, NULL, '2021-08-05 06:51:29', '2021-08-05 06:51:29'),
(4, 'Cashback', 40, 'upto', 2000, 1, NULL, NULL, NULL, '2021-08-05 06:51:48', '2021-08-05 06:51:48'),
(5, 'Cashback', 20, 'upto', 1000, 1, NULL, NULL, NULL, '2021-08-05 06:52:09', '2021-08-05 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(11, 318, 1, '2021-09-12 19:09:58', '2021-09-12 19:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tonnishanto@gmail.com', '2019-04-28 06:42:26', '2019-04-28 06:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(98, 'Diabetes Medicine', 25, 'Diabetes Medicine', '2021-09-14 18:55:45', '2021-09-14 18:55:45'),
(99, 'OTC', 25, 'OTC', '2021-09-14 18:56:10', '2021-09-14 18:56:10'),
(100, 'Prescription', 25, 'Prescription', '2021-09-14 18:56:40', '2021-09-14 18:56:40'),
(101, 'Insulin', 25, 'Insulin', '2021-09-14 18:57:03', '2021-09-14 18:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `brands` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `brands`, `description`, `created_at`, `updated_at`) VALUES
(280, 98, 'Diabetes Medicine', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', 'Diabetes Medicine', '2021-09-14 19:45:54', '2021-09-14 21:10:26'),
(281, 99, 'OTC', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', 'OTC', '2021-09-14 21:11:38', '2021-09-14 21:11:38'),
(282, 100, 'Prescription', '[\"145\",\"146\",\"147\",\"148\",\"149\",\"150\",\"151\",\"152\",\"153\",\"154\",\"155\",\"156\"]', 'Prescription', '2021-09-14 21:27:51', '2021-09-14 21:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `ref_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `ref_by`, `status`, `earning_type`, `earning_date`, `amount`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(21, 333, NULL, 'AFF64188157', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-21 18:08:43', '2021-09-21 18:08:43'),
(22, 333, 223, NULL, 'Paid', 'Sales Commission', NULL, 60, NULL, NULL, NULL, '2021-09-21 21:39:58', '2021-09-21 21:39:58'),
(23, 340, NULL, 'AFF79147825', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-09-22 18:27:54', '2021-09-22 18:27:54'),
(24, 340, 234, NULL, 'Paid', 'Sales Commission', NULL, 113, NULL, NULL, NULL, '2021-09-23 00:12:47', '2021-09-23 00:12:47'),
(25, 345, NULL, 'AFF96786623', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-03 09:52:03', '2021-10-03 09:52:03'),
(26, 345, 241, NULL, 'Paid', 'Sales Commission', NULL, 1350, NULL, NULL, NULL, '2021-10-03 09:57:25', '2021-10-03 09:57:25'),
(27, 345, 241, NULL, 'Paid', 'Sales Commission Refund', NULL, 1350, NULL, NULL, NULL, '2021-10-03 09:59:29', '2021-10-03 09:59:29'),
(28, 345, 242, NULL, 'Paid', 'Sales Commission', NULL, 128, NULL, NULL, NULL, '2021-10-03 10:17:28', '2021-10-03 10:17:28'),
(29, 345, 242, NULL, 'Paid', 'Sales Commission Refund', NULL, 128, NULL, NULL, NULL, '2021-10-03 10:17:47', '2021-10-03 10:17:47'),
(30, 358, NULL, '10001', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-19 13:48:20', '2021-10-19 13:48:20'),
(31, 358, NULL, '10001', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-19 14:03:42', '2021-10-19 14:03:42'),
(32, 358, NULL, '10001', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-19 14:05:49', '2021-10-19 14:05:49'),
(33, 358, NULL, '10001', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-19 14:06:39', '2021-10-19 14:06:39'),
(34, 371, NULL, '10002', 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-10-19 14:08:17', '2021-10-19 14:08:17'),
(35, 65, NULL, NULL, 'Pending', 'Reference', NULL, 12, NULL, NULL, NULL, '2021-12-22 15:14:31', '2021-12-22 15:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(3) NOT NULL,
  `district_id` int(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `shipping_cost` int(11) DEFAULT 100,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `shipping_cost`, `bn_name`, `url`, `updated_at`, `created_at`) VALUES
(1, 1, 'Debidwar', 140, 'দেবিদ্বার', 'debidwar.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(2, 1, 'Barura', 140, 'বরুড়া', 'barura.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(3, 1, 'Brahmanpara', 140, 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(4, 1, 'Chandina', 140, 'চান্দিনা', 'chandina.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(5, 1, 'Chauddagram', 140, 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(6, 1, 'Daudkandi', 140, 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(7, 1, 'Homna', 140, 'হোমনা', 'homna.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(8, 1, 'Laksam', 140, 'লাকসাম', 'laksam.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(9, 1, 'Muradnagar', 140, 'মুরাদনগর', 'muradnagar.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(10, 1, 'Nangalkot', 140, 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(11, 1, 'Comilla Sadar', 140, 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(12, 1, 'Meghna', 140, 'মেঘনা', 'meghna.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(13, 1, 'Monohargonj', 140, 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(14, 1, 'Sadarsouth', 140, 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(15, 1, 'Titas', 140, 'তিতাস', 'titas.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(16, 1, 'Burichang', 140, 'বুড়িচং', 'burichang.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(17, 1, 'Lalmai', 140, 'লালমাই', 'lalmai.comilla.gov.bd', '2021-12-21 09:45:31.000000', NULL),
(18, 2, 'Chhagalnaiya', 120, 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', NULL, NULL),
(19, 2, 'Feni Sadar', 120, 'ফেনী সদর', 'sadar.feni.gov.bd', NULL, NULL),
(20, 2, 'Sonagazi', 120, 'সোনাগাজী', 'sonagazi.feni.gov.bd', NULL, NULL),
(21, 2, 'Fulgazi', 120, 'ফুলগাজী', 'fulgazi.feni.gov.bd', NULL, NULL),
(22, 2, 'Parshuram', 120, 'পরশুরাম', 'parshuram.feni.gov.bd', NULL, NULL),
(23, 2, 'Daganbhuiyan', 120, 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', NULL, NULL),
(24, 3, 'Brahmanbaria Sadar', 30, 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(25, 3, 'Kasba', 30, 'কসবা', 'kasba.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(26, 3, 'Nasirnagar', 30, 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(27, 3, 'Sarail', 30, 'সরাইল', 'sarail.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(28, 3, 'Ashuganj', 30, 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(29, 3, 'Akhaura', 30, 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(30, 3, 'Nabinagar', 30, 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(31, 3, 'Bancharampur', 30, 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', '2021-12-21 10:36:45.000000', NULL),
(32, 3, 'Bijoynagar', 30, 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', '2021-12-21 10:36:45.000000', NULL),
(33, 4, 'Rangamati Sadar', 120, 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', NULL, NULL),
(34, 4, 'Kaptai', 120, 'কাপ্তাই', 'kaptai.rangamati.gov.bd', NULL, NULL),
(35, 4, 'Kawkhali', 120, 'কাউখালী', 'kawkhali.rangamati.gov.bd', NULL, NULL),
(36, 4, 'Baghaichari', 120, 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', NULL, NULL),
(37, 4, 'Barkal', 120, 'বরকল', 'barkal.rangamati.gov.bd', NULL, NULL),
(38, 4, 'Langadu', 120, 'লংগদু', 'langadu.rangamati.gov.bd', NULL, NULL),
(39, 4, 'Rajasthali', 120, 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', NULL, NULL),
(40, 4, 'Belaichari', 120, 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', NULL, NULL),
(41, 4, 'Juraichari', 120, 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', NULL, NULL),
(42, 4, 'Naniarchar', 120, 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', NULL, NULL),
(43, 5, 'Noakhali Sadar', 100, 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(44, 5, 'Companiganj', 100, 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(45, 5, 'Begumganj', 100, 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(46, 5, 'Hatia', 100, 'হাতিয়া', 'hatia.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(47, 5, 'Subarnachar', 100, 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(48, 5, 'Kabirhat', 100, 'কবিরহাট', 'kabirhat.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(49, 5, 'Senbug', 100, 'সেনবাগ', 'senbug.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(50, 5, 'Chatkhil', 100, 'চাটখিল', 'chatkhil.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(51, 5, 'Sonaimori', 100, 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', '2021-12-22 15:53:32.000000', NULL),
(52, 6, 'Haimchar', 120, 'হাইমচর', 'haimchar.chandpur.gov.bd', NULL, NULL),
(53, 6, 'Kachua', 120, 'কচুয়া', 'kachua.chandpur.gov.bd', NULL, NULL),
(54, 6, 'Shahrasti', 120, 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', NULL, NULL),
(55, 6, 'Chandpur Sadar', 120, 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', NULL, NULL),
(56, 6, 'Matlab South', 120, 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', NULL, NULL),
(57, 6, 'Hajiganj', 120, 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', NULL, NULL),
(58, 6, 'Matlab North', 120, 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', NULL, NULL),
(59, 6, 'Faridgonj', 120, 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', NULL, NULL),
(60, 7, 'Lakshmipur Sadar', 120, 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', NULL, NULL),
(61, 7, 'Kamalnagar', 120, 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', NULL, NULL),
(62, 7, 'Raipur', 120, 'রায়পুর', 'raipur.lakshmipur.gov.bd', NULL, NULL),
(63, 7, 'Ramgati', 120, 'রামগতি', 'ramgati.lakshmipur.gov.bd', NULL, NULL),
(64, 7, 'Ramganj', 120, 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', NULL, NULL),
(65, 8, 'Rangunia', 120, 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', NULL, NULL),
(66, 8, 'Sitakunda', 120, 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', NULL, NULL),
(67, 8, 'Mirsharai', 120, 'মীরসরাই', 'mirsharai.chittagong.gov.bd', NULL, NULL),
(68, 8, 'Patiya', 120, 'পটিয়া', 'patiya.chittagong.gov.bd', NULL, NULL),
(69, 8, 'Sandwip', 120, 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', NULL, NULL),
(70, 8, 'Banshkhali', 120, 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', NULL, NULL),
(71, 8, 'Boalkhali', 120, 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', NULL, NULL),
(72, 8, 'Anwara', 120, 'আনোয়ারা', 'anwara.chittagong.gov.bd', NULL, NULL),
(73, 8, 'Chandanaish', 120, 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', NULL, NULL),
(74, 8, 'Satkania', 120, 'সাতকানিয়া', 'satkania.chittagong.gov.bd', NULL, NULL),
(75, 8, 'Lohagara', 120, 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', NULL, NULL),
(76, 8, 'Hathazari', 120, 'হাটহাজারী', 'hathazari.chittagong.gov.bd', NULL, NULL),
(77, 8, 'Fatikchhari', 120, 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', NULL, NULL),
(78, 8, 'Raozan', 120, 'রাউজান', 'raozan.chittagong.gov.bd', NULL, NULL),
(79, 8, 'Karnafuli', 120, 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', NULL, NULL),
(80, 9, 'Coxsbazar Sadar', 120, 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', NULL, NULL),
(81, 9, 'Chakaria', 120, 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', NULL, NULL),
(82, 9, 'Kutubdia', 120, 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', NULL, NULL),
(83, 9, 'Ukhiya', 120, 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', NULL, NULL),
(84, 9, 'Moheshkhali', 120, 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', NULL, NULL),
(85, 9, 'Pekua', 120, 'পেকুয়া', 'pekua.coxsbazar.gov.bd', NULL, NULL),
(86, 9, 'Ramu', 120, 'রামু', 'ramu.coxsbazar.gov.bd', NULL, NULL),
(87, 9, 'Teknaf', 120, 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', NULL, NULL),
(88, 10, 'Khagrachhari Sadar', 120, 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', NULL, NULL),
(89, 10, 'Dighinala', 120, 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', NULL, NULL),
(90, 10, 'Panchari', 120, 'পানছড়ি', 'panchari.khagrachhari.gov.bd', NULL, NULL),
(91, 10, 'Laxmichhari', 120, 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', NULL, NULL),
(92, 10, 'Mohalchari', 120, 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', NULL, NULL),
(93, 10, 'Manikchari', 120, 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', NULL, NULL),
(94, 10, 'Ramgarh', 120, 'রামগড়', 'ramgarh.khagrachhari.gov.bd', NULL, NULL),
(95, 10, 'Matiranga', 120, 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', NULL, NULL),
(96, 10, 'Guimara', 120, 'গুইমারা', 'guimara.khagrachhari.gov.bd', NULL, NULL),
(97, 11, 'Bandarban Sadar', 120, 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', NULL, NULL),
(98, 11, 'Alikadam', 120, 'আলীকদম', 'alikadam.bandarban.gov.bd', NULL, NULL),
(99, 11, 'Naikhongchhari', 120, 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', NULL, NULL),
(100, 11, 'Rowangchhari', 120, 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', NULL, NULL),
(101, 11, 'Lama', 120, 'লামা', 'lama.bandarban.gov.bd', NULL, NULL),
(102, 11, 'Ruma', 120, 'রুমা', 'ruma.bandarban.gov.bd', NULL, NULL),
(103, 11, 'Thanchi', 120, 'থানচি', 'thanchi.bandarban.gov.bd', NULL, NULL),
(104, 12, 'Belkuchi', 120, 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', NULL, NULL),
(105, 12, 'Chauhali', 120, 'চৌহালি', 'chauhali.sirajganj.gov.bd', NULL, NULL),
(106, 12, 'Kamarkhand', 120, 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', NULL, NULL),
(107, 12, 'Kazipur', 120, 'কাজীপুর', 'kazipur.sirajganj.gov.bd', NULL, NULL),
(108, 12, 'Raigonj', 120, 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', NULL, NULL),
(109, 12, 'Shahjadpur', 120, 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', NULL, NULL),
(110, 12, 'Sirajganj Sadar', 120, 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', NULL, NULL),
(111, 12, 'Tarash', 120, 'তাড়াশ', 'tarash.sirajganj.gov.bd', NULL, NULL),
(112, 12, 'Ullapara', 120, 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', NULL, NULL),
(113, 13, 'Sujanagar', 120, 'সুজানগর', 'sujanagar.pabna.gov.bd', NULL, NULL),
(114, 13, 'Ishurdi', 120, 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', NULL, NULL),
(115, 13, 'Bhangura', 120, 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', NULL, NULL),
(116, 13, 'Pabna Sadar', 120, 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', NULL, NULL),
(117, 13, 'Bera', 120, 'বেড়া', 'bera.pabna.gov.bd', NULL, NULL),
(118, 13, 'Atghoria', 120, 'আটঘরিয়া', 'atghoria.pabna.gov.bd', NULL, NULL),
(119, 13, 'Chatmohar', 120, 'চাটমোহর', 'chatmohar.pabna.gov.bd', NULL, NULL),
(120, 13, 'Santhia', 120, 'সাঁথিয়া', 'santhia.pabna.gov.bd', NULL, NULL),
(121, 13, 'Faridpur', 120, 'ফরিদপুর', 'faridpur.pabna.gov.bd', NULL, NULL),
(122, 14, 'Kahaloo', 120, 'কাহালু', 'kahaloo.bogra.gov.bd', NULL, NULL),
(123, 14, 'Bogra Sadar', 120, 'বগুড়া সদর', 'sadar.bogra.gov.bd', NULL, NULL),
(124, 14, 'Shariakandi', 120, 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', NULL, NULL),
(125, 14, 'Shajahanpur', 120, 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', NULL, NULL),
(126, 14, 'Dupchanchia', 120, 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', NULL, NULL),
(127, 14, 'Adamdighi', 120, 'আদমদিঘি', 'adamdighi.bogra.gov.bd', NULL, NULL),
(128, 14, 'Nondigram', 120, 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', NULL, NULL),
(129, 14, 'Sonatala', 120, 'সোনাতলা', 'sonatala.bogra.gov.bd', NULL, NULL),
(130, 14, 'Dhunot', 120, 'ধুনট', 'dhunot.bogra.gov.bd', NULL, NULL),
(131, 14, 'Gabtali', 120, 'গাবতলী', 'gabtali.bogra.gov.bd', NULL, NULL),
(132, 14, 'Sherpur', 120, 'শেরপুর', 'sherpur.bogra.gov.bd', NULL, NULL),
(133, 14, 'Shibganj', 120, 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', NULL, NULL),
(134, 15, 'Paba', 120, 'পবা', 'paba.rajshahi.gov.bd', NULL, NULL),
(135, 15, 'Durgapur', 120, 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', NULL, NULL),
(136, 15, 'Mohonpur', 120, 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', NULL, NULL),
(137, 15, 'Charghat', 120, 'চারঘাট', 'charghat.rajshahi.gov.bd', NULL, NULL),
(138, 15, 'Puthia', 120, 'পুঠিয়া', 'puthia.rajshahi.gov.bd', NULL, NULL),
(139, 15, 'Bagha', 120, 'বাঘা', 'bagha.rajshahi.gov.bd', NULL, NULL),
(140, 15, 'Godagari', 120, 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', NULL, NULL),
(141, 15, 'Tanore', 120, 'তানোর', 'tanore.rajshahi.gov.bd', NULL, NULL),
(142, 15, 'Bagmara', 120, 'বাগমারা', 'bagmara.rajshahi.gov.bd', NULL, NULL),
(143, 16, 'Natore Sadar', 120, 'নাটোর সদর', 'natoresadar.natore.gov.bd', NULL, NULL),
(144, 16, 'Singra', 120, 'সিংড়া', 'singra.natore.gov.bd', NULL, NULL),
(145, 16, 'Baraigram', 120, 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', NULL, NULL),
(146, 16, 'Bagatipara', 120, 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', NULL, NULL),
(147, 16, 'Lalpur', 120, 'লালপুর', 'lalpur.natore.gov.bd', NULL, NULL),
(148, 16, 'Gurudaspur', 120, 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', NULL, NULL),
(149, 16, 'Naldanga', 120, 'নলডাঙ্গা', 'naldanga.natore.gov.bd', NULL, NULL),
(150, 17, 'Akkelpur', 120, 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', NULL, NULL),
(151, 17, 'Kalai', 120, 'কালাই', 'kalai.joypurhat.gov.bd', NULL, NULL),
(152, 17, 'Khetlal', 120, 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', NULL, NULL),
(153, 17, 'Panchbibi', 120, 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', NULL, NULL),
(154, 17, 'Joypurhat Sadar', 120, 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', NULL, NULL),
(155, 18, 'Chapainawabganj Sadar', 120, 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', NULL, NULL),
(156, 18, 'Gomostapur', 120, 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', NULL, NULL),
(157, 18, 'Nachol', 120, 'নাচোল', 'nachol.chapainawabganj.gov.bd', NULL, NULL),
(158, 18, 'Bholahat', 120, 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', NULL, NULL),
(159, 18, 'Shibganj', 120, 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', NULL, NULL),
(160, 19, 'Mohadevpur', 120, 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', NULL, NULL),
(161, 19, 'Badalgachi', 120, 'বদলগাছী', 'badalgachi.naogaon.gov.bd', NULL, NULL),
(162, 19, 'Patnitala', 120, 'পত্নিতলা', 'patnitala.naogaon.gov.bd', NULL, NULL),
(163, 19, 'Dhamoirhat', 120, 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', NULL, NULL),
(164, 19, 'Niamatpur', 120, 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', NULL, NULL),
(165, 19, 'Manda', 120, 'মান্দা', 'manda.naogaon.gov.bd', NULL, NULL),
(166, 19, 'Atrai', 120, 'আত্রাই', 'atrai.naogaon.gov.bd', NULL, NULL),
(167, 19, 'Raninagar', 120, 'রাণীনগর', 'raninagar.naogaon.gov.bd', NULL, NULL),
(168, 19, 'Naogaon Sadar', 120, 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', NULL, NULL),
(169, 19, 'Porsha', 120, 'পোরশা', 'porsha.naogaon.gov.bd', NULL, NULL),
(170, 19, 'Sapahar', 120, 'সাপাহার', 'sapahar.naogaon.gov.bd', NULL, NULL),
(171, 20, 'Manirampur', 120, 'মণিরামপুর', 'manirampur.jessore.gov.bd', NULL, NULL),
(172, 20, 'Abhaynagar', 120, 'অভয়নগর', 'abhaynagar.jessore.gov.bd', NULL, NULL),
(173, 20, 'Bagherpara', 120, 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', NULL, NULL),
(174, 20, 'Chougachha', 120, 'চৌগাছা', 'chougachha.jessore.gov.bd', NULL, NULL),
(175, 20, 'Jhikargacha', 120, 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', NULL, NULL),
(176, 20, 'Keshabpur', 120, 'কেশবপুর', 'keshabpur.jessore.gov.bd', NULL, NULL),
(177, 20, 'Jessore Sadar', 120, 'যশোর সদর', 'sadar.jessore.gov.bd', NULL, NULL),
(178, 20, 'Sharsha', 120, 'শার্শা', 'sharsha.jessore.gov.bd', NULL, NULL),
(179, 21, 'Assasuni', 120, 'আশাশুনি', 'assasuni.satkhira.gov.bd', NULL, NULL),
(180, 21, 'Debhata', 120, 'দেবহাটা', 'debhata.satkhira.gov.bd', NULL, NULL),
(181, 21, 'Kalaroa', 120, 'কলারোয়া', 'kalaroa.satkhira.gov.bd', NULL, NULL),
(182, 21, 'Satkhira Sadar', 120, 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', NULL, NULL),
(183, 21, 'Shyamnagar', 120, 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', NULL, NULL),
(184, 21, 'Tala', 120, 'তালা', 'tala.satkhira.gov.bd', NULL, NULL),
(185, 21, 'Kaliganj', 120, 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', NULL, NULL),
(186, 22, 'Mujibnagar', 120, 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', NULL, NULL),
(187, 22, 'Meherpur Sadar', 120, 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', NULL, NULL),
(188, 22, 'Gangni', 120, 'গাংনী', 'gangni.meherpur.gov.bd', NULL, NULL),
(189, 23, 'Narail Sadar', 120, 'নড়াইল সদর', 'narailsadar.narail.gov.bd', NULL, NULL),
(190, 23, 'Lohagara', 120, 'লোহাগড়া', 'lohagara.narail.gov.bd', NULL, NULL),
(191, 23, 'Kalia', 120, 'কালিয়া', 'kalia.narail.gov.bd', NULL, NULL),
(192, 24, 'Chuadanga Sadar', 120, 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', NULL, NULL),
(193, 24, 'Alamdanga', 120, 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', NULL, NULL),
(194, 24, 'Damurhuda', 120, 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', NULL, NULL),
(195, 24, 'Jibannagar', 120, 'জীবননগর', 'jibannagar.chuadanga.gov.bd', NULL, NULL),
(196, 25, 'Kushtia Sadar', 120, 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', NULL, NULL),
(197, 25, 'Kumarkhali', 120, 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', NULL, NULL),
(198, 25, 'Khoksa', 120, 'খোকসা', 'khoksa.kushtia.gov.bd', NULL, NULL),
(199, 25, 'Mirpur', 120, 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', NULL, NULL),
(200, 25, 'Daulatpur', 120, 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', NULL, NULL),
(201, 25, 'Bheramara', 120, 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', NULL, NULL),
(202, 26, 'Shalikha', 120, 'শালিখা', 'shalikha.magura.gov.bd', NULL, NULL),
(203, 26, 'Sreepur', 120, 'শ্রীপুর', 'sreepur.magura.gov.bd', NULL, NULL),
(204, 26, 'Magura Sadar', 120, 'মাগুরা সদর', 'magurasadar.magura.gov.bd', NULL, NULL),
(205, 26, 'Mohammadpur', 120, 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', NULL, NULL),
(206, 27, 'Paikgasa', 120, 'পাইকগাছা', 'paikgasa.khulna.gov.bd', NULL, NULL),
(207, 27, 'Fultola', 120, 'ফুলতলা', 'fultola.khulna.gov.bd', NULL, NULL),
(208, 27, 'Digholia', 120, 'দিঘলিয়া', 'digholia.khulna.gov.bd', NULL, NULL),
(209, 27, 'Rupsha', 120, 'রূপসা', 'rupsha.khulna.gov.bd', NULL, NULL),
(210, 27, 'Terokhada', 120, 'তেরখাদা', 'terokhada.khulna.gov.bd', NULL, NULL),
(211, 27, 'Dumuria', 120, 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', NULL, NULL),
(212, 27, 'Botiaghata', 120, 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', NULL, NULL),
(213, 27, 'Dakop', 120, 'দাকোপ', 'dakop.khulna.gov.bd', NULL, NULL),
(214, 27, 'Koyra', 120, 'কয়রা', 'koyra.khulna.gov.bd', NULL, NULL),
(215, 28, 'Fakirhat', 120, 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', NULL, NULL),
(216, 28, 'Bagerhat Sadar', 120, 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', NULL, NULL),
(217, 28, 'Mollahat', 120, 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', NULL, NULL),
(218, 28, 'Sarankhola', 120, 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', NULL, NULL),
(219, 28, 'Rampal', 120, 'রামপাল', 'rampal.bagerhat.gov.bd', NULL, NULL),
(220, 28, 'Morrelganj', 120, 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', NULL, NULL),
(221, 28, 'Kachua', 120, 'কচুয়া', 'kachua.bagerhat.gov.bd', NULL, NULL),
(222, 28, 'Mongla', 120, 'মোংলা', 'mongla.bagerhat.gov.bd', NULL, NULL),
(223, 28, 'Chitalmari', 120, 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', NULL, NULL),
(224, 29, 'Jhenaidah Sadar', 120, 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', NULL, NULL),
(225, 29, 'Shailkupa', 120, 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', NULL, NULL),
(226, 29, 'Harinakundu', 120, 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', NULL, NULL),
(227, 29, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', NULL, NULL),
(228, 29, 'Kotchandpur', 120, 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', NULL, NULL),
(229, 29, 'Moheshpur', 120, 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', NULL, NULL),
(230, 30, 'Jhalakathi Sadar', 120, 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', NULL, NULL),
(231, 30, 'Kathalia', 120, 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', NULL, NULL),
(232, 30, 'Nalchity', 120, 'নলছিটি', 'nalchity.jhalakathi.gov.bd', NULL, NULL),
(233, 30, 'Rajapur', 120, 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', NULL, NULL),
(234, 31, 'Bauphal', 55, 'বাউফল', 'bauphal.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(235, 31, 'Patuakhali Sadar', 55, 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(236, 31, 'Dumki', 55, 'দুমকি', 'dumki.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(237, 31, 'Dashmina', 55, 'দশমিনা', 'dashmina.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(238, 31, 'Kalapara', 55, 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(239, 31, 'Mirzaganj', 55, 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(240, 31, 'Galachipa', 55, 'গলাচিপা', 'galachipa.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(241, 31, 'Rangabali', 55, 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', '2021-12-21 10:42:32.000000', NULL),
(242, 32, 'Pirojpur Sadar', 120, 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', NULL, NULL),
(243, 32, 'Nazirpur', 120, 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', NULL, NULL),
(244, 32, 'Kawkhali', 120, 'কাউখালী', 'kawkhali.pirojpur.gov.bd', NULL, NULL),
(245, 32, 'Zianagar', 120, 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', NULL, NULL),
(246, 32, 'Bhandaria', 120, 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', NULL, NULL),
(247, 32, 'Mathbaria', 120, 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', NULL, NULL),
(248, 32, 'Nesarabad', 120, 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', NULL, NULL),
(249, 33, 'Barisal Sadar', 120, 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', NULL, NULL),
(250, 33, 'Bakerganj', 120, 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', NULL, NULL),
(251, 33, 'Babuganj', 120, 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', NULL, NULL),
(252, 33, 'Wazirpur', 120, 'উজিরপুর', 'wazirpur.barisal.gov.bd', NULL, NULL),
(253, 33, 'Banaripara', 120, 'বানারীপাড়া', 'banaripara.barisal.gov.bd', NULL, NULL),
(254, 33, 'Gournadi', 120, 'গৌরনদী', 'gournadi.barisal.gov.bd', NULL, NULL),
(255, 33, 'Agailjhara', 120, 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', NULL, NULL),
(256, 33, 'Mehendiganj', 120, 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', NULL, NULL),
(257, 33, 'Muladi', 120, 'মুলাদী', 'muladi.barisal.gov.bd', NULL, NULL),
(258, 33, 'Hizla', 120, 'হিজলা', 'hizla.barisal.gov.bd', NULL, NULL),
(259, 34, 'Bhola Sadar', 120, 'ভোলা সদর', 'sadar.bhola.gov.bd', NULL, NULL),
(260, 34, 'Borhan Sddin', 120, 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', NULL, NULL),
(261, 34, 'Charfesson', 120, 'চরফ্যাশন', 'charfesson.bhola.gov.bd', NULL, NULL),
(262, 34, 'Doulatkhan', 120, 'দৌলতখান', 'doulatkhan.bhola.gov.bd', NULL, NULL),
(263, 34, 'Monpura', 120, 'মনপুরা', 'monpura.bhola.gov.bd', NULL, NULL),
(264, 34, 'Tazumuddin', 120, 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', NULL, NULL),
(265, 34, 'Lalmohan', 120, 'লালমোহন', 'lalmohan.bhola.gov.bd', NULL, NULL),
(266, 35, 'Amtali', 120, 'আমতলী', 'amtali.barguna.gov.bd', NULL, NULL),
(267, 35, 'Barguna Sadar', 120, 'বরগুনা সদর', 'sadar.barguna.gov.bd', NULL, NULL),
(268, 35, 'Betagi', 120, 'বেতাগী', 'betagi.barguna.gov.bd', NULL, NULL),
(269, 35, 'Bamna', 120, 'বামনা', 'bamna.barguna.gov.bd', NULL, NULL),
(270, 35, 'Pathorghata', 120, 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', NULL, NULL),
(271, 35, 'Taltali', 120, 'তালতলি', 'taltali.barguna.gov.bd', NULL, NULL),
(272, 36, 'Balaganj', 120, 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', NULL, NULL),
(273, 36, 'Beanibazar', 120, 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', NULL, NULL),
(274, 36, 'Bishwanath', 120, 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', NULL, NULL),
(275, 36, 'Companiganj', 120, 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', NULL, NULL),
(276, 36, 'Fenchuganj', 120, 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', NULL, NULL),
(277, 36, 'Golapganj', 120, 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', NULL, NULL),
(278, 36, 'Gowainghat', 120, 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', NULL, NULL),
(279, 36, 'Jaintiapur', 120, 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', NULL, NULL),
(280, 36, 'Kanaighat', 120, 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', NULL, NULL),
(281, 36, 'Sylhet Sadar', 120, 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', NULL, NULL),
(282, 36, 'Zakiganj', 120, 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', NULL, NULL),
(283, 36, 'Dakshinsurma', 120, 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', NULL, NULL),
(284, 36, 'Osmaninagar', 120, 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', NULL, NULL),
(285, 37, 'Barlekha', 120, 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', NULL, NULL),
(286, 37, 'Kamolganj', 120, 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', NULL, NULL),
(287, 37, 'Kulaura', 120, 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', NULL, NULL),
(288, 37, 'Moulvibazar Sadar', 120, 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', NULL, NULL),
(289, 37, 'Rajnagar', 120, 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', NULL, NULL),
(290, 37, 'Sreemangal', 120, 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', NULL, NULL),
(291, 37, 'Juri', 120, 'জুড়ী', 'juri.moulvibazar.gov.bd', NULL, NULL),
(292, 38, 'Nabiganj', 120, 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', NULL, NULL),
(293, 38, 'Bahubal', 120, 'বাহুবল', 'bahubal.habiganj.gov.bd', NULL, NULL),
(294, 38, 'Ajmiriganj', 120, 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', NULL, NULL),
(295, 38, 'Baniachong', 120, 'বানিয়াচং', 'baniachong.habiganj.gov.bd', NULL, NULL),
(296, 38, 'Lakhai', 120, 'লাখাই', 'lakhai.habiganj.gov.bd', NULL, NULL),
(297, 38, 'Chunarughat', 120, 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', NULL, NULL),
(298, 38, 'Habiganj Sadar', 120, 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', NULL, NULL),
(299, 38, 'Madhabpur', 120, 'মাধবপুর', 'madhabpur.habiganj.gov.bd', NULL, NULL),
(300, 39, 'Sunamganj Sadar', 120, 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', NULL, NULL),
(301, 39, 'South Sunamganj', 120, 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', NULL, NULL),
(302, 39, 'Bishwambarpur', 120, 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', NULL, NULL),
(303, 39, 'Chhatak', 120, 'ছাতক', 'chhatak.sunamganj.gov.bd', NULL, NULL),
(304, 39, 'Jagannathpur', 120, 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', NULL, NULL),
(305, 39, 'Dowarabazar', 120, 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', NULL, NULL),
(306, 39, 'Tahirpur', 120, 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', NULL, NULL),
(307, 39, 'Dharmapasha', 120, 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', NULL, NULL),
(308, 39, 'Jamalganj', 120, 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', NULL, NULL),
(309, 39, 'Shalla', 120, 'শাল্লা', 'shalla.sunamganj.gov.bd', NULL, NULL),
(310, 39, 'Derai', 120, 'দিরাই', 'derai.sunamganj.gov.bd', NULL, NULL),
(311, 40, 'Belabo', 120, 'বেলাবো', 'belabo.narsingdi.gov.bd', NULL, NULL),
(312, 40, 'Monohardi', 120, 'মনোহরদী', 'monohardi.narsingdi.gov.bd', NULL, NULL),
(313, 40, 'Narsingdi Sadar', 120, 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', NULL, NULL),
(314, 40, 'Palash', 120, 'পলাশ', 'palash.narsingdi.gov.bd', NULL, NULL),
(315, 40, 'Raipura', 120, 'রায়পুরা', 'raipura.narsingdi.gov.bd', NULL, NULL),
(316, 40, 'Shibpur', 120, 'শিবপুর', 'shibpur.narsingdi.gov.bd', NULL, NULL),
(317, 41, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', NULL, NULL),
(318, 41, 'Kaliakair', 120, 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', NULL, NULL),
(319, 41, 'Kapasia', 120, 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', NULL, NULL),
(320, 41, 'Gazipur Sadar', 120, 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', NULL, NULL),
(321, 41, 'Sreepur', 120, 'শ্রীপুর', 'sreepur.gazipur.gov.bd', NULL, NULL),
(322, 42, 'Shariatpur Sadar', 120, 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', NULL, NULL),
(323, 42, 'Naria', 120, 'নড়িয়া', 'naria.shariatpur.gov.bd', NULL, NULL),
(324, 42, 'Zajira', 120, 'জাজিরা', 'zajira.shariatpur.gov.bd', NULL, NULL),
(325, 42, 'Gosairhat', 120, 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', NULL, NULL),
(326, 42, 'Bhedarganj', 120, 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', NULL, NULL),
(327, 42, 'Damudya', 120, 'ডামুড্যা', 'damudya.shariatpur.gov.bd', NULL, NULL),
(328, 43, 'Araihazar', 120, 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', NULL, NULL),
(329, 43, 'Bandar', 120, 'বন্দর', 'bandar.narayanganj.gov.bd', NULL, NULL),
(330, 43, 'Narayanganj Sadar', 120, 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', NULL, NULL),
(331, 43, 'Rupganj', 120, 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', NULL, NULL),
(332, 43, 'Sonargaon', 120, 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', NULL, NULL),
(333, 44, 'Basail', 120, 'বাসাইল', 'basail.tangail.gov.bd', NULL, NULL),
(334, 44, 'Bhuapur', 120, 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', NULL, NULL),
(335, 44, 'Delduar', 120, 'দেলদুয়ার', 'delduar.tangail.gov.bd', NULL, NULL),
(336, 44, 'Ghatail', 120, 'ঘাটাইল', 'ghatail.tangail.gov.bd', NULL, NULL),
(337, 44, 'Gopalpur', 120, 'গোপালপুর', 'gopalpur.tangail.gov.bd', NULL, NULL),
(338, 44, 'Madhupur', 120, 'মধুপুর', 'madhupur.tangail.gov.bd', NULL, NULL),
(339, 44, 'Mirzapur', 120, 'মির্জাপুর', 'mirzapur.tangail.gov.bd', NULL, NULL),
(340, 44, 'Nagarpur', 120, 'নাগরপুর', 'nagarpur.tangail.gov.bd', NULL, NULL),
(341, 44, 'Sakhipur', 120, 'সখিপুর', 'sakhipur.tangail.gov.bd', NULL, NULL),
(342, 44, 'Tangail Sadar', 120, 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', NULL, NULL),
(343, 44, 'Kalihati', 120, 'কালিহাতী', 'kalihati.tangail.gov.bd', NULL, NULL),
(344, 44, 'Dhanbari', 120, 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', NULL, NULL),
(345, 45, 'Itna', 120, 'ইটনা', 'itna.kishoreganj.gov.bd', NULL, NULL),
(346, 45, 'Katiadi', 120, 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', NULL, NULL),
(347, 45, 'Bhairab', 120, 'ভৈরব', 'bhairab.kishoreganj.gov.bd', NULL, NULL),
(348, 45, 'Tarail', 120, 'তাড়াইল', 'tarail.kishoreganj.gov.bd', NULL, NULL),
(349, 45, 'Hossainpur', 120, 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', NULL, NULL),
(350, 45, 'Pakundia', 120, 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', NULL, NULL),
(351, 45, 'Kuliarchar', 120, 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', NULL, NULL),
(352, 45, 'Kishoreganj Sadar', 120, 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', NULL, NULL),
(353, 45, 'Karimgonj', 120, 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', NULL, NULL),
(354, 45, 'Bajitpur', 120, 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', NULL, NULL),
(355, 45, 'Austagram', 120, 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', NULL, NULL),
(356, 45, 'Mithamoin', 120, 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', NULL, NULL),
(357, 45, 'Nikli', 120, 'নিকলী', 'nikli.kishoreganj.gov.bd', NULL, NULL),
(358, 46, 'Harirampur', 120, 'হরিরামপুর', 'harirampur.manikganj.gov.bd', NULL, NULL),
(359, 46, 'Saturia', 120, 'সাটুরিয়া', 'saturia.manikganj.gov.bd', NULL, NULL),
(360, 46, 'Manikganj Sadar', 120, 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', NULL, NULL),
(361, 46, 'Gior', 120, 'ঘিওর', 'gior.manikganj.gov.bd', NULL, NULL),
(362, 46, 'Shibaloy', 120, 'শিবালয়', 'shibaloy.manikganj.gov.bd', NULL, NULL),
(363, 46, 'Doulatpur', 120, 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', NULL, NULL),
(364, 46, 'Singiar', 120, 'সিংগাইর', 'singiar.manikganj.gov.bd', NULL, NULL),
(365, 47, 'Savar', 50, 'সাভার', 'savar.dhaka.gov.bd', NULL, NULL),
(366, 47, 'Dhamrai', 50, 'ধামরাই', 'dhamrai.dhaka.gov.bd', NULL, NULL),
(367, 47, 'Keraniganj', 50, 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', NULL, NULL),
(368, 47, 'Nawabganj', 50, 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', NULL, NULL),
(369, 47, 'Dohar', 50, 'দোহার', 'dohar.dhaka.gov.bd', NULL, NULL),
(370, 53, 'Munshiganj Sadar', 120, 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', NULL, NULL),
(371, 53, 'Sreenagar', 120, 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', NULL, NULL),
(372, 53, 'Sirajdikhan', 120, 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', NULL, NULL),
(373, 53, 'Louhajanj', 120, 'লৌহজং', 'louhajanj.munshiganj.gov.bd', NULL, NULL),
(374, 53, 'Gajaria', 120, 'গজারিয়া', 'gajaria.munshiganj.gov.bd', NULL, NULL),
(375, 53, 'Tongibari', 120, 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', NULL, NULL),
(376, 54, 'Rajbari Sadar', 120, 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', NULL, NULL),
(377, 54, 'Goalanda', 120, 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', NULL, NULL),
(378, 54, 'Pangsa', 120, 'পাংশা', 'pangsa.rajbari.gov.bd', NULL, NULL),
(379, 54, 'Baliakandi', 120, 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', NULL, NULL),
(380, 54, 'Kalukhali', 120, 'কালুখালী', 'kalukhali.rajbari.gov.bd', NULL, NULL),
(381, 50, 'Madaripur Sadar', 120, 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', NULL, NULL),
(382, 50, 'Shibchar', 120, 'শিবচর', 'shibchar.madaripur.gov.bd', NULL, NULL),
(383, 50, 'Kalkini', 120, 'কালকিনি', 'kalkini.madaripur.gov.bd', NULL, NULL),
(384, 50, 'Rajoir', 120, 'রাজৈর', 'rajoir.madaripur.gov.bd', NULL, NULL),
(385, 51, 'Gopalganj Sadar', 120, 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', NULL, NULL),
(386, 51, 'Kashiani', 120, 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', NULL, NULL),
(387, 51, 'Tungipara', 120, 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', NULL, NULL),
(388, 51, 'Kotalipara', 120, 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', NULL, NULL),
(389, 51, 'Muksudpur', 120, 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', NULL, NULL),
(390, 52, 'Faridpur Sadar', 120, 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', NULL, NULL),
(391, 52, 'Alfadanga', 120, 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', NULL, NULL),
(392, 52, 'Boalmari', 120, 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', NULL, NULL),
(393, 52, 'Sadarpur', 120, 'সদরপুর', 'sadarpur.faridpur.gov.bd', NULL, NULL),
(394, 52, 'Nagarkanda', 120, 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', NULL, NULL),
(395, 52, 'Bhanga', 120, 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', NULL, NULL),
(396, 52, 'Charbhadrasan', 120, 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', NULL, NULL),
(397, 52, 'Madhukhali', 120, 'মধুখালী', 'madhukhali.faridpur.gov.bd', NULL, NULL),
(398, 52, 'Saltha', 120, 'সালথা', 'saltha.faridpur.gov.bd', NULL, NULL),
(399, 62, 'Panchagarh Sadar', 120, 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', NULL, NULL),
(400, 62, 'Debiganj', 120, 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', NULL, NULL),
(401, 62, 'Boda', 120, 'বোদা', 'boda.panchagarh.gov.bd', NULL, NULL),
(402, 62, 'Atwari', 120, 'আটোয়ারী', 'atwari.panchagarh.gov.bd', NULL, NULL),
(403, 62, 'Tetulia', 120, 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', NULL, NULL),
(404, 61, 'Nawabganj', 120, 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', NULL, NULL),
(405, 61, 'Birganj', 120, 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', NULL, NULL),
(406, 61, 'Ghoraghat', 120, 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', NULL, NULL),
(407, 61, 'Birampur', 120, 'বিরামপুর', 'birampur.dinajpur.gov.bd', NULL, NULL),
(408, 61, 'Parbatipur', 120, 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', NULL, NULL),
(409, 61, 'Bochaganj', 120, 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', NULL, NULL),
(410, 61, 'Kaharol', 120, 'কাহারোল', 'kaharol.dinajpur.gov.bd', NULL, NULL),
(411, 61, 'Fulbari', 120, 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', NULL, NULL),
(412, 61, 'Dinajpur Sadar', 120, 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', NULL, NULL),
(413, 61, 'Hakimpur', 120, 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', NULL, NULL),
(414, 61, 'Khansama', 120, 'খানসামা', 'khansama.dinajpur.gov.bd', NULL, NULL),
(415, 61, 'Birol', 120, 'বিরল', 'birol.dinajpur.gov.bd', NULL, NULL),
(416, 61, 'Chirirbandar', 120, 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', NULL, NULL),
(417, 55, 'Lalmonirhat Sadar', 120, 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', NULL, NULL),
(418, 55, 'Kaliganj', 120, 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', NULL, NULL),
(419, 55, 'Hatibandha', 120, 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', NULL, NULL),
(420, 55, 'Patgram', 120, 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', NULL, NULL),
(421, 55, 'Aditmari', 120, 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', NULL, NULL),
(422, 56, 'Syedpur', 120, 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', NULL, NULL),
(423, 56, 'Domar', 120, 'ডোমার', 'domar.nilphamari.gov.bd', NULL, NULL),
(424, 56, 'Dimla', 120, 'ডিমলা', 'dimla.nilphamari.gov.bd', NULL, NULL),
(425, 56, 'Jaldhaka', 120, 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', NULL, NULL),
(426, 56, 'Kishorganj', 120, 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', NULL, NULL),
(427, 56, 'Nilphamari Sadar', 120, 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', NULL, NULL),
(428, 57, 'Sadullapur', 120, 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', NULL, NULL),
(429, 57, 'Gaibandha Sadar', 120, 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', NULL, NULL),
(430, 57, 'Palashbari', 120, 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', NULL, NULL),
(431, 57, 'Saghata', 120, 'সাঘাটা', 'saghata.gaibandha.gov.bd', NULL, NULL),
(432, 57, 'Gobindaganj', 120, 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', NULL, NULL),
(433, 57, 'Sundarganj', 120, 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', NULL, NULL),
(434, 57, 'Phulchari', 120, 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', NULL, NULL),
(435, 58, 'Thakurgaon Sadar', 120, 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', NULL, NULL),
(436, 58, 'Pirganj', 120, 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', NULL, NULL),
(437, 58, 'Ranisankail', 120, 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', NULL, NULL),
(438, 58, 'Haripur', 120, 'হরিপুর', 'haripur.thakurgaon.gov.bd', NULL, NULL),
(439, 58, 'Baliadangi', 120, 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', NULL, NULL),
(440, 59, 'Rangpur Sadar', 120, 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', NULL, NULL),
(441, 59, 'Gangachara', 120, 'গংগাচড়া', 'gangachara.rangpur.gov.bd', NULL, NULL),
(442, 59, 'Taragonj', 120, 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', NULL, NULL),
(443, 59, 'Badargonj', 120, 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', NULL, NULL),
(444, 59, 'Mithapukur', 120, 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', NULL, NULL),
(445, 59, 'Pirgonj', 120, 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', NULL, NULL),
(446, 59, 'Kaunia', 120, 'কাউনিয়া', 'kaunia.rangpur.gov.bd', NULL, NULL),
(447, 59, 'Pirgacha', 120, 'পীরগাছা', 'pirgacha.rangpur.gov.bd', NULL, NULL),
(448, 60, 'Kurigram Sadar', 120, 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', NULL, NULL),
(449, 60, 'Nageshwari', 120, 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', NULL, NULL),
(450, 60, 'Bhurungamari', 120, 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', NULL, NULL),
(451, 60, 'Phulbari', 120, 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', NULL, NULL),
(452, 60, 'Rajarhat', 120, 'রাজারহাট', 'rajarhat.kurigram.gov.bd', NULL, NULL),
(453, 60, 'Ulipur', 120, 'উলিপুর', 'ulipur.kurigram.gov.bd', NULL, NULL),
(454, 60, 'Chilmari', 120, 'চিলমারী', 'chilmari.kurigram.gov.bd', NULL, NULL),
(455, 60, 'Rowmari', 120, 'রৌমারী', 'rowmari.kurigram.gov.bd', NULL, NULL),
(456, 60, 'Charrajibpur', 120, 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', NULL, NULL),
(457, 65, 'Sherpur Sadar', 120, 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', NULL, NULL),
(458, 65, 'Nalitabari', 120, 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', NULL, NULL),
(459, 65, 'Sreebordi', 120, 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', NULL, NULL),
(460, 65, 'Nokla', 120, 'নকলা', 'nokla.sherpur.gov.bd', NULL, NULL),
(461, 65, 'Jhenaigati', 120, 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', NULL, NULL),
(462, 66, 'Fulbaria', 120, 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', NULL, NULL),
(463, 66, 'Trishal', 120, 'ত্রিশাল', 'trishal.mymensingh.gov.bd', NULL, NULL),
(464, 66, 'Bhaluka', 120, 'ভালুকা', 'bhaluka.mymensingh.gov.bd', NULL, NULL),
(465, 66, 'Muktagacha', 120, 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', NULL, NULL),
(466, 66, 'Mymensingh Sadar', 120, 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', NULL, NULL),
(467, 66, 'Dhobaura', 120, 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', NULL, NULL),
(468, 66, 'Phulpur', 120, 'ফুলপুর', 'phulpur.mymensingh.gov.bd', NULL, NULL),
(469, 66, 'Haluaghat', 120, 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', NULL, NULL),
(470, 66, 'Gouripur', 120, 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', NULL, NULL),
(471, 66, 'Gafargaon', 120, 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', NULL, NULL),
(472, 66, 'Iswarganj', 120, 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', NULL, NULL),
(473, 66, 'Nandail', 120, 'নান্দাইল', 'nandail.mymensingh.gov.bd', NULL, NULL),
(474, 66, 'Tarakanda', 120, 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', NULL, NULL),
(475, 63, 'Jamalpur Sadar', 120, 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', NULL, NULL),
(476, 63, 'Melandah', 120, 'মেলান্দহ', 'melandah.jamalpur.gov.bd', NULL, NULL),
(477, 63, 'Islampur', 120, 'ইসলামপুর', 'islampur.jamalpur.gov.bd', NULL, NULL),
(478, 63, 'Dewangonj', 120, 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', NULL, NULL),
(479, 63, 'Sarishabari', 120, 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', NULL, NULL),
(480, 63, 'Madarganj', 120, 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', NULL, NULL),
(481, 63, 'Bokshiganj', 120, 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', NULL, NULL),
(482, 64, 'Barhatta', 120, 'বারহাট্টা', 'barhatta.netrokona.gov.bd', NULL, NULL),
(483, 64, 'Durgapur', 120, 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', NULL, NULL),
(484, 64, 'Kendua', 120, 'কেন্দুয়া', 'kendua.netrokona.gov.bd', NULL, NULL),
(485, 64, 'Atpara', 120, 'আটপাড়া', 'atpara.netrokona.gov.bd', NULL, NULL),
(486, 64, 'Madan', 120, 'মদন', 'madan.netrokona.gov.bd', NULL, NULL),
(487, 64, 'Khaliajuri', 120, 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', NULL, NULL),
(488, 64, 'Kalmakanda', 120, 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', NULL, NULL),
(489, 64, 'Mohongonj', 120, 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', NULL, NULL),
(490, 64, 'Purbadhala', 120, 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', NULL, NULL),
(491, 64, 'Netrokona Sadar', 120, 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', NULL, NULL),
(494, 48, 'Bashundhara R/A', 50, '', '', '2021-08-16 05:01:34.000000', '2021-08-16 05:01:34.000000'),
(495, 48, 'Agargaon', 50, '', '', '2021-08-16 05:02:48.000000', '2021-08-16 05:02:48.000000'),
(496, 48, 'Badda', 50, '', '', '2021-08-16 05:04:07.000000', '2021-08-16 05:04:07.000000'),
(497, 48, 'Banani', 50, '', '', '2021-08-16 05:04:23.000000', '2021-08-16 05:04:23.000000'),
(498, 48, 'Banasree', 50, '', '', '2021-08-16 05:06:01.000000', '2021-08-16 05:06:01.000000'),
(499, 48, 'Baridhara', 50, '', '', '2021-08-16 05:06:25.000000', '2021-08-16 05:06:25.000000'),
(500, 48, 'Chittagong Road', 50, '', '', '2021-08-16 05:06:57.000000', '2021-08-16 05:06:57.000000'),
(501, 48, 'Dhamrai', 50, '', '', '2021-08-16 05:07:22.000000', '2021-08-16 05:07:22.000000'),
(502, 48, 'Rampura', 50, '', '', '2021-08-16 05:07:46.000000', '2021-08-16 05:07:46.000000'),
(503, 48, 'Firmgate', 50, '', '', '2021-08-16 05:22:56.000000', '2021-08-16 05:22:56.000000'),
(504, 48, 'Gabtoli', 50, '', '', '2021-08-16 05:23:20.000000', '2021-08-16 05:23:20.000000'),
(505, 48, 'Gulshan', 50, '', '', '2021-08-16 05:24:53.000000', '2021-08-16 05:24:53.000000'),
(506, 48, 'Hatirjheel', 50, '', '', '2021-08-16 05:25:20.000000', '2021-08-16 05:25:20.000000'),
(507, 48, 'Khilgoan', 50, '', '', '2021-08-16 05:26:08.000000', '2021-08-16 05:26:08.000000'),
(508, 48, 'Khilkhet', 50, '', '', '2021-08-16 05:26:34.000000', '2021-08-16 05:26:34.000000'),
(509, 48, 'Kuril', 50, '', '', '2021-08-16 05:26:58.000000', '2021-08-16 05:26:58.000000'),
(510, 48, 'Malibag', 50, '', '', '2021-08-16 05:27:13.000000', '2021-08-16 05:27:13.000000'),
(511, 48, 'Matikata', 50, '', '', '2021-08-16 05:27:47.000000', '2021-08-16 05:27:47.000000'),
(512, 48, 'Mirpur', 50, '', '', '2021-08-16 05:29:31.000000', '2021-08-16 05:29:31.000000'),
(513, 48, 'Modhubag', 50, '', '', '2021-08-16 05:29:53.000000', '2021-08-16 05:29:53.000000'),
(514, 48, 'Mohakhali', 50, '', '', '2021-08-16 05:30:23.000000', '2021-08-16 05:30:23.000000'),
(515, 48, 'Tejgaon', 50, '', '', '2021-08-16 05:30:54.000000', '2021-08-16 05:30:54.000000'),
(516, 48, 'Uttara', 50, '', '', '2021-08-16 05:31:12.000000', '2021-08-16 05:31:12.000000'),
(517, 49, 'Mogbazar', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:33:46.000000'),
(518, 49, 'Basabo', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:37:12.000000'),
(519, 49, 'Dhanmondi', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:37:32.000000'),
(520, 49, 'gulisthan', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:38:01.000000'),
(521, 49, 'Kakrail', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:38:29.000000'),
(522, 49, 'Kalabagan', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:38:51.000000'),
(523, 49, 'Kamalapur', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:39:56.000000'),
(524, 49, 'Maniknagar', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:40:45.000000'),
(525, 49, 'Matuail', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:41:11.000000'),
(526, 49, 'Motijheel', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:42:14.000000'),
(527, 49, 'Mugda', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:42:33.000000'),
(528, 49, 'Paltan', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:42:58.000000'),
(529, 49, 'Nilkhet', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:43:17.000000'),
(530, 49, 'Pallabi', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:43:36.000000'),
(531, 49, 'Postagola', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:43:58.000000'),
(532, 49, 'Rayerbag', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:45:21.000000'),
(533, 49, 'Segun Bagicha', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:46:08.000000'),
(534, 49, 'Elephant Road', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:46:41.000000'),
(535, 49, 'Azimpur', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:47:01.000000'),
(536, 49, 'Shukrabad', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:47:30.000000'),
(537, 49, 'Jatrabari', 40, '', '', '2021-12-22 14:30:27.000000', '2021-08-16 05:47:56.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` bigint(20) DEFAULT NULL,
  `group_by` bigint(20) DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `medication` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'No',
  `med_status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `med_upcoming` date DEFAULT NULL,
  `preiod` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` int(11) DEFAULT NULL,
  `shipping_address` int(11) DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commission` int(6) DEFAULT NULL,
  `p_commission` int(6) DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark_date` date DEFAULT NULL,
  `history_count` int(11) DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ref_id`, `ref_by`, `provider_id`, `cid`, `group_by`, `user_type`, `medication`, `med_status`, `med_upcoming`, `preiod`, `name`, `email`, `email_verified_at`, `status`, `password`, `remember_token`, `gender`, `avatar`, `avatar_original`, `dob`, `address`, `billing_address`, `shipping_address`, `country`, `region`, `city`, `area`, `postal_code`, `phone`, `commission`, `p_commission`, `balance`, `remark`, `remark_date`, `history_count`, `designation`, `education`, `about`, `created_at`, `updated_at`) VALUES
(65, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, '0', NULL, NULL, 'Md. Hasibuzzaman', 'admin@gmail.com', '2019-05-22 05:35:19', NULL, '$2y$10$5BnDvwWHeHio0GY0I1lMpOrIR598MNqjuJz6SnHXekhYP.EaKBQRO', 'rCJIRx7zHdsaaPzVHR5KRLHszE3tSPTzjvUKDrLofDJ0qXgZ6z6CY8zsiq3K', NULL, '1631517866604508.png', '1631517866604508.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 12.00, NULL, NULL, NULL, '', '', NULL, '2019-04-24 20:51:27', '2021-12-22 15:14:31'),
(318, NULL, NULL, NULL, NULL, NULL, 'staff', 'No', NULL, NULL, NULL, 'shakil', 'shakil@gmail.com', NULL, NULL, '$2y$10$pGJdiyw7U6/e0r3seja0TuUy8EZpe6c5Xe9NmreBTUWw8ojF0ob3m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 19:09:58', '2021-09-12 19:09:58'),
(319, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', '1', '2021-09-25', '10', 'Iqbal', 'mortalmo99@gmail.com', '2021-09-12 22:15:13', 1, '$2y$10$9nAbKc4lDw0lAqonvGOay.B33wVhfxTD.SwMo5Tl2BGxKaUUCrWjq', 'r6jeU3gSxTPDjrlbnJgJYa4wgaJcoQU8CPKJ9260sBJ2HxJ8ZUdaxlFb556Q', NULL, NULL, NULL, '2021-09-08', 'test us', NULL, NULL, NULL, '1', '2', '19', '1100', '01818884037', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-12 22:15:13', '2021-09-12 22:50:28'),
(323, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Emu', NULL, '2021-09-14 03:05:45', 1, '$2y$10$ThL.C6.wqKc.Lhtys9jV1emembIEyAAXdqbjBXSWiAI.xPO4rRXG6', 'xNNg736pWNKqRUjt1N2AJBUVbtYyIzupLqRPBc4RwfYboZsRVM6ohhoCthED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '20', '177', NULL, '01723096437', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-14 03:05:45', '2021-09-14 03:38:20'),
(324, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Mo US', NULL, '2021-09-18 03:21:15', 0, '$2y$10$MlRZD/cjlp.lWTsCJUioRe2D42oBlc.qggFAQY8GFxtXP.xlfJDlC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8033789315', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-18 03:21:15', '2021-09-18 03:21:15'),
(331, 'AFF39677634', 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Fahim', NULL, '2021-09-19 02:29:12', 1, '$2y$10$RAVo60qig6r3eUO5pBehXOaEejGG2J5bMn5XQpP5AIba6yqPVtZdC', 'mVqjYaE59K7WM8LMWCAyr4gZoRB1svNACXXDnk8QkpBFIbfKsZAQ22BfHi6O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01726114037', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-19 02:29:12', '2021-09-19 09:05:56'),
(332, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, '2021-09-19', NULL, 'hasib', NULL, '2021-09-19 06:40:50', 1, '$2y$10$4agiWqbQED6geG0bII8HEOujrNWTKzXR08Wzht65261/yqdjrFN0e', 'GMcAtSdAQZGCT529vj4cSuriqbEy4qYmz6JbAOvdUEEoT0HSeWd5GkV2wwVl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01618356180', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-19 06:40:50', '2021-09-19 06:42:46'),
(333, 'AFF64188157', 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-05', '7', 'shakil666', 'kmushakil72lo1@gmail.com', '2021-09-21 01:55:02', 1, '$2y$10$aF6HN0HFFYYTHVn/RnVxRu/PIl8t1hsZdU2GB8RSRZYDos8QHArX.', 'chkLM7KeH93v1pIS6bxhd2yO24qMruZ6nWo9COOgqRdkAD7EUuZCzEAb4tct', NULL, NULL, NULL, NULL, 'shakil', 44, 44, NULL, '4', '31', '238', '1112', '01666026364', NULL, NULL, 572.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 01:55:02', '2021-09-23 00:51:02'),
(335, NULL, 'AFF64188157', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil015', 'kmushakil6o4@gmail.com', '2021-09-21 18:08:43', 1, '$2y$10$siYw8dLV8/2d33M6.wcDG.oGQUiac4BngpuWjKyLYHMMYykYR4ZPC', 'OwXCTqfZ4TdPAlNZxOwNmmmcZMG4Kjs7G6jbcHi4XnlkAQvbxsU8aSkIVAuH', NULL, NULL, NULL, NULL, 'test address.', 46, 46, NULL, '1', '7', '63', '0099', '01533186155', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 18:08:43', '2021-09-21 19:13:56'),
(339, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', 'kazimuhammadullahvvv@gmail.com', '2021-09-21 22:10:46', 1, '$2y$10$77r3rC6EzDHMAUgXzjSFeOhmH3LjrmyAwfUHlH/XKWQjnNq5QeAyu', NULL, NULL, NULL, NULL, '2021-09-06', 'London', NULL, 50, NULL, '2', '15', '139', '3434', '01533186192', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 22:10:46', '2021-09-21 22:10:46'),
(340, 'AFF79147825', NULL, NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-10-01', '10', 'towhid', 'towhid10@gmail.com', '2021-09-22 09:58:09', 1, '$2y$10$Doog5LPVrZxaR65.1NBYKOz.towySRdn4..aJvawhPXEviSI3aFJ2', 'm9fJQDDQbaM6t5RlXEufnQxcOC45eToHOhtrDXoGhadVKFdBML1t3ZDkL2L6', NULL, NULL, NULL, '2020-07-10', 'Dhaka', NULL, 51, NULL, '6', '48', '512', '1207', '07533498883', NULL, NULL, 124.50, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 09:58:09', '2021-09-23 00:12:47'),
(341, NULL, 'AFF79147825', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-09-23', '7', 'shakil', 'matirmanush25@gmail.com', '2021-09-22 18:27:55', 1, '$2y$10$6eY5lomg3EXkXhHNAFQ.euKvWhbbsJAn4xvDP84ZU9KMQiOIHqZBm', 'zEsTSZeRWu26WqEFGp5G72XkRrmvURFxvtkZMDQ12Faspo7dJ7WAjH2opUw2', NULL, NULL, NULL, NULL, 'mirpur', 52, 52, NULL, '4', '32', '247', '2233', '01543186152', NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 18:27:55', '2021-09-23 00:51:37'),
(342, NULL, 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil015', 'muhammadullah.shakil@gmail.com', '2021-09-22 19:13:34', 1, '$2y$10$8Qa5bf53d.SNjyYQSHMU1O2eLZXDT8YxJ3FoqRjMCnSKNon4YDlrW', 'IpWfDamawwT8faToZJyLfEiWsGdJpU8kFyjkQabkC8RkZHRH1agHJb0ICx72', NULL, NULL, NULL, NULL, 'test address.', 53, 53, NULL, '1', '9', '84', '0099', '01718160843', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 19:13:34', '2021-09-22 19:17:18'),
(343, NULL, 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2021-09-24', '7', 'shakil64', NULL, '2021-09-23 00:53:27', 1, '$2y$10$1pYjzrSelQ9u0oUIXS3mSO2B0D23u53LVJ5d/Ql2QXkux3Y6R6qem', 'eGwL6cytMqeFK1QTPVbmVhRoRWVanqF6hyZ4ttL7FuHC1W471ZO0K23j0irX', NULL, NULL, NULL, NULL, NULL, 55, 55, NULL, NULL, NULL, NULL, NULL, '01676126364', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 00:53:27', '2021-09-23 10:58:35'),
(344, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', 'kazimuhammadullah2325@gmail.com', '2021-09-23 01:00:42', 1, '$2y$10$wOecat4ff168c//CtJuW5.uqeHqmusqbZ/YNIRwbwKBLIM9qoyqrm', NULL, NULL, NULL, NULL, '2021-09-13', 'London', NULL, 54, NULL, '2', '14', '130', '3434', '01818004030', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 01:00:42', '2021-09-23 01:00:42'),
(345, 'AFF96786623', 'reference', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', NULL, '2021-10-03 09:49:54', 1, '$2y$10$p2Ti5Jlx/RDyYC1qrDaFgerKdEUMgf23S.8Cl5JXVgLSLamaBvZM.', '9CDRb7BI4UOH9npAOb4K1UFBQj3mRnquGCA5iv9mwVG2GvnpUeeGl6IDpZOb', NULL, NULL, NULL, NULL, NULL, 57, 57, NULL, NULL, NULL, NULL, NULL, '01679926364', NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-03 09:49:54', '2021-10-04 09:35:02'),
(346, NULL, 'AFF96786623', NULL, NULL, NULL, 'customer', 'Yes', '0', NULL, NULL, 'shakil015', NULL, '2021-10-03 09:52:03', 1, '$2y$10$afKkK4nnZTg65KR.iMNTjOvpMZRiTY8jhivSpdqSSlBCrmmvOuX/O', 'gRklmwYcxzFiQ50CNagAqaRGgA3palSnRcAP0TPTNiWVfTtbyaKQVAozF6jv', NULL, NULL, NULL, NULL, NULL, 56, 56, NULL, NULL, NULL, NULL, NULL, '01542186152', NULL, NULL, 0.00, 'negative', '2021-10-14', 1, NULL, NULL, NULL, '2021-10-03 09:52:03', '2021-10-13 07:45:28'),
(357, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'charunta', NULL, NULL, 1, '$2y$10$IKXr6QYzDXEiaEgS0IVlUe/i3bvWeaKyhZK9n/VWVZRvB3mhCNLp6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01886885833', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 07:23:26', '2021-10-13 07:23:26'),
(358, '10001', NULL, NULL, NULL, NULL, 'customer', 'Yes', '1', NULL, '7', 'kmushakil64', NULL, '2021-10-19 09:17:11', 1, '$2y$10$7xUrWNIlv8cbKfpECGczTuIlsn6rR0Nmy5xilvsmOwDC6DX9V2996', 'i6myY72ZHCInnGDSXdkUE8Eu9kBR7izQaSCwEl74WBwcET2dmVLIpjaqy0gJ', NULL, NULL, NULL, NULL, NULL, 67, 67, NULL, '1', '5', '44', NULL, '01676926364', NULL, NULL, 48.00, 'positive', '2021-10-27', 2, NULL, NULL, NULL, '2021-10-13 07:40:49', '2021-10-23 15:07:03'),
(359, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Fahim', NULL, NULL, 1, '$2y$10$1oK4uuLd3ye1j3Z.ZYrG7uop4kUINugJOeo8RzE/aQmuP/hZmBhcq', 'sRblUdN3qdOwjpsJCqEdwt6tBsx7HGSu5AS54PxKVcizmbyjArRX8Ct0FIJL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01726004037', NULL, NULL, 0.00, 'negative', '2021-10-22', 1, NULL, NULL, NULL, '2021-10-13 10:43:43', '2021-10-13 10:44:47'),
(365, NULL, NULL, NULL, NULL, NULL, 'customer', 'Yes', '1', NULL, '15', 'kmushakil64', NULL, '2021-10-25 15:16:25', 1, '$2y$10$fR/ziRNHlM.bJIuZM3V8UeZJVgU3r.U.2FXZWvAgdqZsfB2nCSNVO', 'x4AYpTk3KC2GtqYwG5Af9RWHjPfBv7prHkMdFM3bzjkJeCaKxGVDXBVMJrQv', NULL, NULL, NULL, NULL, NULL, 69, 69, NULL, '1', '1', '12', NULL, '01533186152', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 12:15:07', '2021-10-26 09:20:02'),
(366, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'aponhealth', NULL, '2021-10-13 14:39:46', 1, '$2y$10$KPxtp38RejGHs/LwGyXFAOxFe2ESR/SmVOe/a2dTX3ks6Fi80qbAa', 'UPiU94lAHRJ2vvvl6gWe856BGv2yD5zeB942t8PbGKFaxiyvvOxqMZY61v9T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01889935834', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 14:39:46', '2021-10-13 14:39:46'),
(367, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'Fahim 01818', NULL, '2021-10-13 16:04:25', 1, '$2y$10$MAkzaMeNHzbS9YvSmJnJDeG6TwOETmwFnKXcYnqtjw42AOrhQt6Ga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01818004037', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 16:04:25', '2021-10-13 16:04:25'),
(371, '10002', '10001', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'apon health', NULL, '2021-10-19 14:06:39', 1, '$2y$10$UiISms.uNzUl3NGa3FCUPeCeTZfpB3Zfzn9FYdlkXId2gnsB3W2sm', 'upQXH8pziosDzphyqN6KZhC2HpWHv1YGcHMOKTJ5998u4xvhJKpmt4ukcSWs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01886335834', NULL, NULL, 12.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 14:06:39', '2021-10-19 14:08:17'),
(372, '10003', '10002', NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'charunta', NULL, '2021-10-19 14:08:17', 1, '$2y$10$dMVrIDSVAq4toYpeq6ciKOYN/q9PigPIZaig6dm.u4x3KCVYOj4qm', 'MLyfXVaYagIrFA5manYwZPe5iTLNfEt9zBml8PbSeMCvM77XsH5enMzb6lEn', NULL, NULL, NULL, NULL, NULL, 68, 68, NULL, NULL, NULL, NULL, NULL, '01886339833', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-19 14:08:17', '2021-10-19 14:13:41'),
(374, NULL, NULL, NULL, NULL, NULL, 'customer', 'No', NULL, NULL, NULL, 'shakil', NULL, '2021-12-22 15:14:31', 1, '$2y$10$9nDJwYyrGVrPtBcT1DVmtuLhM3lZ0zOocQ/FIhzVGb4jadetfljxi', '9RkUV1ofh0NHMmaVmuFqsBt4ODqS1ZGgYvENc5YOxE4hQLciH3GxUcCSx9oG', NULL, NULL, NULL, NULL, NULL, 70, 70, NULL, NULL, NULL, NULL, NULL, '01677726364', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-22 15:14:31', '2021-12-22 15:41:08'),
(375, NULL, 'reference', NULL, NULL, NULL, 'customer', 'Yes', '1', '2022-07-13', '15', 'Shakil', 'kazimuhammadullah@gmail.com', '2021-12-23 09:33:11', 1, '$2y$10$JrTIUFTSRHhrDe29vVZRI.sDYM167XI/OcAJptYjKvuJGUMPRskCi', '8Fes5zCpFCbkQkXu3aCCIQ24IYfww0K6Soa1fRdihq4OSFNBBXWk178jh193', NULL, NULL, NULL, NULL, 'test address', 71, 71, NULL, '2', '13', '115', '1215', '01676026364', NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 09:33:11', '2022-07-03 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `amount`, `payment_method`, `payment_details`, `created_at`, `updated_at`) VALUES
(13, 333, 500.00, 'SSLCommerz', 'SSL Top Up', '2021-09-21 21:49:39', '2021-09-21 21:49:39'),
(14, 341, 500.00, 'SSLCommerz', 'SSL Top Up', '2021-09-23 00:51:37', '2021-09-23 00:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '2019-04-25 04:35:45', '2019-04-25 04:35:45'),
(3, 47, 16, '2019-05-26 02:29:37', '2019-05-26 02:29:37'),
(4, 47, 20, '2019-05-26 02:29:44', '2019-05-26 02:29:44'),
(5, 47, 24, '2019-05-26 02:29:50', '2019-05-26 02:29:50'),
(8, 102, 2866, '2021-06-07 06:15:52', '2021-06-07 06:15:52'),
(10, 142, 2851, '2021-06-12 07:34:32', '2021-06-12 07:34:32'),
(30, 282, 2892, '2021-08-23 03:40:05', '2021-08-23 03:40:05'),
(31, 282, 2861, '2021-08-23 03:40:27', '2021-08-23 03:40:27'),
(32, 320, 2875, '2021-09-14 05:12:12', '2021-09-14 05:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdraw_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) UNSIGNED DEFAULT NULL,
  `process_by` bigint(20) UNSIGNED DEFAULT NULL,
  `viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mbanking_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `user_id`, `bank_name`, `acc_name`, `acc_number`, `branch`, `mbanking_type`, `remark`, `updated_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 333, 'bKash', 'test Name', '01676026364', NULL, 'Personal', 'test', NULL, '333', NULL, '2021-09-21 03:10:32', '2021-09-21 03:10:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliateids`
--
ALTER TABLE `affiliateids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_requests`
--
ALTER TABLE `agent_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_user_id_foreign` (`user_id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_appointmnets_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_departments_user_id_foreign` (`user_id`),
  ADD KEY `doctor_departments_dep_id_foreign` (`dep_id`);

--
-- Indexes for table `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_education_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_experienceds_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctor_time_slots`
--
ALTER TABLE `doctor_time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot` (`slot`);

--
-- Indexes for table `doc_departments`
--
ALTER TABLE `doc_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templetes`
--
ALTER TABLE `email_templetes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feature_brands`
--
ALTER TABLE `feature_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medications_user_id_foreign` (`user_id`);

--
-- Indexes for table `medication_counts`
--
ALTER TABLE `medication_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication_details`
--
ALTER TABLE `medication_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medication_details_medication_id_foreign` (`medication_id`);

--
-- Indexes for table `medication_users`
--
ALTER TABLE `medication_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medication_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_verifies_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_behalves_user_id_foreign` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_images_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_medications`
--
ALTER TABLE `regular_medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_orders`
--
ALTER TABLE `request_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmhistories`
--
ALTER TABLE `rmhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addesses_user_id_foreign` (`user_id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softcodes`
--
ALTER TABLE `softcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_user_id_foreign` (`user_id`),
  ADD KEY `withdraws_process_by_foreign` (`process_by`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_methods_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliateids`
--
ALTER TABLE `affiliateids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `agent_requests`
--
ALTER TABLE `agent_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `doctor_education`
--
ALTER TABLE `doctor_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_time_slots`
--
ALTER TABLE `doctor_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doc_departments`
--
ALTER TABLE `doc_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_templetes`
--
ALTER TABLE `email_templetes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feature_brands`
--
ALTER TABLE `feature_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `medication_counts`
--
ALTER TABLE `medication_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `medication_details`
--
ALTER TABLE `medication_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT for table `medication_users`
--
ALTER TABLE `medication_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prescription_images`
--
ALTER TABLE `prescription_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3035;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `regular_medications`
--
ALTER TABLE `regular_medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `request_orders`
--
ALTER TABLE `request_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmhistories`
--
ALTER TABLE `rmhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `softcodes`
--
ALTER TABLE `softcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_requests`
--
ALTER TABLE `agent_requests`
  ADD CONSTRAINT `agent_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_appointmnets`
--
ALTER TABLE `doctor_appointmnets`
  ADD CONSTRAINT `doctor_appointmnets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_departments`
--
ALTER TABLE `doctor_departments`
  ADD CONSTRAINT `doctor_departments_dep_id_foreign` FOREIGN KEY (`dep_id`) REFERENCES `doc_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_education`
--
ALTER TABLE `doctor_education`
  ADD CONSTRAINT `doctor_education_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_experienceds`
--
ALTER TABLE `doctor_experienceds`
  ADD CONSTRAINT `doctor_experienceds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_ratings`
--
ALTER TABLE `doctor_ratings`
  ADD CONSTRAINT `doctor_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medications`
--
ALTER TABLE `medications`
  ADD CONSTRAINT `medications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medication_details`
--
ALTER TABLE `medication_details`
  ADD CONSTRAINT `medication_details_medication_id_foreign` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `medication_users`
--
ALTER TABLE `medication_users`
  ADD CONSTRAINT `medication_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mobile_verifies`
--
ALTER TABLE `mobile_verifies`
  ADD CONSTRAINT `mobile_verifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_behalves`
--
ALTER TABLE `patient_behalves`
  ADD CONSTRAINT `patient_behalves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescription_images`
--
ALTER TABLE `prescription_images`
  ADD CONSTRAINT `prescription_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_addesses`
--
ALTER TABLE `shipping_addesses`
  ADD CONSTRAINT `shipping_addesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
