-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Lug 14, 2018 alle 10:06
-- Versione del server: 5.6.38
-- Versione PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gwap-enabler-db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `resource`
--

CREATE TABLE `resource` (
  `idResource` int(16) NOT NULL,
  `refId` varchar(128) NOT NULL,
  `label` varchar(128) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `orderBy` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `resource`
--

INSERT INTO `resource` (`idResource`, `refId`, `label`, `lat`, `long`, `url`, `orderBy`) VALUES
(13251, '655805', NULL, NULL, NULL, 'http://eol.jsc.nasa.gov/DatabaseImages/ESC/small/ISS031/ISS031-E-15165.JPG', 0.8703662165164633),
(13259, '655814', NULL, NULL, NULL, 'http://eol.jsc.nasa.gov/DatabaseImages/ESC/small/ISS031/ISS031-E-15174.JPG', 0.11793898708926419),
(83591, '047127599', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS047/ISS047-E-127599.JPG', 0.9011686620313383),
(88017, '045164521', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS045/ISS045-E-164521.JPG', 0.867661098826361),
(93095, '045162938', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS045/ISS045-E-162938.JPG', 0.8412985213485533),
(97008, '04616719', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS046/ISS046-E-16719.JPG', 0.9813360683446155),
(99346, '045155521', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS045/ISS045-E-155521.JPG', 0.8333398046282491),
(101104, '045152569', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS045/ISS045-E-152569.JPG', 0.9496637694068847),
(102974, '045147733', NULL, NULL, NULL, 'https://s3-eu-west-1.amazonaws.com/nasa-resources/nightknights/DatabaseImages/ISS045/ISS045-E-147733.JPG', 0.8974658976285401),
(102975, '', NULL, NULL, NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Matteo_Salvini_Viminale.jpg/1024px-Matteo_Salvini_Viminale.jpg', 0.8979483317417378),
(102976, '', NULL, NULL, NULL, 'analogy/resource/trump.png', 0.8903262165194633),
(102977, '', NULL, NULL, NULL, 'analogy/resource/jackson.png', 0.8876543212345678),
(102981, '', NULL, NULL, NULL, 'analogy/resource/cesare.png', 0.8879482317417378),
(102982, '', NULL, NULL, NULL, 'analogy/resource/dante.png', 0.8811482347417378),
(102983, '', NULL, NULL, NULL, 'analogy/resource/et.png', 0.8879482347417378),
(102984, '', NULL, NULL, NULL, 'analogy/resource/gheddafi.png', 0.8879482346417378),
(102985, '', NULL, NULL, NULL, 'analogy/resource/gutenberg.png', 0.8879481347417378),
(102986, '', NULL, NULL, NULL, 'analogy/resource/jobs.png', 0.8879482147417378),
(102987, '', NULL, NULL, NULL, 'analogy/resource/lePen.png', 0.8379482347417379),
(102988, '', NULL, NULL, NULL, 'analogy/resource/letterman.png', 0.8879482347497378),
(102989, '', NULL, NULL, NULL, 'analogy/resource/marie.png', 0.8079482347417378),
(102990, '', NULL, NULL, NULL, 'analogy/resource/napoleone.png', 0.8913232165194633),
(102991, '', NULL, NULL, NULL, 'analogy/resource/obama.png', 0.7879482347417378);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`idResource`),
  ADD KEY `idx_resource_refId` (`refId`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `resource`
--
ALTER TABLE `resource`
  MODIFY `idResource` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102992;
