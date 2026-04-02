-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 09:57 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `description`, `img`, `year`) VALUES
(1, 'Alice Johnson', 'Author of thrilling adventures.', 'alice-johnson.jpg', '1975-04-12'),
(2, 'Brian Smith', 'Known for historical novels.', 'brian-smith.jpg', '1980-06-23'),
(3, 'Carla Reyes', 'Writes science and technology books.', 'carla-reyes.jpg', '1990-11-02'),
(4, 'David Lee', 'Fantasy and magical world creator.', 'david-lee.jpg', '1985-01-15'),
(5, 'Emma Brown', 'Fiction writer with gripping stories.', 'emma-brown.jpg', '1978-09-07'),
(6, 'Frank Wilson', 'Adventure and travel books.', 'frank-wilson.jpg', '1968-05-19'),
(7, 'Grace Kim', 'Science fiction author.', 'grace-kim.jpg', '1982-02-28'),
(8, 'Henry Adams', 'Historical fiction specialist.', 'henry-adams.jpg', '1970-12-12'),
(9, 'Isabella Chen', 'Fantasy novels for young adults.', 'isabella-chen.jpg', '1995-07-04'),
(10, 'Jack Thompson', 'Writes thrilling mysteries.', 'jack-thompson.jpg', '1988-03-21'),
(11, 'Karen White', 'Poetry and fiction writer.', 'karen-white.jpg', '1983-08-16'),
(12, 'Liam Carter', 'Adventure and travel specialist.', 'liam-carter.jpg', '1979-02-09'),
(13, 'Mia Garcia', 'Technology and science books.', 'mia-garcia.jpg', '1992-05-30'),
(14, 'Nathan Scott', 'Historical novels and biographies.', 'nathan-scott.jpg', '1981-12-11'),
(15, 'Olivia Turner', 'Fantasy and fiction stories.', 'olivia-turner.jpg', '1987-03-25'),
(16, 'Peter Young', 'Mystery and thriller author.', 'peter-young.jpg', '1976-11-07'),
(17, 'Quinn Hall', 'Travel and adventure books.', 'quinn-hall.jpg', '1990-09-19'),
(18, 'Rachel Evans', 'Science and technology writer.', 'rachel-evans.jpg', '1985-06-04'),
(19, 'Samuel Brooks', 'Historical fiction expert.', 'samuel-brooks.jpg', '1973-01-22'),
(20, 'Tina Lopez', 'Fantasy and poetry author.', 'tina-lopez.jpg', '1994-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
(1, 1),
(1, 11),
(1, 21),
(1, 31),
(1, 41),
(1, 51),
(1, 61),
(1, 71),
(1, 81),
(1, 91),
(2, 1),
(2, 11),
(2, 21),
(2, 31),
(2, 41),
(2, 51),
(2, 61),
(2, 71),
(2, 81),
(2, 91),
(3, 2),
(3, 12),
(3, 22),
(3, 32),
(3, 42),
(3, 52),
(3, 62),
(3, 72),
(3, 82),
(3, 92),
(4, 2),
(4, 12),
(4, 22),
(4, 32),
(4, 42),
(4, 52),
(4, 62),
(4, 72),
(4, 82),
(4, 92),
(5, 3),
(5, 13),
(5, 23),
(5, 33),
(5, 43),
(5, 53),
(5, 63),
(5, 73),
(5, 83),
(5, 93),
(6, 3),
(6, 13),
(6, 23),
(6, 33),
(6, 43),
(6, 53),
(6, 63),
(6, 73),
(6, 83),
(6, 93),
(7, 4),
(7, 14),
(7, 24),
(7, 34),
(7, 44),
(7, 54),
(7, 64),
(7, 74),
(7, 84),
(7, 94),
(8, 4),
(8, 14),
(8, 24),
(8, 34),
(8, 44),
(8, 54),
(8, 64),
(8, 74),
(8, 84),
(8, 94),
(9, 5),
(9, 15),
(9, 25),
(9, 35),
(9, 45),
(9, 55),
(9, 65),
(9, 75),
(9, 85),
(9, 95),
(10, 5),
(10, 15),
(10, 25),
(10, 35),
(10, 45),
(10, 55),
(10, 65),
(10, 75),
(10, 85),
(10, 95),
(11, 6),
(11, 16),
(11, 26),
(11, 36),
(11, 46),
(11, 56),
(11, 66),
(11, 76),
(11, 86),
(11, 96),
(12, 6),
(12, 16),
(12, 26),
(12, 36),
(12, 46),
(12, 56),
(12, 66),
(12, 76),
(12, 86),
(12, 96),
(13, 7),
(13, 17),
(13, 27),
(13, 37),
(13, 47),
(13, 57),
(13, 67),
(13, 77),
(13, 87),
(13, 97),
(14, 7),
(14, 17),
(14, 27),
(14, 37),
(14, 47),
(14, 57),
(14, 67),
(14, 77),
(14, 87),
(14, 97),
(15, 8),
(15, 18),
(15, 28),
(15, 38),
(15, 48),
(15, 58),
(15, 68),
(15, 78),
(15, 88),
(15, 98),
(16, 8),
(16, 18),
(16, 28),
(16, 38),
(16, 48),
(16, 58),
(16, 68),
(16, 78),
(16, 88),
(16, 98),
(17, 9),
(17, 19),
(17, 29),
(17, 39),
(17, 49),
(17, 59),
(17, 69),
(17, 79),
(17, 89),
(17, 99),
(18, 9),
(18, 19),
(18, 29),
(18, 39),
(18, 49),
(18, 59),
(18, 69),
(18, 79),
(18, 89),
(18, 99),
(19, 10),
(19, 20),
(19, 30),
(19, 40),
(19, 50),
(19, 60),
(19, 70),
(19, 80),
(19, 90),
(19, 100),
(20, 10),
(20, 20),
(20, 30),
(20, 40),
(20, 50),
(20, 60),
(20, 70),
(20, 80),
(20, 90),
(20, 100);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `img`, `description`, `isbn`, `year`) VALUES
(1, 'The Secret Garden', 'the-secret-garden.jpg', 'A classic story about a hidden garden.', '978-0-100001-01-0', '1911-05-01'),
(2, 'Journey to the West', 'journey-to-the-west.jpg', 'An epic adventure through China.', '978-0-100001-02-7', '1592-01-01'),
(3, 'Mystery of the Lost City', 'mystery-of-the-lost-city.jpg', 'A thrilling quest for a forgotten civilization.', '978-0-100001-03-4', '2005-08-15'),
(4, 'Science Wonders', 'science-wonders.jpg', 'Exploring amazing scientific discoveries.', '978-0-100001-04-1', '2015-03-10'),
(5, 'Future Horizons', 'future-horizons.jpg', 'Exploring possibilities of tomorrow.', '978-0-100001-05-8', '2025-01-20'),
(6, 'Legends of the Forest', 'legends-of-the-forest.jpg', 'Tales of magical creatures and enchanted woods.', '978-0-100001-06-5', '1999-07-12'),
(7, 'Adventures in Space', 'adventures-in-space.jpg', 'A journey through the stars and beyond.', '978-0-100001-07-2', '2010-11-05'),
(8, 'Ocean Mysteries', 'ocean-mysteries.jpg', 'Discovering secrets beneath the waves.', '978-0-100001-08-9', '2003-02-17'),
(9, 'The Time Traveler', 'the-time-traveler.jpg', 'Exploring past and future through time travel.', '978-0-100001-09-6', '2018-06-21'),
(10, 'Hidden Treasures', 'hidden-treasures.jpg', 'A quest for riches and secrets long forgotten.', '978-0-100001-10-2', '2000-12-01'),
(11, 'Whispering Shadows', 'whispering-shadows.jpg', 'Mysterious events that unfold in the night.', '978-0-100001-11-9', '2012-09-14'),
(12, 'Echoes of the Past', 'echoes-of-the-past.jpg', 'Historical tales that shape the present.', '978-0-100001-12-6', '1995-04-23'),
(13, 'Galaxy Chronicles', 'galaxy-chronicles.jpg', 'Adventures across multiple planets.', '978-0-100001-13-3', '2020-07-08'),
(14, 'Mind and Matter', 'mind-and-matter.jpg', 'Scientific exploration of the human mind.', '978-0-100001-14-0', '2017-11-19'),
(15, 'The Forgotten Realm', 'the-forgotten-realm.jpg', 'A fantasy world lost in time.', '978-0-100001-15-7', '2008-03-02'),
(16, 'Coded Truths', 'coded-truths.jpg', 'Mysteries hidden in encrypted messages.', '978-0-100001-16-4', '2016-05-27'),
(17, 'Rivers of Gold', 'rivers-of-gold.jpg', 'A journey to find wealth and adventure.', '978-0-100001-17-1', '2002-08-10'),
(18, 'Starlight Dreams', 'starlight-dreams.jpg', 'Fantasy tales under shimmering skies.', '978-0-100001-18-8', '2011-01-15'),
(19, 'The Alchemist\'s Path', 'the-alchemists-path.jpg', 'Secrets of ancient alchemists revealed.', '978-0-100001-19-5', '1998-06-20'),
(20, 'Voyage Beyond', 'voyage-beyond.jpg', 'Travel to unknown lands and seas.', '978-0-100001-20-1', '2007-12-05'),
(21, 'City of Secrets', 'city-of-secrets.jpg', 'Mysteries hidden in an urban maze.', '978-0-100001-21-8', '2014-04-09'),
(22, 'Paths of Glory', 'paths-of-glory.jpg', 'Historical battles and heroism.', '978-0-100001-22-5', '1918-11-11'),
(23, 'Wonders of Nature', 'wonders-of-nature.jpg', 'Exploring the beauty of the natural world.', '978-0-100001-23-2', '2019-05-30'),
(24, 'The Dragon\'s Call', 'the-dragons-call.jpg', 'A fantasy epic with dragons and heroes.', '978-0-100001-24-9', '2004-10-14'),
(25, 'Shadows in the Mist', 'shadows-in-the-mist.jpg', 'Mysteries lurking in foggy forests.', '978-0-100001-25-6', '2009-03-28'),
(26, 'Chronicles of Time', 'chronicles-of-time.jpg', 'Time-travel adventures across eras.', '978-0-100001-26-3', '2013-07-19'),
(27, 'Secrets of the Mind', 'secrets-of-the-mind.jpg', 'Psychological thriller uncovering hidden motives.', '978-0-100001-27-0', '2016-12-02'),
(28, 'Legends Never Die', 'legends-never-die.jpg', 'Stories of immortal heroes and myths.', '978-0-100001-28-7', '1997-09-21'),
(29, 'Mystic Rivers', 'mystic-rivers.jpg', 'Magical waters that change destinies.', '978-0-100001-29-4', '2001-06-18'),
(30, 'The Silent Watcher', 'the-silent-watcher.jpg', 'A suspenseful tale of observation and secrets.', '978-0-100001-30-0', '2012-02-11'),
(31, 'Golden Horizons', 'golden-horizons.jpg', 'Adventure to faraway lands.', '978-0-100001-31-7', '2010-09-05'),
(32, 'Voices of the Forgotten', 'voices-of-the-forgotten.jpg', 'Stories of those lost in history.', '978-0-100001-32-4', '2006-05-22'),
(33, 'Edge of Tomorrow', 'edge-of-tomorrow.jpg', 'Science fiction exploring future possibilities.', '978-0-100001-33-1', '2022-01-19'),
(34, 'The Painted Sky', 'the-painted-sky.jpg', 'Fantasy art and tales in a mystical land.', '978-0-100001-34-8', '2018-08-10'),
(35, 'Secrets Beneath', 'secrets-beneath.jpg', 'Discovering hidden truths underground.', '978-0-100001-35-5', '2011-03-03'),
(36, 'The Lost Compass', 'the-lost-compass.jpg', 'A navigational adventure across unknown seas.', '978-0-100001-36-2', '2003-07-14'),
(37, 'Twilight Saga', 'twilight-saga.jpg', 'A mix of romance and supernatural.', '978-0-100001-37-9', '2005-09-21'),
(38, 'Whispers in the Dark', 'whispers-in-the-dark.jpg', 'Thrilling tales of suspense.', '978-0-100001-38-6', '2008-12-12'),
(39, 'The Enchanted Forest', 'the-enchanted-forest.jpg', 'Mystical woods and magical beings.', '978-0-100001-39-3', '2000-04-07'),
(40, 'Pillars of Earth', 'pillars-of-earth.jpg', 'Historical drama and architecture.', '978-0-100001-40-0', '1989-09-23'),
(41, 'Celestial Dreams', 'celestial-dreams.jpg', 'Fantasy under a sky of stars.', '978-0-100001-41-7', '2015-11-19'),
(42, 'Riddles of the Ancients', 'riddles-of-the-ancients.jpg', 'Mystery and history entwined.', '978-0-100001-42-4', '2002-06-01'),
(43, 'Winds of Change', 'winds-of-change.jpg', 'Adventures and discoveries in new lands.', '978-0-100001-43-1', '2009-03-16'),
(44, 'The Crystal Key', 'the-crystal-key.jpg', 'Fantasy artifact that changes destinies.', '978-0-100001-44-8', '2013-05-12'),
(45, 'Shattered Realms', 'shattered-realms.jpg', 'A fantasy world torn apart.', '978-0-100001-45-5', '2016-10-21'),
(46, 'Voyager\'s Tale', 'voyagers-tale.jpg', 'A journey across oceans and skies.', '978-0-100001-46-2', '2018-01-30'),
(47, 'Hidden Paths', 'hidden-paths.jpg', 'Mysteries lurking on forgotten trails.', '978-0-100001-47-9', '2004-07-27'),
(48, 'The Forgotten Song', 'the-forgotten-song.jpg', 'Stories carried in old melodies.', '978-0-100001-48-6', '1996-02-08'),
(49, 'Twilight Horizon', 'twilight-horizon.jpg', 'Romantic fantasy adventures.', '978-0-100001-49-3', '2007-08-14'),
(50, 'Mystery Island', 'mystery-island.jpg', 'A suspenseful journey to an unknown island.', '978-0-100001-50-9', '2010-05-06'),
(51, 'Shadows of Time', 'shadows-of-time.jpg', 'Time travel and suspenseful adventures.', '978-0-100001-51-6', '2014-10-11'),
(52, 'The Golden Chalice', 'the-golden-chalice.jpg', 'A quest for a legendary treasure.', '978-0-100001-52-3', '2001-03-19'),
(53, 'Ocean Whispers', 'ocean-whispers.jpg', 'Secrets and stories of the deep sea.', '978-0-100001-53-0', '2005-07-23'),
(54, 'Legends of the Sky', 'legends-of-the-sky.jpg', 'Fantasy adventures above the clouds.', '978-0-100001-54-7', '2008-11-30'),
(55, 'Mystic Tales', 'mystic-tales.jpg', 'Magical stories from faraway lands.', '978-0-100001-55-4', '2012-02-14'),
(56, 'The Silent River', 'the-silent-river.jpg', 'Adventure and suspense along unknown waters.', '978-0-100001-56-1', '2003-06-05'),
(57, 'Paths Unknown', 'paths-unknown.jpg', 'Travel and discoveries in uncharted territories.', '978-0-100001-57-8', '2009-09-09'),
(58, 'The Dark Labyrinth', 'the-dark-labyrinth.jpg', 'Mystery and danger around every turn.', '978-0-100001-58-5', '2011-12-01'),
(59, 'Echoes of Eternity', 'echoes-of-eternity.jpg', 'Historical mysteries spanning centuries.', '978-0-100001-59-2', '2006-04-17'),
(60, 'Starlit Quest', 'starlit-quest.jpg', 'A magical journey under the stars.', '978-0-100001-60-8', '2015-07-20'),
(61, 'Whispers of Fate', 'whispers-of-fate.jpg', 'Destinies entwined through mystery and magic.', '978-0-100001-61-5', '2017-11-11'),
(62, 'The Hidden Fortress', 'the-hidden-fortress.jpg', 'Adventure and strategy in a secret stronghold.', '978-0-100001-62-2', '2004-08-28'),
(63, 'Rivers of Fire', 'rivers-of-fire.jpg', 'Dangerous adventures along fiery landscapes.', '978-0-100001-63-9', '2008-03-12'),
(64, 'Chronicles of Magic', 'chronicles-of-magic.jpg', 'Fantasy adventures filled with spellcasters.', '978-0-100001-64-6', '2010-10-05'),
(65, 'The Wandering Star', 'the-wandering-star.jpg', 'Space adventures and discoveries.', '978-0-100001-65-3', '2012-06-18'),
(66, 'Mystery at Dawn', 'mystery-at-dawn.jpg', 'Suspense and secrets at sunrise.', '978-0-100001-66-0', '2014-09-21'),
(67, 'Legends of the Deep', 'legends-of-the-deep.jpg', 'Underwater adventures and myths.', '978-0-100001-67-7', '2003-01-14'),
(68, 'The Crystal Maze', 'the-crystal-maze.jpg', 'Fantasy puzzle full of mysteries.', '978-0-100001-68-4', '2006-05-30'),
(69, 'Twilight Shadows', 'twilight-shadows.jpg', 'Romance and mystery combined.', '978-0-100001-69-1', '2009-12-25'),
(70, 'The Golden Path', 'the-golden-path.jpg', 'A journey of discovery and fortune.', '978-0-100001-70-7', '2011-08-11'),
(71, 'Winds of Eternity', 'winds-of-eternity.jpg', 'Fantasy adventures spanning time.', '978-0-100001-71-4', '2013-03-29'),
(72, 'Mystic Horizons', 'mystic-horizons.jpg', 'Magical lands and stories beyond imagination.', '978-0-100001-72-1', '2016-07-12'),
(73, 'The Forgotten Tale', 'the-forgotten-tale.jpg', 'Ancient stories rediscovered.', '978-0-100001-73-8', '2002-11-04'),
(74, 'Secrets of the Forest', 'secrets-of-the-forest.jpg', 'Mysteries hidden in the woods.', '978-0-100001-74-5', '2005-04-18'),
(75, 'Legends of Light', 'legends-of-light.jpg', 'Fantasy heroes and mystical quests.', '978-0-100001-75-2', '2008-09-23'),
(76, 'The Silent Mountain', 'the-silent-mountain.jpg', 'Adventure in isolated peaks.', '978-0-100001-76-9', '2010-01-07'),
(77, 'Twilight Echoes', 'twilight-echoes.jpg', 'Romance and fantasy combined.', '978-0-100001-77-6', '2012-06-30'),
(78, 'The Hidden Key', 'the-hidden-key.jpg', 'Mystery and secrets unlocked.', '978-0-100001-78-3', '2014-09-12'),
(79, 'Chronicles of the Unknown', 'chronicles-of-the-unknown.jpg', 'Adventures into mysterious realms.', '978-0-100001-79-0', '2016-12-18'),
(80, 'Mystery of the Night', 'mystery-of-the-night.jpg', 'Suspenseful stories after dark.', '978-0-100001-80-6', '2018-05-03'),
(81, 'The Enchanted Tower', 'the-enchanted-tower.jpg', 'Fantasy and magical heights.', '978-0-100001-81-3', '2001-02-28'),
(82, 'Legends Reborn', 'legends-reborn.jpg', 'Historical myths retold.', '978-0-100001-82-0', '2004-06-15'),
(83, 'The Wandering Moon', 'the-wandering-moon.jpg', 'Fantasy travels across night skies.', '978-0-100001-83-7', '2007-11-19'),
(84, 'Secrets of Time', 'secrets-of-time.jpg', 'Time travel and historical adventures.', '978-0-100001-84-4', '2010-03-21'),
(85, 'Mystic Whispers', 'mystic-whispers.jpg', 'Magical secrets revealed.', '978-0-100001-85-1', '2012-09-27'),
(86, 'The Lost Kingdom', 'the-lost-kingdom.jpg', 'A kingdom lost to history.', '978-0-100001-86-8', '2014-01-05'),
(87, 'Twilight Legends', 'twilight-legends.jpg', 'Romantic and magical adventures.', '978-0-100001-87-5', '2016-07-14'),
(88, 'Shadows of Eternity', 'shadows-of-eternity.jpg', 'Mysteries spanning centuries.', '978-0-100001-88-2', '2018-02-11'),
(89, 'The Golden Horizon', 'the-golden-horizon.jpg', 'Adventures and treasures beyond sight.', '978-0-100001-89-9', '2020-06-30'),
(90, 'Whispers of the Wind', 'whispers-of-the-wind.jpg', 'Stories carried by the wind.', '978-0-100001-90-5', '2013-11-21'),
(91, 'Echoes of Magic', 'echoes-of-magic.jpg', 'Fantasy and mystical tales intertwined.', '978-0-100001-91-2', '2015-04-12'),
(92, 'The Hidden Realm', 'the-hidden-realm.jpg', 'Discover a hidden magical world.', '978-0-100001-92-9', '2017-08-06'),
(93, 'Mystery of the Stars', 'mystery-of-the-stars.jpg', 'Secrets among the constellations.', '978-0-100001-93-6', '2019-12-25'),
(94, 'Legends of the Ancients', 'legends-of-the-ancients.jpg', 'Ancient myths and heroics retold.', '978-0-100001-94-3', '2003-03-11'),
(95, 'Twilight Quest', 'twilight-quest.jpg', 'Fantasy adventures during twilight.', '978-0-100001-95-0', '2006-09-19'),
(96, 'Secrets of the Deep', 'secrets-of-the-deep.jpg', 'Underwater mysteries and legends.', '978-0-100001-96-7', '2009-05-23'),
(97, 'Mystic Pathways', 'mystic-pathways.jpg', 'Magical journeys across mystical lands.', '978-0-100001-97-4', '2012-11-07'),
(98, 'The Silent Night', 'the-silent-night.jpg', 'Suspense and thrill during nightfall.', '978-0-100001-98-1', '2015-02-18'),
(99, 'Legends of Eternity', 'legends-of-eternity.jpg', 'Fantasy stories that never end.', '978-0-100001-99-8', '2018-06-30'),
(100, 'Whispers of Destiny', 'whispers-of-destiny.jpg', 'Destinies intertwined in magical worlds.', '978-0-100001-100-5', '2021-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `book_borrow`
--

CREATE TABLE `book_borrow` (
  `id` int(11) NOT NULL,
  `loan_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_stock_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 4),
(4, 4),
(4, 5),
(5, 5),
(5, 6),
(6, 6),
(6, 7),
(7, 7),
(7, 8),
(8, 8),
(8, 9),
(9, 9),
(9, 10),
(10, 1),
(10, 10),
(11, 1),
(11, 2),
(12, 2),
(12, 3),
(13, 3),
(13, 4),
(14, 4),
(14, 5),
(15, 5),
(15, 6),
(16, 6),
(16, 7),
(17, 7),
(17, 8),
(18, 8),
(18, 9),
(19, 9),
(19, 10),
(20, 1),
(20, 10),
(21, 1),
(21, 2),
(22, 2),
(22, 3),
(23, 3),
(23, 4),
(24, 4),
(24, 5),
(25, 5),
(25, 6),
(26, 6),
(26, 7),
(27, 7),
(27, 8),
(28, 8),
(28, 9),
(29, 9),
(29, 10),
(30, 1),
(30, 10),
(31, 1),
(31, 2),
(32, 2),
(32, 3),
(33, 3),
(33, 4),
(34, 4),
(34, 5),
(35, 5),
(35, 6),
(36, 6),
(36, 7),
(37, 7),
(37, 8),
(38, 8),
(38, 9),
(39, 9),
(39, 10),
(40, 1),
(40, 10),
(41, 1),
(41, 2),
(42, 2),
(42, 3),
(43, 3),
(43, 4),
(44, 4),
(44, 5),
(45, 5),
(45, 6),
(46, 6),
(46, 7),
(47, 7),
(47, 8),
(48, 8),
(48, 9),
(49, 9),
(49, 10),
(50, 1),
(50, 10),
(51, 1),
(51, 2),
(52, 2),
(52, 3),
(53, 3),
(53, 4),
(54, 4),
(54, 5),
(55, 5),
(55, 6),
(56, 6),
(56, 7),
(57, 7),
(57, 8),
(58, 8),
(58, 9),
(59, 9),
(59, 10),
(60, 1),
(60, 10),
(61, 1),
(61, 2),
(62, 2),
(62, 3),
(63, 3),
(63, 4),
(64, 4),
(64, 5),
(65, 5),
(65, 6),
(66, 6),
(66, 7),
(67, 7),
(67, 8),
(68, 8),
(68, 9),
(69, 9),
(69, 10),
(70, 1),
(70, 10),
(71, 1),
(71, 2),
(72, 2),
(72, 3),
(73, 3),
(73, 4),
(74, 4),
(74, 5),
(75, 5),
(75, 6),
(76, 6),
(76, 7),
(77, 7),
(77, 8),
(78, 8),
(78, 9),
(79, 9),
(79, 10),
(80, 1),
(80, 10),
(81, 1),
(81, 2),
(82, 2),
(82, 3),
(83, 3),
(83, 4),
(84, 4),
(84, 5),
(85, 5),
(85, 6),
(86, 6),
(86, 7),
(87, 7),
(87, 8),
(88, 8),
(88, 9),
(89, 9),
(89, 10),
(90, 1),
(90, 10),
(91, 1),
(91, 2),
(92, 2),
(92, 3),
(93, 3),
(93, 4),
(94, 4),
(94, 5),
(95, 5),
(95, 6),
(96, 6),
(96, 7),
(97, 7),
(97, 8),
(98, 8),
(98, 9),
(99, 9),
(99, 10),
(100, 1),
(100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `book_stock`
--

CREATE TABLE `book_stock` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `img`) VALUES
(1, 'Fiction', 'fiction.jpg'),
(2, 'Science', 'science.jpg'),
(3, 'History', 'history.jpg'),
(4, 'Adventure', 'adventure.jpg'),
(5, 'Fantasy', 'fantasy.jpg'),
(6, 'Mystery', 'mystery.jpg'),
(7, 'Biography', 'biography.jpg'),
(8, 'Technology', 'technology.jpg'),
(9, 'Poetry', 'poetry.jpg'),
(10, 'Travel', 'travel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260311081617', '2026-03-24 20:34:58', 49),
('DoctrineMigrations\\Version20260316085457', '2026-03-24 20:34:58', 66),
('DoctrineMigrations\\Version20260316085818', '2026-03-24 20:34:58', 177),
('DoctrineMigrations\\Version20260316091800', '2026-03-24 20:34:58', 223),
('DoctrineMigrations\\Version20260316092020', '2026-03-24 20:34:58', 9),
('DoctrineMigrations\\Version20260318082845', '2026-03-24 20:34:58', 87),
('DoctrineMigrations\\Version20260318090753', '2026-03-24 20:34:59', 84),
('DoctrineMigrations\\Version20260326090330', '2026-03-26 10:03:45', 155),
('DoctrineMigrations\\Version20260326090732', '2026-03-26 10:07:39', 112);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
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
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `first_name`, `last_name`, `age`, `address`) VALUES
(1, 'amina@a.com', '$2y$13$CXpgP3F68hF6/4zlbX1a4uDykhUvDAL6xY9w5JuCrMjcnLM58koEC', '[]', 'Amina', 'beste', '2021-01-01', 'amina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `IDX_2F0A2BEEF675F31B` (`author_id`),
  ADD KEY `IDX_2F0A2BEE16A2B381` (`book_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_borrow`
--
ALTER TABLE `book_borrow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C0CA33DA76ED395` (`user_id`),
  ADD KEY `IDX_7C0CA33D14327749` (`book_stock_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_id`,`category_id`),
  ADD KEY `IDX_1FB30F9816A2B381` (`book_id`),
  ADD KEY `IDX_1FB30F9812469DE2` (`category_id`);

--
-- Indexes for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_45F4431916A2B381` (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `IDX_75EA56E0FB7336F0E3BD61CE16BA31DBBF396750` (`queue_name`,`available_at`,`delivered_at`,`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `book_borrow`
--
ALTER TABLE `book_borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_stock`
--
ALTER TABLE `book_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `FK_2F0A2BEE16A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2F0A2BEEF675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_borrow`
--
ALTER TABLE `book_borrow`
  ADD CONSTRAINT `FK_7C0CA33D14327749` FOREIGN KEY (`book_stock_id`) REFERENCES `book_stock` (`id`),
  ADD CONSTRAINT `FK_7C0CA33DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `FK_1FB30F9812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1FB30F9816A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD CONSTRAINT `FK_45F4431916A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
