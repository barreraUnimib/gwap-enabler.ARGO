-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Lug 16, 2018 alle 17:41
-- Versione del server: 5.6.38
-- Versione PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gwap-enabler-db`
--

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

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
