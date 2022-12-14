-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2022 at 02:22 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony_practical`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221209140949', '2022-12-12 15:32:05', 57);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '?????????????????????? IT-????????????????, ???? ?????????????????? ?????????????????? ???????????????? ?? 2022 ????????', '???????????????? ???????????????????? ???????????????????????? ???????????? ???????????????? (?????????????????????, ???? ???????????????? ???????? ?????????????? ?????????? ?????????? ???? ???????????? ??????????????????, ???????????? ?????? ?????????), ?? ?????? ?????????????? ?? ???????????? ???? IT-?????????? ???????????? ????????????????. ?? ???? ?????????? ???????????????? ???????????? ???? ????????, ???? ???????????? ?????????????????? ???????? ???????????????????, ?? ?????? ??? ?????? ??????????????????. ???????? ???? ???? ?????? ??????????????????. ???????? ???? ??????????????????????. ??????????????????, ?????????????', 'https://highload.today/wp-content/uploads/2022/12/2-2.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(2, '???????? ???????? ?????? ???? ??????????????: ?????? ???????????????????????????? ???????????????? ?? ???????????? ??????????????????', '?????????????????? ?????? ???????? smart. ???????????? ???????????? ???????????????? ?????????????????????? ?? LinkedIn, ???? ?????????????????? ?????????????????? ??????????????, ??? ??????????????. ???????????? ???????? ?????? Java ?? JavaScript ?????? ???????? ??????????????????.', 'https://highload.today/wp-content/uploads/2022/12/mem.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(3, '???????????????? ???? ??????????????????: ???? ???????? ?????????????? MVC ?? MVP, ???? ???? ???? ??????????????????????????????', '???? ???????????????? ???????????????????????????? ?????????????? ??????????????????????????, ???? ???????????????????????? ??????????. ???? ???????????????????????? ?????? ????, ???????? ???? ???????????????? ???????????????????????????????? ???????? ???????? ??????????????????????, ???????? ?????????????????? ?????????????? ?? ???????????? ?????????? ???????????? ???????????????????????????? ???? ???????? ???????????? ???????????????????????????????????? ????????????????.', 'https://highload.today/wp-content/uploads/2022/12/Gf9qJpCNHAQ-1.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(4, '????????????????????????????, ???? ???????????????????? ?? ??????????????????: ???? ???????????????? ?????????????????? ?? ?????? ?????????????? ?????????? LinkedIn', '???????????? ???????????????? ???????????? ???????????? ?? LinkedIn ???????? ???????? ????????????????, ???????? ???? ?????????????? ???????????????????? ?? ?????? ???????????? ????????????, ?? ?????? ???????????????????? ????????????????, ?? ?????????????????? ?????????????? ???????????? (???????????? ??????????????). ???????????????????? ???? ?????????????????? ?????????????????????????? ???????????? ?????? ?????????? ?? ?????????????? 2022 ???????? ???????????? 36 ?????????? ?????????????????????? ?? ???????? ?? ?????????????? $200 ?????????? ??? ?????? ?????????????????? ????????????????, ???? ?????????????????? ?????????? ??????????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_333157022_L.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(5, '???????? ???????????????? ??? ???????? ?? ?????????????? ?????????????????????? ????????????????. ???????? ??????????????, ?????? ?????? ???? 5 ???????????? ???????????????? ?????????? ???? ????????', '2017 ???????? ???????????????????? ???????????????????? ?????????????? ???????????? ???? ?????????????????? ???????????? ???????????????? ???????????? ????????????-?????????????????????? Green Travel, ?? ???? ?????? ???????? ?????????????????? ???????????? ?? ?????????????? Telegram-??????-??????, ???????? ???? ???????????? ???????????? ???????????????? ?????????????????? ?????????? ???? ????????.??', 'https://highload.today/wp-content/uploads/2022/12/photo_2022-12-06_18-30-40.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(6, '11 ????????????, ???????? ???????? ???? ???????????? ???? ???????????? ?? ???? (?? ???? ????????????)', '???? ?????????????? ???????? ???????????????? ???????????? ??????????, ?????????????????? ?????????????????? ?? IT-???????????????? ????????????, ?? ?????????????? ?????? ?????????? ??????????????????, ?????? ?? ?????????????? ?????????????? ???????????????? ?????????? ???? ?????????????? ?????????? ????????????????????. QA Engineer ?? ???????????? ?????????? ?????????? ?? ???????????? Twitter ?????????????? ?????????? ????????????, ???????? ???? ???????????????? ???????????? ????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_185036632_L.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(7, '???? ???????? ?????? ?? ???? ?? ?????? ????????????????', '??????????', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_137985986_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(8, '???????????????????? ???????????????? ???????????????????????? ?????????????? ?? ??????????????. ?????? ?????????? ???????????????? ?????????? ???????????? ?? ???????????????????? ?????? CISO Ukraine', '?? ?????????????? ???????????? ???????????? ???????????????????? ?? ???????????????????????? ??????????????. ???????? ???????????????? ?????????????????????????????? ???????? ?????? ?????????? ???????????????????????? ?????????????????????? ?????????????????????? ?? ???????????? ?????????????????? ???? ????????????????, ?????? ???????????????? ????.', 'https://highload.today/wp-content/uploads/2022/12/ukfdyfz.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(9, '?????????????????? ????????: ?????????????????? ???????????????? ???????????????????????? AWS Lambda ???? 5 ???????????????? ???????????????????????? ?????? ???????????? ?? ??????', '?? ?????????? ???????????????????? ???????????? ???? Highload ?? ???????????????? ???????????????? ?????? ?????????????? ????????????-??????????????, ?????? ???????????? ?????????????????? ???????????? ????????????????????.', 'https://highload.today/wp-content/uploads/2022/12/Gf9qJpCNHAQ.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(10, '?? ?????????????? ?? ???????????????? ???? ????????????????: ???????? ???? ???????????????????? ???? ?????????????? ???????????????? (?? ???? ?? ?????? ????????????)', '?????????? ????????? ????????????, ???????? ?????????????????? ?????????????? ?????????????????? ????????????. ???? ???????? ??????????????, ???????????????? ???????????????? ?????????? ???????????????? ?????????????? ?? ??????????, ?????????? ???? ?????????????? ???? ??????????????????', 'https://highload.today/wp-content/uploads/2022/12/black-mirror-caida-picado-288167.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(11, '???? ????????????????????: ?????? IT-?????????????????????????? ???????????? ?? 2023 ???????? ??? 11 ???????????????? ????????????????????????', '?????????????????? ???????????????? ?? ???????????? ?????????? ???????????????? ???? ?????????? ???????????? ?? ????????????????, ?????? ???????????????????? ?????????????? ???????????????? ???? ?????????? ???? ???????????????????????? ??????????????: ???????????????? ?????????? ???????????? ???? ?????????????? 2022 ???????? ???????????????? $270 ???? ???????????? (???????????????????? ???? ?????????????????????? ?????????????????????????? DOU).', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_514331542_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(12, '?????????????????? ?????? ????????????: ?? ?????????????? ???????????????? ???????????? ???????????????????? ?????????? ??? ?????????????? ?????????????? ???????????? ????????????', '?????????????????? ???????????????? ???????????????????????? ?????????? ???????????????? ??????????????, ?????? ?????????????? ??????????????????????, ???????? ???????????? ???? ???????????????????? ?????? ??????????????????. ???????????????????? ???????????????? ???????????????? ???????????????? ?????????????????? IT-??????????.', 'https://highload.today/wp-content/uploads/2022/12/yuvpk.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(13, '???????????????? ???????????????????????? ?????????????? ?????? ?????? ????????????????. ???? ???????????? ???????? ???? ???? ???????????? ?????????????????????? ????-????????????????????????????????', 'Colonnade ??? ???????????????????? ???????????????? ????????????????, ?????? ???????????? ?? ?????????????? ?? 1998 ????????. ?? ?????? ???????????????? ?????????????? ???????????????????? ??? ?????? ???? ?????????? ??????????????????. ?????? ?????????????? ?????????????? ???????????? ?????????????? ????????????. ?????????? ???????????????? Colonnade ???????????? ???????????????????? ???? ???????????????? ????????????????, ???????????? ?? ?????? ?????????????? ?????????????? ?? ?????????? ????.??', 'https://highload.today/wp-content/uploads/2022/12/image-233.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(14, '???? ???????????? reduce() ?? JavaScript', '??????????????????', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_451178260_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(15, '?????????????? Starlink: ?????? ???????????? ???????? ???????????????? ???? ???? ?????????????????????????? ????????????????????', '??????????????, ???????????????????? ???? ?????????????????? ?????????????????????? ?????????????????????? Starlink, ?????? ???????? ???????????????????? ?????????????????? ?? ???????????? ????????????????, ?????????????????????? ??????????????? ???? ?????????????????? ??????????????????. ?????? ???????????????????????????? ???????????????????? ?????????????????? ?? $500 ???? $700, ?? ???????????? Starlink ?? ?????????????? ??? ?? $60 ???? $75 (2800 ?????? ???? ????????????).', 'https://highload.today/wp-content/uploads/2022/12/tsukp.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(16, '???? ?????? ???????????????????? ???? ????????????: ???? ?????????????????????????????? ?????? ???????????????????? AWS Lambda', '???????????? ???? ?????? ???????????????????? ???????????? ?????? ?????????????? ????????????-??????????????. ?? ??????????! ???????? ???? ???????????? ?????????????? ???????????? ???????????????? ?????????????????? ???????????? ???????????????????? ???? ?????????????????? ???????????????????????? ?????????????????????? ??????????????????????. ???????????????? ???????????????? ???? ?????????????????????? ???? ???????????????? ?????????????? AWS Lambda ?????? Amazon. ?????? ???? ???????? ?? ???????? ????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_440387162_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(17, '10 ?????????????????????? ?? ???????????????????????? ?? ???????????????? ???????????????? ??????????????', '???? ???????? ???????????????? ?????????????? ???????????? ?????????? ?????????????????????? ???? ????????????????????????, ?????? ?? ???????????? ??????????, ?????????? ???????? ??! ??????, ???????? ?????????? ???????? ?????????????? ???????????????? ?????? ?????? ?????? ????????????, ?????????????? ???????????????? ????????.', 'https://highload.today/wp-content/uploads/2022/12/281992043_553223903073896_9164753347862096463_n.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(18, '???????? ???? ?????????????? ?????????? ????????????: ???? ???????? ?? ??????????, ???????? ?????????????? ???????? ???????? ?????????? ?? ?????????????? ?????? ??????????', '??????????, ???? ????????????????????, ???? ?????????? ???????????? ?????????? ?????????????? ?????????? ?? ???????????????? ???????????????????? ?? ???????????????????????? ?????????????????????? ???????? ??????????.', 'https://highload.today/wp-content/uploads/2022/12/Steve_Jobs_Headshot_2010-CROP-1.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(19, '?????? ????????????: ???? ?????????????????? ???? ???????? ?? ?????????????? ??? ???????????????????? ????????????', '???????????? ???????????????? ???????????????? ?????????????????????? ???????????????????????? ???????????????????????????? ???? ?????????????????? ??????????????????. ?? ?????????????? 23-24 ?????????????????? ???? ?????????? ??????????????????????????????. ???? ?? ???????? ?????????? ?????????????? ???? ????????????????????????. ??????, ???? ????????, ???????????????? ???????? ?????????????????????? ?? ???????????? ????????????????????????. ???????? ???? ?????????? ???????? ????????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_620149828_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(20, '???????????? ????????????????: ???? ?????????????????? ???????????? ?????????????? ?????? ?????? ?????????? ?? ???? ???????????? ???????????? ???? ???????????????????? ???????????????????? ??????????', '?????????????? ???????? ?????????????????? ???????????????? ???????????? ??? ???????? ?????????????? ??????????. ?? ?????? ?????? ?????????? ???? ???????????????????? ???? ???????????????????????????????? ???????????? ?? ???????? ???????????????? ???? ??????????????, ?????? ?? ?? ???????? ???????????????????????? ?????????????? ?????????????? ??? ?????? ???????????????????? ?????????????? ???? ??????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_93203712_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(21, '?????????????????? ???????? ???????????????? ?? ?????????????????? ??????????: ???? ???????????? ???????????????? ?????????????? ???????????? ?????????????????? ??????????', '???????????????? ???????????????????????? ?? ??????????????, ???? ?? ???????????? ????????????????, ?????????? ?????????????????? ?????????????????? ????????. ?????????????? ???????????????? ?????????????? ???????????? ?????????????????????? ?????? ??????????? ??????????. ?????????????????????? ???? ??????????, ?????????? ?????????????????? ???????????????????? ???????????????? ?? ???????????????? ???? ?????????? ??????????. ?? ?????????????? ???? ?????????????? ???????????? ?????????????????????? ??? ?????????????????????????? ????????????.', 'https://highload.today/wp-content/uploads/2022/12/preview.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(22, '?????????? ???????????? ???????????????? ???? ??????????????: ?????? ???????????????????? ???? ?????????????????????? ??????????, ?????? ?????????? ??????????????-??????????????????????', '?????????????? ???????????? ???????????????? ?????? ??????????????-???????????????????? ?? ?????? ?????????????? ?????? ??????????? ???? ????????????????????. ?????????? ???????????? ??????, ???????? ?????????????????? ???????????? ??????????????, ?????? ???????? ???????????????????? ???????????????????? ???????????????????? ????????????????.??', 'https://highload.today/wp-content/uploads/2022/12/cca7ee74b27fc953d1e45dbb8fad5ff0.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(23, '?????? ???????????? ???????? ?????? ?? ???????????????????? ???? ?????????????????????????? ??????????: ?????????????? ?? ???????????? ?????? ????????????-QA, ???? ??????????', '???????????????????? ?????????????????????? ?????????????? ???????????? ???? QA-???????????????????? ?????????????? ????????????????, ???? ?????????? ?????????? ?????????????? ???? ?????????????????????????? ???????? ??? ?????? ????????????, ???????????????? ??????????????, ???????? ?????????????????? ???? ???????????? ?????????? ???? ?????????????????????? ??????????.', 'https://highload.today/wp-content/uploads/2022/12/photo_2022-11-28_09-33-00-1.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(24, '22 ???????????????????? ?? ??????????, ???? ???????????? ?? ????????????', '???????? ???????????????? ????????????, ?? ???????? ???? ?????? ???????? ???????????????? ????????????????, ???????? ???? ???? ???? ???????? ???????? ?????????????????????? ???????? ???? ???????? ????????????????, ?? ?? ?????? ???????????????????? ?????????????? ??????????????, ???? ?????? ???????????? ?????????????????????? ???????? ????????????????????. ???????????????? ???????????????????? ?????????????? ?????????????? ???? ?????????? ?? ??????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_83142150_L.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(25, '?????????????????? ???????????????????? Theranos: ???? ?????????? ?????????? ?? ?????????????????? ?????????? ???????????????? ?????????????????? ???????????????????? ????????????', '?? ???????????? ?????????? ?????????????????????? FTX ?????????????? ??????????, ???? ?????????????????????? ???? ???????????????????? ?? IT ??? ???? ???????? ???? ?????? ?????? ????????????????. ?????? ???? ?????? ???? ???????????????????', 'https://highload.today/wp-content/uploads/2022/11/FiBTRDvWAAkKB6y-kopyya-1.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(26, '?????? ???????????????? ??????????????????: ???? TikTok ???????????????? ???????????? ???????? ?????????????????? (?? ?????????? ??????)', 'TikTok ???????????? ???????? ???????????????????????????????????? ???????????????????? ??????????????, ???? ????????-???????? ????????????????. ???????????? ???? ???????????????????????????? ???????? ???????????? ????????????, ???? ???????? ?????????????????? ???????????????????? ???????????????????? ?????? ???????????????????? ???? ???????????????????? ???????????????????? ??????????, ?????? ???????????????? ???????????????????? ????????????????????.', 'https://highload.today/wp-content/uploads/2022/12/Depositphotos_395059204_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(27, '???????????? ??????????????, ????????, ???????? ???? ???????????? ??? ?????? ???????? ???? ??????????????: ?????????????? ?????? ???????? ???????? ?? IT ???? ?????????? ??????????????????', '???????????? ???????????????? ??? ?? ????????-???????? ???????????? ?????? ???????? ???????????????????????? ???? 180 ????????????????. ???????????????? ???? ?????????????? ?? ??????????????????, ???????????? ??? ????????. ?????????? ???????????????? ?????????????? ?????????????? ???????? ?? ?????????????? ???? ?????????????? ???? ???????????? ????????????, ???? ???? ???????????? ???????????? ?????????? ?????????????????????? ??????????. ???? ?????????? ?????????????? ?? ??????????????, ?????? ???? ????????.', 'https://highload.today/wp-content/uploads/2022/12/tsupf.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(28, 'Java String format: ???????????? ?? ?????? ???? ????????????????', '???????????????? ???? ?????????????????????? ?? ?????????????????????????? ?????????????????? ???? ???????????????? ?????????????? ?? Java, ???????????????????? ?? Java String format(), ???????????????????? ???? ???????? ??????????????????????????, ?????? ???????? ?????????????? ?? ???? ???????? ??????????????????????????.', 'https://highload.today/wp-content/uploads/2022/11/02.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(29, '?????????????????? ????????????????, ?????????????????? ???????????????? ???? United24. ???????????????? ?????????????????????? Sigma ?????? Interkassa', '???????????????????????????? Interkassa ???????????????????????? ???????? ???????????????? ?????????????? ?? ???????????????? ???? ???????????????????? ?? ?????????? iGaming-?????????? Sigma, ???? ?????????????????? ???? ????????????. ???? ???????????????? ???????????? Interkassa ?????????????? ???????????? ???? ?????????????????? ?????????????? ?????????? ?????????????????? United24, ???????????????? ?????????????????? ?? ?????????????????? ???????????????? ???? ?????????? ?????????????????????? ??????????????.??', 'https://highload.today/wp-content/uploads/2022/11/1-12-e1669732963432.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(30, '???? ?????????? ????????????????-?????????????????????? ???? ???????????????????? $3 ??????.? ????????????????????????, ???? ?????? ?????? ?????????? ?? ???? ?????????? ????????????????', '???????? ?????? ???????????? ?????????????????????????? ?? ???? ????????????, ?????? ?????????????????? ???????????? ?????????? ?????????????? ??????????????????????, ???????????????? ?????????? ???? ???????????????? ????????????????-????????????????????. ???????? ?????? ?????????????????? ?????????????? ??????????, ?????? ???????????? ??????????????????????.', 'https://highload.today/wp-content/uploads/2022/11/imgonline-com-ua-Resize-G8uaz6Nd2TK.jpg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(31, '???????????? ???? ?????????? ?? ???????????????????????? ????????????: 14 ???????????? ?? ?????????????????????? ???????????????????? ???? ????????????????', '???????????????? ?????????????????? ???????????????????????????????? ?? IT ???????????????? ??? ????????????????????: ?????? ???????????? ????????????????, ???? ???????????????????????? ???????? ????????????, ?????? ?????????? ???????? ???????????? ????????????. ?????????????????? ?????? ???? 14 ?????????? ????????????????.', 'https://highload.today/wp-content/uploads/2022/11/uvavmchs.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(32, '???????????????? ??????????????: ???? ???????????????????? IT-???????????????? ?????????? ???????? ?? ?????????????????????? ???????????? ???? ???????????????', '?? ??????????????? ?? ???????????????? ???????????????????? ?????????????????????? ???????? ???? ????????????????? ?????????????????? ???????????????????????????? ?????????? ????-???????????????????? ?????????????? ???????? ????????????, ??????????????????? ?? ?????????????????????? ??????????????????, ????????????????????????????????, ???????????????????? ???????????????. ???????? ???????????? ??????????????: ???? ???????????????? ???? ???????? ???? ?????????????????????? ???????????????????????????? ????????????????.', 'https://highload.today/wp-content/uploads/2022/11/Depositphotos_414644648_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(33, '?????????????????????? ????????, ?????????????????? ?????? ?????????????????????? ?? IT-????????????????: 17 ???????????????????? ???????????????? ???????? ???? 17-?????????? ???????????????? ?? ??????????????', '?????????? ???????? ???????????????????????????? ???????? ?? ?????????????? ???????????????????????? 17 ??????????. ?? ???????? ???????????? ?? ???????????????? ?????????????? 17 ???????????????? ???????????????????? ????????????????, ?????? ???????? ???????????????????? ?????? ?????????????????? ?????????????? ?? 2022 ????????.??', 'https://highload.today/wp-content/uploads/2022/11/Group-198.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(34, '?????????????? ???????????????? ???? ??????????: ???? ?? 8 ?????????????? ?????????? ???????????? ?? IT (?? ?????? ?????????? ?????????????? ??????????????????)', '???????????????????????????????? ?? IT ?????? ?????????????? be like: 8 ?????????????? ??????????, ?????????????? ??????????????????, ?????????? ???????????????????????? CV, ?? ?????? ???????? ?????????? ????????????! ???????? ?????????????? ???????????????? Junior QA Engineer ?? Avirise ???????????? ????????????????????????.', 'https://highload.today/wp-content/uploads/2022/11/UKU.png', '2022-12-14 12:57:50', '2022-12-14 12:57:50'),
(35, '???? ?????? ?????????? ???????????? ??????????????????: ???????????? ???????????????? ?????????????????????? ???? ???? ?????? ???????????????? ???????? ??????????????', '?????????????????????? ?? ?????????????????????? ???????? ?? ???? ???????????????? ?????????? ?????????? ?????????????? ????????????????????. ?????????? ?????? ???????????? ?????????? ???????????????????? ???????????? ?? ???????????????? ???????? ????????. ?? ????????????????, ?????? ???????????????? ?? ???????????????? ?????????????? ?????????????????? ?????????????????? ??????????????????????, ?? ?????????? ?????????? ???? ???????????????????? ???? ?????????????????? ???????????? ???? ??????????????????.', 'https://highload.today/wp-content/uploads/2022/11/Depositphotos_240771618_L.jpeg', '2022-12-14 12:57:50', '2022-12-14 12:57:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
