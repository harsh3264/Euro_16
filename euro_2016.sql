-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2016 at 09:07 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euro_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `match_no` varchar(3) NOT NULL,
  `group_id` int(1) DEFAULT NULL,
  `group_name` varchar(7) DEFAULT NULL,
  `match` varchar(30) DEFAULT NULL,
  `team_id1` int(2) DEFAULT NULL,
  `team_id2` int(2) DEFAULT NULL,
  `date` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`match_no`, `group_id`, `group_name`, `match`, `team_id1`, `team_id2`, `date`) VALUES
('M1', 1, 'Group A', 'France VS Romania', 2, 3, '10 June'),
('M10', 5, 'Group E', 'Belgium VS Italy', 17, 18, '13 June'),
('M11', 6, 'Group F', 'Austria VS Hungary', 22, 24, '14 June'),
('M12', 6, 'Group F', 'Portugal VS Iceland', 21, 23, '14 June'),
('M13', 2, 'Group B', 'Russia VS Slovakia', 6, 8, '15 June'),
('M14', 1, 'Group A', 'Romania VS Switzerland', 3, 4, '15 June'),
('M15', 1, 'Group A', 'France VS Albania', 2, 1, '15 June'),
('M16', 2, 'Group B', 'England VS Wales', 5, 7, '16 June'),
('M17', 3, 'Group C', 'Ukraine VS Northern Ireland', 11, 12, '16 June'),
('M18', 3, 'Group C', 'Germany VS Poland', 10, 9, '16 June'),
('M19', 5, 'Group E', 'Italy VS Sweden', 18, 19, '17 June'),
('M2', 1, 'Group A', 'Albania VS Switzerland', 1, 4, '11 June'),
('M20', 4, 'Group D', 'Czech Republic VS Croatia', 16, 14, '17 June'),
('M21', 4, 'Group D', 'Spain VS Turkey', 13, 15, '17 June'),
('M22', 5, 'Group E', 'Belgium VS Republic of Ireland', 17, 20, '18 June'),
('M23', 6, 'Group F', 'Iceland VS Hungary', 23, 24, '18 June'),
('M24', 6, 'Group F', 'Portugal VS Austria', 21, 22, '18 June'),
('M25', 1, 'Group A', 'Switzerland VS France', 4, 2, '19 June'),
('M26', 1, 'Group A', 'Romania VS Albania', 3, 1, '19 June'),
('M27', 2, 'Group B', 'Slovakia VS England', 8, 5, '20 June'),
('M28', 2, 'Group B', 'Russia VS Wales', 6, 7, '20 June'),
('M29', 3, 'Group C', 'Northern Ireland VS Germany', 12, 10, '21 June'),
('M3', 2, 'Group B', 'Wales VS Slovakia', 7, 8, '11 June'),
('M30', 3, 'Group C', 'Ukraine VS Poland', 11, 9, '21 June'),
('M31', 4, 'Group D', 'Croatia VS Spain', 14, 13, '21 June'),
('M32', 4, 'Group D', 'Czech Republic VS Turkey', 16, 15, '21 June'),
('M33', 6, 'Group F', 'Hungary VS Portugal', 24, 21, '22 June'),
('M34', 6, 'Group F', 'Iceland VS Austria', 23, 22, '22 June'),
('M35', 5, 'Group E', 'Sweden VS Belgium', 19, 17, '22 June'),
('M36', 5, 'Group E', 'Italy VS Republic of Ireland', 18, 20, '22 June'),
('M4', 2, 'Group B', 'England VS Russia', 5, 6, '11 June'),
('M5', 4, 'Group D', 'Turkey VS Croatia', 15, 14, '12 June'),
('M6', 3, 'Group C', 'Poland VS Northern Ireland', 9, 12, '12 June'),
('M7', 3, 'Group C', 'Germany VS Ukraine', 10, 11, '12 June'),
('M8', 4, 'Group D', 'Spain VS Czech Republic?', 13, 16, '13 June'),
('M9', 5, 'Group E', 'Republic of Ireland VS Sweden', 20, 19, '13 June');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, 'Group A'),
(2, 'Group B'),
(3, 'Group C'),
(4, 'Group D'),
(5, 'Group E'),
(6, 'Group F');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(3) NOT NULL,
  `team_id` int(1) DEFAULT NULL,
  `player_name` varchar(30) DEFAULT NULL,
  `club` varchar(20) DEFAULT NULL,
  `role` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `team_id`, `player_name`, `club`, `role`) VALUES
(201, 2, 'Benoit Costil ', 'Rennes', 'GK'),
(202, 2, 'Hugo Lloris ', 'Tottenham Hotspur', 'GK'),
(203, 2, 'Steve Mandanda ', 'Marseille', 'GK'),
(204, 2, 'Lucas Digne ', 'Roma ', 'LB'),
(205, 2, 'Patrice Evra ', 'Juventus ', 'LB'),
(206, 2, 'Christophe Jallet ', 'Lyon ', 'RB'),
(207, 2, 'Laurent Koscielny ', 'Arsenal ', 'CB'),
(208, 2, 'Eliaquim Mangala ', 'Manchester City ', 'CB'),
(209, 2, 'Jeremy Mathieu ', 'Barcelona ', 'CB'),
(210, 2, 'Bacary Sagna ', 'Manchester City ', 'RB'),
(211, 2, 'Raphael Varane ', 'Real Madrid ', 'CB'),
(212, 2, 'Yohan Cabaye ', 'Crystal Palace ', 'CM'),
(213, 2, 'Lassana Diarra ', 'Marseille ', 'CDM'),
(214, 2, 'N''Golo Kante ', 'Leicester City ', 'CDM'),
(215, 2, 'Blaise Matuidi ', 'Paris Saint-Germain ', 'CM'),
(216, 2, 'Paul Pogba ', 'Juventus ', 'CM'),
(217, 2, 'Moussa Sissoko ', 'Newcastle United ', 'CAM'),
(218, 2, 'Kingsley Coman ', 'Bayern Munchen ', 'RW'),
(219, 2, 'Andre-Pierre Gignac ', 'Tigres ', 'ST'),
(220, 2, 'Olivier Giroud ', 'Arsenal ', 'ST'),
(221, 2, 'Antoine Griezmann ', 'Atletico Madrid ', 'LW'),
(222, 2, 'Anthony Martial ', 'Manchester United ', 'ST'),
(223, 2, 'Dimitri Payet ', 'West Ham United ', 'LW'),
(301, 3, 'Ciprian Tatarusanu ', 'Fiorentina', 'GK'),
(302, 3, 'Costel Pantilimon ', 'Watford', 'GK'),
(303, 3, 'Silviu Lung ', 'Astra Giurgiu', 'GK'),
(304, 3, 'Cristian Sapunaru ', 'Pandurii Targu Jiu', 'RB'),
(305, 3, 'Alexandru Matel ', 'Dinamo Zagreb', 'RB'),
(306, 3, 'Vlad Chiriches ', 'Napoli', 'CB'),
(307, 3, 'Valerica Gaman ', 'Astra Giurgiu', 'CB'),
(308, 3, 'Dragos Grigore ', 'Al Sailiya', 'CB'),
(309, 3, 'Cosmin Moti ', 'Ludogorets Razgrad', 'CB'),
(310, 3, 'Razvan Rat ', 'Rayo Vallecano', 'LB'),
(311, 3, 'Steliano Filip ', 'Dinamo Bucharest', 'LB'),
(312, 3, 'Alin Tosca ', 'Steaua Bucharest', 'CB'),
(313, 3, 'Mihai Pintilii ', 'Steaua Bucharest', 'CDM'),
(314, 3, 'Ovidiu Hoban ', 'Hapoel Be''er Sheva', 'CDM'),
(315, 3, 'Adrian Ropotan ', 'Pandurii Targu Jiu', 'CM'),
(316, 3, 'Andrei Prepelita ', 'Ludogorets Razgrad', 'CM'),
(317, 3, 'Adrian Popa ', 'Steaua Bucharest', 'RW'),
(318, 3, 'Gabriel Torje ', 'Osmanlispor', 'RW'),
(319, 3, 'Alexandru Chipciu ', 'Steaua Bucharest', 'LW'),
(320, 3, 'Andrei Ivan ', 'CSU Craiova', 'ST'),
(321, 3, 'Alexandru Maxim ', 'Stuttgart', 'CAM'),
(322, 3, 'Nicolae Stanciu ', 'Steaua Bucharest', 'CAM'),
(323, 3, 'Lucian Sanmartean ', 'Al Ittihad', 'CAM'),
(324, 3, 'Claudiu Keseru ', 'Ludogorets Razgrad', 'ST'),
(325, 3, 'Bogdan Stancu ', 'Genclerbirligi', 'ST'),
(326, 3, 'Florin Andone ', 'Cordoba', 'ST'),
(327, 3, 'Denis Alibec ', 'Astra Giurgiu', 'ST'),
(328, 3, 'Ioan Hora ', 'Pandurii Targu Jiu', 'RW'),
(501, 5, 'Joe Hart ', 'Manchester City', 'GK'),
(502, 5, 'Fraser Forster ', 'Southampton', 'GK'),
(503, 5, 'Tom Heaton ', 'Burnley', 'GK'),
(504, 5, 'Gary Cahill ', 'Chelsea', 'CB'),
(505, 5, 'Chris Smalling ', 'Manchester United', 'CB'),
(506, 5, 'John Stones ', 'Everton', 'CB'),
(507, 5, 'Kyle Walker ', 'Tottenham Hotspur', 'RB'),
(508, 5, 'Ryan Bertrand ', 'Southampton', 'LB'),
(509, 5, 'Danny Rose ', 'Tottenham Hotspur', 'LB'),
(510, 5, 'Nathaniel Clyne ', 'Liverpool', 'RB'),
(511, 5, 'Dele Alli ', 'Tottenham Hotspur', 'LM'),
(512, 5, 'Ross Barkley ', 'Everton', 'CAM'),
(513, 5, 'Fabian Delph ', 'Manchester City', 'CM'),
(514, 5, 'Eric Dier ', 'Tottenham Hotspur', 'CDM'),
(515, 5, 'Danny Drinkwater ', 'Leicester City', 'CM'),
(516, 5, 'Jordan Henderson ', 'Liverpool', 'CM'),
(517, 5, 'Adam Lallana ', 'Liverpool', 'LM'),
(518, 5, 'James Milner ', 'Liverpool', 'CM'),
(519, 5, 'Raheem Sterling ', 'Manchester City', 'LW'),
(520, 5, 'Andros Townsend ', 'Newcastle United', 'RM'),
(521, 5, 'Jack Wilshere ', 'Arsenal', 'CM'),
(522, 5, 'Wayne Rooney ', 'Manchester United', 'ST'),
(523, 5, 'Harry Kane ', 'Tottenham Hotspur', 'ST'),
(524, 5, 'Jamie Vardy ', 'Leicester City', 'ST'),
(525, 5, 'Daniel Sturridge ', 'Liverpool', 'ST'),
(526, 5, 'Marcus Rashford ', 'Manchester United', 'ST'),
(701, 7, 'Wayne Hennessey ', 'Crystal Palace', 'GK'),
(702, 7, 'Danny Ward ', 'Liverpool', 'GK'),
(703, 7, 'Owain Fon Williams ', 'Inverness', 'GK'),
(704, 7, 'Ben Davies ', 'Tottenham', 'LB'),
(705, 7, 'Neil Taylor ', 'Swansea', 'LB'),
(706, 7, 'Chris Gunter ', 'Reading', 'RB'),
(707, 7, 'Ashley Williams ', 'Swansea', 'CB'),
(708, 7, 'James Chester ', 'West Brom', 'CB'),
(709, 7, 'Ashley Richards ', 'Fulham', 'RB'),
(710, 7, 'Paul Dummett ', 'Newcastle', 'LB'),
(711, 7, 'Adam Henley ', 'Blackburn', 'RB'),
(712, 7, 'Adam Matthews ', 'Sunderland', 'RB'),
(713, 7, 'James Collins ', 'West Ham', 'CB'),
(714, 7, 'Aaron Ramsey ', 'Arsenal', 'CM'),
(715, 7, 'Joe Ledley ', 'Crystal Palace', 'CM'),
(716, 7, 'David Vaughan ', 'Nottingham Forest', 'CDM'),
(717, 7, 'Joe Allen ', 'Liverpool', 'CM'),
(718, 7, 'David Cotterill ', 'Birmingham', 'RM'),
(719, 7, 'Jonathan Williams ', 'Crystal Palace', 'CAM'),
(720, 7, 'George Williams ', 'Fulham', 'LM'),
(721, 7, 'Andy King ', 'Leicester', 'CM'),
(722, 7, 'Emyr Huws ', 'Wigan', 'CM'),
(723, 7, 'David Edwards ', 'Wolves', 'CAM'),
(724, 7, 'Hal Robson-Kanu ', 'Reading', 'LM'),
(725, 7, 'Sam Vokes ', 'Burnley', 'ST'),
(726, 7, 'Tom Bradshaw ', 'Walsall', 'ST'),
(727, 7, 'Tom Lawrence ', 'Leicester', 'LM'),
(728, 7, 'Simon Church ', 'Nottingham Forest', 'ST'),
(729, 7, 'Wes Burns ', 'Walsall', 'RM'),
(730, 7, 'Garath Bale', 'Real Madrid', 'LW'),
(901, 9, 'Artur Boruc ', 'Bournemouth', 'GK'),
(902, 9, 'Lukasz Fabianski ', 'Swansea City', 'GK'),
(903, 9, 'Wojciech Szczesny ', 'Roma', 'GK'),
(904, 9, 'Przemyslaw Tyton ', 'Stuttgart', 'GK'),
(905, 9, 'Thiago Cionek ', 'Palermo', 'CB'),
(906, 9, 'Pawel Dawidowicz ', 'Benfica', 'CDM'),
(907, 9, 'Kamil Glik ', 'Torino', 'CB'),
(908, 9, 'Artur Jedrzejczyk ', 'Legia Warsaw', 'RB'),
(909, 9, 'Michal Pazdan ', 'Legia Warsaw', 'CB'),
(910, 9, 'Lukasz Piszczek ', 'Borussia Dortmund', 'RB'),
(911, 9, 'Maciej Rybus ', 'Terek Grozny', 'LB'),
(912, 9, 'Bartosz Salamon ', 'Cagliari', 'CB'),
(913, 9, 'Jakub Wawrzyniak ', 'Lechia Gdansk', 'LB'),
(914, 9, 'Jakub Blaszczykowski ', 'Fiorentina', 'RM'),
(915, 9, 'Kamil Grosicki ', 'Rennes', 'LM'),
(916, 9, 'Tomasz Jodlowiec ', 'Legia Warsaw', 'CDM'),
(917, 9, 'Bartosz Kapustka ', 'Cracovia', 'LM'),
(918, 9, 'Grzegorz Krychowiak ', 'Sevilla', 'CDM'),
(919, 9, 'Karol Linetty ', 'Lech Poznan', 'CAM'),
(920, 9, 'Krzysztof Maczynski ', 'Wis?a Krakow', 'CM'),
(921, 9, 'Slawomir Peszko ', 'Lechia Gdansk', 'LM'),
(922, 9, 'Filip Starzynski ', 'Zaglebie Lubin', 'CAM'),
(923, 9, 'Pawel Wszolek ', 'Verona', 'RM'),
(924, 9, 'Piotr Zielinski ', 'Empoli', 'CAM'),
(925, 9, 'Robert Lewandowski ', 'Bayern Munich', 'ST'),
(926, 9, 'Arkadiusz Milik ', 'Ajax', 'ST'),
(927, 9, 'Artur Sobiech ', 'Hannover', 'ST'),
(928, 9, 'Mariusz Stepinski ', 'Ruch Chorzow.', 'ST'),
(1001, 10, 'Manuel Neuer', 'Bayern Munich', 'GK'),
(1002, 10, 'Bernd Leno', 'Bayer Leverkusen', 'GK'),
(1003, 10, 'Marc-Andre ter Stegen', 'FC Barcelona', 'GK'),
(1004, 10, 'Jerome Boateng', 'Bayern Munich', 'CB'),
(1005, 10, 'Emre Can', 'Liverpool', 'RB'),
(1006, 10, 'Jonas Hector', '1 FC Koln', 'LB'),
(1007, 10, 'Benedikt Howedes', 'Schalke 04', 'CB'),
(1008, 10, 'Mats Hummels', 'Borussia Dortmund', 'CB'),
(1009, 10, 'Skhordan Mustafi', 'Valencia', 'CB'),
(1010, 10, 'Sebastian Rudy', 'TSG 1899 Hoffenheim', 'RB'),
(1011, 10, 'Antonio Rudiger', 'AS Roma', 'CB'),
(1012, 10, 'Karim Bellarabi', 'Bayer Leverkusen', 'RM'),
(1013, 10, 'Julian Brandt', 'Bayer Leverkusen', 'LM'),
(1014, 10, 'Julian Draxler', 'VfL Wolfsburg', 'CAM'),
(1015, 10, 'Sami Khedira', 'Juventus', 'CDM'),
(1016, 10, 'Joshua Kimmich', 'Bayern Munich', 'CM'),
(1017, 10, 'Toni Kroos', 'Real Madrid', 'CM'),
(1018, 10, 'Mesut Ozil', 'Arsenal', 'CAM'),
(1019, 10, 'Lukas Podolski', 'Galatasaray', 'LM'),
(1020, 10, 'Marco Reus', 'Borussia Dortmund', 'LM'),
(1021, 10, 'Leroy Sane', 'Schalke 04', 'RM'),
(1022, 10, 'Bastian Schweinsteiger', 'Manchester United', 'CM'),
(1023, 10, 'Julian Weigl', 'Borussia Dortmund', 'CDM'),
(1024, 10, 'Mario Gomez', 'Besiktas', 'ST'),
(1025, 10, 'Mario Gotze', 'Bayern Munich', 'CAM'),
(1026, 10, 'Thomas Muller', 'Bayern Munich', 'ST'),
(1027, 10, 'Andre Schurrle', 'VfL Wolfsburg', 'LW'),
(1301, 13, 'Iker Casillas ', 'Porto', 'GK'),
(1302, 13, 'David De Gea ', 'Manchester United', 'GK'),
(1303, 13, 'Sergio Rico ', 'Sevilla', 'GK'),
(1304, 13, 'Sergio Ramos ', 'Real Madrid', 'CB'),
(1305, 13, 'Gerard Pique ', 'Barcelona', 'CB'),
(1306, 13, 'Dani Carvajal ', 'Real Madrid', 'RB'),
(1307, 13, 'Jordi Alba ', 'Barcelona', 'LB'),
(1308, 13, 'Marc Bartra ', 'Barcelona', 'CB'),
(1309, 13, 'Cesar Azpilicueta ', 'Chelsea', 'LB'),
(1310, 13, 'Mikel San Jose ', 'Athletic Bilbao', 'CB'),
(1311, 13, 'Juanfran ', 'Atletico Madrid', 'RB'),
(1312, 13, 'Bruno Soriano ', 'Villarreal', 'CM'),
(1313, 13, 'Sergio Busquets ', 'Barcelona', 'CDM'),
(1314, 13, 'Koke ', 'Atletico Madrid', 'CM'),
(1315, 13, 'Thiago Alcantara ', 'Bayern Munich', 'CM'),
(1316, 13, 'Andres Iniesta ', 'Barcelona', 'CM'),
(1317, 13, 'Isco ', 'Real Madrid', 'CAM'),
(1318, 13, 'David Silva ', 'Manchester City', 'CAM'),
(1319, 13, 'Pedro Rodriguez ', 'Chelsea', 'LW'),
(1320, 13, 'Cesc Fabregas ', 'Chelsea', 'CM'),
(1321, 13, 'Saul Niguez ', 'Atletico Madrid', 'RM'),
(1322, 13, 'Aritz Aduriz ', 'Athletic Bilbao', 'ST'),
(1323, 13, 'Nolito ', 'Celta Vigo', 'LM'),
(1324, 13, 'Alvaro Morata ', 'Juventus', 'ST'),
(1325, 13, 'Lucas Vazquez ', 'Real Madrid', 'RM'),
(1401, 14, 'Danijel Subasic ', 'Monaco', 'GK'),
(1402, 14, ' Lovre Kalinic ', 'Hajduk Split', 'GK'),
(1403, 14, ' Ivan Vargic ', 'Rijeka', 'GK'),
(1404, 14, ' Dominik Livakovic ', 'Zagreb', 'GK'),
(1405, 14, 'Darijo Srna ', 'Shakhtar Donetsk', 'RB'),
(1406, 14, 'Vedran Corluka ', 'Lokomotiv Moscow', 'CB'),
(1407, 14, 'Domagoj Vida ', 'Dynamo Kiev', 'CB'),
(1408, 14, 'Ivan Strinic ', 'Napoli', 'LB'),
(1409, 14, 'Gordon Schildenfeld ', 'Dinamo Zagreb', 'CB'),
(1410, 14, 'Sime Vrsaljko ', 'Sassuolo', 'RB'),
(1411, 14, 'Tin Jedvaj ', 'Bayer Leverkusen', 'CB'),
(1412, 14, 'Duje Caleta-Car ', 'Salzburg', 'CB'),
(1413, 14, 'Luka Modric ', 'Real Madrid', 'CM'),
(1414, 14, 'Ivan Rakitic ', 'Barcelona', 'CM'),
(1415, 14, 'Ivan Perisic ', 'Inter Milan', 'LM'),
(1416, 14, 'Mateo Kovacic ', 'Real Madrid', 'CM'),
(1417, 14, 'Milan Badelj ', 'Fiorentina', 'CDM'),
(1418, 14, 'Marcelo Brozovic ', 'Inter Milan', 'CM'),
(1419, 14, 'Alen Halilovic ', 'Sporting Gijon', 'CAM'),
(1420, 14, 'Domagoj Antolic ', 'Dinamo Zagreb', 'CM'),
(1421, 14, 'Marko Rog ', 'Dinamo Zagreb', 'CAM'),
(1422, 14, 'Ante Coric ', 'Dinamo Zagreb', 'CAM'),
(1423, 14, 'Mario Mandzukic ', 'Juventus', 'ST'),
(1424, 14, 'Nikola Kalinic ', 'Fiorentina', 'ST'),
(1425, 14, 'Andrej Kramaric ', 'Hoffenheim', 'ST'),
(1426, 14, 'Marko Pjaca ', 'Dinamo Zagreb', 'LW'),
(1427, 14, 'Duje Cop ', 'Malaga', 'ST'),
(1701, 17, 'Thibaut Courtois ', 'Chelsea', 'GK'),
(1702, 17, 'Jean-Francois Gillet ', 'Mechelen', 'GK'),
(1703, 17, 'Simon Mignolet ', 'Liverpool', 'GK'),
(1704, 17, 'Toby Alderweireld ', 'Tottenham', 'CB'),
(1705, 17, 'Dedryck Boyata ', 'Celtic', 'CB'),
(1706, 17, 'Jason Denayer ', 'Galatasaray', 'CB'),
(1707, 17, 'Bjorn Engels ', 'Club Bruges', 'CB'),
(1708, 17, 'Nicolas Lombaerts ', 'Zenit', 'CB'),
(1709, 17, 'Jordan Lukaku ', 'Oostende', 'LB'),
(1710, 17, 'Thomas Meunier ', 'Club Bruges', 'RB'),
(1711, 17, 'Thomas Vermaelen ', 'Barcelona', 'CB'),
(1712, 17, 'Jan Vertonghen ', 'Tottenham', 'CB'),
(1713, 17, 'Marouane Fellaini ', 'Manchester United', 'CDM'),
(1714, 17, 'Radja Nainggolan ', 'Roma', 'CM'),
(1715, 17, 'Axel Witsel ', 'Zenit St Petersburg', 'CM'),
(1716, 17, 'Kevin De Bruyne ', 'Manchester City', 'CAM'),
(1717, 17, 'Eden Hazard ', 'Chelsea', 'LM'),
(1718, 17, 'Moussa Dembele ', 'Tottenham', 'CM'),
(1719, 17, 'Michy Batshuayi ', 'Marseille', 'ST'),
(1720, 17, 'Christian Benteke ', 'Liverpool', 'ST'),
(1721, 17, 'Yannick Carrasco ', 'Atletico Madrid', 'RM'),
(1722, 17, 'Romelu Lukaku ', 'Everton', 'ST'),
(1723, 17, 'Dries Mertens ', 'Napoli', 'LW'),
(1724, 17, 'Divock Origi ', 'Liverpool', 'ST'),
(1801, 18, 'Federico Marchetti ', 'Lazio', 'GK'),
(1802, 18, 'Antonio Mirante ', 'Bologna', 'GK'),
(1803, 18, 'Marco Sportiello ', 'Atalanta', 'GK'),
(1804, 18, 'Francesco Acerbi ', 'Sassuolo', 'CB'),
(1805, 18, 'Davide Astori ', 'Fiorentina', 'CB'),
(1806, 18, 'Leonardo Bonucci ', 'Juventus', 'CB'),
(1807, 18, 'Armando Izzo ', 'Genoa', 'CB'),
(1808, 18, 'Angelo Obinze Ogbonn', 'West Ham', 'CB'),
(1809, 18, 'Lorenzo Tonelli ', 'Empoli', 'CB'),
(1810, 18, 'Marco Benassi ', 'Torino', 'CM'),
(1811, 18, 'Federico Bernardesch', 'Fiorentina', 'RW'),
(1812, 18, 'Antonio Candreva ', 'Lazio', 'RW'),
(1813, 18, 'Danilo Cataldi ', 'Lazio', 'CM'),
(1814, 18, 'Daniele De Rossi ', 'Roma', 'CDM'),
(1815, 18, 'Lorenzo De Silvestri', 'Sampdoria', 'RB'),
(1816, 18, 'Stephan El Shaarawy ', 'Roma', 'LW'),
(1817, 18, 'Alessandro Florenzi ', 'Roma', 'RB'),
(1818, 18, 'Emanuele Giaccherini', 'Bologna', 'LM'),
(1819, 18, 'Jorge Luiz Jorginho ', 'Napoli', 'CDM'),
(1820, 18, 'Marco Parolo ', 'Lazio', 'CM'),
(1821, 18, 'Roberto Soriano ', 'Sampdoria', 'CAM'),
(1822, 18, 'Davide Zappacosta ', 'Torino', 'RM'),
(1823, 18, 'Fabio Borini ', 'Sunderland', 'ST'),
(1824, 18, 'Citadin Martins Eder', 'Inter Milan', 'ST'),
(1825, 18, 'Ciro Immobile ', 'Torino', 'ST'),
(1826, 18, 'Lorenzo Insigne ', 'Napoli', 'LW'),
(1827, 18, 'Leonardo Pavoletti ', 'Genoa', 'ST'),
(1828, 18, 'Graziano Pelle', 'Southampton', 'ST'),
(1901, 19, 'Andreas Isaksson ', 'Kasimpasa', 'GK'),
(1902, 19, 'Robin Olsen ', 'Kobenhavn', 'GK'),
(1903, 19, 'Patrik Carlgren ', 'AIK', 'GK'),
(1904, 19, 'Ludwig Augustinsson ', 'Kobenhavn', 'LB'),
(1905, 19, 'Erik Johansson ', 'Kobenhavn', 'CB'),
(1906, 19, 'Pontus Jansson ', 'Torino', 'CB'),
(1907, 19, 'Victor Lindelof ', 'Benfica', 'CB'),
(1908, 19, 'Mikael Lustig ', 'Celtic', 'RB'),
(1909, 19, 'Martin Olsson ', 'Norwich', 'CB'),
(1910, 19, 'Andreas Granqvist ', 'Krasnodar', 'CB'),
(1911, 19, 'Jimmy Durmaz ', 'Olympiakos', 'LM'),
(1912, 19, 'Albin Ekdal ', 'Hamburg', 'CM'),
(1913, 19, 'Oscar Hiljemark ', 'Palermo', 'CM'),
(1914, 19, 'Sebastian Larsson ', 'Sunderland', 'CM'),
(1915, 19, 'Pontus Wernbloom ', 'CSKA Moskva', 'CDM'),
(1916, 19, 'Erkan Zengin ', 'Trabzonspor', 'LW'),
(1917, 19, 'Oscar Lewicki ', 'Malmo', 'CDM'),
(1918, 19, 'Emil Forsberg ', 'Leipzig', 'LM'),
(1919, 19, 'Kim Kallstrom ', 'Grasshoppers', 'CDM'),
(1920, 19, 'Marcus Berg ', 'Panathinaikos', 'ST'),
(1921, 19, 'John Guidetti ', 'Celta', 'ST'),
(1922, 19, 'Zlatan Ibrahimovic ', 'Paris', 'ST'),
(1923, 19, 'Emir Kujovic ', 'Norrkoping', 'ST'),
(2101, 21, 'Eduardo ', 'Dinamo Zagreb', 'GK'),
(2102, 21, 'Anthony Lopes ', 'Lyon', 'GK'),
(2103, 21, 'Rui Patricio ', 'Sporting CP', 'GK'),
(2104, 21, 'Bruno Alves ', 'Fenerbahce', 'CB'),
(2105, 21, 'Ricardo Carvalho ', 'Monaco', 'CB'),
(2106, 21, 'Eliseu ', 'Benfica', 'LB'),
(2107, 21, 'Jose Fonte ', 'Southampton', 'CB'),
(2108, 21, 'Raphael Guerreiro ', 'Lorient', 'LM'),
(2109, 21, 'Pepe ', 'Real Madrid', 'CB'),
(2110, 21, 'Cedric Soares ', 'Southampton', 'RB'),
(2111, 21, 'Vieirinha ', 'Wolfsburg', 'RB'),
(2112, 21, 'Adrien ', 'Sporting CP ', 'CM'),
(2113, 21, 'Danilo ', 'Porto', 'CDM'),
(2114, 21, 'Adrian Gomez ', 'Valencia ', 'CAM'),
(2115, 21, 'Joao Mario ', 'Sporting CP', 'RM'),
(2116, 21, 'Joao Moutinho ', 'Monaco', 'CM'),
(2117, 21, 'Renato Sanches ', 'Bayern Munich', 'CM'),
(2118, 21, 'Rafa Silva ', 'Braga', 'LM'),
(2119, 21, 'William Carvalho ', 'Sporting CP', 'CDM'),
(2120, 21, 'Eder ', 'Swansea City', 'ST'),
(2121, 21, 'Nani ', 'Fenerbahce ', 'LM'),
(2122, 21, 'Ricardo Quaresma ', 'Besiktas', 'RW'),
(2123, 21, 'Cristiano Ronaldo ', 'Real Madrid', 'LW'),
(2201, 22, 'Robert Almer ', 'Austria Vienna', 'GK'),
(2202, 22, 'Heinz Lindner ', 'Eintracht Frankfurt', 'GK'),
(2203, 22, 'Ramazan Oezcan ', 'Ingolstadt', 'GK'),
(2204, 22, 'Aleksandar Dragovic ', 'Dynamo Kiev', 'CB'),
(2205, 22, 'Christian Fuchs ', 'Leicester', 'LB'),
(2206, 22, 'Gyoergy Garics ', 'Darmstadt', 'RB'),
(2207, 22, 'Martin Hinteregger ', 'Borussia Monchenglad', 'CB'),
(2208, 22, 'Florian Klein ', 'Stuttgart', 'RB'),
(2209, 22, 'Sebastian Proedl ', 'Watford', 'CB'),
(2210, 22, 'Markus Suttner ', 'Ingolstadt', 'LB'),
(2211, 22, 'Kevin Wimmer ', 'Tottenham', 'CB'),
(2212, 22, 'David Alaba ', 'Bayern Munich', 'CM'),
(2213, 22, 'Marko Arnautovic ', 'Stoke', 'LM'),
(2214, 22, 'Julian Baumgartlinge', 'Mainz', 'CDM'),
(2215, 22, 'Martin Harnik ', 'Stuttgart', 'RM'),
(2216, 22, 'Stefan Ilsanker ', 'RB Leipzig', 'CDM'),
(2217, 22, 'Jakob Jantscher ', 'Luzern', 'LM'),
(2218, 22, 'Zlatko Junuzovic ', 'Werder Bremen', 'CAM'),
(2219, 22, 'Valentino Lazaro ', 'Salzburg', 'RM'),
(2220, 22, 'Marcel Sabitzer ', 'RB Leipzig', 'ST'),
(2221, 22, 'Alessandro Schoepf ', 'Schalke', 'RM'),
(2222, 22, 'Lukas Hinterseer ', 'Ingolstadt', 'ST'),
(2223, 22, 'Rubin Okotie ', '1860 Munich', 'ST'),
(2224, 22, 'Marc Janko ', 'FC Basel', 'ST'),
(2301, 23, 'Ingvar Jonsson ', 'Sandefjord', 'GK'),
(2302, 23, 'Ogmundur Kristinsson', 'Hammarby IF', 'GK'),
(2303, 23, 'Hannes por Halldorss', 'FK Bodo Glimt', 'GK'),
(2304, 23, 'Hjortur Hermannsson ', 'IFK Goteborg', 'CB'),
(2305, 23, 'Sverrir Ingi Ingason', 'Lokeren', 'CB'),
(2306, 23, 'Horour Bjorgvin Magn', 'Cesena', 'CB'),
(2307, 23, 'Haukur Heidar Haukss', 'AIK', 'RB'),
(2308, 23, 'Ari Freyr Skulason ', 'OB', 'LB'),
(2309, 23, 'Ragnar Sigurdsson ', 'Krasnodar', 'CB'),
(2310, 23, 'Karl Arnason', 'Malmo FF', 'CB'),
(2311, 23, 'Birkir Mar Saevarsso', 'Hammarby IF', 'RB'),
(2312, 23, 'Arnor Ingvi Traustas', 'IFK Norrkoping', 'LM'),
(2313, 23, 'Johann Berg Guomunds', 'Charlton Athletic', 'LW'),
(2314, 23, 'Runar Mar Sigurjonss', 'GIF Sundsvall', 'CDM'),
(2315, 23, 'Gylfi Sigurdsson ', 'Swansea City', 'CAM'),
(2316, 23, 'Aron Gunnarsson ', 'Cardiff City', 'CM'),
(2317, 23, 'Birkir Bjarnason ', 'Basel', 'RM'),
(2318, 23, 'Theodor Elmar Bjarna', 'AGF', 'RM'),
(2319, 23, 'Emil Hallfreosson ', 'Udinese', 'CM'),
(2320, 23, 'Jon Daoi Boovarsson ', 'Kaiserslautern', 'ST'),
(2321, 23, 'Kolbeinn Sigporsson ', 'Nantes', 'ST'),
(2322, 23, 'Alfred Finnbogason ', 'Augsburg', 'ST'),
(2323, 23, 'Eiour Gudjohnsen ', 'Molde FK', 'ST'),
(2401, 24, 'Gabor Kiraly ', 'Haladas', 'GK'),
(2402, 24, 'Denes Dibusz ', 'Ferencvaros', 'GK'),
(2403, 24, 'Peter Gulacsi ', 'Leipzig', 'GK'),
(2404, 24, 'Balazs Megyeri ', 'Getafe', 'GK'),
(2405, 24, 'Attila Fiola ', 'Puskas Akademia', 'RB'),
(2406, 24, 'Gergo Lovrencsics ', 'Lech Poznan', 'RW'),
(2407, 24, 'Barnabas Bese ', 'MTK', 'RB'),
(2408, 24, 'Richard Guzmics ', 'Wisla Krakow', 'CB'),
(2409, 24, 'Roland Juhasz ', 'Videoton', 'CB'),
(2410, 24, 'Gergo Kocsis ', 'Puskas Akademia', 'CB'),
(2411, 24, 'Adam Lang ', 'Videoton', 'CB'),
(2412, 24, 'Adam Pinter ', 'Ferencvaros', 'CB'),
(2413, 24, 'Zsolt Korcsmar ', 'Vasas', 'CB'),
(2414, 24, 'Tamas Kadar ', 'Lech Poznan', 'LB'),
(2415, 24, 'Mihaly Korhut ', 'Debrecen', 'LB'),
(2416, 24, 'Akos Elek ', 'Diosgyori', 'CDM'),
(2417, 24, 'Zoltan Gera ', 'Ferencvaros', 'CAM'),
(2418, 24, 'Adam Nagy ', 'Ferencvaros', 'CDM'),
(2419, 24, 'Mate Vida ', 'Vasas', 'CDM'),
(2420, 24, 'Laszlo Kleinheisler ', 'Werder Bremen', 'CAM'),
(2421, 24, 'Roland Sallai ', 'Puskas Akademia', 'CAM'),
(2422, 24, 'Balazs Dzsudzsak ', 'Bursaspor', 'RW'),
(2423, 24, 'Zoltan Stieber ', 'Nurnberg', 'LW'),
(2424, 24, 'Adam Gyurcso ', 'Pogon', 'RW'),
(2425, 24, 'Adam Szalai ', 'Hannover', 'ST'),
(2426, 24, 'Krisztian Nemeth ', 'al-Gharafa', 'ST'),
(2427, 24, 'Nemanja Nikolic ', 'Legia Warsaw', 'ST'),
(2428, 24, 'Tamas Priskin ', 'Slovan Bratislava', 'ST'),
(2429, 24, 'Daniel Bode ', 'Ferencvaros', 'ST'),
(2430, 24, 'Laszlo Lencse ', 'Ujpest', 'ST');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `team_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `group_id`, `team_name`) VALUES
(1, 1, 'Albania'),
(2, 1, 'France'),
(3, 1, 'Romania'),
(4, 1, 'Switzerland'),
(5, 2, 'England'),
(6, 2, 'Russia'),
(7, 2, 'Wales'),
(8, 2, 'Slovakia'),
(9, 3, 'Poland'),
(10, 3, 'Germany'),
(11, 3, 'Ukraine'),
(12, 3, 'Northern Ireland'),
(13, 4, 'Spain'),
(14, 4, 'Croatia'),
(15, 4, 'Turkey'),
(16, 4, 'Czech Republic'),
(17, 5, 'Belgium'),
(18, 5, 'Italy'),
(19, 5, 'Sweden'),
(20, 5, 'Republic of Ireland'),
(21, 6, 'Portugal'),
(22, 6, 'Austria'),
(23, 6, 'Iceland'),
(24, 6, 'Hungary');

-- --------------------------------------------------------

--
-- Table structure for table `team_eq_stats`
--

CREATE TABLE `team_eq_stats` (
  `team_id` int(2) NOT NULL,
  `matches` int(2) DEFAULT NULL,
  `won` int(2) DEFAULT NULL,
  `draw` int(1) DEFAULT NULL,
  `lost` int(1) DEFAULT NULL,
  `points` int(2) DEFAULT NULL,
  `ppm` decimal(2,1) DEFAULT NULL,
  `GF` int(2) DEFAULT NULL,
  `AGF` decimal(2,1) DEFAULT NULL,
  `GA` int(2) DEFAULT NULL,
  `AGA` decimal(2,1) DEFAULT NULL,
  `GD` int(2) DEFAULT NULL,
  `total_attempts` int(3) DEFAULT NULL,
  `avg_attempts_per_game` decimal(3,1) DEFAULT NULL,
  `on_target` int(2) DEFAULT NULL,
  `off_target` int(2) DEFAULT NULL,
  `blocked` int(2) DEFAULT NULL,
  `woodwork` int(1) DEFAULT NULL,
  `TP` int(4) DEFAULT NULL,
  `PC` int(4) DEFAULT NULL,
  `PA` decimal(3,2) DEFAULT NULL,
  `possession` decimal(3,2) DEFAULT NULL,
  `f_corners` int(2) DEFAULT NULL,
  `avg_fc` decimal(2,1) DEFAULT NULL,
  `a_corners` int(2) DEFAULT NULL,
  `avg_ac` decimal(2,1) DEFAULT NULL,
  `offsides` int(2) DEFAULT NULL,
  `fouls_committed` int(3) DEFAULT NULL,
  `fouls_suffered` int(3) DEFAULT NULL,
  `yellow_cards` int(2) DEFAULT NULL,
  `red_cards` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_eq_stats`
--

INSERT INTO `team_eq_stats` (`team_id`, `matches`, `won`, `draw`, `lost`, `points`, `ppm`, `GF`, `AGF`, `GA`, `AGA`, `GD`, `total_attempts`, `avg_attempts_per_game`, `on_target`, `off_target`, `blocked`, `woodwork`, `TP`, `PC`, `PA`, `possession`, `f_corners`, `avg_fc`, `a_corners`, `avg_ac`, `offsides`, `fouls_committed`, `fouls_suffered`, `yellow_cards`, `red_cards`) VALUES
(1, 8, 4, 2, 2, 14, '1.8', 22, '0.9', 5, '0.6', 2, 70, '8.8', 28, 29, 13, 3, 2267, 1886, '0.83', '0.45', 24, '3.0', 33, '4.1', 11, 108, 87, 21, 0),
(2, 8, 7, 0, 1, 22, '2.8', 18, '2.3', 8, '1.0', 10, 103, '12.9', 48, 39, 16, 4, 4375, 3785, '0.86', '0.54', 43, '5.4', 26, '3.3', 13, 91, 98, 6, 0),
(3, 10, 5, 5, 0, 20, '2.0', 22, '1.1', 2, '0.2', 9, 132, '13.2', 43, 63, 26, 4, 3581, 3056, '0.85', '0.53', 52, '5.2', 33, '3.3', 17, 132, 138, 26, 1),
(4, 10, 7, 0, 3, 21, '2.1', 24, '2.4', 8, '0.8', 16, 195, '19.5', 74, 78, 43, 5, 5535, 4968, '0.90', '0.63', 83, '8.3', 25, '2.5', 38, 104, 138, 11, 0),
(5, 10, 10, 0, 0, 30, '3.0', 31, '3.1', 3, '0.3', 28, 194, '19.4', 85, 66, 43, 2, 5364, 4765, '0.89', '0.60', 72, '7.2', 23, '2.3', 20, 116, 105, 15, 0),
(6, 10, 6, 2, 2, 20, '2.0', 22, '1.8', 5, '0.5', 13, 167, '16.7', 59, 69, 39, 2, 4740, 4161, '0.88', '0.59', 62, '6.2', 33, '3.3', 20, 111, 117, 11, 0),
(7, 10, 6, 3, 1, 21, '2.1', 22, '1.1', 4, '0.4', 7, 134, '13.4', 51, 57, 26, 1, 3777, 3332, '0.88', '0.52', 58, '5.8', 33, '3.3', 12, 119, 118, 20, 1),
(8, 10, 7, 1, 2, 22, '2.2', 22, '1.7', 8, '0.8', 9, 116, '11.6', 48, 47, 21, 3, 3184, 2735, '0.86', '0.46', 37, '3.7', 62, '6.2', 20, 152, 155, 24, 0),
(9, 10, 6, 3, 1, 21, '2.1', 33, '3.3', 10, '1.0', 23, 164, '16.4', 79, 58, 27, 5, 3857, 3337, '0.87', '0.50', 52, '5.2', 44, '4.4', 18, 140, 110, 19, 0),
(10, 10, 7, 1, 2, 22, '2.2', 24, '2.4', 9, '0.9', 15, 231, '23.1', 91, 87, 53, 7, 6712, 6142, '0.92', '0.67', 92, '9.2', 24, '2.4', 32, 90, 105, 10, 0),
(11, 12, 6, 1, 5, 19, '1.6', 22, '1.4', 5, '0.4', 12, 191, '15.9', 67, 85, 39, 4, 4660, 4004, '0.86', '0.55', 79, '6.6', 44, '3.7', 26, 181, 196, 33, 1),
(12, 10, 6, 3, 1, 21, '2.1', 22, '1.6', 8, '0.8', 8, 126, '12.6', 47, 56, 23, 2, 2720, 2225, '0.82', '0.45', 53, '5.3', 42, '4.2', 13, 119, 119, 14, 1),
(13, 10, 9, 0, 1, 27, '2.7', 23, '2.3', 3, '0.3', 20, 183, '18.3', 64, 70, 49, 6, 6952, 6395, '0.92', '0.67', 74, '7.4', 37, '3.7', 27, 98, 137, 18, 0),
(14, 10, 6, 3, 1, 20, '2.0', 22, '2.0', 5, '0.5', 15, 147, '14.7', 49, 75, 23, 4, 4774, 4239, '0.89', '0.58', 66, '6.6', 33, '3.3', 19, 131, 120, 23, 3),
(15, 10, 5, 3, 2, 18, '1.8', 22, '1.4', 9, '0.9', 5, 149, '14.9', 54, 64, 31, 4, 3962, 3406, '0.86', '0.53', 39, '3.9', 43, '4.3', 29, 105, 153, 22, 2),
(16, 10, 7, 1, 2, 22, '2.2', 22, '1.9', 14, '1.4', 5, 132, '13.2', 41, 52, 39, 2, 4044, 3447, '0.85', '0.52', 59, '5.9', 34, '3.4', 18, 128, 122, 15, 1),
(17, 10, 7, 2, 1, 23, '2.3', 24, '2.4', 5, '0.5', 19, 207, '20.7', 76, 83, 48, 6, 5302, 4750, '0.90', '0.62', 75, '7.5', 29, '2.9', 24, 117, 100, 12, 1),
(18, 10, 7, 3, 0, 24, '2.4', 22, '1.6', 7, '0.7', 9, 163, '16.3', 52, 76, 35, 7, 4893, 4421, '0.90', '0.56', 69, '6.9', 22, '2.2', 23, 127, 134, 13, 2),
(19, 12, 5, 3, 4, 18, '1.5', 22, '1.6', 12, '1.0', 7, 149, '12.4', 63, 58, 28, 3, 4717, 3989, '0.85', '0.52', 66, '5.5', 58, '4.8', 33, 182, 152, 22, 1),
(20, 12, 5, 3, 4, 18, '1.5', 22, '1.8', 8, '0.7', 14, 129, '10.8', 57, 43, 29, 2, 3903, 3238, '0.83', '0.48', 72, '6.0', 53, '4.4', 23, 158, 125, 26, 1),
(21, 8, 7, 0, 1, 21, '2.6', 22, '1.4', 5, '0.6', 6, 121, '15.1', 41, 54, 26, 5, 3272, 2824, '0.86', '0.52', 46, '5.8', 29, '3.6', 23, 98, 120, 20, 1),
(22, 10, 9, 1, 0, 28, '2.8', 22, '2.2', 5, '0.5', 17, 182, '18.2', 81, 64, 37, 3, 4392, 3826, '0.87', '0.56', 68, '6.8', 35, '3.5', 35, 130, 124, 14, 1),
(23, 10, 6, 2, 2, 20, '2.0', 22, '1.7', 6, '0.6', 11, 116, '11.6', 39, 47, 30, 3, 3584, 3070, '0.86', '0.48', 39, '3.9', 39, '3.9', 15, 124, 130, 16, 1),
(24, 12, 4, 4, 4, 16, '1.3', 22, '1.2', 10, '0.8', 4, 132, '11.0', 55, 54, 23, 1, 3469, 2954, '0.85', '0.46', 50, '4.2', 63, '5.3', 25, 174, 152, 38, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`match_no`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `team_id1` (`team_id1`),
  ADD KEY `team_id2` (`team_id2`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `team_id_2` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `team_eq_stats`
--
ALTER TABLE `team_eq_stats`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
