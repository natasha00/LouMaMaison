-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 04:39 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `loumamaison`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartement`
--

CREATE TABLE `appartement` (
  `id` int(11) NOT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT '1',
  `options` varchar(1000) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `descriptif` varchar(2000) NOT NULL,
  `montantParJour` float NOT NULL,
  `nbPersonnes` int(11) NOT NULL,
  `nbLits` int(11) NOT NULL,
  `nbChambres` int(11) NOT NULL,
  `photoPrincipale` varchar(255) DEFAULT NULL,
  `noApt` varchar(25) DEFAULT NULL,
  `noCivique` int(11) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `ville` varchar(255) DEFAULT 'Montréal',
  `codePostal` varchar(255) NOT NULL,
  `id_typeApt` int(11) NOT NULL,
  `id_userProprio` varchar(255) NOT NULL,
  `id_nomQuartier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appartement`
--

INSERT INTO `appartement` (`id`, `actif`, `options`, `titre`, `descriptif`, `montantParJour`, `nbPersonnes`, `nbLits`, `nbChambres`, `photoPrincipale`, `noApt`, `noCivique`, `rue`, `ville`, `codePostal`, `id_typeApt`, `id_userProprio`, `id_nomQuartier`) VALUES
(14, 1, '1=checked&2=checked', 'Chambre chalereuse', 'Chambre chaleureuse dans un appartement tranquille situé dans un quartier qui vous fera vivre le rythme montréalais avec sa vitalité et son confort simple. Parfait pour arriver en douceur à Montréal dans un endroit sympathique.', 70, 2, 1, 1, './images/profil.png', NULL, 6530, 'Beaubien', 'Montréal', 'H1M 3V8', 4, 'nat', 9),
(15, 1, '7=checked&10=checked', 'Sur le bord de Vieux Port', 'C’est l’endroit où vous voulez habiter dans le vieux port, c’est parfait comme base pour découvrir Montréal, à côté d’excellents restaurants et cafés partout, galeries d’art, boutiques, spa, gym', 123, 4, 2, 1, './images/apt01-01.png', '501', 5304, 'Av du Parc', 'Montréal', 'H2V 4G7', 1, 'renaud', 6),
(16, 1, '3=checked&6=checked', 'Merveilleux Condo', 'Particularité de ce lieu, c\'est d’être au cœur du quartier historique et d\'avoir la chance d\'explorer a pied les charmantes petites rues où tout est proche et l\'avantage de pouvoir sortir de ce quartier en voiture facilement, les entrées d’autoroute souterraine sont très accessibles', 98, 2, 1, 1, './images/apt02-01.png', '201', 781, 'Rue de la Commune', 'Montréal', 'H2Y 4A2', 3, 'nat', 7),
(17, 1, '4=checked', 'Loft affordant', 'Europa Place d’Armes est un immeuble haut-de-gamme, situé au coeur du Vieux-Montréal, tout juste en face du Palais des congrès, de la Basilique Notre-Dame et du métro.', 87, 4, 2, 2, './images/apt03-01.png', '32', 55, 'Rue Saint-Jacques Ouest', 'Montréal', 'H2Y 1K9', 1, 'salim', 7),
(18, 1, '2=checked&9=checked', 'Magnifique Condo', 'Quisque finibus, odio ac congue malesuada, mi lectus tempus mi, in condimentum sem justo feugiat lorem.', 63, 4, 2, 2, './images/apt04-01.png', '107', 3745, 'Rue Masson', 'Montréal', ' H1X 1S7', 1, 'salim', 14),
(19, 1, '3=checked&8=checked', 'Le Bijou', 'Magnifique appartement à Montréal', 90, 3, 2, 2, './images/apt01-03.png', '25', 6600, 'Jeanne-Mance', 'Montréal', 'H2V 4L2', 3, 'renaud', 11),
(20, 1, '3=checked&6-checked', 'Luxurious condo - Old Montreal', 'Quartier touristique et animé! Beaucoup de restaurants et près de tout. A 5minutes du métro.', 85, 3, 2, 2, './images/apt02-07.png', '4', 1610, 'Préfontaine ', 'Montréal', 'H1W 2N8', 5, 'nat', 11),
(21, 1, '1=checked&4=checked&5=checked&6=checked&7=checked&8=checked&11=checked&12=checked&13=checked&16=checked', 'Luxury Condo in Tour Des Canadiens! Amazing Views!', 'The condo in located in the well known building \"Tour Des Canadiens\" which opened in 2016. It\'s a luxury 50 story building with beautiful views of the city. The condo is one bedroom with a nice living room and kitchen.', 120, 4, 3, 3, './images/apt04-05.png', NULL, 1650, 'Aylwin', 'Montréal', 'H1W 3B8', 6, 'salim', 2);

-- --------------------------------------------------------

--
-- Table structure for table `communication`
--

CREATE TABLE `communication` (
  `id` int(11) NOT NULL,
  `moyenComm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `communication`
--

INSERT INTO `communication` (`id`, `moyenComm`) VALUES
(1, 'skype'),
(2, 'e-mail'),
(3, 'facebook'),
(4, 'texto');

-- --------------------------------------------------------

--
-- Table structure for table `disponibilite`
--

CREATE TABLE `disponibilite` (
  `id` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `disponibilite` tinyint(1) NOT NULL DEFAULT '1',
  `id_appartement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disponibilite`
--

INSERT INTO `disponibilite` (`id`, `dateDebut`, `dateFin`, `disponibilite`, `id_appartement`) VALUES
(25, '2018-03-05', '2018-03-31', 1, 18),
(43, '2018-03-05', '2018-03-31', 1, 15),
(44, '2018-03-06', '2018-03-31', 1, 14),
(49, '2018-03-10', '2018-03-31', 1, 16),
(52, '2018-03-08', '2018-03-31', 1, 17),
(53, '2018-03-09', '2018-03-20', 1, 19),
(54, '2018-03-10', '2018-03-30', 1, 20),
(55, '2018-03-08', '2018-03-31', 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `commentaire` text,
  `dateNotif` date NOT NULL,
  `id_appartement` int(11) NOT NULL,
  `id_username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id`, `rating`, `commentaire`, `dateNotif`, `id_appartement`, `id_username`) VALUES
(2, 10, NULL, '2018-02-27', 18, 'renaud'),
(5, 8, NULL, '2018-02-18', 17, 'renaud'),
(10, 7, NULL, '2018-02-24', 15, 'renaud'),
(11, 4, NULL, '2018-03-08', 18, 'yul'),
(12, 5, NULL, '2018-03-08', 18, 'yul');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `valideParPrestataire` tinyint(1) NOT NULL DEFAULT '0',
  `validePaiement` tinyint(1) NOT NULL DEFAULT '0',
  `id_userClient` varchar(255) NOT NULL,
  `id_appartement` int(11) NOT NULL,
  `nbPersonnes` int(11) NOT NULL,
  `refuse` tinyint(1) NOT NULL DEFAULT '0',
  `idDispo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `dateDebut`, `dateFin`, `valideParPrestataire`, `validePaiement`, `id_userClient`, `id_appartement`, `nbPersonnes`, `refuse`, `idDispo`) VALUES
(39, '2018-03-06', '2018-03-07', 1, 1, 'salim', 15, 1, 0, 43),
(48, '2018-03-05', '2018-03-07', 1, 1, 'yul', 18, 2, 0, 25),
(49, '2018-03-12', '2018-03-15', 0, 0, 'yul', 15, 3, 0, 43),
(50, '2018-03-11', '2018-03-14', 0, 0, 'yul', 16, 2, 0, 49),
(51, '2018-03-14', '2018-03-17', 0, 0, 'yul', 17, 4, 0, 52),
(52, '2018-03-12', '2018-03-15', 0, 0, 'nat', 15, 2, 0, 43),
(53, '2018-03-18', '2018-03-21', 0, 0, 'nat', 17, 2, 0, 52),
(54, '2018-03-18', '2018-03-20', 0, 0, 'salim', 15, 3, 0, 43);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `sujet` varchar(2000) NOT NULL,
  `dateHeure` datetime NOT NULL,
  `id_userEmetteur` varchar(255) NOT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `titre`, `sujet`, `dateHeure`, `id_userEmetteur`, `archive`) VALUES
(63, 'Le weekend qui vient', 'C\'est quoi tes plans?', '2018-03-09 10:14:38', 'nat', 0),
(64, 're: Le weekend qui vient', 'Dormir! :-)', '2018-03-09 10:16:17', 'yul', 0),
(65, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-12 au 2018-03-15 pour 3 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:18:30', 'yul', 0),
(66, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:18:30', 'yul', 0),
(67, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-11 au 2018-03-14 pour 2 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:19:14', 'yul', 0),
(68, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:19:14', 'yul', 0),
(69, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-14 au 2018-03-17 pour 4 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:19:39', 'yul', 0),
(70, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:19:39', 'yul', 0),
(71, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-12 au 2018-03-15 pour 2 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:20:41', 'nat', 0),
(72, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:20:41', 'nat', 0),
(73, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-18 au 2018-03-21 pour 2 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:21:02', 'nat', 0),
(74, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:21:02', 'nat', 0),
(75, 'Accusé reception', 'Nous avons enregistré votre demande de location pour la période du: 2018-03-18 au 2018-03-20 pour 3 personnes.<br> Le proprietaire va vous donner ou non son approbation dans les heures qui suiveront.<br><p class=\'nav-link\' id=\'mesReservations\'>Veuillez consulter ce lien pour suivre l\'évolution de votre demande</p>', '2018-03-09 10:23:54', 'salim', 0),
(76, 'Demande de location', 'Vous venez de recevoir une demande de réservation pour un de vos appartements. <br><p class=\'nav-link\' id=\'demandesReservations\'>Veuillez consulter ce lien pour l\'approuver</p>', '2018-03-09 10:23:54', 'salim', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message_user`
--

CREATE TABLE `message_user` (
  `id_message` int(11) NOT NULL,
  `id_username` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL DEFAULT '0',
  `supprime` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message_user`
--

INSERT INTO `message_user` (`id_message`, `id_username`, `statut`, `supprime`) VALUES
(63, 'yul', 1, 0),
(64, 'nat', 0, 0),
(65, 'yul', 0, 0),
(66, 'renaud', 0, 0),
(67, 'yul', 0, 0),
(68, 'nat', 0, 0),
(69, 'yul', 0, 0),
(70, 'salim', 0, 0),
(71, 'nat', 0, 0),
(72, 'renaud', 0, 0),
(73, 'nat', 0, 0),
(74, 'salim', 0, 0),
(75, 'salim', 0, 0),
(76, 'renaud', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `modePaiement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id`, `modePaiement`) VALUES
(1, 'paypal'),
(2, 'chèque'),
(3, 'virement interact');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `photoSupp` varchar(255) NOT NULL,
  `id_appartement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `photoSupp`, `id_appartement`) VALUES
(1, './images/apt01-01.png', 15),
(2, './images/apt01-02.png', 15),
(3, './images/apt01-03.png', 15),
(4, './images/apt01-04.png', 15),
(5, './images/apt01-05.png', 15),
(6, './images/apt01-06.png', 15),
(7, './images/apt01-07.png', 15),
(8, './images/apt01-08.png', 15),
(9, './images/apt01-09.png', 15),
(10, './images/apt01-10.png', 15),
(11, './images/apt02-01.png', 16),
(12, './images/apt02-02.png', 16),
(13, './images/apt02-03.png', 16),
(14, './images/apt02-04.png', 16),
(15, './images/apt02-05.png', 16),
(16, './images/apt02-06.png', 16),
(17, './images/apt02-07.png', 16),
(18, './images/apt02-08.png', 16),
(19, './images/apt02-09.png', 16),
(20, './images/apt02-10.png', 16),
(21, './images/apt03-01.png', 17),
(22, './images/apt03-02.png', 17),
(23, './images/apt03-03.png', 17),
(24, './images/apt03-04.png', 17),
(25, './images/apt03-05.png', 17),
(26, './images/apt03-06.png', 17),
(27, './images/apt03-07.png', 17),
(28, './images/apt03-08.png', 17),
(29, './images/apt03-09.png', 17),
(30, './images/apt03-10.png', 17),
(31, './images/apt04-01.png', 18),
(32, './images/apt04-02.png', 18),
(33, './images/apt04-03.png', 18),
(34, './images/apt04-04.png', 18),
(35, './images/apt04-05.png', 18),
(36, './images/apt04-06.png', 18),
(37, './images/apt04-07.png', 18),
(38, './images/apt04-08.png', 18),
(39, './images/apt04-09.png', 18),
(40, './images/apt04-10.png', 18);

-- --------------------------------------------------------

--
-- Table structure for table `quartier`
--

CREATE TABLE `quartier` (
  `id` int(11) NOT NULL,
  `nomQuartier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartier`
--

INSERT INTO `quartier` (`id`, `nomQuartier`) VALUES
(1, 'Ahuntsic-Cartierville'),
(2, 'Anjou'),
(3, 'Côte-des-Neiges–N-D-de-Grâce'),
(4, 'Lachine'),
(5, ' LaSalle'),
(6, 'Le Plateau-Mont-Royal'),
(7, ' Le Sud-Ouest'),
(8, 'Île-Bizard–Sainte-Geneviève'),
(9, 'Mercier–Hochelaga-Maisonneuve'),
(10, 'Montréal-Nord'),
(11, 'Outremont'),
(12, 'Pierrefonds-Roxboro'),
(13, '  Rivière-des-Prairies–Pointe-aux-Trembles'),
(14, 'Rosemont–La Petite-Patrie'),
(15, 'Saint-Laurent'),
(16, 'Saint-Léonard'),
(17, 'Verdun'),
(18, '  Ville-Marie'),
(19, '  Villeray–Saint-Michel–Parc-Extension');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nomRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `nomRole`) VALUES
(1, 'super admin'),
(2, 'admin'),
(3, 'proprio '),
(4, 'client');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id_username` varchar(255) NOT NULL,
  `id_nomRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id_username`, `id_nomRole`) VALUES
('salim', 1),
('nat', 2),
('renaud', 2),
('nat', 3),
('renaud', 3),
('salim', 3),
('nat', 4),
('renaud', 4),
('salim', 4),
('yul', 4);

-- --------------------------------------------------------

--
-- Table structure for table `type_apt`
--

CREATE TABLE `type_apt` (
  `id` int(11) NOT NULL,
  `typeApt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_apt`
--

INSERT INTO `type_apt` (`id`, `typeApt`) VALUES
(1, 'Loft'),
(2, 'Chalet'),
(3, 'Appartement'),
(4, 'Chambre'),
(5, 'Maison'),
(6, 'Condo');

-- --------------------------------------------------------

--
-- Table structure for table `usager`
--

CREATE TABLE `usager` (
  `username` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `valideParAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `banni` tinyint(1) NOT NULL DEFAULT '0',
  `id_moyenComm` int(11) NOT NULL,
  `coor_moyenComm` varchar(255) NOT NULL,
  `id_modePaiement` int(11) DEFAULT NULL,
  `id_adminBan` varchar(255) DEFAULT NULL,
  `id_adminValid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usager`
--

INSERT INTO `usager` (`username`, `nom`, `prenom`, `photo`, `adresse`, `telephone`, `motDePasse`, `valideParAdmin`, `banni`, `id_moyenComm`, `coor_moyenComm`, `id_modePaiement`, `id_adminBan`, `id_adminValid`) VALUES
('nat', 'Massicotte', 'Natasha', './images/nat_0_profil_usager.png', 'Montreal', '514 888 8888', '12345', 1, 0, 3, 'coordonnée MC', 3, 'salim', 'salim'),
('Nouveau00', 'no', 'no', 'profil.jpg', '32 rue du Moulin, Mtl', '222-222-2222', 'AAAAaaaa', 1, 0, 1, 'skss', 3, 'salim', 'salim'),
('renaud', 'renaud', 'Renaud', './images/renaud_0_profil_usager.png', 'renaud', '514 888 5555', '12345', 1, 0, 1, 'coordonnée MC', 1, 'salim', 'salim'),
('salim', 'salim', 'Salim', './images/salim_0_profil_usager.png', 'Montreal', '514 055 5050', '12345', 1, 0, 3, 'coordonnée MC', 3, NULL, NULL),
('yul', 'Romodina', 'Yuliya', './images/0_yul_3a.jpg', 'Montreal', '514 827 0000', '12345AAA', 1, 0, 1, 'coordonnée MC', 1, 'salim', 'salim'),
('YuliyaTest', 'fgf', 'fgfgf', './images/profil.jpg', 'fgfgfg', '514 888 5555', '12345AAA', 0, 0, 2, 'grtrtrt', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appartement`
--
ALTER TABLE `appartement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_appartement_id_typeApt` (`id_typeApt`),
  ADD KEY `FK_appartement_id_userProprio` (`id_userProprio`),
  ADD KEY `FK_appartement_id_nomQuartier` (`id_nomQuartier`);

--
-- Indexes for table `communication`
--
ALTER TABLE `communication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disponibilite`
--
ALTER TABLE `disponibilite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_disponibilite_id_appartement` (`id_appartement`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_evaluation_id_appartement` (`id_appartement`),
  ADD KEY `FK_evaluation_id_username` (`id_username`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_location_id_userClient` (`id_userClient`),
  ADD KEY `FK_location_id_appartement` (`id_appartement`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_message_id_userEmetteur` (`id_userEmetteur`);

--
-- Indexes for table `message_user`
--
ALTER TABLE `message_user`
  ADD PRIMARY KEY (`id_message`,`id_username`),
  ADD KEY `FK_message_user_id_username` (`id_username`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_photo_id_appartement` (`id_appartement`);

--
-- Indexes for table `quartier`
--
ALTER TABLE `quartier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id_username`,`id_nomRole`),
  ADD KEY `FK_role_user_id_nomRole` (`id_nomRole`);

--
-- Indexes for table `type_apt`
--
ALTER TABLE `type_apt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usager`
--
ALTER TABLE `usager`
  ADD PRIMARY KEY (`username`),
  ADD KEY `FK_usager_id_moyenComm` (`id_moyenComm`),
  ADD KEY `FK_usager_id_modePaiement` (`id_modePaiement`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appartement`
--
ALTER TABLE `appartement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `communication`
--
ALTER TABLE `communication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `disponibilite`
--
ALTER TABLE `disponibilite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `quartier`
--
ALTER TABLE `quartier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type_apt`
--
ALTER TABLE `type_apt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appartement`
--
ALTER TABLE `appartement`
  ADD CONSTRAINT `FK_appartement_id_nomQuartier` FOREIGN KEY (`id_nomQuartier`) REFERENCES `quartier` (`id`),
  ADD CONSTRAINT `FK_appartement_id_typeApt` FOREIGN KEY (`id_typeApt`) REFERENCES `type_apt` (`id`),
  ADD CONSTRAINT `FK_appartement_id_userProprio` FOREIGN KEY (`id_userProprio`) REFERENCES `usager` (`username`);

--
-- Constraints for table `disponibilite`
--
ALTER TABLE `disponibilite`
  ADD CONSTRAINT `FK_disponibilite_id_appartement` FOREIGN KEY (`id_appartement`) REFERENCES `appartement` (`id`);

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `FK_evaluation_id_appartement` FOREIGN KEY (`id_appartement`) REFERENCES `appartement` (`id`),
  ADD CONSTRAINT `FK_evaluation_id_username` FOREIGN KEY (`id_username`) REFERENCES `usager` (`username`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `FK_location_id_appartement` FOREIGN KEY (`id_appartement`) REFERENCES `appartement` (`id`),
  ADD CONSTRAINT `FK_location_id_userClient` FOREIGN KEY (`id_userClient`) REFERENCES `usager` (`username`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_message_id_userEmetteur` FOREIGN KEY (`id_userEmetteur`) REFERENCES `usager` (`username`);

--
-- Constraints for table `message_user`
--
ALTER TABLE `message_user`
  ADD CONSTRAINT `FK_message_user_id_message` FOREIGN KEY (`id_message`) REFERENCES `message` (`id`),
  ADD CONSTRAINT `FK_message_user_id_username` FOREIGN KEY (`id_username`) REFERENCES `usager` (`username`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_photo_id_appartement` FOREIGN KEY (`id_appartement`) REFERENCES `appartement` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `FK_role_user_id_nomRole` FOREIGN KEY (`id_nomRole`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FK_role_user_id_username` FOREIGN KEY (`id_username`) REFERENCES `usager` (`username`);

--
-- Constraints for table `usager`
--
ALTER TABLE `usager`
  ADD CONSTRAINT `FK_usager_id_modePaiement` FOREIGN KEY (`id_modePaiement`) REFERENCES `paiement` (`id`),
  ADD CONSTRAINT `FK_usager_id_moyenComm` FOREIGN KEY (`id_moyenComm`) REFERENCES `communication` (`id`);
