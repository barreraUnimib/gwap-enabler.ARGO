-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Lug 17, 2018 alle 10:28
-- Versione del server: 5.6.38
-- Versione PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gwap-enabler-db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `badge`
--

CREATE TABLE `badge` (
  `idBadge` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `value` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `goal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `badge`
--

INSERT INTO `badge` (`idBadge`, `name`, `value`, `image`, `goal`) VALUES
(1, 'BABY', 'BABY_DESCRIPTION', 'images/icone-BADGE-BABY.png', 1),
(2, 'ADDICTED', 'ADDICTED_DESCRIPTION', 'images/icone-BADGE-ADDICTED.png', 2),
(3, 'EXPERT', 'EXPERT_DESCRIPTION', 'images/icone-BADGE-EXPERT.png', 0),
(4, 'GENIUS', 'GENIUS_DESCRIPTION', 'images/icone-BADGE-GENIUS.png', 4),
(5, 'DONKEY', 'DONKEY_DESCRIPTION', 'images/icone-BADGE-DONKEY.png', 5),
(6, 'LAZY', 'LAZY_DESCRIPTION', 'images/icone-BADGE-LAZY.png', 6),
(7, 'COLOSSAL', 'COLOSSAL_DESCRIPTION', 'images/icone-BADGE-COLOSSAL.png', 7),
(8, 'THE FLASH', 'THE_FLASH_DESCRIPTION', 'images/icone-BADGE-FLASH.png', 8),
(9, 'THE KING', 'THE_KING_DESCRIPTION', 'images/icone-BADGE-KING.png', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `idCategory` int(16) NOT NULL,
  `value` varchar(128) NOT NULL,
  `label` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`idCategory`, `value`, `label`) VALUES
(1, 'person', 'Personaggi famosi'),
(2, 'music', 'Musicaa'),
(3, 'cinema', 'Cinematografia');

-- --------------------------------------------------------

--
-- Struttura della tabella `configuration`
--

CREATE TABLE `configuration` (
  `idParameters` int(11) NOT NULL,
  `upperThreshold` float NOT NULL,
  `lowerThreshold` float DEFAULT NULL,
  `positiveK` float NOT NULL,
  `negativeK` float DEFAULT NULL,
  `nOfLevels` int(11) NOT NULL,
  `nOfGT` int(11) NOT NULL,
  `levelPoints` int(11) NOT NULL,
  `consecutiveLevelPoints` int(11) NOT NULL,
  `reputationParam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `configuration`
--

INSERT INTO `configuration` (`idParameters`, `upperThreshold`, `lowerThreshold`, `positiveK`, `negativeK`, `nOfLevels`, `nOfGT`, `levelPoints`, `consecutiveLevelPoints`, `reputationParam`) VALUES
(1, 0.875, NULL, 0.25, NULL, 5, 1, 50, 50, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `leaderboard`
--

CREATE TABLE `leaderboard` (
  `idLeaderboard` int(16) NOT NULL,
  `idUser` int(16) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `leaderboard`
--

INSERT INTO `leaderboard` (`idLeaderboard`, `idUser`, `score`) VALUES
(1, 2, 0),
(2, 1, 450);

-- --------------------------------------------------------

--
-- Struttura della tabella `level`
--

CREATE TABLE `level` (
  `idlevel` int(11) NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `idRound` int(11) NOT NULL,
  `startLevel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endLevel` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `level`
--

INSERT INTO `level` (`idlevel`, `level`, `idRound`, `startLevel`, `endLevel`) VALUES
(1, '1', 28, '2018-07-17 08:26:56', '2018-07-17 08:26:57'),
(2, '2', 28, '2018-07-17 08:26:57', '2018-07-17 08:26:58'),
(3, '3', 28, '2018-07-17 08:26:58', '2018-07-17 08:26:59'),
(4, '4', 28, '2018-07-17 08:26:59', '2018-07-17 08:27:00'),
(5, '5', 28, '2018-07-17 08:27:00', '2018-07-17 08:27:01'),
(6, '1', 29, '2018-07-17 08:27:19', '2018-07-17 08:27:20'),
(7, '2', 29, '2018-07-17 08:27:21', '2018-07-17 08:27:21'),
(8, '3', 29, '2018-07-17 08:27:25', '2018-07-17 08:27:26'),
(9, '4', 29, '2018-07-17 08:27:27', '2018-07-17 08:27:27'),
(10, '5', 29, '2018-07-17 08:27:30', '2018-07-17 08:27:31'),
(11, '1', 30, '2018-07-17 08:27:51', '2018-07-17 08:27:53'),
(12, '2', 30, '2018-07-17 08:27:56', '2018-07-17 08:27:56'),
(13, '3', 30, '2018-07-17 08:27:58', '2018-07-17 08:27:59'),
(14, '4', 30, '2018-07-17 08:27:59', '2018-07-17 08:28:00'),
(15, '5', 30, '2018-07-17 08:28:00', '2018-07-17 08:28:01'),
(16, '1', 31, '2018-07-17 08:28:14', '2018-07-17 08:28:15'),
(17, '2', 31, '2018-07-17 08:28:17', '2018-07-17 08:28:17'),
(18, '3', 31, '2018-07-17 08:28:20', '2018-07-17 08:28:21'),
(19, '4', 31, '2018-07-17 08:28:21', '2018-07-17 08:28:22'),
(20, '5', 31, '2018-07-17 08:28:23', '2018-07-17 08:28:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `logging`
--

CREATE TABLE `logging` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idTopic` int(11) NOT NULL,
  `idResource` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idRound` int(11) NOT NULL,
  `idLevel` int(11) DEFAULT NULL,
  `partnerChosen` bit(1) DEFAULT NULL,
  `chosen` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `logging`
--

INSERT INTO `logging` (`id`, `idUser`, `idTopic`, `idResource`, `timestamp`, `idRound`, `idLevel`, `partnerChosen`, `chosen`) VALUES
(1, 1, 6, 102995, '2018-07-17 08:26:56', 28, 1, b'0', b'1'),
(2, 1, 81, 102995, '2018-07-17 08:26:56', 28, 1, b'1', b'0'),
(3, 1, 82, 102995, '2018-07-17 08:26:56', 28, 1, b'0', b'0'),
(4, 1, 83, 102995, '2018-07-17 08:26:56', 28, 1, b'0', b'0'),
(5, 1, 84, 102995, '2018-07-17 08:26:56', 28, 1, b'0', b'0'),
(6, 1, 85, 102995, '2018-07-17 08:26:56', 28, 1, b'0', b'0'),
(7, 1, 6, 102992, '2018-07-17 08:26:58', 28, 2, b'1', b'0'),
(8, 1, 71, 102992, '2018-07-17 08:26:58', 28, 2, b'0', b'1'),
(9, 1, 72, 102992, '2018-07-17 08:26:58', 28, 2, b'0', b'0'),
(10, 1, 73, 102992, '2018-07-17 08:26:58', 28, 2, b'0', b'0'),
(11, 1, 74, 102992, '2018-07-17 08:26:58', 28, 2, b'0', b'0'),
(12, 1, 75, 102992, '2018-07-17 08:26:58', 28, 2, b'0', b'0'),
(13, 1, 6, 102993, '2018-07-17 08:26:59', 28, 3, b'0', b'1'),
(14, 1, 15, 102993, '2018-07-17 08:26:59', 28, 3, b'1', b'0'),
(15, 1, 67, 102993, '2018-07-17 08:26:59', 28, 3, b'0', b'0'),
(16, 1, 68, 102993, '2018-07-17 08:26:59', 28, 3, b'0', b'0'),
(17, 1, 69, 102993, '2018-07-17 08:26:59', 28, 3, b'0', b'0'),
(18, 1, 70, 102993, '2018-07-17 08:26:59', 28, 3, b'0', b'0'),
(19, 1, 6, 102994, '2018-07-17 08:27:00', 28, 4, b'1', b'0'),
(20, 1, 76, 102994, '2018-07-17 08:27:00', 28, 4, b'0', b'1'),
(21, 1, 77, 102994, '2018-07-17 08:27:00', 28, 4, b'0', b'0'),
(22, 1, 78, 102994, '2018-07-17 08:27:00', 28, 4, b'0', b'0'),
(23, 1, 79, 102994, '2018-07-17 08:27:00', 28, 4, b'0', b'0'),
(24, 1, 80, 102994, '2018-07-17 08:27:00', 28, 4, b'0', b'0'),
(25, 1, 6, 103000, '2018-07-17 08:27:01', 28, 5, b'0', b'0'),
(26, 1, 93, 103000, '2018-07-17 08:27:01', 28, 5, b'0', b'1'),
(27, 1, 106, 103000, '2018-07-17 08:27:01', 28, 5, b'0', b'0'),
(28, 1, 107, 103000, '2018-07-17 08:27:01', 28, 5, b'0', b'0'),
(29, 1, 108, 103000, '2018-07-17 08:27:01', 28, 5, b'0', b'0'),
(30, 1, 109, 103000, '2018-07-17 08:27:01', 28, 5, b'1', b'0'),
(31, 1, 6, 102991, '2018-07-17 08:27:20', 29, 6, b'0', b'1'),
(32, 1, 9, 102991, '2018-07-17 08:27:20', 29, 6, b'0', b'0'),
(33, 1, 10, 102991, '2018-07-17 08:27:20', 29, 6, b'0', b'0'),
(34, 1, 11, 102991, '2018-07-17 08:27:20', 29, 6, b'0', b'0'),
(35, 1, 33, 102991, '2018-07-17 08:27:20', 29, 6, b'0', b'0'),
(36, 1, 34, 102991, '2018-07-17 08:27:20', 29, 6, b'1', b'0'),
(37, 1, 6, 102989, '2018-07-17 08:27:21', 29, 7, b'0', b'0'),
(38, 1, 57, 102989, '2018-07-17 08:27:21', 29, 7, b'0', b'1'),
(39, 1, 58, 102989, '2018-07-17 08:27:21', 29, 7, b'1', b'0'),
(40, 1, 59, 102989, '2018-07-17 08:27:21', 29, 7, b'0', b'0'),
(41, 1, 60, 102989, '2018-07-17 08:27:21', 29, 7, b'0', b'0'),
(42, 1, 61, 102989, '2018-07-17 08:27:21', 29, 7, b'0', b'0'),
(43, 1, 6, 102999, '2018-07-17 08:27:26', 29, 8, b'0', b'0'),
(44, 1, 101, 102999, '2018-07-17 08:27:26', 29, 8, b'0', b'0'),
(45, 1, 102, 102999, '2018-07-17 08:27:26', 29, 8, b'0', b'1'),
(46, 1, 103, 102999, '2018-07-17 08:27:26', 29, 8, b'1', b'0'),
(47, 1, 104, 102999, '2018-07-17 08:27:26', 29, 8, b'0', b'0'),
(48, 1, 105, 102999, '2018-07-17 08:27:26', 29, 8, b'0', b'0'),
(49, 1, 6, 102998, '2018-07-17 08:27:27', 29, 9, b'0', b'0'),
(50, 1, 96, 102998, '2018-07-17 08:27:27', 29, 9, b'1', b'0'),
(51, 1, 97, 102998, '2018-07-17 08:27:27', 29, 9, b'0', b'0'),
(52, 1, 98, 102998, '2018-07-17 08:27:27', 29, 9, b'0', b'0'),
(53, 1, 99, 102998, '2018-07-17 08:27:27', 29, 9, b'0', b'0'),
(54, 1, 100, 102998, '2018-07-17 08:27:27', 29, 9, b'0', b'1'),
(55, 1, 6, 103001, '2018-07-17 08:27:31', 29, 10, b'1', b'1'),
(56, 1, 110, 103001, '2018-07-17 08:27:31', 29, 10, b'0', b'0'),
(57, 1, 111, 103001, '2018-07-17 08:27:31', 29, 10, b'0', b'0'),
(58, 1, 112, 103001, '2018-07-17 08:27:31', 29, 10, b'0', b'0'),
(59, 1, 113, 103001, '2018-07-17 08:27:31', 29, 10, b'0', b'0'),
(60, 1, 114, 103001, '2018-07-17 08:27:31', 29, 10, b'0', b'0'),
(61, 1, 6, 102997, '2018-07-17 08:27:53', 30, 11, b'1', b'0'),
(62, 1, 91, 102997, '2018-07-17 08:27:53', 30, 11, b'0', b'0'),
(63, 1, 92, 102997, '2018-07-17 08:27:53', 30, 11, b'0', b'0'),
(64, 1, 93, 102997, '2018-07-17 08:27:53', 30, 11, b'0', b'0'),
(65, 1, 94, 102997, '2018-07-17 08:27:53', 30, 11, b'0', b'0'),
(66, 1, 95, 102997, '2018-07-17 08:27:53', 30, 11, b'0', b'1'),
(67, 1, 6, 102982, '2018-07-17 08:27:56', 30, 12, b'1', b'0'),
(68, 1, 28, 102982, '2018-07-17 08:27:56', 30, 12, b'0', b'1'),
(69, 1, 29, 102982, '2018-07-17 08:27:56', 30, 12, b'0', b'0'),
(70, 1, 30, 102982, '2018-07-17 08:27:56', 30, 12, b'0', b'0'),
(71, 1, 31, 102982, '2018-07-17 08:27:56', 30, 12, b'0', b'0'),
(72, 1, 32, 102982, '2018-07-17 08:27:56', 30, 12, b'0', b'0'),
(73, 1, 6, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'0'),
(74, 1, 13, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'1'),
(75, 1, 14, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'0'),
(76, 1, 14, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'0'),
(77, 1, 15, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'0'),
(78, 1, 16, 102977, '2018-07-17 08:27:59', 30, 13, b'1', b'0'),
(79, 1, 17, 102977, '2018-07-17 08:27:59', 30, 13, b'0', b'0'),
(80, 1, 6, 102985, '2018-07-17 08:28:00', 30, 14, b'0', b'1'),
(81, 1, 35, 102985, '2018-07-17 08:28:00', 30, 14, b'0', b'0'),
(82, 1, 36, 102985, '2018-07-17 08:28:00', 30, 14, b'1', b'0'),
(83, 1, 37, 102985, '2018-07-17 08:28:00', 30, 14, b'0', b'0'),
(84, 1, 38, 102985, '2018-07-17 08:28:00', 30, 14, b'0', b'0'),
(85, 1, 39, 102985, '2018-07-17 08:28:00', 30, 14, b'0', b'0'),
(86, 1, 2, 102987, '2018-07-17 08:28:01', 30, 15, b'0', b'0'),
(87, 1, 6, 102987, '2018-07-17 08:28:01', 30, 15, b'0', b'0'),
(88, 1, 9, 102987, '2018-07-17 08:28:01', 30, 15, b'1', b'1'),
(89, 1, 11, 102987, '2018-07-17 08:28:01', 30, 15, b'0', b'0'),
(90, 1, 50, 102987, '2018-07-17 08:28:01', 30, 15, b'0', b'0'),
(91, 1, 51, 102987, '2018-07-17 08:28:01', 30, 15, b'0', b'0'),
(92, 1, 6, 102983, '2018-07-17 08:28:15', 31, 16, b'0', b'0'),
(93, 1, 18, 102983, '2018-07-17 08:28:15', 31, 16, b'0', b'1'),
(94, 1, 19, 102983, '2018-07-17 08:28:15', 31, 16, b'0', b'0'),
(95, 1, 20, 102983, '2018-07-17 08:28:15', 31, 16, b'0', b'0'),
(96, 1, 21, 102983, '2018-07-17 08:28:15', 31, 16, b'1', b'0'),
(97, 1, 22, 102983, '2018-07-17 08:28:15', 31, 16, b'0', b'0'),
(98, 1, 6, 102996, '2018-07-17 08:28:17', 31, 17, b'1', b'0'),
(99, 1, 86, 102996, '2018-07-17 08:28:17', 31, 17, b'0', b'1'),
(100, 1, 87, 102996, '2018-07-17 08:28:17', 31, 17, b'0', b'0'),
(101, 1, 88, 102996, '2018-07-17 08:28:17', 31, 17, b'0', b'0'),
(102, 1, 89, 102996, '2018-07-17 08:28:17', 31, 17, b'0', b'0'),
(103, 1, 90, 102996, '2018-07-17 08:28:17', 31, 17, b'0', b'0'),
(104, 1, 6, 102984, '2018-07-17 08:28:21', 31, 18, b'1', b'1'),
(105, 1, 52, 102984, '2018-07-17 08:28:21', 31, 18, b'0', b'0'),
(106, 1, 53, 102984, '2018-07-17 08:28:21', 31, 18, b'0', b'0'),
(107, 1, 54, 102984, '2018-07-17 08:28:21', 31, 18, b'0', b'0'),
(108, 1, 55, 102984, '2018-07-17 08:28:21', 31, 18, b'0', b'0'),
(109, 1, 56, 102984, '2018-07-17 08:28:21', 31, 18, b'0', b'0'),
(110, 1, 6, 102986, '2018-07-17 08:28:22', 31, 19, b'0', b'0'),
(111, 1, 40, 102986, '2018-07-17 08:28:22', 31, 19, b'0', b'0'),
(112, 1, 41, 102986, '2018-07-17 08:28:22', 31, 19, b'0', b'1'),
(113, 1, 42, 102986, '2018-07-17 08:28:22', 31, 19, b'0', b'0'),
(114, 1, 43, 102986, '2018-07-17 08:28:22', 31, 19, b'1', b'0'),
(115, 1, 44, 102986, '2018-07-17 08:28:22', 31, 19, b'0', b'0'),
(116, 1, 6, 102981, '2018-07-17 08:28:23', 31, 20, b'0', b'0'),
(117, 1, 57, 102981, '2018-07-17 08:28:23', 31, 20, b'0', b'0'),
(118, 1, 58, 102981, '2018-07-17 08:28:23', 31, 20, b'0', b'0'),
(119, 1, 59, 102981, '2018-07-17 08:28:23', 31, 20, b'0', b'0'),
(120, 1, 60, 102981, '2018-07-17 08:28:23', 31, 20, b'0', b'0'),
(121, 1, 61, 102981, '2018-07-17 08:28:23', 31, 20, b'1', b'1');

-- --------------------------------------------------------

--
-- Struttura della tabella `resource`
--

CREATE TABLE `resource` (
  `idResource` int(16) NOT NULL,
  `refId` varchar(128) NOT NULL,
  `idCategory` int(16) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `orderBy` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource`
--

INSERT INTO `resource` (`idResource`, `refId`, `idCategory`, `label`, `lat`, `long`, `url`, `orderBy`) VALUES
(102976, '', 1, NULL, NULL, NULL, 'analogy/resource/trump.png', 0.8903262165194633),
(102977, '', 2, NULL, NULL, NULL, 'analogy/resource/jackson.png', 0.8876543212345678),
(102981, '', 1, NULL, NULL, NULL, 'analogy/resource/cesare.png', 0.8879482317417378),
(102982, '', 1, NULL, NULL, NULL, 'analogy/resource/dante.png', 0.8811482347417378),
(102983, '', 3, NULL, NULL, NULL, 'analogy/resource/et.png', 0.8879482347417378),
(102984, '', 1, NULL, NULL, NULL, 'analogy/resource/gheddafi.png', 0.8879482346417378),
(102985, '', 1, NULL, NULL, NULL, 'analogy/resource/gutenberg.png', 0.8879481347417378),
(102986, '', 1, NULL, NULL, NULL, 'analogy/resource/jobs.png', 0.8879482147417378),
(102987, '', 1, NULL, NULL, NULL, 'analogy/resource/lePen.png', 0.8379482347417379),
(102988, '', 1, NULL, NULL, NULL, 'analogy/resource/letterman.png', 0.8879482347497378),
(102989, '', 1, NULL, NULL, NULL, 'analogy/resource/marie.png', 0.8079482347417378),
(102990, '', 1, NULL, NULL, NULL, 'analogy/resource/napoleone.png', 0.8913232165194633),
(102991, '', 1, NULL, NULL, NULL, 'analogy/resource/obama.png', 0.7879482347417378),
(102992, '', 2, NULL, NULL, NULL, 'analogy/resource/freddie.png', 0.7879382347417379),
(102993, '', 2, NULL, NULL, NULL, 'analogy/resource/morello.png', 0.7879282347417378),
(102994, '', 2, NULL, NULL, NULL, 'analogy/resource/calcutta.png', 0.7879182347417378),
(102995, '', 2, NULL, NULL, NULL, 'analogy/resource/genesis.png', 0.7879082347417378),
(102996, '', 2, NULL, NULL, NULL, 'analogy/resource/daftPunk.png', 0.7879472347417378),
(102997, '', 2, NULL, NULL, NULL, 'analogy/resource/beatles.png', 0.7879462347417377),
(102998, '', 2, NULL, NULL, NULL, 'analogy/resource/eminem.png', 0.7879452347417378),
(102999, '', 2, NULL, NULL, NULL, 'analogy/resource/beethoven.png', 0.7879442347417378),
(103000, '', 2, NULL, NULL, NULL, 'analogy/resource/pinkFloyd.png', 0.7879432347417378),
(103001, '', 2, NULL, NULL, NULL, 'analogy/resource/armstrong.png', 0.7879422347417377);

-- --------------------------------------------------------

--
-- Struttura della tabella `resource_has_topic`
--

CREATE TABLE `resource_has_topic` (
  `id` int(11) NOT NULL,
  `idResource` int(11) NOT NULL,
  `idTopic` int(11) NOT NULL,
  `score` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource_has_topic`
--

INSERT INTO `resource_has_topic` (`id`, `idResource`, `idTopic`, `score`, `timestamp`) VALUES
(143392, 76349, 6, 0, '2017-06-12 13:07:11'),
(147046, 76871, 6, 0, '2017-06-12 13:09:43'),
(170384, 80205, 6, 0, '2017-06-12 17:04:54'),
(194086, 83591, 6, 0, '2017-06-12 19:58:59'),
(225068, 88017, 6, 0, '2017-06-13 02:08:29'),
(260614, 93095, 6, 0, '2017-06-13 09:57:33'),
(288004, 97008, 6, 0, '2017-06-16 16:37:55'),
(304370, 99346, 6, 0.0919699, '2018-07-15 12:27:04'),
(316676, 101104, 6, 0, '2017-06-28 07:41:36'),
(329766, 102974, 6, 0.25, '2018-07-15 12:08:14'),
(329800, 102977, 6, 0.375804, '2018-07-17 08:14:29'),
(329801, 102976, 9, 0.251608, '2018-07-14 11:37:33'),
(329802, 102976, 10, 0.0462806, '2018-07-13 01:51:10'),
(329803, 102976, 11, 0.43394, '2018-07-11 09:56:25'),
(329804, 102976, 2, 0.330114, '2018-07-15 12:29:24'),
(329805, 102976, 12, 0.104417, '2018-07-17 08:01:26'),
(329806, 102976, 6, 0.717774, '2018-07-17 08:07:19'),
(329814, 102977, 14, 0, '2018-07-17 08:08:36'),
(329815, 102977, 13, 0.426607, '2018-07-17 08:28:01'),
(329816, 102977, 14, 0, '2018-07-17 08:08:39'),
(329817, 102977, 15, 0.0919699, '2018-07-16 13:50:01'),
(329818, 102977, 16, 0.34197, '2018-07-17 08:10:44'),
(329819, 102977, 17, 0, '2018-07-13 01:48:50'),
(329820, 102983, 18, 0.717774, '2018-07-17 08:28:27'),
(329821, 102983, 19, 0.217774, '2018-07-17 08:01:26'),
(329822, 102983, 20, 0, '2018-07-13 03:22:34'),
(329823, 102983, 21, 0, '2018-07-13 03:22:34'),
(329824, 102983, 22, 0, '2018-07-13 03:22:49'),
(329825, 102983, 6, 0.343578, '2018-07-17 08:11:23'),
(329826, 102990, 23, 0, '2018-07-13 03:30:11'),
(329827, 102990, 24, 0.25, '2018-07-15 12:29:24'),
(329828, 102990, 25, 0.25, '2018-07-15 12:08:14'),
(329829, 102990, 26, 0.0338338, '2018-07-13 03:38:43'),
(329830, 102990, 27, 0, '2018-07-13 03:30:35'),
(329831, 102990, 6, 0, '2018-07-13 03:30:35'),
(329832, 102982, 28, 0.730221, '2018-07-17 08:28:01'),
(329833, 102982, 29, 0, '2018-07-17 08:08:41'),
(329834, 102982, 30, 0.25, '2018-07-14 02:21:00'),
(329835, 102982, 31, 0.0462806, '2018-07-14 03:33:56'),
(329836, 102982, 32, 0.559744, '2018-07-17 08:10:44'),
(329837, 102982, 6, 0.217774, '2018-07-17 08:06:48'),
(329838, 102991, 9, 0.13825, '2018-07-17 08:10:08'),
(329839, 102991, 10, 0, '2018-07-17 08:08:29'),
(329840, 102991, 11, 0.0124468, '2018-07-14 01:17:18'),
(329841, 102991, 33, 0, '2018-07-13 07:45:30'),
(329842, 102991, 34, 0.0124468, '2018-07-14 03:25:58'),
(329843, 102991, 6, 0.61788, '2018-07-17 08:27:31'),
(329844, 102985, 35, 0.18394, '2018-07-17 08:06:48'),
(329845, 102985, 36, 0.52591, '2018-07-17 08:00:53'),
(329846, 102985, 37, 0.0462806, '2018-07-14 11:19:06'),
(329847, 102985, 38, 0.125804, '2018-07-16 17:04:52'),
(329848, 102985, 39, 0.375804, '2018-07-17 08:14:29'),
(329849, 102985, 6, 0.23022, '2018-07-17 08:28:01'),
(329850, 102986, 40, 0.159637, '2018-07-17 08:00:53'),
(329851, 102986, 41, 0.401714, '2018-07-17 08:28:27'),
(329852, 102986, 42, 0, '2018-07-13 08:09:50'),
(329853, 102986, 43, 0.25, '2018-07-16 11:10:45'),
(329854, 102986, 44, 0.550803, '2018-07-17 08:15:01'),
(329855, 102986, 6, 0.283834, '2018-07-16 11:49:45'),
(329856, 102988, 45, 0.43394, '2018-07-17 08:11:23'),
(329857, 102988, 46, 0.25, '2018-07-15 12:08:14'),
(329858, 102988, 47, 0.0338338, '2018-07-14 11:37:33'),
(329859, 102988, 48, 0.25, '2018-07-16 11:49:45'),
(329860, 102988, 49, 0, '2018-07-13 08:16:33'),
(329861, 102988, 6, 0.125804, '2018-07-17 08:07:19'),
(329862, 102987, 50, 0.0462806, '2018-07-14 03:33:56'),
(329863, 102987, 51, 0.0919699, '2018-07-15 12:27:33'),
(329864, 102987, 9, 0.23022, '2018-07-17 08:28:01'),
(329865, 102987, 11, 0.0124468, '2018-07-14 03:25:58'),
(329866, 102987, 2, 0, '2018-07-17 08:08:20'),
(329867, 102987, 6, 0.18394, '2018-07-17 08:14:29'),
(329868, 102984, 52, 0.559744, '2018-07-17 08:15:01'),
(329869, 102984, 53, 0, '2018-07-13 08:28:34'),
(329870, 102984, 54, 0.0338338, '2018-07-14 11:37:33'),
(329871, 102984, 55, 0.0919699, '2018-07-15 13:16:58'),
(329872, 102984, 56, 0.375804, '2018-07-17 07:57:06'),
(329873, 102984, 6, 0.18394, '2018-07-17 08:28:27'),
(329874, 102989, 57, 0.538357, '2018-07-17 08:27:31'),
(329875, 102989, 58, 0.0919699, '2018-07-17 08:14:03'),
(329876, 102989, 59, 0, '2018-07-13 08:36:31'),
(329877, 102989, 60, 0.0124468, '2018-07-14 01:17:18'),
(329878, 102989, 61, 0, '2018-07-13 08:36:44'),
(329879, 102989, 6, 0.409637, '2018-07-15 13:16:02'),
(329880, 102981, 57, 0.627412, '2018-07-17 08:15:01'),
(329881, 102981, 58, 0.0248936, '2018-07-14 03:34:34'),
(329882, 102981, 59, 0, '2018-07-13 08:44:23'),
(329883, 102981, 60, 0.0919699, '2018-07-15 12:07:13'),
(329884, 102981, 61, 0.18394, '2018-07-17 08:28:27'),
(329885, 102981, 6, 0.18394, '2018-07-17 08:01:26'),
(329886, 102993, 15, 0.68394, '2018-07-15 12:14:47'),
(329887, 102993, 67, 0.68394, '2018-07-17 08:13:41'),
(329888, 102993, 68, 0, '2018-07-15 04:09:12'),
(329889, 102993, 69, 0.0919699, '2018-07-17 08:10:08'),
(329890, 102993, 70, 0.34197, '2018-07-16 16:58:45'),
(329891, 102993, 6, 0.27591, '2018-07-17 08:27:05'),
(329892, 102992, 71, 0.80182, '2018-07-17 08:27:05'),
(329893, 102992, 72, 0.77591, '2018-07-15 12:14:47'),
(329894, 102992, 73, 0, '2018-07-15 04:20:12'),
(329895, 102992, 74, 0.34197, '2018-07-16 12:15:26'),
(329896, 102992, 75, 0.0919699, '2018-07-17 08:13:41'),
(329897, 102992, 6, 0, '2018-07-17 08:08:27'),
(329898, 102994, 76, 0.0919699, '2018-07-15 12:03:21'),
(329899, 102994, 77, 0.27591, '2018-07-15 11:59:49'),
(329900, 102994, 78, 0.18394, '2018-07-15 11:56:41'),
(329901, 102994, 79, 0.5, '2018-07-15 12:14:47'),
(329902, 102994, 80, 0, '2018-07-15 04:26:21'),
(329903, 102994, 6, 2, '2018-07-15 12:18:25'),
(329904, 102995, 81, 0.0919699, '2018-07-15 11:59:49'),
(329905, 102995, 82, 0, '2018-07-17 08:08:44'),
(329906, 102995, 83, 0.25, '2018-07-15 12:14:47'),
(329907, 102995, 84, 0.0919699, '2018-07-15 11:56:41'),
(329908, 102995, 85, 0.59197, '2018-07-15 12:25:58'),
(329909, 102995, 6, 0.18394, '2018-07-17 08:27:05'),
(329910, 102996, 86, 0.25, '2018-07-15 12:01:04'),
(329911, 102996, 87, 0.125804, '2018-07-15 12:27:04'),
(329912, 102996, 88, 0, '2018-07-15 04:41:34'),
(329913, 102996, 89, 0, '2018-07-15 04:41:34'),
(329914, 102996, 90, 0.0919699, '2018-07-15 12:06:09'),
(329915, 102996, 6, 2, '2018-07-15 13:01:15'),
(329916, 102997, 91, 0.25, '2018-07-15 12:15:16'),
(329917, 102997, 92, 0, '2018-07-15 04:57:31'),
(329918, 102997, 93, 0, '2018-07-15 04:57:41'),
(329919, 102997, 94, 0, '2018-07-15 04:57:41'),
(329920, 102997, 95, 0, '2018-07-15 12:12:45'),
(329921, 102997, 6, 2, '2018-07-15 12:18:02'),
(329922, 102998, 96, 0, '2018-07-15 05:03:04'),
(329923, 102998, 97, 0, '2018-07-17 08:12:11'),
(329924, 102998, 98, 0, '2018-07-15 05:03:16'),
(329925, 102998, 99, 0, '2018-07-15 05:03:16'),
(329926, 102998, 100, 0.375804, '2018-07-17 08:27:31'),
(329927, 102998, 6, 0.18394, '2018-07-15 12:27:04'),
(329928, 102999, 101, 0.61788, '2018-07-17 08:14:03'),
(329929, 102999, 102, 0.84197, '2018-07-17 08:27:31'),
(329930, 102999, 103, 0, '2018-07-15 05:08:40'),
(329931, 102999, 104, 0.0919699, '2018-07-17 08:00:53'),
(329932, 102999, 105, 0.59197, '2018-07-17 08:06:48'),
(329933, 102999, 6, 0.467774, '2018-07-17 07:56:33'),
(329934, 103000, 93, 0.18394, '2018-07-17 08:27:05'),
(329935, 103000, 106, 0, '2018-07-15 05:18:08'),
(329936, 103000, 107, 0, '2018-07-15 12:02:07'),
(329937, 103000, 108, 0, '2018-07-15 12:02:05'),
(329938, 103000, 109, 0.5, '2018-07-15 12:05:37'),
(329939, 103000, 6, 0.0919699, '2018-07-17 08:10:08'),
(329940, 103001, 110, 0, '2018-07-15 12:12:57'),
(329941, 103001, 111, 0.25, '2018-07-15 12:14:47'),
(329942, 103001, 112, 0, '2018-07-15 05:25:48'),
(329943, 103001, 113, 0, '2018-07-15 05:25:48'),
(329944, 103001, 114, 0, '2018-07-15 05:25:59'),
(329945, 103001, 6, 2, '2018-07-15 12:17:49');

-- --------------------------------------------------------

--
-- Struttura della tabella `round`
--

CREATE TABLE `round` (
  `idRound` int(11) NOT NULL,
  `startRound` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endRound` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idUser` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `round`
--

INSERT INTO `round` (`idRound`, `startRound`, `endRound`, `idUser`, `score`) VALUES
(1, '2018-07-16 16:58:12', '2018-07-16 16:58:45', 1, 200),
(2, '2018-07-16 16:58:46', '2018-07-16 16:59:57', 1, 0),
(3, '2018-07-16 17:03:10', '2018-07-16 17:03:36', 1, 0),
(4, '2018-07-16 17:03:38', '0000-00-00 00:00:00', 1, 0),
(5, '2018-07-16 17:04:00', '2018-07-16 17:04:23', 2, 300),
(6, '2018-07-16 17:04:24', '2018-07-16 17:04:52', 2, 50),
(7, '2018-07-16 17:04:53', '2018-07-16 17:05:22', 2, 0),
(8, '2018-07-16 17:05:23', '0000-00-00 00:00:00', 2, 0),
(9, '2018-07-17 07:56:02', '2018-07-17 07:56:33', 1, 50),
(10, '2018-07-17 07:56:35', '2018-07-17 07:57:06', 1, 0),
(11, '2018-07-17 07:57:09', '0000-00-00 00:00:00', 1, 0),
(12, '2018-07-17 08:00:18', '2018-07-17 08:00:53', 1, 50),
(13, '2018-07-17 08:00:54', '2018-07-17 08:01:26', 1, 0),
(14, '2018-07-17 08:01:27', '0000-00-00 00:00:00', 1, 0),
(15, '2018-07-17 08:04:48', '0000-00-00 00:00:00', 1, 0),
(16, '2018-07-17 08:06:14', '2018-07-17 08:06:48', 2, 0),
(17, '2018-07-17 08:06:50', '2018-07-17 08:07:19', 2, 0),
(18, '2018-07-17 08:07:20', '0000-00-00 00:00:00', 2, 0),
(19, '2018-07-17 08:09:38', '2018-07-17 08:10:08', 1, 50),
(20, '2018-07-17 08:10:09', '2018-07-17 08:10:44', 1, 50),
(21, '2018-07-17 08:10:45', '2018-07-17 08:11:22', 1, 50),
(22, '2018-07-17 08:11:24', '0000-00-00 00:00:00', 1, 0),
(23, '2018-07-17 08:13:15', '2018-07-17 08:13:41', 1, 0),
(24, '2018-07-17 08:13:42', '2018-07-17 08:14:03', 1, 0),
(25, '2018-07-17 08:14:04', '2018-07-17 08:14:29', 1, 50),
(26, '2018-07-17 08:14:30', '2018-07-17 08:15:01', 1, 50),
(27, '2018-07-17 08:23:43', '0000-00-00 00:00:00', 1, 0),
(28, '2018-07-17 08:26:39', '2018-07-17 08:27:05', 1, 0),
(29, '2018-07-17 08:27:06', '2018-07-17 08:27:31', 1, 50),
(30, '2018-07-17 08:27:34', '2018-07-17 08:28:01', 1, 50),
(31, '2018-07-17 08:28:03', '2018-07-17 08:28:27', 1, 100);

-- --------------------------------------------------------

--
-- Struttura della tabella `topic`
--

CREATE TABLE `topic` (
  `idTopic` int(16) NOT NULL,
  `refId` varchar(256) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `label` varchar(45) NOT NULL,
  `url` varchar(256) DEFAULT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `topic`
--

INSERT INTO `topic` (`idTopic`, `refId`, `value`, `label`, `url`, `weight`) VALUES
(1, NULL, 'black', 'BLACK_DESCRIPTION', NULL, 0.016),
(2, NULL, 'city', 'Matteo Salvini', 'analogy/topic/matteoSalvini.png', 0.719),
(3, NULL, 'stars', 'STARS_DESCRIPTION', NULL, 0.021),
(4, NULL, 'aurora', 'AURORA_DESCRIPTION', NULL, 0.147),
(5, NULL, 'astronaut', 'ISS_DESCRIPTION', NULL, 0.006),
(6, NULL, 'none', 'NONE_DESCRIPTION', 'analogy/topic/none.png', 0.091),
(7, NULL, '404', 'NO_PHOTO_DESCRIPTION', NULL, NULL),
(8, NULL, 'unknown', 'I_DONT_KNOW_DESCRIPTION', NULL, NULL),
(9, NULL, 'silvio', 'Silvio Berlusconi', 'analogy/topic/silvioBerlusconi.png', 0.5),
(10, NULL, 'Mattarella', 'Sergio Mattarella', 'analogy/topic/sergioMattarella.png', 0.3),
(11, NULL, 'Renzi', 'Matteo Renzi', 'analogy/topic/matteoRenzi.png', 0.5),
(12, NULL, 'Gentiloni', 'Paolo Gentiloni', 'analogy/topic/paoloGentiloni.png', 0.4),
(13, NULL, NULL, 'David Bowie', 'analogy/topic/bowie.png', 0.3),
(14, NULL, NULL, 'Elvis Presley', 'analogy/topic/elvis.png', 0.3),
(15, NULL, NULL, 'Jimi Hendrix', 'analogy/topic/hendrix.png', 0.3),
(16, NULL, NULL, 'Mick Jagger', 'analogy/topic/jagger.png', 0.3),
(17, NULL, NULL, 'Kurt Cobain', 'analogy/topic/kurt.png', 0.3),
(18, NULL, NULL, 'I Goonies', 'analogy/topic/goonies.png', 0.3),
(19, NULL, NULL, 'Harry Potter', 'analogy/topic/harry.png', 0.3),
(20, NULL, NULL, 'Hook - Capitano uncino', 'analogy/topic/hook.png', 0.3),
(21, NULL, NULL, 'Jumanji', 'analogy/topic/jumanji.png', 0.3),
(22, NULL, NULL, 'Il signore degli anelli', 'analogy/topic/lord.png', 0.3),
(23, NULL, NULL, 'Giulio Cesare', 'analogy/topic/cesare.png', 0.3),
(24, NULL, NULL, 'Cristoforo Colombo', 'analogy/topic/colombo.png', 0.3),
(25, NULL, NULL, 'Dante Alighieri', 'analogy/topic/dante.png', 0.3),
(26, NULL, NULL, 'Giuseppe Garibaldi', 'analogy/topic/garibaldi.png', 0.3),
(27, NULL, NULL, 'Benito Mussolini', 'analogy/topic/mussolini.png', 0.3),
(28, NULL, NULL, 'William Blake', 'analogy/topic/blake.png', 0.3),
(29, NULL, NULL, 'John Milton', 'analogy/topic/milton.png', 0.3),
(30, NULL, NULL, 'George Orwell', 'analogy/topic/orwell.png', 0.3),
(31, NULL, NULL, 'William Shakespeare', 'analogy/topic/william.png', 0.3),
(32, NULL, NULL, 'William Wordsworth', 'analogy/topic/wordsworth.png', 0.3),
(33, NULL, NULL, 'Enrico Letta', 'analogy/topic/letta.png', 0.3),
(34, NULL, NULL, 'Giorgio Napolitano', 'analogy/topic/napolitano.png', 0.3),
(35, NULL, NULL, 'Alan Turing', 'analogy/topic/turing.png', 0.3),
(36, NULL, NULL, 'John Von Neumann', 'analogy/topic/von.png', 0.3),
(37, NULL, NULL, 'Steve Jobs', 'analogy/topic/jobs.png', 0.3),
(38, NULL, NULL, 'László Bíró', 'analogy/topic/biro.png', 0.3),
(39, NULL, NULL, 'Tim-Berners Lee', 'analogy/topic/tim.png', 0.3),
(40, NULL, NULL, 'Gianni Agnelli', 'analogy/topic/agnelli.png', 0.3),
(41, NULL, NULL, 'Enzo Ferrari', 'analogy/topic/ferrari.png', 0.3),
(42, NULL, NULL, 'Michele Ferrero', 'analogy/topic/ferrero.png', 0.3),
(43, NULL, NULL, 'Ferruccio Lamborghini', 'analogy/topic/lamborghini.png', 0.3),
(44, NULL, NULL, 'Renzo Piano', 'analogy/topic/piano.png', 0.3),
(45, NULL, NULL, 'Daria Bignardi', 'analogy/topic/bignardi.png', 0.3),
(46, NULL, NULL, 'Paolo Bonolis', 'analogy/topic/bonolis.png', 0.3),
(47, NULL, NULL, 'Alessandro Cattelan', 'analogy/topic/cattelan.png', 0.3),
(48, NULL, NULL, 'Fabio Fazio', 'analogy/topic/fazio.png', 0.3),
(49, NULL, NULL, 'Gerry Scotti', 'analogy/topic/scotti.png', 0.3),
(50, NULL, NULL, 'Giorgia Meloni', 'analogy/topic/meloni.png', 0.3),
(51, NULL, NULL, 'Luigi Di Maio', 'analogy/topic/diMaio.png', 0.3),
(52, NULL, NULL, 'Bashar al-Assad', 'analogy/topic/assad.png', 0.3),
(53, NULL, NULL, 'Lê Duẩn', 'analogy/topic/duan.png', 0.3),
(54, NULL, NULL, 'Kim Jong-un', 'analogy/topic/kim.png', 0.3),
(55, NULL, NULL, 'Mao Tse-tung', 'analogy/topic/mao.png', 0.3),
(56, NULL, NULL, 'Saddam Hussein', 'analogy/topic/saddam.png', 0.3),
(57, NULL, NULL, 'Niccolò Copernico', 'analogy/topic/copernico.png', 0.3),
(58, NULL, NULL, 'Galileo Galilei', 'analogy/topic/galileo.png', 0.3),
(59, NULL, NULL, 'Giovanni Keplero', 'analogy/topic/keplero.png', 0.3),
(60, NULL, NULL, 'Isaac Newton', 'analogy/topic/newton.png', 0.3),
(61, NULL, NULL, 'Blaise Pascal', 'analogy/topic/pascal.png', 0.3),
(62, NULL, NULL, 'Francesco II d’Asburgo-Lorena', 'analogy/topic/asburgo.png', 0.3),
(63, NULL, NULL, 'Adolf Hitler', 'analogy/topic/hitler.png', 0.3),
(64, NULL, NULL, 'Napoleone Bonaparte', 'analogy/topic/napoleone.png', 0.3),
(65, NULL, NULL, 'Iosif Stalin', 'analogy/topic/stalin.png', 0.3),
(66, NULL, NULL, 'Vittorio Emanuele III', 'analogy/topic/vittorio.png', 0.3),
(67, NULL, NULL, 'Eric Clapton', 'analogy/topic/clapton.png', 0.3),
(68, NULL, NULL, 'David Gilmour', 'analogy/topic/gilmour.png', 0.3),
(69, NULL, NULL, 'Jimmy Page', 'analogy/topic/page.png', 0.3),
(70, NULL, NULL, 'Carlos Santana', 'analogy/topic/santana.png', 0.3),
(71, NULL, NULL, 'John Bonham', 'analogy/topic/bonham.png', 0.3),
(72, NULL, NULL, 'Dave Grohl', 'analogy/topic/grohl.png', 0.3),
(73, NULL, NULL, 'Phil Collins', 'analogy/topic/collins.png', 0.3),
(74, NULL, NULL, 'Keith Moon', 'analogy/topic/moon.png', 0.3),
(75, NULL, NULL, 'Ringo Starr', 'analogy/topic/ringo.png', 0.3),
(76, NULL, NULL, 'Lucio Battisti', 'analogy/topic/battisti.png', 0.3),
(77, NULL, NULL, 'Tiziano Ferro', 'analogy/topic/ferro.png', 0.3),
(78, NULL, NULL, 'Gigi D\'Alessio', 'analogy/topic/gigi.png', 0.3),
(79, NULL, NULL, 'Jovanotti', 'analogy/topic/Jovanotti.png', 0.3),
(80, NULL, NULL, 'Luciano Ligabue', 'analogy/topic/ligabue.png', 0.3),
(81, NULL, NULL, 'Banco del mutuo soccorso', 'analogy/topic/banco.png', 0.3),
(82, NULL, NULL, 'Elio e le storie tese', 'analogy/topic/elio.png', 0.3),
(83, NULL, NULL, 'Le orme', 'analogy/topic/orme.png', 0.3),
(84, NULL, NULL, 'PFM', 'analogy/topic/pfm.png', 0.3),
(85, NULL, NULL, 'Pooh', 'analogy/topic/pooh.png', 0.3),
(86, NULL, NULL, 'David Guetta', 'analogy/topic/guetta.png', 0.3),
(87, NULL, NULL, 'Bob Sinclair', 'analogy/topic/sinclair.png', 0.3),
(88, NULL, NULL, 'Eiffel 65', 'analogy/topic/eiffel.png', 0.3),
(89, NULL, NULL, 'Gigi D\'Agostino', 'analogy/topic/gigidag.png', 0.3),
(90, NULL, NULL, 'Pussycat Dolls', 'analogy/topic/pussycat.png', 0.3),
(91, NULL, NULL, 'Blur', 'analogy/topic/blur.png', 0.3),
(92, NULL, NULL, 'Coldplay', 'analogy/topic/coldplay.png', 0.3),
(93, NULL, NULL, 'Metallica', 'analogy/topic/metallica.png', 0.3),
(94, NULL, NULL, 'Oasis', 'analogy/topic/oasis.png', 0.3),
(95, NULL, NULL, 'The Verve', 'analogy/topic/verve.png', 0.3),
(96, NULL, NULL, 'Caparezza', 'analogy/topic/caparezza.png', 0.3),
(97, NULL, NULL, 'Fabri Fibra', 'analogy/topic/fabri.png', 0.3),
(98, NULL, NULL, 'Fedez', 'analogy/topic/fedez.png', 0.3),
(99, NULL, NULL, 'J-Ax', 'analogy/topic/jax.png', 0.3),
(100, NULL, NULL, 'Fabio Rovazzi', 'analogy/topic/rovazzi.png', 0.3),
(101, NULL, NULL, 'Bob Dylan', 'analogy/topic/dylan.png', 0.3),
(102, NULL, NULL, 'Paul McCartney', 'analogy/topic/mccartney.png', 0.3),
(103, NULL, NULL, 'Jim Morrison', 'analogy/topic/morrison.png', 0.3),
(104, NULL, NULL, 'Roger Waters', 'analogy/topic/waters.png', 0.3),
(105, NULL, NULL, 'Frank Zappa', 'analogy/topic/zappa.png', 0.3),
(106, NULL, NULL, 'The Kiss', 'analogy/topic/kiss.png', 0.3),
(107, NULL, NULL, 'Iron Maiden', 'analogy/topic/maiden.png', 0.3),
(108, NULL, NULL, 'Pantera', 'analogy/topic/pantera.png', 0.3),
(109, NULL, NULL, 'Motorhead', 'analogy/topic/motorhead.png', 0.3),
(110, NULL, NULL, 'Chick Corea', 'analogy/topic/corea.png', 0.3),
(111, NULL, NULL, 'Keith Emerson', 'analogy/topic/emerson.png', 0.3),
(112, NULL, NULL, 'Herbie Hancock', 'analogy/topic/hancock.png', 0.3),
(113, NULL, NULL, 'Jon Lord', 'analogy/topic/jlord.png', 0.3),
(114, NULL, NULL, 'Jordan Rudess', 'analogy/topic/rudess.png', 0.3);

-- --------------------------------------------------------

--
-- Struttura della tabella `true_response`
--

CREATE TABLE `true_response` (
  `idRound` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `idTopicTrue` int(11) NOT NULL,
  `isGT` bit(1) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `consecutiveAnswer` int(11) NOT NULL DEFAULT '-1',
  `nErrors` int(11) NOT NULL DEFAULT '0',
  `nGTErrors` int(11) NOT NULL DEFAULT '0',
  `played` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `true_response`
--

INSERT INTO `true_response` (`idRound`, `level`, `idTopicTrue`, `isGT`, `score`, `consecutiveAnswer`, `nErrors`, `nGTErrors`, `played`) VALUES
(16, 1, 32, b'0', 0, -1, 1, 0, b'1'),
(16, 2, 6, b'0', 0, -1, 2, 0, b'1'),
(16, 3, 36, b'0', 0, -1, 3, 0, b'1'),
(16, 4, 102, b'0', 0, -1, 4, 0, b'1'),
(16, 5, 6, b'1', 0, -1, 5, 1, b'1'),
(16, 6, 17, b'0', 0, -1, 6, 1, b'1'),
(17, 1, 54, b'0', 0, -1, 1, 0, b'1'),
(17, 2, 22, b'0', 0, -1, 2, 0, b'1'),
(17, 3, 6, b'1', 0, -1, 3, 1, b'1'),
(17, 4, 58, b'0', 0, -1, 4, 1, b'1'),
(17, 5, 9, b'0', 0, -1, 5, 1, b'1'),
(17, 6, 45, b'0', 0, -1, 6, 1, b'1'),
(19, 1, 71, b'0', 50, 0, 0, 0, b'1'),
(19, 2, 104, b'0', 50, -1, 1, 0, b'1'),
(19, 3, 108, b'0', 50, -1, 2, 0, b'1'),
(19, 4, 67, b'0', 50, -1, 3, 0, b'1'),
(19, 5, 6, b'1', 50, -1, 4, 1, b'1'),
(19, 6, 10, b'0', 50, -1, 5, 1, b'1'),
(20, 1, 61, b'0', 0, -1, 1, 0, b'1'),
(20, 2, 11, b'0', 0, -1, 2, 0, b'1'),
(20, 3, 13, b'0', 0, -1, 3, 0, b'1'),
(20, 4, 38, b'0', 0, -1, 4, 0, b'1'),
(20, 5, 6, b'1', 0, -1, 5, 1, b'1'),
(20, 6, 32, b'0', 50, 0, 5, 1, b'1'),
(21, 1, 47, b'0', 0, -1, 1, 0, b'1'),
(21, 2, 6, b'1', 0, -1, 2, 1, b'1'),
(21, 3, 18, b'0', 0, -1, 3, 1, b'1'),
(21, 4, 43, b'0', 0, -1, 4, 1, b'1'),
(21, 5, 52, b'0', 50, 0, 4, 1, b'1'),
(21, 6, 60, b'0', 50, -1, 5, 1, b'1'),
(23, 1, 82, b'0', 0, -1, 1, 0, b'1'),
(23, 2, 69, b'0', 0, -1, 2, 0, b'1'),
(23, 3, 6, b'0', 0, -1, 3, 0, b'1'),
(23, 4, 6, b'0', 0, -1, 4, 0, b'1'),
(23, 5, 6, b'1', 0, -1, 5, 1, b'1'),
(24, 1, 10, b'0', 0, -1, 1, 0, b'1'),
(24, 2, 6, b'1', 0, -1, 2, 1, b'1'),
(24, 3, 99, b'0', 0, -1, 3, 1, b'1'),
(24, 4, 6, b'0', 0, -1, 4, 1, b'1'),
(24, 5, 59, b'0', 0, -1, 5, 1, b'1'),
(25, 1, 16, b'0', 0, -1, 1, 0, b'1'),
(25, 2, 6, b'0', 50, 0, 1, 0, b'1'),
(25, 3, 35, b'0', 50, -1, 2, 0, b'1'),
(25, 4, 6, b'1', 50, -1, 3, 1, b'1'),
(25, 5, 30, b'0', 50, -1, 4, 1, b'1'),
(26, 1, 6, b'1', 50, 0, 0, 0, b'1'),
(26, 2, 20, b'0', 50, -1, 1, 0, b'1'),
(26, 3, 41, b'0', 50, -1, 2, 0, b'1'),
(26, 4, 56, b'0', 50, -1, 3, 0, b'1'),
(26, 5, 6, b'0', 50, -1, 4, 0, b'1'),
(27, 1, 6, b'1', 0, -1, 0, 0, b'0'),
(27, 2, 71, b'0', 0, -1, 0, 0, b'0'),
(27, 3, 106, b'0', 0, -1, 0, 0, b'0'),
(27, 4, 6, b'0', 0, -1, 0, 0, b'0'),
(27, 5, 85, b'0', 0, -1, 0, 0, b'0'),
(28, 1, 81, b'0', 0, -1, 1, 0, b'1'),
(28, 2, 6, b'0', 0, -1, 2, 0, b'1'),
(28, 3, 15, b'0', 0, -1, 3, 0, b'1'),
(28, 4, 6, b'1', 0, -1, 4, 1, b'1'),
(28, 5, 109, b'0', 0, -1, 5, 1, b'1'),
(29, 1, 34, b'0', 0, -1, 1, 0, b'1'),
(29, 2, 58, b'0', 0, -1, 2, 0, b'1'),
(29, 3, 103, b'0', 0, -1, 3, 0, b'1'),
(29, 4, 96, b'0', 0, -1, 4, 0, b'1'),
(29, 5, 6, b'1', 50, 0, 4, 0, b'1'),
(30, 1, 6, b'1', 0, -1, 1, 1, b'1'),
(30, 2, 6, b'0', 0, -1, 2, 1, b'1'),
(30, 3, 16, b'0', 0, -1, 3, 1, b'1'),
(30, 4, 36, b'0', 0, -1, 4, 1, b'1'),
(30, 5, 9, b'0', 50, 0, 4, 1, b'1'),
(31, 1, 21, b'0', 0, -1, 1, 0, b'1'),
(31, 2, 6, b'1', 0, -1, 2, 1, b'1'),
(31, 3, 6, b'0', 50, 0, 2, 1, b'1'),
(31, 4, 43, b'0', 50, -1, 3, 1, b'1'),
(31, 5, 61, b'0', 100, 0, 3, 1, b'1');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `idUser` int(16) NOT NULL,
  `firstName` varchar(256) NOT NULL,
  `lastName` varchar(256) NOT NULL,
  `life_play` int(11) NOT NULL DEFAULT '0',
  `idSocial` varchar(256) NOT NULL,
  `social` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `cover` varchar(256) DEFAULT NULL,
  `thumbnail` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`idUser`, `firstName`, `lastName`, `life_play`, `idSocial`, `social`, `name`, `cover`, `thumbnail`) VALUES
(1, 'GUEST', '', 102444, '::1', 'anonymous', '', '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_has_badge`
--

CREATE TABLE `user_has_badge` (
  `idUser` int(16) NOT NULL,
  `idBadge` int(16) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dump dei dati per la tabella `user_has_badge`
--

INSERT INTO `user_has_badge` (`idUser`, `idBadge`, `timestamp`) VALUES
(1, 2, '2018-07-17 08:14:29'),
(1, 5, '2018-07-17 08:13:41'),
(1, 9, '2018-07-17 08:10:08'),
(2, 5, '2018-07-17 08:06:48'),
(2, 9, '2018-07-17 08:06:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_reputation`
--

CREATE TABLE `user_reputation` (
  `idUser` int(16) NOT NULL,
  `idRound` int(11) NOT NULL,
  `reputation` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user_reputation`
--

INSERT INTO `user_reputation` (`idUser`, `idRound`, `reputation`) VALUES
(1, 19, 0.367879),
(1, 20, 0.367879),
(1, 21, 0.367879),
(1, 23, 0.367879),
(1, 24, 0.367879),
(1, 25, 0.367879),
(1, 26, 1),
(1, 28, 0.367879),
(1, 29, 1),
(1, 30, 0.367879),
(1, 31, 0.367879),
(2, 16, 0.367879),
(2, 17, 0.367879);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`idBadge`);

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indici per le tabelle `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`idParameters`);

--
-- Indici per le tabelle `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`idLeaderboard`);

--
-- Indici per le tabelle `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`idlevel`);

--
-- Indici per le tabelle `logging`
--
ALTER TABLE `logging`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_idResource` (`idResource`);

--
-- Indici per le tabelle `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`idResource`),
  ADD KEY `idx_resource_refId` (`refId`);

--
-- Indici per le tabelle `resource_has_topic`
--
ALTER TABLE `resource_has_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `round`
--
ALTER TABLE `round`
  ADD PRIMARY KEY (`idRound`);

--
-- Indici per le tabelle `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`idTopic`);

--
-- Indici per le tabelle `true_response`
--
ALTER TABLE `true_response`
  ADD PRIMARY KEY (`idRound`,`level`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indici per le tabelle `user_has_badge`
--
ALTER TABLE `user_has_badge`
  ADD UNIQUE KEY `idUser` (`idUser`,`idBadge`);

--
-- Indici per le tabelle `user_reputation`
--
ALTER TABLE `user_reputation`
  ADD PRIMARY KEY (`idUser`,`idRound`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `badge`
--
ALTER TABLE `badge`
  MODIFY `idBadge` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `configuration`
--
ALTER TABLE `configuration`
  MODIFY `idParameters` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `idLeaderboard` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `level`
--
ALTER TABLE `level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `logging`
--
ALTER TABLE `logging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT per la tabella `resource`
--
ALTER TABLE `resource`
  MODIFY `idResource` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103002;

--
-- AUTO_INCREMENT per la tabella `resource_has_topic`
--
ALTER TABLE `resource_has_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329946;

--
-- AUTO_INCREMENT per la tabella `round`
--
ALTER TABLE `round`
  MODIFY `idRound` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT per la tabella `topic`
--
ALTER TABLE `topic`
  MODIFY `idTopic` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
