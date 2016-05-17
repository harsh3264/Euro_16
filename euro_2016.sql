-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2016 at 02:07 PM
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
  `player_name` varchar(20) DEFAULT NULL,
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
(2323, 23, 'Eiour Gudjohnsen ', 'Molde FK', 'ST');

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
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

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
