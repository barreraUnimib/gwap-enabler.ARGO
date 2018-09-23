-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Set 23, 2018 alle 09:12
-- Versione del server: 5.7.23-0ubuntu0.16.04.1
-- Versione PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gwap-enabler.argo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `resource`
--

CREATE TABLE `resource` (
  `idResource` int(16) NOT NULL,
  `refId` varchar(128) DEFAULT NULL,
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
(102976, '', 1, 'https://it.wikipedia.org/wiki/Donald_Trump', NULL, NULL, 'analogy/resource/trump.png', 0.8903262165194633),
(102977, '', 2, 'https://it.wikipedia.org/wiki/Michael_Jackson', NULL, NULL, 'analogy/resource/jackson.png', 0.8876543212345678),
(102981, '', 1, 'https://it.wikipedia.org/wiki/Gaio_Giulio_Cesare', NULL, NULL, 'analogy/resource/cesare.png', 0.8879482317417378),
(102982, '', 1, 'https://it.wikipedia.org/wiki/Dante_Alighieri', NULL, NULL, 'analogy/resource/dante.png', 0.8811482347417378),
(102983, '', 3, 'https://it.wikipedia.org/wiki/E.T._l\'extra-terrestre', NULL, NULL, 'analogy/resource/et.png', 0.8879482347417378),
(102984, '', 1, 'https://it.wikipedia.org/wiki/Muʿammar_Gheddafi', NULL, NULL, 'analogy/resource/gheddafi.png', 0.8879482346417378),
(102985, '', 1, 'https://it.wikipedia.org/wiki/Johannes_Gutenberg', NULL, NULL, 'analogy/resource/gutenberg.png', 0.8879481347417378),
(102986, '', 1, 'https://it.wikipedia.org/wiki/Steve_Jobs', NULL, NULL, 'analogy/resource/jobs.png', 0.8879482147417378),
(102987, '', 1, 'https://it.wikipedia.org/wiki/Marine_Le_Pen', NULL, NULL, 'analogy/resource/lePen.png', 0.8379482347417379),
(102988, '', 1, 'https://it.wikipedia.org/wiki/David_Letterman', NULL, NULL, 'analogy/resource/letterman.png', 0.8879482347497378),
(102989, '', 1, 'https://it.wikipedia.org/wiki/Marie_Curie', NULL, NULL, 'analogy/resource/marie.png', 0.8079482347417378),
(102990, '', 1, 'https://it.wikipedia.org/wiki/Napoleone_Bonaparte', NULL, NULL, 'analogy/resource/napoleone.png', 0.8913232165194633),
(102991, '', 1, 'https://it.wikipedia.org/wiki/Barack_Obama', NULL, NULL, 'analogy/resource/obama.png', 0.7879482347417378),
(102992, '', 2, 'https://it.wikipedia.org/wiki/Freddie_Mercury', NULL, NULL, 'analogy/resource/freddie.png', 0.7879382347417379),
(102993, '', 2, 'https://it.wikipedia.org/wiki/Tom_Morello', NULL, NULL, 'analogy/resource/morello.png', 0.7879282347417378),
(102994, '', 2, 'https://it.wikipedia.org/wiki/Calcutta_(cantante)', NULL, NULL, 'analogy/resource/calcutta.png', 0.7879182347417378),
(102995, '', 2, 'https://it.wikipedia.org/wiki/Genesis', NULL, NULL, 'analogy/resource/genesis.png', 0.7879082347417378),
(102996, '', 2, 'https://it.wikipedia.org/wiki/Daft_Punk', NULL, NULL, 'analogy/resource/daftPunk.png', 0.7879472347417378),
(102997, '', 2, 'https://it.wikipedia.org/wiki/The_Beatles', NULL, NULL, 'analogy/resource/beatles.png', 0.7879462347417377),
(102998, '', 2, 'https://it.wikipedia.org/wiki/Eminem', NULL, NULL, 'analogy/resource/eminem.png', 0.7879452347417378),
(102999, '', 2, 'https://it.wikipedia.org/wiki/Ludwig_van_Beethoven', NULL, NULL, 'analogy/resource/beethoven.png', 0.7879442347417378),
(103000, '', 2, 'https://it.wikipedia.org/wiki/Pink_Floyd', NULL, NULL, 'analogy/resource/pinkFloyd.png', 0.7879432347417378),
(103001, '', 2, 'https://it.wikipedia.org/wiki/Louis_Armstrong', NULL, NULL, 'analogy/resource/armstrong.png', 0.7879422347417377),
(103038, '', 3, 'https://it.wikipedia.org/wiki/2001:_Odissea_nello_spazio', NULL, NULL, 'analogy/resource/2001.png', 0.7779432347417378),
(103039, '', 3, 'https://it.wikipedia.org/wiki/Arancia_meccanica_(film)', NULL, NULL, 'analogy/resource/arancia.png', 0.7778432347417378),
(103040, '', 3, 'https://it.wikipedia.org/wiki/Leonardo_DiCaprio', NULL, NULL, 'analogy/resource/diCaprio.png', 0.7776432347417378),
(103041, '', 3, 'https://it.wikipedia.org/wiki/Dirty_Dancing_-_Balli_proibiti', NULL, NULL, 'analogy/resource/dirty.png', 0.7775432347417378),
(103042, '', 3, 'https://it.wikipedia.org/wiki/Angelina_Jolie', NULL, NULL, 'analogy/resource/jolie.png', 0.7775432347417378),
(103043, '', 3, 'https://it.wikipedia.org/wiki/Pulp_Fiction', NULL, NULL, 'analogy/resource/pulp.png', 0.7773432347417378),
(103044, '', 3, 'https://it.wikipedia.org/wiki/Steven_Spielberg', NULL, NULL, 'analogy/resource/spielberg.png', 0.7772432347417378),
(103045, '', 3, 'https://it.wikipedia.org/wiki/Quentin_Tarantino', NULL, NULL, 'analogy/resource/tarantino.png', 0.7771432347417379),
(103046, '', 3, 'https://it.wikipedia.org/wiki/Il_Trono_di_Spade_(serie_televisiva)', NULL, NULL, 'analogy/resource/trono.png', 0.7770432347417378),
(103047, '', 3, 'https://it.wikipedia.org/wiki/Robin_Williams', NULL, NULL, 'analogy/resource/williams.png', 0.7779432348417378),
(103048, '', 2, 'https://it.wikipedia.org/wiki/Dario_Argento', NULL, NULL, 'analogy/resource/argento.png', 0.8079482347417377),
(103049, '', 3, 'https://it.wikipedia.org/wiki/Ludwig_van_Beethoven', NULL, NULL, 'analogy/resource/beethovenT.png', 0.8079482347417376),
(103050, '', 3, 'https://it.wikipedia.org/wiki/Gigi_D\'Agostino', NULL, NULL, 'analogy/resource/gigidAg.png', 0.8079482347417375),
(103051, '', 1, 'https://it.wikipedia.org/wiki/Jimi_Hendrix', NULL, NULL, 'analogy/resource/hendrix.png', 0.8079482347417374),
(103052, '', 1, 'https://it.wikipedia.org/wiki/Michael_Jackson', NULL, NULL, 'analogy/resource/jacksonT.png', 0.8079482347417373),
(103053, '', 2, 'https://it.wikipedia.org/wiki/Immanuel_Kant', NULL, NULL, 'analogy/resource/kant.png', 0.8079482347417372),
(103054, '', 1, 'https://it.wikipedia.org/wiki/Aristotele', NULL, NULL, 'analogy/resource/aristotele.png', 0.7776432347417371),
(103055, '', 1, 'https://it.wikipedia.org/wiki/Silvio_Berlusconi', NULL, NULL, 'analogy/resource/berlusconi.png', 0.7776432347417372),
(103056, '', 1, 'https://it.wikipedia.org/wiki/Charles_Dickens', NULL, NULL, 'analogy/resource/dickens.png', 0.7776432347417339),
(103057, '', 1, 'https://it.wikipedia.org/wiki/Albert_Einstein', NULL, NULL, 'analogy/resource/einstein.png', 0.7776432347417374),
(103058, '', 1, 'https://it.wikipedia.org/wiki/Stephen_Hawking', NULL, NULL, 'analogy/resource/hawking.png', 0.7776432347417375),
(103059, '', 1, 'https://it.wikipedia.org/wiki/Emmanuel_Macron', NULL, NULL, 'analogy/resource/macron.png', 0.7776432347417376),
(103060, '', 1, 'https://it.wikipedia.org/wiki/Vladimir_Putin', NULL, NULL, 'analogy/resource/putin.png', 0.7776432347417377),
(103061, '', 1, 'https://it.wikipedia.org/wiki/Michael_Schumacher', NULL, NULL, 'analogy/resource/schumacher.png', 0.7776432347417379),
(103062, '', 1, 'https://it.wikipedia.org/wiki/Justin_Trudeau', NULL, NULL, 'analogy/resource/trudeau.png', 0.7776432347417388),
(103063, '', 1, 'https://it.wikipedia.org/wiki/Michael_Phelps', NULL, NULL, 'analogy/resource/phelps.png', 0.7776432347417358),
(103064, '', 2, 'https://it.wikipedia.org/wiki/AC/DC', NULL, NULL, 'analogy/resource/acdc.png', 0.8811492347417378),
(103065, '', 2, 'https://it.wikipedia.org/wiki/Aretha_Franklin', NULL, NULL, 'analogy/resource/aretha.png', 0.8811472347417378),
(103066, '', 2, 'https://it.wikipedia.org/wiki/Justin_Bieber', NULL, NULL, 'analogy/resource/bieber.png', 0.8811462347417378),
(103067, '', 2, 'https://it.wikipedia.org/wiki/Bob_Dylan', NULL, NULL, 'analogy/resource/dylan.png', 0.8811452347417378),
(103068, '', 2, 'https://it.wikipedia.org/wiki/Janis_Joplin', NULL, NULL, 'analogy/resource/joplin.png', 0.8811442347417378),
(103069, '', 2, 'https://it.wikipedia.org/wiki/Mark_Knopfler', NULL, NULL, 'analogy/resource/knopler.png', 0.8811432347417378),
(103070, '', 2, 'https://it.wikipedia.org/wiki/Bob_Marley', NULL, NULL, 'analogy/resource/marley.png', 0.8811422347417378),
(103071, '', 2, 'https://it.wikipedia.org/wiki/Nirvana_(gruppo_musicale)', NULL, NULL, 'analogy/resource/nirvana.png', 0.8811412347417378),
(103072, '', 2, 'https://it.wikipedia.org/wiki/Luciano_Pavarotti', NULL, NULL, 'analogy/resource/pavarotti.png', 0.8811402347417377),
(103073, '', 2, 'https://it.wikipedia.org/wiki/Wham!', NULL, NULL, 'analogy/resource/wham.png', 0.8811082347417378),
(103074, '', 3, 'https://it.wikipedia.org/wiki/Tom_Hanks', NULL, NULL, 'analogy/resource/hanks.png', 0.8079482347317378),
(103075, '', 3, 'https://it.wikipedia.org/wiki/Il_padrino_(film)', NULL, NULL, 'analogy/resource/padrino.png', 0.8079482347217378),
(103076, '', 3, 'https://it.wikipedia.org/wiki/Il_re_leone', NULL, NULL, 'analogy/resource/reLeone.png', 0.8079482347117378),
(103077, '', 3, 'https://it.wikipedia.org/wiki/Pulp_Fiction', NULL, NULL, 'analogy/resource/pulp2.png', 0.8079482347127378),
(103078, '', 3, 'https://it.wikipedia.org/wiki/Sacha_Baron_Cohen', NULL, NULL, 'analogy/resource/sacha.png', 0.8079482347137378),
(103079, '', 3, 'https://it.wikipedia.org/wiki/Salvate_il_soldato_Ryan', NULL, NULL, 'analogy/resource/ryan.png', 0.8079482347147378),
(103080, '', 3, 'https://it.wikipedia.org/wiki/Se_mi_lasci_ti_cancello', NULL, NULL, 'analogy/resource/semilasci.png', 0.8079482347157378),
(103081, '', 3, 'https://it.wikipedia.org/wiki/Stanlio_e_Ollio', NULL, NULL, 'analogy/resource/stanlioOllio.png', 0.8079482347167378),
(103082, '', 3, 'https://it.wikipedia.org/wiki/Checco_Zalone', NULL, NULL, 'analogy/resource/zalone.png', 0.8079482347177378),
(103083, '', 3, 'https://it.wikipedia.org/wiki/Django_Unchained', NULL, NULL, 'analogy/resource/django.png', 0.8079482347187378),
(103084, '', 1, 'https://it.wikipedia.org/wiki/Christopher_Nolan', NULL, NULL, 'analogy/resource/nolanS.png', 0.8903262265194632),
(103085, '', 1, 'https://it.wikipedia.org/wiki/Sting', NULL, NULL, 'analogy/resource/sting.png', 0.8903262365194633),
(103086, '', 1, 'https://it.wikipedia.org/wiki/Laura_Pausini', NULL, NULL, 'analogy/resource/pausini.png', 0.8903262465194633),
(103087, '', 2, 'https://it.wikipedia.org/wiki/Michael_Phelps', NULL, NULL, 'analogy/resource/phelpsS.png', 0.8903262565194633),
(103088, '', 2, 'https://it.wikipedia.org/wiki/Vladimir_Putin', NULL, NULL, 'analogy/resource/putinS.png', 0.8903262665194633),
(103089, '', 2, 'https://it.wikipedia.org/wiki/Luigi_Pirandello', NULL, NULL, 'analogy/resource/pirandello.png', 0.8903262765194633),
(103090, '', 3, 'https://it.wikipedia.org/wiki/Jury_Chechi', NULL, NULL, 'analogy/resource/chechi.png', 0.8903262865194633),
(103091, '', 3, 'https://it.wikipedia.org/wiki/Marie_Curie', NULL, NULL, 'analogy/resource/marieS.png', 0.8903262965194633),
(103092, '', 3, 'https://it.wikipedia.org/wiki/Dario_Fo', NULL, NULL, 'analogy/resource/fo.png', 0.8903262065194633);

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
  MODIFY `idResource` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103097;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
