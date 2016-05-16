-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2016 at 04:48 PM
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
