-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Lug 19, 2018 alle 16:35
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
(1, 0.875, NULL, 0.25, NULL, 6, 1, 50, 50, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `leaderboard`
--

CREATE TABLE `leaderboard` (
  `idLeaderboard` int(16) NOT NULL,
  `idUser` int(16) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
(102976, '', 1, 'trump', NULL, NULL, 'analogy/resource/trump.png', 0.8903262165194633),
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
(103001, '', 2, NULL, NULL, NULL, 'analogy/resource/armstrong.png', 0.7879422347417377),
(103038, '', 3, NULL, NULL, NULL, 'analogy/resource/2001.png', 0.7779432347417378),
(103039, '', 3, NULL, NULL, NULL, 'analogy/resource/arancia.png', 0.7778432347417378),
(103040, '', 3, NULL, NULL, NULL, 'analogy/resource/diCaprio.png', 0.7776432347417378),
(103041, '', 3, NULL, NULL, NULL, 'analogy/resource/dirty.png', 0.7775432347417378),
(103042, '', 3, NULL, NULL, NULL, 'analogy/resource/jolie.png', 0.7775432347417378),
(103043, '', 3, NULL, NULL, NULL, 'analogy/resource/pulp.png', 0.7773432347417378),
(103044, '', 3, NULL, NULL, NULL, 'analogy/resource/spielberg.png', 0.7772432347417378),
(103045, '', 3, NULL, NULL, NULL, 'analogy/resource/tarantino.png', 0.7771432347417379),
(103046, '', 3, NULL, NULL, NULL, 'analogy/resource/trono.png', 0.7770432347417378),
(103047, '', 3, NULL, NULL, NULL, 'analogy/resource/williams.png', 0.7779432348417378),
(103048, '', 2, 'SPECIAL', NULL, NULL, 'analogy/resource/argento.png', 0.8079482347417377),
(103049, '', 3, 'SPECIAL', NULL, NULL, 'analogy/resource/beethovenT.png', 0.8079482347417376),
(103050, '', 3, 'SPECIAL', NULL, NULL, 'analogy/resource/gigidAg.png', 0.8079482347417375),
(103051, '', 1, 'SPECIAL', NULL, NULL, 'analogy/resource/hendrix.png', 0.8079482347417374),
(103052, '', 1, 'SPECIAL', NULL, NULL, 'analogy/resource/jacksonT.png', 0.8079482347417373),
(103053, '', 2, 'SPECIAL', NULL, NULL, 'analogy/resource/kant.png', 0.8079482347417372);

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
(304370, 99346, 6, 0, '2018-07-19 14:25:48'),
(316676, 101104, 6, 0, '2017-06-28 07:41:36'),
(329766, 102974, 6, 0, '2018-07-19 14:25:48'),
(329800, 102977, 6, 0, '2018-07-19 14:25:48'),
(329801, 102976, 9, 0, '2018-07-19 14:25:48'),
(329802, 102976, 10, 0, '2018-07-19 14:25:48'),
(329803, 102976, 11, 0, '2018-07-19 14:25:48'),
(329804, 102976, 2, 0, '2018-07-19 14:25:48'),
(329805, 102976, 12, 0, '2018-07-19 14:25:48'),
(329806, 102976, 6, 0, '2018-07-19 07:50:44'),
(329814, 102977, 14, 0, '2018-07-17 08:08:36'),
(329815, 102977, 13, 0, '2018-07-19 14:22:53'),
(329816, 102977, 14, 0, '2018-07-17 08:08:39'),
(329817, 102977, 15, 0, '2018-07-19 14:25:48'),
(329818, 102977, 16, 0, '2018-07-19 14:25:48'),
(329819, 102977, 17, 0, '2018-07-13 01:48:50'),
(329820, 102983, 18, 0, '2018-07-19 14:25:48'),
(329821, 102983, 19, 0, '2018-07-19 14:25:48'),
(329822, 102983, 20, 0, '2018-07-13 03:22:34'),
(329823, 102983, 21, 0, '2018-07-13 03:22:34'),
(329824, 102983, 22, 0, '2018-07-19 14:25:48'),
(329825, 102983, 6, 0, '2018-07-19 14:25:48'),
(329826, 102990, 23, 0, '2018-07-19 14:25:48'),
(329827, 102990, 24, 0, '2018-07-19 14:25:48'),
(329828, 102990, 25, 0, '2018-07-19 14:25:48'),
(329829, 102990, 26, 0, '2018-07-19 14:25:48'),
(329830, 102990, 27, 0, '2018-07-19 14:25:48'),
(329831, 102990, 6, 0, '2018-07-13 03:30:35'),
(329832, 102982, 28, 0, '2018-07-19 07:51:30'),
(329833, 102982, 29, 0, '2018-07-19 14:25:48'),
(329834, 102982, 30, 0, '2018-07-19 14:25:48'),
(329835, 102982, 31, 0, '2018-07-19 14:31:54'),
(329836, 102982, 32, 0, '2018-07-19 14:25:48'),
(329837, 102982, 6, 0, '2018-07-19 14:25:48'),
(329838, 102991, 9, 0, '2018-07-19 14:25:48'),
(329839, 102991, 10, 0, '2018-07-19 14:22:51'),
(329840, 102991, 11, 0, '2018-07-19 14:25:48'),
(329841, 102991, 33, 0, '2018-07-19 14:25:48'),
(329842, 102991, 34, 0, '2018-07-19 14:32:04'),
(329843, 102991, 6, 0, '2018-07-19 14:25:48'),
(329844, 102985, 35, 0, '2018-07-19 14:22:49'),
(329845, 102985, 36, 0, '2018-07-19 14:25:48'),
(329846, 102985, 37, 0, '2018-07-19 14:25:48'),
(329847, 102985, 38, 0, '2018-07-19 14:25:48'),
(329848, 102985, 39, 0, '2018-07-19 14:32:07'),
(329849, 102985, 6, 0, '2018-07-19 14:25:48'),
(329850, 102986, 40, 0, '2018-07-19 14:22:45'),
(329851, 102986, 41, 0, '2018-07-19 14:25:48'),
(329852, 102986, 42, 0, '2018-07-19 14:25:48'),
(329853, 102986, 43, 0, '2018-07-19 14:25:48'),
(329854, 102986, 44, 0, '2018-07-19 14:25:48'),
(329855, 102986, 6, 0, '2018-07-19 14:25:48'),
(329856, 102988, 45, 0, '2018-07-17 09:56:55'),
(329857, 102988, 46, 0, '2018-07-19 14:22:57'),
(329858, 102988, 47, 0, '2018-07-19 14:25:48'),
(329859, 102988, 48, 0, '2018-07-19 14:25:48'),
(329860, 102988, 49, 0, '2018-07-19 14:25:48'),
(329861, 102988, 6, 0, '2018-07-19 14:25:48'),
(329862, 102987, 50, 0, '2018-07-19 14:32:01'),
(329863, 102987, 51, 0, '2018-07-19 14:25:48'),
(329864, 102987, 9, 0, '2018-07-19 14:25:48'),
(329865, 102987, 11, 0, '2018-07-19 14:25:48'),
(329866, 102987, 2, 0, '2018-07-19 14:25:48'),
(329867, 102987, 6, 0, '2018-07-19 14:25:48'),
(329868, 102984, 52, 0, '2018-07-19 14:25:48'),
(329869, 102984, 53, 0, '2018-07-19 14:25:48'),
(329870, 102984, 54, 0, '2018-07-19 14:25:48'),
(329871, 102984, 55, 0, '2018-07-19 14:25:48'),
(329872, 102984, 56, 0, '2018-07-19 14:22:41'),
(329873, 102984, 6, 0, '2018-07-19 14:25:48'),
(329874, 102989, 57, 0, '2018-07-19 14:22:47'),
(329875, 102989, 58, 0, '2018-07-19 14:31:58'),
(329876, 102989, 59, 0, '2018-07-19 14:25:48'),
(329877, 102989, 60, 0, '2018-07-19 14:25:48'),
(329878, 102989, 61, 0, '2018-07-19 14:25:48'),
(329879, 102989, 6, 0, '2018-07-19 14:22:54'),
(329880, 102981, 57, 0, '2018-07-19 14:25:48'),
(329881, 102981, 58, 0, '2018-07-19 14:22:52'),
(329882, 102981, 59, 0, '2018-07-19 14:25:48'),
(329883, 102981, 60, 0, '2018-07-19 14:25:48'),
(329884, 102981, 61, 0, '2018-07-19 14:25:48'),
(329885, 102981, 6, 0, '2018-07-19 14:25:48'),
(329886, 102993, 15, 0, '2018-07-19 14:25:48'),
(329887, 102993, 67, 0, '2018-07-17 09:56:58'),
(329888, 102993, 68, 0, '2018-07-19 14:25:48'),
(329889, 102993, 69, 0, '2018-07-19 14:25:48'),
(329890, 102993, 70, 0, '2018-07-19 14:25:48'),
(329891, 102993, 6, 0, '2018-07-19 14:25:48'),
(329892, 102992, 71, 0, '2018-07-19 14:25:48'),
(329893, 102992, 72, 0, '2018-07-19 14:25:48'),
(329894, 102992, 73, 0, '2018-07-15 04:20:12'),
(329895, 102992, 74, 0, '2018-07-19 14:25:48'),
(329896, 102992, 75, 0, '2018-07-19 14:25:48'),
(329897, 102992, 6, 0, '2018-07-19 14:25:48'),
(329898, 102994, 76, 0, '2018-07-19 14:25:48'),
(329899, 102994, 77, 0, '2018-07-19 14:25:48'),
(329900, 102994, 78, 0, '2018-07-19 14:25:48'),
(329901, 102994, 79, 0, '2018-07-19 14:25:48'),
(329902, 102994, 80, 0, '2018-07-19 14:25:48'),
(329903, 102994, 6, 0, '2018-07-19 14:25:48'),
(329904, 102995, 81, 0, '2018-07-19 14:25:48'),
(329905, 102995, 82, 0, '2018-07-19 14:25:48'),
(329906, 102995, 83, 0, '2018-07-19 14:25:48'),
(329907, 102995, 84, 0, '2018-07-19 14:25:48'),
(329908, 102995, 85, 0, '2018-07-19 14:25:48'),
(329909, 102995, 6, 0, '2018-07-19 14:25:48'),
(329910, 102996, 86, 0, '2018-07-19 14:25:48'),
(329911, 102996, 87, 0, '2018-07-19 14:25:48'),
(329912, 102996, 88, 0, '2018-07-15 04:41:34'),
(329913, 102996, 89, 0, '2018-07-15 04:41:34'),
(329914, 102996, 90, 0, '2018-07-19 14:25:48'),
(329915, 102996, 6, 0, '2018-07-19 07:50:47'),
(329916, 102997, 91, 0, '2018-07-19 14:25:48'),
(329917, 102997, 92, 0, '2018-07-19 14:25:48'),
(329918, 102997, 93, 0, '2018-07-19 14:25:48'),
(329919, 102997, 94, 0, '2018-07-19 14:25:48'),
(329920, 102997, 95, 0, '2018-07-19 14:25:48'),
(329921, 102997, 6, 0, '2018-07-17 08:35:40'),
(329922, 102998, 96, 0, '2018-07-19 14:25:48'),
(329923, 102998, 97, 0, '2018-07-19 14:25:48'),
(329924, 102998, 98, 0, '2018-07-19 14:25:48'),
(329925, 102998, 99, 0, '2018-07-19 14:25:48'),
(329926, 102998, 100, 0, '2018-07-19 14:25:48'),
(329927, 102998, 6, 0, '2018-07-19 14:25:48'),
(329928, 102999, 101, 0, '2018-07-19 14:25:48'),
(329929, 102999, 102, 0, '2018-07-17 09:47:08'),
(329930, 102999, 103, 0, '2018-07-15 05:08:40'),
(329931, 102999, 104, 0, '2018-07-19 14:25:48'),
(329932, 102999, 105, 0, '2018-07-19 14:22:48'),
(329933, 102999, 6, 0, '2018-07-19 14:25:48'),
(329934, 103000, 93, 0, '2018-07-19 14:25:48'),
(329935, 103000, 106, 0, '2018-07-19 14:25:48'),
(329936, 103000, 107, 0, '2018-07-19 14:25:48'),
(329937, 103000, 108, 0, '2018-07-19 14:25:48'),
(329938, 103000, 109, 0, '2018-07-19 14:25:48'),
(329939, 103000, 6, 0, '2018-07-19 14:25:48'),
(329941, 103001, 111, 0, '2018-07-19 14:25:48'),
(329943, 103001, 113, 0, '2018-07-15 05:25:48'),
(329944, 103001, 114, 0, '2018-07-15 05:25:59'),
(329945, 103001, 6, 0, '2018-07-19 07:50:39'),
(329956, 103001, 110, 0, '2018-07-18 12:58:23'),
(329957, 103001, 112, 0, '2018-07-18 12:58:41'),
(330004, 103041, 170, 0, '2018-07-19 14:25:48'),
(330005, 103041, 171, 0, '2018-07-19 14:25:48'),
(330006, 103041, 172, 0, '2018-07-18 14:35:55'),
(330007, 103041, 173, 0, '2018-07-18 14:35:55'),
(330008, 103041, 174, 0, '2018-07-19 14:25:48'),
(330009, 103041, 6, 0, '2018-07-18 14:36:18'),
(330010, 103043, 175, 0, '2018-07-19 14:25:48'),
(330011, 103043, 176, 0, '2018-07-19 14:25:48'),
(330012, 103043, 177, 0, '2018-07-18 14:42:34'),
(330013, 103043, 178, 0, '2018-07-19 14:25:48'),
(330014, 103043, 179, 0, '2018-07-18 14:42:42'),
(330015, 103043, 6, 0, '2018-07-18 14:42:42'),
(330016, 103045, 180, 0, '2018-07-19 14:25:48'),
(330017, 103045, 181, 0, '2018-07-19 14:25:48'),
(330018, 103045, 182, 0, '2018-07-18 14:48:56'),
(330019, 103045, 183, 0, '2018-07-19 14:25:48'),
(330020, 103045, 184, 0, '2018-07-18 14:49:06'),
(330021, 103045, 6, 0, '2018-07-18 14:49:06'),
(330022, 103042, 185, 0, '2018-07-19 14:25:48'),
(330023, 103042, 196, 0, '2018-07-18 14:54:00'),
(330024, 103042, 187, 0, '2018-07-18 14:54:13'),
(330025, 103042, 188, 0, '2018-07-19 14:25:48'),
(330026, 103042, 189, 0, '2018-07-18 14:54:24'),
(330027, 103042, 6, 0, '2018-07-18 14:54:24'),
(330028, 103038, 190, 0, '2018-07-19 14:25:48'),
(330029, 103038, 191, 0, '2018-07-18 15:00:15'),
(330030, 103038, 192, 0, '2018-07-18 15:00:27'),
(330031, 103038, 193, 0, '2018-07-18 15:00:27'),
(330032, 103038, 194, 0, '2018-07-19 14:25:48'),
(330033, 103038, 6, 0, '2018-07-18 15:00:36'),
(330034, 103039, 195, 0, '2018-07-18 15:06:55'),
(330035, 103039, 196, 0, '2018-07-19 14:25:48'),
(330036, 103039, 197, 0, '2018-07-18 15:07:05'),
(330037, 103039, 198, 0, '2018-07-19 14:25:48'),
(330038, 103039, 199, 0, '2018-07-18 15:07:18'),
(330039, 103039, 6, 0, '2018-07-19 14:25:48'),
(330040, 103047, 200, 0, '2018-07-19 07:51:15'),
(330041, 103047, 201, 0, '2018-07-18 15:14:27'),
(330042, 103047, 202, 0, '2018-07-18 15:14:37'),
(330043, 103047, 203, 0, '2018-07-18 15:14:37'),
(330044, 103047, 204, 0, '2018-07-18 15:14:47'),
(330045, 103047, 6, 0, '2018-07-19 14:25:48'),
(330046, 103046, 205, 0, '2018-07-19 14:25:48'),
(330047, 103046, 206, 0, '2018-07-18 15:38:56'),
(330048, 103046, 207, 0, '2018-07-18 15:39:08'),
(330049, 103046, 208, 0, '2018-07-19 07:51:51'),
(330050, 103046, 209, 0, '2018-07-18 15:39:17'),
(330051, 103046, 6, 0, '2018-07-18 15:39:17'),
(330052, 103040, 210, 0, '2018-07-18 15:44:49'),
(330053, 103040, 211, 0, '2018-07-19 14:25:48'),
(330054, 103040, 212, 0, '2018-07-18 15:45:01'),
(330055, 103040, 213, 0, '2018-07-18 15:45:01'),
(330056, 103040, 214, 0, '2018-07-19 14:25:48'),
(330057, 103040, 6, 0, '2018-07-18 15:45:09'),
(330058, 103044, 215, 0, '2018-07-18 15:49:49'),
(330059, 103044, 216, 0, '2018-07-19 14:25:48'),
(330060, 103044, 217, 0, '2018-07-18 15:50:01'),
(330061, 103044, 218, 0, '2018-07-18 15:50:01'),
(330062, 103044, 219, 0, '2018-07-19 14:25:48'),
(330063, 103044, 6, 0, '2018-07-18 15:50:08'),
(330064, 103053, 102, 2, '2018-07-19 07:43:08'),
(330065, 103053, 210, 0, '2018-07-19 07:43:08'),
(330066, 103053, 183, 0, '2018-07-19 07:43:20'),
(330067, 103053, 65, 0, '2018-07-19 07:43:20'),
(330068, 103053, 184, 0, '2018-07-19 07:43:31'),
(330069, 103053, 6, 0, '2018-07-19 07:43:31'),
(330070, 103048, 15, 2, '2018-07-19 07:43:56'),
(330071, 103048, 49, 0, '2018-07-19 07:43:56'),
(330072, 103048, 63, 0, '2018-07-19 07:44:08'),
(330073, 103048, 51, 0, '2018-07-19 07:44:08'),
(330074, 103048, 61, 0, '2018-07-19 07:44:18'),
(330075, 103048, 6, 0, '2018-07-19 07:44:18'),
(330076, 103049, 216, 2, '2018-07-19 07:46:39'),
(330077, 103049, 35, 0, '2018-07-19 07:47:02'),
(330078, 103049, 2, 0, '2018-07-19 07:46:49'),
(330079, 103049, 30, 0, '2018-07-19 07:46:59'),
(330080, 103049, 42, 0, '2018-07-19 07:46:55'),
(330081, 103049, 6, 0, '2018-07-19 07:45:04'),
(330082, 103050, 212, 2, '2018-07-19 07:48:00'),
(330083, 103050, 9, 0, '2018-07-19 07:48:00'),
(330084, 103050, 58, 0, '2018-07-19 07:48:11'),
(330085, 103050, 37, 0, '2018-07-19 07:48:11'),
(330086, 103050, 59, 0, '2018-07-19 07:48:20'),
(330087, 103050, 6, 0, '2018-07-19 07:48:20'),
(330088, 103051, 41, 2, '2018-07-19 07:49:02'),
(330089, 103051, 214, 0, '2018-07-19 07:49:02'),
(330090, 103051, 185, 0, '2018-07-19 07:49:13'),
(330091, 103051, 61, 0, '2018-07-19 07:49:13'),
(330092, 103051, 50, 0, '2018-07-19 07:49:23'),
(330093, 103051, 6, 0, '2018-07-19 07:49:23'),
(330094, 103052, 10, 2, '2018-07-19 07:49:48'),
(330095, 103052, 36, 0, '2018-07-19 07:49:48'),
(330096, 103052, 43, 0, '2018-07-19 07:50:00'),
(330097, 103052, 186, 0, '2018-07-19 07:50:00'),
(330098, 103052, 213, 0, '2018-07-19 07:50:09'),
(330099, 103052, 6, 0, '2018-07-19 07:50:09');

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
(114, NULL, NULL, 'Jordan Rudess', 'analogy/topic/rudess.png', 0.3),
(170, NULL, NULL, 'Apocalypse now', 'analogy/topic/apocalypse.png', 0.3),
(171, NULL, NULL, 'Il cacciatore', 'analogy/topic/cacciatore.png', 0.3),
(172, NULL, NULL, 'Full Metal Jacket', 'analogy/topic/fullMetal.png', 0.3),
(173, NULL, NULL, 'Pearl Harbor', 'analogy/topic/pearl.png', 0.3),
(174, NULL, NULL, 'Salvate il soldato Ryan', 'analogy/topic/ryan.png', 0.3),
(175, NULL, NULL, 'The Rocky Horror picture show', 'analogy/topic/rockyh.png', 0.3),
(176, NULL, NULL, 'The Blues Brothers', 'analogy/topic/blues.png', 0.3),
(177, NULL, NULL, 'Grease', 'analogy/topic/grease.png', 0.3),
(178, NULL, NULL, 'Jesus Christ Superstar', 'analogy/topic/jesus.png', 0.3),
(179, NULL, NULL, 'Tommy', 'analogy/topic/tommy.png', 0.3),
(180, NULL, NULL, 'George Romero', 'analogy/topic/romero.png', 0.3),
(181, NULL, NULL, 'Guillermo del Toro', 'analogy/topic/delToro.png', 0.3),
(182, NULL, NULL, 'Sam Raimi', 'analogy/topic/raimi.png', 0.3),
(183, NULL, NULL, 'Dario Argento ', 'analogy/topic/argento.png', 0.3),
(184, NULL, NULL, 'Steven King', 'analogy/topic/king.png', 0.3),
(185, NULL, NULL, 'Monica Bellucci', 'analogy/topic/bellucci.png', 0.3),
(186, NULL, NULL, 'Anna Magnani', 'analogy/topic/magnani.png', 0.3),
(187, NULL, NULL, 'Asia Argento', 'analogy/topic/argentoA.png', 0.3),
(188, NULL, NULL, 'Nicoletta Braschi', 'analogy/topic/braschi.png', 0.3),
(189, NULL, NULL, 'Sophia Loren', 'analogy/topic/loren.png', 0.3),
(190, NULL, NULL, 'Ritorno al futuro', 'analogy/topic/back.png', 0.3),
(191, NULL, NULL, 'Blade runner', 'analogy/topic/blade.png', 0.3),
(192, NULL, NULL, 'E. T. L\'extraterrestre', 'analogy/topic/et.png', 0.3),
(193, NULL, NULL, 'Il ritorno dello Jedi', 'analogy/topic/ritorno.png', 0.3),
(194, NULL, NULL, 'Robocop', 'analogy/topic/robocop.png', 0.3),
(195, NULL, NULL, 'Le iene', 'analogy/topic/iene.png', 0.3),
(196, NULL, NULL, 'Django Unchained', 'analogy/topic/django.png', 0.3),
(197, NULL, NULL, 'Bastardi senza gloria', 'analogy/topic/bastardi.png', 0.3),
(198, NULL, NULL, 'Kill Bill ', 'analogy/topic/killBill.png', 0.3),
(199, NULL, NULL, 'Pulp Fiction', 'analogy/topic/pulp.png', 0.3),
(200, NULL, NULL, 'Lemony Snicket\'s', 'analogy/topic/lemony.png', 0.3),
(201, NULL, NULL, 'Bugiardo bugiardo', 'analogy/topic/bugiardo.png', 0.3),
(202, NULL, NULL, 'Il Grinch', 'analogy/topic/grinch.png', 0.3),
(203, NULL, NULL, 'Ace Ventura', 'analogy/topic/ace.png', 0.3),
(204, NULL, NULL, 'The Mask', 'analogy/topic/mask.png', 0.3),
(205, NULL, NULL, 'Breaking Bad', 'analogy/topic/brBa.png', 0.3),
(206, NULL, NULL, 'A-Team', 'analogy/topic/aTeam.png', 0.3),
(207, NULL, NULL, 'Magnum P.I.', 'analogy/topic/magnum.png', 0.3),
(208, NULL, NULL, 'Mr. Robot', 'analogy/topic/mrRobot.png', 0.3),
(209, NULL, NULL, 'The Walking Dead', 'analogy/topic/walking.png', 0.3),
(210, NULL, NULL, 'Al Pacino', 'analogy/topic/alPacino.png', 0.3),
(211, NULL, NULL, 'Robert De Niro', 'analogy/topic/deNiro.png', 0.3),
(212, NULL, NULL, 'Jack Nicholson', 'analogy/topic/nicholson.png', 0.3),
(213, NULL, NULL, 'Sylvester Stallone', 'analogy/topic/stallone.png', 0.3),
(214, NULL, NULL, 'John Travolta', 'analogy/topic/travolta.png', 0.3),
(215, NULL, NULL, 'Roberto Benigni', 'analogy/topic/benigni.png', 0.3),
(216, NULL, NULL, 'Federico Fellini', 'analogy/topic/fellini.png', 0.3),
(217, NULL, NULL, 'Nanni Moretti', 'analogy/topic/moretti.png', 0.3),
(218, NULL, NULL, 'Sergio Leone', 'analogy/topic/leone.png', 0.3),
(219, NULL, NULL, 'Paolo Sorrentino', 'analogy/topic/sorrentino.png', 0.3);

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

-- --------------------------------------------------------

--
-- Struttura della tabella `user_has_badge`
--

CREATE TABLE `user_has_badge` (
  `idUser` int(16) NOT NULL,
  `idBadge` int(16) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
  MODIFY `idLeaderboard` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `level`
--
ALTER TABLE `level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `logging`
--
ALTER TABLE `logging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `resource`
--
ALTER TABLE `resource`
  MODIFY `idResource` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103054;

--
-- AUTO_INCREMENT per la tabella `resource_has_topic`
--
ALTER TABLE `resource_has_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330100;

--
-- AUTO_INCREMENT per la tabella `round`
--
ALTER TABLE `round`
  MODIFY `idRound` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `topic`
--
ALTER TABLE `topic`
  MODIFY `idTopic` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(16) NOT NULL AUTO_INCREMENT;
