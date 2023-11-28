-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Jan 26. 15:47
-- Kiszolgáló verziója: 10.5.18-MariaDB-0+deb11u1
-- PHP verzió: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `book100`
--
CREATE DATABASE IF NOT EXISTS `2023_14f` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `2023_14f`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `book100`
--

CREATE TABLE `book100` (
  `Id` int(11) NOT NULL,
  `Title` varchar(47) NOT NULL,
  `Author` varchar(26) NOT NULL,
  `RealYears` varchar(33) NOT NULL,
  `Year` int(11) NOT NULL,
  `Country` varchar(32) NOT NULL,
  `Language` varchar(15) NOT NULL,
  `Pages` int(11) NOT NULL,
  `ImageName` varchar(44) NOT NULL,
  `WikipediaLink` varchar(81) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `book100`
--

INSERT INTO `book100` (`Id`, `Title`, `Author`, `RealYears`, `Year`, `Country`, `Language`, `Pages`, `ImageName`, `WikipediaLink`) VALUES
(1, 'Things Fall Apart', 'Chinua Achebe', '1958', 1958, 'Nigeria', 'English', 209, 'things-fall-apart.jpg', 'https://en.wikipedia.org/wiki/Things_Fall_Apart'),
(2, 'Fairy tales', 'Hans Christian Andersen', '1835-37', 1836, 'Denmark', 'Danish', 784, 'fairy-tales.jpg', 'https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.'),
(3, 'The Divine Comedy', 'Dante Alighieri', '1308-1321', 1315, 'Italy', 'Italian', 928, 'the-divine-comedy.jpg', 'https://en.wikipedia.org/wiki/Divine_Comedy'),
(4, 'The Epic Of Gilgamesh', 'Unknown', '18th - 17th century BCE', -1700, 'Sumer and Akkadian Empire', 'Akkadian', 160, 'the-epic-of-gilgamesh.jpg', 'https://en.wikipedia.org/wiki/Epic_of_Gilgamesh'),
(5, 'The Book Of Job', 'Unknown', '7th - 4th century BCE', -600, 'Achaemenid Empire', 'Hebrew', 176, 'the-book-of-job.jpg', 'https://en.wikipedia.org/wiki/Book_of_Job'),
(6, 'One Thousand and One Nights', 'Unknown', '700-1500', 1200, 'India/Iran/Iraq/Egypt/Tajikistan', 'Arabic', 288, 'one-thousand-and-one-nights.jpg', 'https://en.wikipedia.org/wiki/One_Thousand_and_One_Nights'),
(7, 'Njál\'s Saga', 'Unknown', '13th century', 1350, 'Iceland', 'Old Norse', 384, 'njals-saga.jpg', 'https://en.wikipedia.org/wiki/Nj%C3%A1ls_saga'),
(8, 'Pride and Prejudice', 'Jane Austen', '1813', 1813, 'United Kingdom', 'English', 226, 'pride-and-prejudice.jpg', 'https://en.wikipedia.org/wiki/Pride_and_Prejudice'),
(9, 'Le Père Goriot', 'Honoré de Balzac', '1835', 1835, 'France', 'French', 443, 'le-pere-goriot.jpg', 'https://en.wikipedia.org/wiki/Le_P%C3%A8re_Goriot'),
(10, 'Molloy, Malone Dies, The Unnamable, the trilogy', 'Samuel Beckett', '1951-53', 1952, 'Republic of Ireland', 'French, English', 256, 'molloy-malone-dies-the-unnamable.jpg', 'https://en.wikipedia.org/wiki/Molloy_(novel)'),
(11, 'The Decameron', 'Giovanni Boccaccio', '1349-53', 1351, 'Italy', 'Italian', 1024, 'the-decameron.jpg', 'https://en.wikipedia.org/wiki/The_Decameron'),
(12, 'Ficciones', 'Jorge Luis Borges', '1944-86', 1965, 'Argentina', 'Spanish', 224, 'ficciones.jpg', 'https://en.wikipedia.org/wiki/Ficciones'),
(13, 'Wuthering Heights', 'Emily Brontë', '1847', 1847, 'United Kingdom', 'English', 342, 'wuthering-heights.jpg', 'https://en.wikipedia.org/wiki/Wuthering_Heights'),
(14, 'The Stranger', 'Albert Camus', '1942', 1942, 'Algeria, French Empire', 'French', 185, 'l-etranger.jpg', 'https://en.wikipedia.org/wiki/The_Stranger_(novel)'),
(15, 'Poems', 'Paul Celan', '1952', 1952, 'Romania, France', 'German', 320, 'poems-paul-celan.jpg', NULL),
(16, 'Journey to the End of the Night', 'Louis-Ferdinand Céline', '1932', 1932, 'France', 'French', 505, 'voyage-au-bout-de-la-nuit.jpg', 'https://en.wikipedia.org/wiki/Journey_to_the_End_of_the_Night'),
(17, 'Don Quijote De La Mancha', 'Miguel de Cervantes', '1605 (part 1), 1615 (part 2)', 1610, 'Spain', 'Spanish', 1056, 'don-quijote-de-la-mancha.jpg', 'https://en.wikipedia.org/wiki/Don_Quixote'),
(18, 'The Canterbury Tales', 'Geoffrey Chaucer', '14th century', 1450, 'England', 'English', 544, 'the-canterbury-tales.jpg', 'https://en.wikipedia.org/wiki/The_Canterbury_Tales'),
(19, 'Stories', 'Anton Chekhov', '1886', 1886, 'Russia', 'Russian', 194, 'stories-of-anton-chekhov.jpg', 'https://en.wikipedia.org/wiki/List_of_short_stories_by_Anton_Chekhov'),
(20, 'Nostromo', 'Joseph Conrad', '1904', 1904, 'United Kingdom', 'English', 320, 'nostromo.jpg', 'https://en.wikipedia.org/wiki/Nostromo'),
(21, 'Great Expectations', 'Charles Dickens', '1861', 1861, 'United Kingdom', 'English', 194, 'great-expectations.jpg', 'https://en.wikipedia.org/wiki/Great_Expectations'),
(22, 'Jacques the Fatalist', 'Denis Diderot', '1796', 1796, 'France', 'French', 596, 'jacques-the-fatalist.jpg', 'https://en.wikipedia.org/wiki/Jacques_the_Fatalist'),
(23, 'Berlin Alexanderplatz', 'Alfred Döblin', '1929', 1929, 'Germany', 'German', 600, 'berlin-alexanderplatz.jpg', 'https://en.wikipedia.org/wiki/Berlin_Alexanderplatz'),
(24, 'Crime and Punishment', 'Fyodor Dostoevsky', '1866', 1866, 'Russia', 'Russian', 551, 'crime-and-punishment.jpg', 'https://en.wikipedia.org/wiki/Crime_and_Punishment'),
(25, 'The Idiot', 'Fyodor Dostoevsky', '1869', 1869, 'Russia', 'Russian', 656, 'the-idiot.jpg', 'https://en.wikipedia.org/wiki/The_Idiot'),
(26, 'The Possessed', 'Fyodor Dostoevsky', '1872', 1872, 'Russia', 'Russian', 768, 'the-possessed.jpg', 'https://en.wikipedia.org/wiki/Demons_(Dostoyevsky_novel)'),
(27, 'The Brothers Karamazov', 'Fyodor Dostoevsky', '1880', 1880, 'Russia', 'Russian', 824, 'the-brothers-karamazov.jpg', 'https://en.wikipedia.org/wiki/The_Brothers_Karamazov'),
(28, 'Middlemarch', 'George Eliot', '1871', 1871, 'United Kingdom', 'English', 800, 'middlemarch.jpg', 'https://en.wikipedia.org/wiki/Middlemarch'),
(29, 'Invisible Man', 'Ralph Ellison', '1952', 1952, 'United States', 'English', 581, 'invisible-man.jpg', 'https://en.wikipedia.org/wiki/Invisible_Man'),
(30, 'Medea', 'Euripides', '431 BCE', -431, 'Greece', 'Greek', 104, 'medea.jpg', 'https://en.wikipedia.org/wiki/Medea_(play)'),
(31, 'Absalom, Absalom!', 'William Faulkner', '1936', 1936, 'United States', 'English', 313, 'absalom-absalom.jpg', 'https://en.wikipedia.org/wiki/Absalom,_Absalom!'),
(32, 'The Sound and the Fury', 'William Faulkner', '1929', 1929, 'United States', 'English', 326, 'the-sound-and-the-fury.jpg', 'https://en.wikipedia.org/wiki/The_Sound_and_the_Fury'),
(33, 'Madame Bovary', 'Gustave Flaubert', '1857', 1857, 'France', 'French', 528, 'madame-bovary.jpg', 'https://en.wikipedia.org/wiki/Madame_Bovary'),
(34, 'Sentimental Education', 'Gustave Flaubert', '1869', 1869, 'France', 'French', 606, 'l-education-sentimentale.jpg', 'https://en.wikipedia.org/wiki/Sentimental_Education'),
(35, 'Gypsy Ballads', 'Federico García Lorca', '1928', 1928, 'Spain', 'Spanish', 218, 'gypsy-ballads.jpg', 'https://en.wikipedia.org/wiki/Gypsy_Ballads'),
(36, 'One Hundred Years of Solitude', 'Gabriel García Márquez', '1967', 1967, 'Colombia', 'Spanish', 417, 'one-hundred-years-of-solitude.jpg', 'https://en.wikipedia.org/wiki/One_Hundred_Years_of_Solitude'),
(37, 'Love in the Time of Cholera', 'Gabriel García Márquez', '1985', 1985, 'Colombia', 'Spanish', 368, 'love-in-the-time-of-cholera.jpg', 'https://en.wikipedia.org/wiki/Love_in_the_Time_of_Cholera'),
(38, 'Faust', 'Johann Wolfgang von Goethe', '1832', 1832, 'Saxe-Weimar', 'German', 158, 'faust.jpg', 'https://en.wikipedia.org/wiki/Goethe%27s_Faust'),
(39, 'Dead Souls', 'Nikolai Gogol', '1842', 1842, 'Russia', 'Russian', 432, 'dead-souls.jpg', 'https://en.wikipedia.org/wiki/Dead_Souls'),
(40, 'The Tin Drum', 'Günter Grass', '1959', 1959, 'Germany', 'German', 600, 'the-tin-drum.jpg', 'https://en.wikipedia.org/wiki/The_Tin_Drum'),
(41, 'The Devil to Pay in the Backlands', 'João Guimarães Rosa', '1956', 1956, 'Brazil', 'Portuguese', 494, 'the-devil-to-pay-in-the-backlands.jpg', 'https://en.wikipedia.org/wiki/The_Devil_to_Pay_in_the_Backlands'),
(42, 'Hunger', 'Knut Hamsun', '1890', 1890, 'Norway', 'Norwegian', 176, 'hunger.jpg', 'https://en.wikipedia.org/wiki/Hunger_(Hamsun_novel)'),
(43, 'The Old Man and the Sea', 'Ernest Hemingway', '1952', 1952, 'United States', 'English', 128, 'the-old-man-and-the-sea.jpg', 'https://en.wikipedia.org/wiki/The_Old_Man_and_the_Sea'),
(44, 'Iliad', 'Homer', '760-710 BCE', -735, 'Greece', 'Greek', 608, 'the-iliad-of-homer.jpg', 'https://en.wikipedia.org/wiki/Iliad'),
(45, 'Odyssey', 'Homer', '8th century BCE', -800, 'Greece', 'Greek', 374, 'the-odyssey-of-homer.jpg', 'https://en.wikipedia.org/wiki/Odyssey'),
(46, 'A Doll\'s House', 'Henrik Ibsen', '1879', 1879, 'Norway', 'Norwegian', 68, 'a-Dolls-house.jpg', 'https://en.wikipedia.org/wiki/A_Doll%27s_House'),
(47, 'Ulysses', 'James Joyce', '1922', 1922, 'Irish Free State', 'English', 228, 'ulysses.jpg', 'https://en.wikipedia.org/wiki/Ulysses_(novel)'),
(48, 'Stories', 'Franz Kafka', '1924', 1924, 'Czechoslovakia', 'German', 488, 'stories-of-franz-kafka.jpg', 'https://en.wikipedia.org/wiki/Franz_Kafka_bibliography#Short_stories'),
(49, 'The Trial', 'Franz Kafka', '1925', 1925, 'Czechoslovakia', 'German', 160, 'the-trial.jpg', 'https://en.wikipedia.org/wiki/The_Trial'),
(50, 'The Castle', 'Franz Kafka', '1926', 1926, 'Czechoslovakia', 'German', 352, 'the-castle.jpg', 'https://en.wikipedia.org/wiki/The_Castle_(novel)'),
(51, 'The recognition of Shakuntala', 'Kālidāsa', '1st century BCE - 4th century CE', 150, 'India', 'Sanskrit', 147, 'the-recognition-of-shakuntala.jpg', 'https://en.wikipedia.org/wiki/Abhij%C3%B1%C4%81na%C5%9B%C4%81kuntalam'),
(52, 'The Sound of the Mountain', 'Yasunari Kawabata', '1954', 1954, 'Japan', 'Japanese', 288, 'the-sound-of-the-mountain.jpg', 'https://en.wikipedia.org/wiki/The_Sound_of_the_Mountain'),
(53, 'Zorba the Greek', 'Nikos Kazantzakis', '1946', 1946, 'Greece', 'Greek', 368, 'zorba-the-greek.jpg', 'https://en.wikipedia.org/wiki/Zorba_the_Greek'),
(54, 'Sons and Lovers', 'D. H. Lawrence', '1913', 1913, 'United Kingdom', 'English', 432, 'sons-and-lovers.jpg', 'https://en.wikipedia.org/wiki/Sons_and_Lovers'),
(55, 'Independent People', 'Halldór Laxness', '1934-35', 1934, 'Iceland', 'Icelandic', 470, 'independent-people.jpg', 'https://en.wikipedia.org/wiki/Independent_People'),
(56, 'Poems', 'Giacomo Leopardi', '1818', 1818, 'Italy', 'Italian', 184, 'poems-giacomo-leopardi.jpg', NULL),
(57, 'The Golden Notebook', 'Doris Lessing', '1962', 1962, 'United Kingdom', 'English', 688, 'the-golden-notebook.jpg', 'https://en.wikipedia.org/wiki/The_Golden_Notebook'),
(58, 'Pippi Longstocking', 'Astrid Lindgren', '1945', 1945, 'Sweden', 'Swedish', 160, 'pippi-longstocking.jpg', 'https://en.wikipedia.org/wiki/Pippi_Longstocking'),
(59, 'Diary of a Madman', 'Lu Xun', '1918', 1918, 'China', 'Chinese', 389, 'diary-of-a-madman.jpg', 'https://en.wikipedia.org/wiki/A_Madman%27s_Diary'),
(60, 'Children of Gebelawi', 'Naguib Mahfouz', '1959', 1959, 'Egypt', 'Arabic', 355, 'children-of-gebelawi.jpg', 'https://en.wikipedia.org/wiki/Children_of_Gebelawi'),
(61, 'Buddenbrooks', 'Thomas Mann', '1901', 1901, 'Germany', 'German', 736, 'buddenbrooks.jpg', 'https://en.wikipedia.org/wiki/Buddenbrooks'),
(62, 'The Magic Mountain', 'Thomas Mann', '1924', 1924, 'Germany', 'German', 720, 'the-magic-mountain.jpg', 'https://en.wikipedia.org/wiki/The_Magic_Mountain'),
(63, 'Moby Dick', 'Herman Melville', '1851', 1851, 'United States', 'English', 378, 'moby-dick.jpg', 'https://en.wikipedia.org/wiki/Moby-Dick'),
(64, 'Essays', 'Michel de Montaigne', '1595', 1595, 'France', 'French', 404, 'essais.jpg', 'https://en.wikipedia.org/wiki/Essays_(Montaigne)'),
(65, 'History', 'Elsa Morante', '1974', 1974, 'Italy', 'Italian', 600, 'history.jpg', 'https://en.wikipedia.org/wiki/History_(novel)'),
(66, 'Beloved', 'Toni Morrison', '1987', 1987, 'United States', 'English', 321, 'beloved.jpg', 'https://en.wikipedia.org/wiki/Beloved_(novel)'),
(67, 'The Tale of Genji', 'Murasaki Shikibu', '1000-1012', 1006, 'Japan', 'Japanese', 1360, 'the-tale-of-genji.jpg', 'https://en.wikipedia.org/wiki/The_Tale_of_Genji'),
(68, 'The Man Without Qualities', 'Robert Musil', '1930-32', 1931, 'Austria', 'German', 365, 'the-man-without-qualities.jpg', 'https://en.wikipedia.org/wiki/The_Man_Without_Qualities'),
(69, 'Lolita', 'Vladimir Nabokov', '1955', 1955, 'Russia/United States', 'English', 317, 'lolita.jpg', 'https://en.wikipedia.org/wiki/Lolita'),
(70, 'Nineteen Eighty-Four', 'George Orwell', '1949', 1949, 'United Kingdom', 'English', 272, 'nineteen-eighty-four.jpg', 'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four'),
(71, 'Metamorphoses', 'Ovid', '1st century CE', 100, 'Roman Empire', 'Classical Latin', 576, 'the-metamorphoses-of-ovid.jpg', 'https://en.wikipedia.org/wiki/Metamorphoses'),
(72, 'The Book of Disquiet', 'Fernando Pessoa', '1928', 1928, 'Portugal', 'Portuguese', 272, 'the-book-of-disquiet.jpg', 'https://en.wikipedia.org/wiki/The_Book_of_Disquiet'),
(73, 'Tales', 'Edgar Allan Poe', '19th century', 1950, 'United States', 'English', 842, 'tales-and-poems-of-edgar-allan-poe.jpg', 'https://en.wikipedia.org/wiki/Edgar_Allan_Poe_bibliography#Tales'),
(74, 'In Search of Lost Time', 'Marcel Proust', '1913-27', 1920, 'France', 'French', 2408, 'a-la-recherche-du-temps-perdu.jpg', 'https://en.wikipedia.org/wiki/In_Search_of_Lost_Time'),
(75, 'Gargantua and Pantagruel', 'François Rabelais', '1532-34', 1533, 'France', 'French', 623, 'gargantua-and-pantagruel.jpg', 'https://en.wikipedia.org/wiki/Gargantua_and_Pantagruel'),
(76, 'Pedro Páramo', 'Juan Rulfo', '1955', 1955, 'Mexico', 'Spanish', 124, 'pedro-paramo.jpg', 'https://en.wikipedia.org/wiki/Pedro_P%C3%A1ramo'),
(77, 'The Masnavi', 'Rumi', '1258-73', 1236, 'Sultanate of Rum', 'Persian', 438, 'the-masnavi.jpg', 'https://en.wikipedia.org/wiki/Masnavi'),
(78, 'Midnight\'s Children', 'Salman Rushdie', '1981', 1981, 'United Kingdom, India', 'English', 536, 'midnights-children.jpg', 'https://en.wikipedia.org/wiki/Midnight%27s_Children'),
(79, 'Bostan', 'Saadi', '1257', 1257, 'Persia, Persian Empire', 'Persian', 298, 'bostan.jpg', 'https://en.wikipedia.org/wiki/Bustan_(book)'),
(80, 'Season of Migration to the North', 'Tayeb Salih', '1966', 1966, 'Sudan', 'Arabic', 139, 'season-of-migration-to-the-north.jpg', 'https://en.wikipedia.org/wiki/Season_of_Migration_to_the_North'),
(81, 'Blindness', 'José Saramago', '1995', 1995, 'Portugal', 'Portuguese', 352, 'blindness.jpg', 'https://en.wikipedia.org/wiki/Blindness_(novel)'),
(82, 'Hamlet', 'William Shakespeare', '1603', 1603, 'England', 'English', 432, 'hamlet.jpg', 'https://en.wikipedia.org/wiki/Hamlet'),
(83, 'King Lear', 'William Shakespeare', '1608', 1608, 'England', 'English', 384, 'king-lear.jpg', 'https://en.wikipedia.org/wiki/King_Lear'),
(84, 'Othello', 'William Shakespeare', '1609', 1609, 'England', 'English', 314, 'othello.jpg', 'https://en.wikipedia.org/wiki/Othello'),
(85, 'Oedipus the King', 'Sophocles', '430 BCE', -430, 'Greece', 'Greek', 88, 'oedipus-the-king.jpg', 'https://en.wikipedia.org/wiki/Oedipus_the_King'),
(86, 'The Red and the Black', 'Stendhal', '1830', 1830, 'France', 'French', 576, 'le-rouge-et-le-noir.jpg', 'https://en.wikipedia.org/wiki/The_Red_and_the_Black'),
(87, 'The Life And Opinions of Tristram Shandy', 'Laurence Sterne', '1760', 1760, 'England', 'English', 640, 'the-life-and-opinions-of-tristram-shandy.jpg', 'https://en.wikipedia.org/wiki/The_Life_and_Opinions_of_Tristram_Shandy,_Gentleman'),
(88, 'Confessions of Zeno', 'Italo Svevo', '1923', 1923, 'Italy', 'Italian', 412, 'confessions-of-zeno.jpg', 'https://en.wikipedia.org/wiki/Zeno%27s_Conscience'),
(89, 'Gulliver\'s Travels', 'Jonathan Swift', '1726', 1726, 'Ireland', 'English', 178, 'gullivers-travels.jpg', 'https://en.wikipedia.org/wiki/Gulliver%27s_Travels'),
(90, 'War and Peace', 'Leo Tolstoy', '1865-1869', 1867, 'Russia', 'Russian', 1296, 'war-and-peace.jpg', 'https://en.wikipedia.org/wiki/War_and_Peace'),
(91, 'Anna Karenina', 'Leo Tolstoy', '1877', 1877, 'Russia', 'Russian', 864, 'anna-karenina.jpg', 'https://en.wikipedia.org/wiki/Anna_Karenina'),
(92, 'The Death of Ivan Ilyich', 'Leo Tolstoy', '1886', 1886, 'Russia', 'Russian', 92, 'the-death-of-ivan-ilyich.jpg', 'https://en.wikipedia.org/wiki/The_Death_of_Ivan_Ilyich'),
(93, 'The Adventures of Huckleberry Finn', 'Mark Twain', '1884', 1884, 'United States', 'English', 224, 'the-adventures-of-huckleberry-finn.jpg', 'https://en.wikipedia.org/wiki/Adventures_of_Huckleberry_Finn'),
(94, 'Ramayana', 'Valmiki', '5th century BCE - 4th century BCE', -450, 'India', 'Sanskrit', 152, 'ramayana.jpg', 'https://en.wikipedia.org/wiki/Ramayana'),
(95, 'The Aeneid', 'Virgil', '29-19 BCE', -23, 'Roman Empire', 'Classical Latin', 442, 'the-aeneid.jpg', 'https://en.wikipedia.org/wiki/Aeneid'),
(96, 'Mahabharata', 'Vyasa', '9th century BCE - 5th century BCE', -700, 'India', 'Sanskrit', 276, 'the-mahab-harata.jpg', 'https://en.wikipedia.org/wiki/Mahabharata'),
(97, 'Leaves of Grass', 'Walt Whitman', '1855', 1855, 'United States', 'English', 152, 'leaves-of-grass.jpg', 'https://en.wikipedia.org/wiki/Leaves_of_Grass'),
(98, 'Mrs Dalloway', 'Virginia Woolf', '1925', 1925, 'United Kingdom', 'English', 216, 'mrs-dalloway.jpg', 'https://en.wikipedia.org/wiki/Mrs_Dalloway'),
(99, 'To the Lighthouse', 'Virginia Woolf', '1927', 1927, 'United Kingdom', 'English', 209, 'to-the-lighthouse.jpg', 'https://en.wikipedia.org/wiki/To_the_Lighthouse'),
(100, 'Memoirs of Hadrian', 'Marguerite Yourcenar', '1951', 1951, 'France/Belgium', 'French', 408, 'memoirs-of-hadrian.jpg', 'https://en.wikipedia.org/wiki/Memoirs_of_Hadrian');

--
-- Indexek a kiírt táblákhoz
--


--
-- A tábla indexei `book100`
--
ALTER TABLE `book100`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--


--
-- AUTO_INCREMENT a táblához `book100`
--
ALTER TABLE `book100`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
