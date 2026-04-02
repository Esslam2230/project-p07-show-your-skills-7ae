-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 mrt 2026 om 09:47
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `author`
--

INSERT INTO `author` (`id`, `name`, `description`, `img`, `year`) VALUES
(1, 'Brian Smith', 'Known for historical novels.', 'brian-smith.jpg', '1980-06-23'),
(2, 'Carla Reyes', 'Writes science and technology books.', 'carla-reyes.jpg', '1990-11-02'),
(3, 'David Lee', 'Fantasy and magical world creator.', 'david-lee.jpg', '1985-01-15'),
(4, 'Emma Brown', 'Fiction writer with gripping stories.', 'emma-brown.jpg', '1978-09-07'),
(5, 'Frank Wilson', 'Adventure and travel books.', 'frank-wilson.jpg', '1968-05-19'),
(6, 'Grace Kim', 'Science fiction author.', 'grace-kim.jpg', '1982-02-28'),
(7, 'Henry Adams', 'Historical fiction specialist.', 'henry-adams.jpg', '1970-12-12'),
(8, 'Isabella Chen', 'Fantasy novels for young adults.', 'isabella-chen.jpg', '1995-07-04'),
(9, 'Jack Thompson', 'Writes thrilling mysteries.', 'jack-thompson.jpg', '1988-03-21'),
(10, 'Alice Johnson', 'Author of thrilling adventures.', 'alice-johnson.jpg', '1975-04-12');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `author_book`
--

CREATE TABLE `author_book` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
(1, 1),
(1, 11),
(1, 21),
(1, 31),
(1, 41),
(2, 2),
(2, 12),
(2, 22),
(2, 32),
(2, 42),
(3, 3),
(3, 13),
(3, 23),
(3, 33),
(3, 43),
(4, 4),
(4, 14),
(4, 24),
(4, 34),
(4, 44),
(5, 5),
(5, 15),
(5, 25),
(5, 35),
(5, 45),
(6, 6),
(6, 16),
(6, 26),
(6, 36),
(6, 46),
(7, 7),
(7, 17),
(7, 27),
(7, 37),
(7, 47),
(8, 8),
(8, 18),
(8, 28),
(8, 38),
(8, 48),
(9, 9),
(9, 19),
(9, 29),
(9, 39),
(9, 49),
(10, 10),
(10, 20),
(10, 30),
(10, 40),
(10, 50);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `year` date NOT NULL,
  `book_borrow` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `book`
--

INSERT INTO `book` (`id`, `title`, `img`, `description`, `isbn`, `year`, `book_borrow`) VALUES
(1, 'The Secret Garden', 'the-secret-garden.jpg', 'A classic story about a hidden garden.', '978-0-123456-01-0', '1911-05-01', ''),
(2, 'Journey to the West', 'journey-to-the-west.jpg', 'An epic adventure through China.', '978-0-123456-02-7', '1592-01-01', ''),
(3, 'Mystery of the Lost City', 'mystery-of-the-lost-city.jpg', 'A thrilling quest for a forgotten civilization.', '978-0-123456-03-4', '2005-08-15', ''),
(4, 'Science Wonders', 'science-wonders.jpg', 'Exploring amazing scientific discoveries.', '978-0-123456-04-1', '2015-03-10', ''),
(5, 'Future Horizons', 'future-horizons.jpg', 'Exploring possibilities of tomorrow.', '978-0-123456-05-8', '2025-01-20', ''),
(6, 'Legends of the Forest', 'legends-of-the-forest.jpg', 'Tales of magical creatures and enchanted woods.', '978-0-123456-06-5', '1999-07-12', ''),
(7, 'Adventures in Space', 'adventures-in-space.jpg', 'A journey through the stars and beyond.', '978-0-123456-07-2', '2010-11-05', ''),
(8, 'Ocean Mysteries', 'ocean-mysteries.jpg', 'Discovering secrets beneath the waves.', '978-0-123456-08-9', '2003-02-17', ''),
(9, 'The Time Traveler', 'the-time-traveler.jpg', 'Exploring past and future through time travel.', '978-0-123456-09-6', '2018-06-21', ''),
(10, 'Hidden Treasures', 'hidden-treasures.jpg', 'A quest for riches and secrets long forgotten.', '978-0-123456-10-2', '2000-12-01', ''),
(11, 'Mind and Matter', 'mind-and-matter.jpg', 'Exploring mysteries of science and philosophy.', '978-0-123456-11-9', '2012-08-30', ''),
(12, 'Whispers in the Dark', 'whispers-in-the-dark.jpg', 'A suspenseful tale of secrets and shadows.', '978-0-123456-12-6', '2007-09-15', ''),
(13, 'Journey Beyond', 'journey-beyond.jpg', 'A story about exploration and courage.', '978-0-123456-13-3', '2019-03-04', ''),
(14, 'The Lost Kingdom', 'the-lost-kingdom.jpg', 'An epic adventure in a forgotten empire.', '978-0-123456-14-0', '1995-05-25', ''),
(15, 'Mysteries of the Mind', 'mysteries-of-the-mind.jpg', 'Delving into the power of the human brain.', '978-0-123456-15-7', '2008-01-19', ''),
(16, 'Stars Above', 'stars-above.jpg', 'A poetic journey through the universe.', '978-0-123456-16-4', '2016-07-08', ''),
(17, 'Legends Reborn', 'legends-reborn.jpg', 'Heroes and myths retold for a new generation.', '978-0-123456-17-1', '2020-09-12', ''),
(18, 'The Forgotten Path', 'the-forgotten-path.jpg', 'Rediscovering lost ways.', '978-0-123456-18-8', '2004-04-23', ''),
(19, 'Secrets of the Jungle', 'secrets-of-the-jungle.jpg', 'Exploring untamed wilds and hidden life.', '978-0-123456-19-5', '2001-10-14', ''),
(20, 'The Crystal Cave', 'the-crystal-cave.jpg', 'A magical adventure in a glittering cavern.', '978-0-123456-20-1', '1998-06-09', ''),
(21, 'Voices of the Past', 'voices-of-the-past.jpg', 'Uncovering stories long forgotten.', '978-0-123456-21-8', '2014-11-30', ''),
(22, 'The Endless Journey', 'the-endless-journey.jpg', 'An epic tale of adventure and discovery.', '978-0-123456-22-5', '2009-03-18', ''),
(23, 'Secrets of the Deep', 'secrets-of-the-deep.jpg', 'Mysteries beneath the ocean revealed.', '978-0-123456-23-2', '2013-05-21', ''),
(24, 'Whispers of Time', 'whispers-of-time.jpg', 'Connecting past, present, and future.', '978-0-123456-24-9', '2017-01-02', ''),
(25, 'The Hidden Library', 'the-hidden-library.jpg', 'A tale of knowledge and secret books.', '978-0-123456-25-6', '2002-08-11', ''),
(26, 'Echoes of Eternity', 'echoes-of-eternity.jpg', 'A philosophical journey through life and time.', '978-0-123456-26-3', '2011-12-07', ''),
(27, 'The Silver Key', 'the-silver-key.jpg', 'Unlocking mysteries and hidden doors.', '978-0-123456-27-0', '2006-09-19', ''),
(28, 'Beyond the Horizon', 'beyond-the-horizon.jpg', 'Exploring new lands and possibilities.', '978-0-123456-28-7', '2018-05-05', ''),
(29, 'The Golden Compass', 'the-golden-compass.jpg', 'An adventure in a magical world.', '978-0-123456-29-4', '2007-02-13', ''),
(30, 'Legends of Tomorrow', 'legends-of-tomorrow.jpg', 'Heroes and adventures of the future.', '978-0-123456-30-0', '2021-04-28', ''),
(31, 'The Dark Forest', 'the-dark-forest.jpg', 'A thrilling journey through a mysterious forest.', '978-0-123456-31-7', '1999-09-22', ''),
(32, 'Path of Destiny', 'path-of-destiny.jpg', 'A tale of fate and courage.', '978-0-123456-32-4', '2003-12-10', ''),
(33, 'The Last Voyage', 'the-last-voyage.jpg', 'An epic sea adventure.', '978-0-123456-33-1', '2010-07-17', ''),
(34, 'Secrets Unveiled', 'secrets-unveiled.jpg', 'Mysteries revealed in surprising ways.', '978-0-123456-34-8', '2005-03-03', ''),
(35, 'The Eternal Flame', 'the-eternal-flame.jpg', 'A story of passion and perseverance.', '978-0-123456-35-5', '2012-06-25', ''),
(36, 'The Hidden Fortress', 'the-hidden-fortress.jpg', 'A tale of strategy and courage.', '978-0-123456-36-2', '1997-11-15', ''),
(37, 'Wonders of Nature', 'wonders-of-nature.jpg', 'Exploring the beauty of the natural world.', '978-0-123456-37-9', '2016-09-08', ''),
(38, 'The Enchanted Garden', 'the-enchanted-garden.jpg', 'A magical garden adventure.', '978-0-123456-38-6', '2000-05-05', ''),
(39, 'The Time Keeper', 'the-time-keeper.jpg', 'A journey through time and history.', '978-0-123456-39-3', '2014-01-20', ''),
(40, 'The Lost Expedition', 'the-lost-expedition.jpg', 'A thrilling adventure in unknown lands.', '978-0-123456-40-9', '2008-08-12', ''),
(41, 'Shadows of the Past', 'shadows-of-the-past.jpg', 'Secrets from history uncovered.', '978-0-123456-41-6', '2001-04-18', ''),
(42, 'The Crystal Tower', 'the-crystal-tower.jpg', 'A magical quest for a hidden tower.', '978-0-123456-42-3', '2017-10-30', ''),
(43, 'Legends of the Sea', 'legends-of-the-sea.jpg', 'Stories of the oceans and adventures.', '978-0-123456-43-0', '1996-07-01', ''),
(44, 'The Forgotten Realm', 'the-forgotten-realm.jpg', 'A hidden world discovered.', '978-0-123456-44-7', '2009-03-22', ''),
(45, 'Voices from Afar', 'voices-from-afar.jpg', 'Stories of distant lands and people.', '978-0-123456-45-4', '2011-12-15', ''),
(46, 'The Golden Horizon', 'the-golden-horizon.jpg', 'Adventures and discoveries await.', '978-0-123456-46-1', '2015-05-27', ''),
(47, 'Mystery of the Old Mansion', 'mystery-of-the-old-mansion.jpg', 'A suspenseful story of secrets and intrigue.', '978-0-123456-47-8', '2002-09-19', ''),
(48, 'The Infinite Sky', 'the-infinite-sky.jpg', 'Exploring the endless possibilities above.', '978-0-123456-48-5', '2018-06-10', ''),
(49, 'Pathways Unknown', 'pathways-unknown.jpg', 'A journey through unfamiliar paths.', '978-0-123456-49-2', '2004-02-28', ''),
(50, 'Whispers of the Wind', 'whispers-of-the-wind.jpg', 'Stories carried by the wind.', '978-0-123456-50-8', '2013-11-21', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`id`, `title`, `img`, `description`, `isbn`, `year`) VALUES
(1, 'Book 1', 'book_1.jpg', 'Description for Book 1', '9780000000001', 2001),
(2, 'Book 2', 'book_2.jpg', 'Description for Book 2', '9780000000002', 2002),
(3, 'Book 3', 'book_3.jpg', 'Description for Book 3', '9780000000003', 2003),
(4, 'Book 4', 'book_4.jpg', 'Description for Book 4', '9780000000004', 2004),
(5, 'Book 5', 'book_5.jpg', 'Description for Book 5', '9780000000005', 2005),
(6, 'Book 6', 'book_6.jpg', 'Description for Book 6', '9780000000006', 2006),
(7, 'Book 7', 'book_7.jpg', 'Description for Book 7', '9780000000007', 2007),
(8, 'Book 8', 'book_8.jpg', 'Description for Book 8', '9780000000008', 2008),
(9, 'Book 9', 'book_9.jpg', 'Description for Book 9', '9780000000009', 2009),
(10, 'Book 10', 'book_10.jpg', 'Description for Book 10', '9780000000010', 2010),
(11, 'Book 11', 'book_11.jpg', 'Description for Book 11', '9780000000011', 2011),
(12, 'Book 12', 'book_12.jpg', 'Description for Book 12', '9780000000012', 2012),
(13, 'Book 13', 'book_13.jpg', 'Description for Book 13', '9780000000013', 2013),
(14, 'Book 14', 'book_14.jpg', 'Description for Book 14', '9780000000014', 2014),
(15, 'Book 15', 'book_15.jpg', 'Description for Book 15', '9780000000015', 2015),
(16, 'Book 16', 'book_16.jpg', 'Description for Book 16', '9780000000016', 2016),
(17, 'Book 17', 'book_17.jpg', 'Description for Book 17', '9780000000017', 2017),
(18, 'Book 18', 'book_18.jpg', 'Description for Book 18', '9780000000018', 2018),
(19, 'Book 19', 'book_19.jpg', 'Description for Book 19', '9780000000019', 2019),
(20, 'Book 20', 'book_20.jpg', 'Description for Book 20', '9780000000020', 2020),
(21, 'Book 21', 'book_21.jpg', 'Description for Book 21', '9780000000021', 2001),
(22, 'Book 22', 'book_22.jpg', 'Description for Book 22', '9780000000022', 2002),
(23, 'Book 23', 'book_23.jpg', 'Description for Book 23', '9780000000023', 2003),
(24, 'Book 24', 'book_24.jpg', 'Description for Book 24', '9780000000024', 2004),
(25, 'Book 25', 'book_25.jpg', 'Description for Book 25', '9780000000025', 2005),
(26, 'Book 26', 'book_26.jpg', 'Description for Book 26', '9780000000026', 2006),
(27, 'Book 27', 'book_27.jpg', 'Description for Book 27', '9780000000027', 2007),
(28, 'Book 28', 'book_28.jpg', 'Description for Book 28', '9780000000028', 2008),
(29, 'Book 29', 'book_29.jpg', 'Description for Book 29', '9780000000029', 2009),
(30, 'Book 30', 'book_30.jpg', 'Description for Book 30', '9780000000030', 2010),
(31, 'Book 200', 'book_200.jpg', 'Description for Book 200', '9780000000200', 2020);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `book_borrow`
--

CREATE TABLE `book_borrow` (
  `id` int(11) NOT NULL,
  `loan_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `book_category`
--

CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `book_category`
--

INSERT INTO `book_category` (`book_id`, `category_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 1),
(27, 2),
(28, 3),
(29, 4),
(30, 5),
(31, 1),
(32, 2),
(33, 3),
(34, 4),
(35, 5),
(36, 1),
(37, 2),
(38, 3),
(39, 4),
(40, 5),
(41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 1),
(47, 2),
(48, 3),
(49, 4),
(50, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `img`) VALUES
(1, 'Fiction', 'fiction.jpg'),
(2, 'Science', 'science.jpg'),
(3, 'History', 'history.jpg'),
(4, 'Adventure', 'adventure.jpg'),
(5, 'Fantasy', 'fantasy.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260311081617', '2026-03-11 09:16:24', 37),
('DoctrineMigrations\\Version20260316085457', '2026-03-16 09:55:08', 44),
('DoctrineMigrations\\Version20260316085818', '2026-03-16 09:58:23', 237),
('DoctrineMigrations\\Version20260316091800', '2026-03-16 10:18:30', 215),
('DoctrineMigrations\\Version20260316092020', '2026-03-16 10:20:27', 17),
('DoctrineMigrations\\Version20260318082845', '2026-03-18 09:29:01', 79),
('DoctrineMigrations\\Version20260318090753', '2026-03-18 10:08:25', 61);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` date NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `first_name`, `last_name`, `age`, `address`) VALUES
(4, 'Aminanur@gmail.com', '$2y$13$dpcdhlYewFGVzo4FTs6wlOOIk1vIsU1WX2qwkLLIPg95ljqcoYr6G', '[\"ROLE_ADMIN\"]', 'Amina', 'Nur', '2021-01-01', 'Bras'),
(5, 'eslam20@gmail.com', '$2y$13$cyq39mG43LzhfHWLgU9OhOomP1SSuL55/Z5oJZXcxsXyeqLhRYlA6', '[]', 'Eslam', 'Alsufyani', '2021-01-01', 'Bras'),
(6, 'eslam1@gmail.com', '$2y$13$bo.rC/MslJT5Qh.XXSaE6.Axy9fS4yr9tb1UN8iApbAb/HJJKjiYC', '[\"ROLE_USER\"]', 'Ema', 'Alsufyani', '2021-01-01', 'bras');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `IDX_2F0A2BEEF675F31B` (`author_id`),
  ADD KEY `IDX_2F0A2BEE16A2B381` (`book_id`);

--
-- Indexen voor tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `book_borrow`
--
ALTER TABLE `book_borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C0CA33D16A2B381` (`book_id`),
  ADD KEY `IDX_7C0CA33DA76ED395` (`user_id`);

--
-- Indexen voor tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_id`,`category_id`),
  ADD KEY `IDX_1FB30F9816A2B381` (`book_id`),
  ADD KEY `IDX_1FB30F9812469DE2` (`category_id`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT voor een tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT voor een tabel `book_borrow`
--
ALTER TABLE `book_borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `FK_2F0A2BEE16A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2F0A2BEEF675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `book_borrow`
--
ALTER TABLE `book_borrow`
  ADD CONSTRAINT `FK_7C0CA33D16A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `FK_7C0CA33DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Beperkingen voor tabel `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `FK_1FB30F9812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1FB30F9816A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
